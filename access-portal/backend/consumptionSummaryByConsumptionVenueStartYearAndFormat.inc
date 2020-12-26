<?php

$consumptionSummaryByConsumptionVenueStartYearAndFormatQuery = "select consumption_venue, year(start_date) as start_year, format, count(distinct item) as freq from consumption group by consumption_venue, year(start_date), format;";
$consumptionSummaryByConsumptionVenueStartYearAndFormatResult = $mysqli -> query($consumptionSummaryByConsumptionVenueStartYearAndFormatQuery);

$consumptionSummaryArray = [];
for ($i = 0; $i < $consumptionSummaryByConsumptionVenueStartYearAndFormatResult -> num_rows; $i++) {
  $row = $consumptionSummaryByConsumptionVenueStartYearAndFormatResult -> fetch_assoc();
  if (!isset($consumptionSummaryArray[$row['consumption_venue']])) {
    $consumptionSummaryArray[$row['consumption_venue']] = [];
  }
  if (!isset($consumptionSummaryArray[$row['consumption_venue']][$row['start_year']])) {
    $consumptionSummaryArray[$row['consumption_venue']][$row['start_year']] = [];
  }  
  $consumptionSummaryArray[$row['consumption_venue']][$row['start_year']][$row['format']] = $row['freq'];
}

print '<h4 id="consumptionSummaryByConsumptionVenueStartYearAndFormat">Consumption summary by consumption venue, start year, and format</h4>';
print "\n";
print '<table id="myTableConsumptionSummaryByConsumptionVenueStartYearAndFormat" class="tablesorter">'."\n";
print "<thead>\n";
print '<tr><th>Consumption venue</th>';
print '<th>Start year</th>';
print '<th>Count of consumption of distinct single videos (such as movies)</th>';
print '<th>Count of consumption of distinct series (such as TV show or web series)</th>';
print "</tr></thead>\n<tbody>\n";

foreach ($venues as $venue) {
  foreach ($years as $year) {
    if (isset($consumptionSummaryArray[$venue]) &&
      isset($consumptionSummaryArray[$venue][$year])) {
      print '<tr>';
      print '<td>'.$venue.'</td>';
      print '<td>'.$year.'</td>';
      print '<td align="right">'.($consumptionSummaryArray[$venue][$year]['Single video (such as movie)'] ?? 0).'</td>';
      print '<td align="right">'.($consumptionSummaryArray[$venue][$year]['Series (such as TV show or web series)'] ?? 0).'</td>';
      print "</tr>\n";
    }
  }
}

print "</tbody>\n</table>\n";

?>