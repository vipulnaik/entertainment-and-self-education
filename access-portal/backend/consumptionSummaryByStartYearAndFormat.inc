<?php

$consumptionSummaryByStartYearAndFormatQuery = "select year(start_date) as start_year, format, count(distinct item) as freq from consumption group by year(start_date), format;";
$consumptionSummaryByStartYearAndFormatResult = $mysqli -> query($consumptionSummaryByStartYearAndFormatQuery);

$consumptionSummaryArray = [];
for ($i = 0; $i < $consumptionSummaryByStartYearAndFormatResult -> num_rows; $i++) {
  $row = $consumptionSummaryByStartYearAndFormatResult -> fetch_assoc();
  if (!isset($consumptionSummaryArray[$row['start_year']])) {
    $consumptionSummaryArray[$row['start_year']] = [];
  }
  $consumptionSummaryArray[$row['start_year']][$row['format']] = $row['freq'];
}

print '<h4 id="consumptionSummaryByStartYearAndFormat">Consumption summary by start year and format</h4>';
print "\n";
print '<table id="myTableConsumptionSummaryByStartYearAndFormat" class="tablesorter">'."\n";
print "<thead>\n";
print '<tr><th>Sttart year</th>';
print '<th>Count of consumption of distinct single videos (such as movies)</th>';
print '<th>Count of consumption of distinct series (such as TV show or web series)</th>';
print "</tr></thead>\n<tbody>\n";

foreach ($years as $startYear) {
  print '<tr>';
  print '<td>'.$startYear.'</td>';
  print '<td align="right">'.($consumptionSummaryArray[$startYear]['Single video (such as movie)'] ?? 0).'</td>';
  print '<td align="right">'.($consumptionSummaryArray[$startYear]['Series (such as TV show or web series)'] ?? 0).'</td>';
  print "</tr>\n";
}

print "</tbody>\n</table>\n";

?>