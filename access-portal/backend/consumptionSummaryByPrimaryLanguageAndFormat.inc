<?php

$consumptionSummaryByPrimaryLanguageAndFormatQuery = "select primary_language, format, count(distinct item) as freq from consumption group by primary_language, format;";
$consumptionSummaryByPrimaryLanguageAndFormatResult = $mysqli -> query($consumptionSummaryByPrimaryLanguageAndFormatQuery);

$consumptionSummaryArray = [];
for ($i = 0; $i < $consumptionSummaryByPrimaryLanguageAndFormatResult -> num_rows; $i++) {
  $row = $consumptionSummaryByPrimaryLanguageAndFormatResult -> fetch_assoc();
  if (!isset($consumptionSummaryArray[$row['primary_language']])) {
    $consumptionSummaryArray[$row['primary_language']] = [];
  }
  $consumptionSummaryArray[$row['primary_language']][$row['format']] = $row['freq'];
}

print '<h4 id="consumptionSummaryByPrimaryLanguageAndFormat">Consumption summary by primary language and format</h4>';
print "\n";
print '<table id="myTableConsumptionSummaryByPrimaryLanguageAndFormat" class="tablesorter">'."\n";
print "<thead>\n";
print '<tr><th>Primary language</th>';
print '<th>Count of consumption of distinct single videos (such as movies)</th>';
print '<th>Count of consumption of distinct series (such as TV show or web series)</th>';
print "</tr></thead>\n<tbody>\n";

foreach ($languages as $language) {
  print '<tr>';
  print '<td>'.$language.'</td>';
  print '<td align="right">'.($consumptionSummaryArray[$language]['Single video (such as movie)'] ?? 0).'</td>';
  print '<td align="right">'.($consumptionSummaryArray[$language]['Series (such as TV show or web series)'] ?? 0).'</td>';
  print "</tr>\n";
}

print "</tbody>\n</table>\n";

?>