<?php

$consumptionSummaryByStartYearAndFormatQuery = "select year(start_date) as start_year, format, case when rewatch then 'rewatch' else 'new' end as rewatch_or_new, count(distinct item) as freq from consumption group by year(start_date), format, rewatch_or_new;";
$consumptionSummaryByStartYearAndFormatResult = $mysqli -> query($consumptionSummaryByStartYearAndFormatQuery);

$consumptionSummaryArray = [];
for ($i = 0; $i < $consumptionSummaryByStartYearAndFormatResult -> num_rows; $i++) {
  $row = $consumptionSummaryByStartYearAndFormatResult -> fetch_assoc();
  if (!isset($consumptionSummaryArray[$row['start_year']])) {
    $consumptionSummaryArray[$row['start_year']] = [];
  }
  $consumptionSummaryArray[$row['start_year']][$row['format'].' ('.$row['rewatch_or_new'].')'] = $row['freq'];
}

print '<h4 id="consumptionSummaryByStartYearAndFormat">Consumption summary by start year and format</h4>';
print "\n";
print '<table id="myTableConsumptionSummaryByStartYearAndFormat" class="tablesorter">'."\n";
print "<thead>\n";
print '<tr><th>Start year</th>';
print '<th>Count of consumption of distinct new single videos (such as movies)</th>';
print '<th>Count of consumption of distinct new series (such as TV show or web series)</th>';
print '<th>Count of consumption of distinct rewatch single videos (such as movies)</th>';
print '<th>Count of consumption of distinct rewatch series (such as TV show or web series)</th>';
print "</tr></thead>\n<tbody>\n";

foreach ($years as $startYear) {
  print '<tr>';
  print '<td>'.$startYear.'</td>';
  print '<td align="right">'.($consumptionSummaryArray[$startYear]['Single video (such as movie) (new)'] ?? 0).'</td>';
  print '<td align="right">'.($consumptionSummaryArray[$startYear]['Series (such as TV show or web series) (new)'] ?? 0).'</td>';
  print '<td align="right">'.($consumptionSummaryArray[$startYear]['Single video (such as movie) (rewatch)'] ?? 0).'</td>';
  print '<td align="right">'.($consumptionSummaryArray[$startYear]['Series (such as TV show or web series) (rewatch)'] ?? 0).'</td>';
  print "</tr>\n";
}

print "</tbody>\n</table>\n";

?>