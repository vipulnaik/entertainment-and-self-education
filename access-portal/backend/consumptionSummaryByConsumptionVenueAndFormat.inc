<?php

$consumptionSummaryByConsumptionVenueAndFormatQuery = "select consumption_venue, format, case when rewatch then 'rewatch' else 'new' end as rewatch_or_new, count(1) as freq from consumption group by consumption_venue, format, rewatch_or_new;";
$consumptionSummaryByConsumptionVenueAndFormatResult = $mysqli -> query($consumptionSummaryByConsumptionVenueAndFormatQuery);

$consumptionSummaryArray = [];
for ($i = 0; $i < $consumptionSummaryByConsumptionVenueAndFormatResult -> num_rows; $i++) {
  $row = $consumptionSummaryByConsumptionVenueAndFormatResult -> fetch_assoc();
  if (!isset($consumptionSummaryArray[$row['consumption_venue']])) {
    $consumptionSummaryArray[$row['consumption_venue']] = [];
  }
  $consumptionSummaryArray[$row['consumption_venue']][$row['format'].' ('.$row['rewatch_or_new'].')'] = $row['freq'];
}

print '<h4 id="consumptionSummaryByConsumptionVenueAndFormat">Consumption summary by consumption venue and format</h4>';
print "\n";
print '<table id="myTableConsumptionSummaryByConsumptionVenueAndFormat" class="tablesorter">'."\n";
print "<thead>\n";
print '<tr><th>Consumption venue</th>';
print '<th>Count of consumption of new single videos (such as movies)</th>';
print '<th>Count of consumption of new series (such as TV show or web series)</th>';
print '<th>Count of consumption of rewatch single videos (such as movies)</th>';
print '<th>Count of consumption of rewatch series (such as TV show or web series)</th>';
print "</tr></thead>\n<tbody>\n";

foreach ($venues as $venue) {
  print '<tr>';
  print '<td>'.$venue.'</td>';
  print '<td align="right">'.($consumptionSummaryArray[$venue]['Single video (such as movie) (new)'] ?? 0).'</td>';
  print '<td align="right">'.($consumptionSummaryArray[$venue]['Series (such as TV show or web series) (new)'] ?? 0).'</td>';
  print '<td align="right">'.($consumptionSummaryArray[$venue]['Single video (such as movie) (rewatch)'] ?? 0).'</td>';
  print '<td align="right">'.($consumptionSummaryArray[$venue]['Series (such as TV show or web series) (rewatch)'] ?? 0).'</td>';
  print "</tr>\n";
}

print "</tbody>\n</table>\n";
