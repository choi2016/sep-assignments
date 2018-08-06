def find(n)
  if n == 1
    p "Size: 1, Worst Case: 1 iteration"
  else
  	p "Size: 1, Worst Case: 1 iteration"
    2.upto(n) do |i|
      p "Size: #{i}, Worst Case: #{i} iterations"
    end
  end
end

find(10);