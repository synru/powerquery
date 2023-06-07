# Common Tool for Power Query
## fn_Dependency_Chain.pq
### Description
This function generates chain of dependency as string
<br><br>Input Parameters:
<li><code>dependencies</code> - Table with two columns <code>source_id</code> and <code>target_id</code></li>
<li><code>separator</code> - A string to concatenate the nodes</li>
<li><code>startList</code> - The list of string to be searched as starting points to find its dependencies </li>
<br> Return:
<br>A <code>List</code> of <code>String</code> formed by concatenation of dependent nodes separated by <code>/</code>

### Example
<code>dependencies</code> :
<table>
  <tr><th>source_id</th><th>target_id</th></tr>
  <tr><td>A</td><td>B</td></tr>
  <tr><td>B</td><td>C</td></tr>
  <tr><td>D</td><td>C</td></tr>
  <tr><td>E</td><td>D</td></tr>
  <tr><td>C</td><td>F</td></tr>
</table>

Invocation: <code>fn_Dependency_Chain(dependencies, "/", {"F"})</code>
Output: 
<table>
  <tr><th>list</th></tr>
  <tr><td>A/B/C/F</td></tr>
  <tr><td>E/D/C/F</td></tr>
</table>

# License
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
