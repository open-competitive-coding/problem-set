# Counting Inversions

Let A[0...n - 1] be an array of n distinct integers. If i < j and A[i] > A[j] then the pair (i, j) is called an inversion of A.

Given N and an array A your task is to find the number of inversions of A.

The naive approach has a runtime of O(n2). You are supposed to make use of your code from the previous challenge instead and mantain the O(n*log n) runtime.

**Constraints**

1 <= N <= 100000

-100000 <= A[i] <= 100000

**Input Format**

The first line will be N the size of the array. Then in the next line there will be N space separated Integers.

**Output Format**

For each Test Case output a single line containing the number of inversions.

Use long long int to store the answer as the answer may overflow normal integer.

**Sample Input**
```
5
2  4  1  3  5
```

**Sample Output**
```
3
```

**Explanation**

1st test-case.
N = 5

A = {2,4,1,3,5}

The sequence 2, 4, 1, 3, 5 has three inversions (2,1), (4,1), (4,3).
