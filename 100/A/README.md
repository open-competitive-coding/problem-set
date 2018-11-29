# The Cycle Graph

A cycle graph or circular graph is a graph that consists of a single cycle, or in other words, all the vertices are connected in a closed chain.

You are given an undirected graph on N nodes and M edges. You have to determine if it is a cycle graph.

The nodes are 0-indexed. (0, 1, 2, ..., N - 1)

**Input Format**

The first line contains a single integer T, denoting the number of test cases.
The second line contains two integers, N and M as described above.
M lines follow. Each contains two integers, u and v, denoting that there is an edge from u to v and v to u.

**Constraints**

1 <= T <= 10

3 <= N <= 1000

1 <= M <= 10000

**Output Format**

For each test case, output "YES" if it is a cycle graph and "NO" otherwise.

**Sample Input**

```
2
3 3
0 1
1 2
2 0
4 4
0 1
0 2
0 3
1 3
```

**Sample Output**
```
YES
NO
```

**Explanation**

The first is a cycle graph. The second isn't.
