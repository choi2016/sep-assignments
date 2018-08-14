Benchmark:
	1000
       user     system      total        real
poorly written ruby:  0.010000   0.000000   0.010000 (  0.013586)
code optimization:  0.010000   0.000000   0.010000 (  0.009097)
time complexity:  0.010000   0.000000   0.010000 (  0.009970)
space complexity:  0.010000   0.000000   0.010000 (  0.001756)

	5000
       user     system      total        real
poorly written ruby:  0.330000   0.000000   0.330000 (  0.332027)
code optimization:  0.220000   0.000000   0.220000 (  0.221514)
time complexity:  0.070000   0.030000   0.100000 (  0.107468)
space complexity:  0.020000   0.000000   0.020000 (  0.014775)

	10000
poorly written ruby:  1.310000   0.000000   1.310000 (  1.323629)
code optimization:  0.870000   0.000000   0.870000 (  0.869728)
time complexity:  0.250000   0.150000   0.400000 (  0.403418)
space complexity:  0.040000   0.000000   0.040000 (  0.035511)

Big-O:
Poorly Written Ruby:    O(2^n)
Code Optimization:      O(n^2)
Time Complexity:        O(nlog n)
Space Complexity:       O(nlog n)
