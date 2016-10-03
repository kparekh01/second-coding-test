def wonky_coins(n)
  return 1 if n == 0
  # call wonky_coins from inside itself. This is called *recursion*.
  p  wonky_coins(n / 2) + wonky_coins(n / 3) + wonky_coins(n / 4)
end

wonky_coins(5)
# 11(0's) ----> this is the answer for 5 and the following explains the recursion!
#Because of return 1 if n == 0 the recursion will continue untill all relative cases = 0
# => [2, 1, 1] --> [5/2, 5/3, 5/4]
# => [[1, 0, 0]=[2/2, 2/3, 2/4], [0, 0, 0]=[0/2, 0/3, 0/4], [0, 0, 0]=[0/2, 0/3, 0/4]]
# => [[[0, 0, 0]=[1/2, 1/3, 1/4], 0, 0],[0, 0, 0]=[0/2, 0/3, 0/4], [0, 0, 0]=[0/2, 0/3, 0/4]]
# => [[[0, 0, 0], 0, 0],[0, 0, 0], [0, 0, 0]] # 11 0's