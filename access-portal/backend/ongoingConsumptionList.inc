<?php

$ongoingConsumptionListQuery = "select * from ongoing_consumption;";
$ongoingConsumptionListResult = $mysqli -> query($ongoingConsumptionListQuery);

print '<h4 id="ongoingConsumptionList">Ongoing consumption list ('.$ongoingConsumptionListResult -> num_rows.' rows)</h4>';
print "\n";
print '<table id="myTableOngoingConsumptionList" class="tablesorter">'."\n";
print "<thead>\n";
print '<tr><th>Item</th>';
print '<th>Notes</th>';
print "</tr></thead>\n<tbody>\n";

for ($i = 0; $i < $ongoingConsumptionListResult -> num_rows; $i++) {
  $row = $ongoingConsumptionListResult -> fetch_assoc();
  print '<tr>';
  if (isset($row['url'])) {
    print '<td><a href="'.$row['url'].'">'.$row['item'].'</a></td>';
  } else {
    print '<td>'.$row['item'].'</td>';
  }
  if (isset($row['notes'])) {
    print '<td>'.cleanNotes($row['notes']).'</td>';
  }
  print "</tr>\n";
}

print "</tbody>\n</table>\n";
