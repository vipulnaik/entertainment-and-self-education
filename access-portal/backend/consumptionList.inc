<?php

$consumptionListQuery = "select * from consumption order by start_date desc;";
$consumptionListResult = $mysqli -> query($consumptionListQuery);

print '<h4 id="consumptionList">Consumption list ('.$consumptionListResult -> num_rows.' rows)</h4>';
print "\n";
print '<table id="myTableConsumptionList" class="tablesorter">'."\n";
print "<thead>\n";
print '<tr><th>Item</th>';
print '<th>Consumption venue</th>';
print '<th>Format</th>';
print '<th>Primary language</th>';
print '<th>Start date</th>';
print '<th>End date</th>';
print '<th>Notes</th>';
print "</tr></thead>\n<tbody>\n";

for ($i = 0; $i < $consumptionListResult -> num_rows; $i++) {
  $row = $consumptionListResult -> fetch_assoc();
  print '<tr>';
  if (isset($row['url'])) {
    print '<td><a href="'.$row['url'].'">'.$row['item'].'</a></td>';
  } else {
    print '<td>'.$row['item'].'</td>';
  }
  print '<td>'.$row['consumption_venue'].'</td>';
  print '<td>'.$row['format'].'</td>';
  print '<td>'.$row['primary_language'].'</td>';
  printDateWithPrecision($row['start_date'], $row['start_date_precision']);
  printDateWithPrecision($row['end_date'],$row['end_date_precision']);
  if (isset($row['notes'])) {
    print '<td>'.cleanNotes($row['notes']).'</td>';
  }
  print "</tr>\n";
}

print "</tbody>\n</table>\n";
