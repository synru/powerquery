# Common Tool for Power Query
## fn_Dependency_Chain.pq
### Description
This function generates chain of dependency as string
<br><br>Input:
<li><code>node</code> - The node to be searched as starting point to find its dependencies</li>
<li><code>list</code> - Table with two columns <code>source_id</code> and <code>target_id</code></li>
<br> Output:
<br>A <code>List</code> of <code>String</code> formed by concatenation of dependent nodes separated by <code>/</code>

###Example
