<?php

$consumptionSummaryByConsumptionVenuePrimaryLanguageAndFormatQuery = "select consumption_venue, primary_language, format, count(distinct item) as freq from consumption group by consumption_venue, primary_language, format;";
$consumptionSummaryByConsumptionVenuePrimaryLanguageAndFormatResult = $mysqli -> query($consumptionSummaryByConsumptionVenuePrimaryLanguageAndFormatQuery);

$consumptionSummaryArray = [];
for ($i = 0; $i < $consumptionSummaryByConsumptionVenuePrimaryLanguageAndFormatResult -> num_rows; $i++) {
  $row = $consumptionSummaryByConsumptionVenuePrimaryLanguageAndFormatResult -> fetch_assoc();
  if (!isset($consumptionSummaryArray[$row['consumption_venue']])) {
    $consumptionSummaryArray[$row['consumption_venue']] = [];
  }
  if (!isset($consumptionSummaryArray[$row['consumption_venue']][$row['primary_language']])) {
    $consumptionSummaryArray[$row['consumption_venue']][$row['primary_language']] = [];
  }  
  $consumptionSummaryArray[$row['consumption_venue']][$row['primary_language']][$row['format']] = $row['freq'];
}

print '<h4 id="consumptionSummaryByConsumptionVenuePrimaryLanguageAndFormat">Consumption summary by consumption venue, primary language, and format</h4>';
print "\n";
print '<table id="myTableConsumptionSummaryByConsumptionVenuePrimaryLanguageAndFormat" class="tablesorter">'."\n";
print "<thead>\n";
print '<tr><th>Consumption venue</th>';
print '<th>Primary language</th>';
print '<th>Count of consumption of distinct single videos (such as movies)</th>';
print '<th>Count of consumption of distinct series (such as TV show or web series)</th>';
print "</tr></thead>\n<tbody>\n";

foreach ($venues as $venue) {
  foreach ($languages as $language) {
    if (isset($consumptionSummaryArray[$venue]) &&
      isset($consumptionSummaryArray[$venue][$language])) {
      print '<tr>';
      print '<td>'.$venue.'</td>';
      print '<td>'.$language.'</td>';
      print '<td align="right">'.($consumptionSummaryArray[$venue][$language]['Single video (such as movie)'] ?? 0).'</td>';
      print '<td align="right">'.($consumptionSummaryArray[$venue][$language]['Series (such as TV show or web series)'] ?? 0).'</td>';
      print "</tr>\n";
    }
  }
}

print "</tbody>\n</table>\n";

?>