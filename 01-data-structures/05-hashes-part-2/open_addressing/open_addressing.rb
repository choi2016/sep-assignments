
require_relative 'node'

class OpenAddressing
  def initialize(size)
    @items = Array.new(size)
    @size = size
  end

  def []=(key, value)
    i = index(key, @size)
    hashed_item = @items[i]

    if hashed_item.nil?
      @items[i] = Node.new(key, value)
    elsif hashed_item.key != key
      while @items[index(key, @size)].key != key
        resize
        re_index = index(key, @size)
        break if @items[re_index] == nil
      end
      self[key] = value
    elsif hashed_item.key == key 
      if next_open_index(i) == -1
        resize
      end
    end
  end

  def [](key)
    item = @items[index(key, @size)]
    if item.nil? 
      return nil
    else
      return item.value
    end
  end

  # Returns a unique, deterministically reproducible index into an array
  # We are hashing based on strings, let's use the ascii value of each string as
  # a starting point.
  def index(key, size)
    key.sum % size
  end

  # Given an index, find the next open index in @items
  def next_open_index(index)
    initial_index = index

    while index <= (@size -1)
      if @items[index] == nil
        return index
      elsif index == (initial_index - 1)
        return -1
      elsif @items[index] != nil && @items[index] == (@size -1)
        index = 0
      else
        index += 1
      end
    end
    
    -1
  end

  # Simple method to return the number of items in the hash
  def size
    @size
  end

  # Resize the hash
  def resize
    @size = @size * 2
    new_hash = Array.new(@size)
    @items.each do |item|
      if item != nil
        new_hash[index(item.key, @size)] = item
      end
    end
    @items = new_hash
  end
end