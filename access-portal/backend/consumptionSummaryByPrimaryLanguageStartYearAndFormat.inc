<?php

$consumptionSummaryByPrimaryLanguageStartYearAndFormatQuery = "select primary_language, year(start_date) as start_year, format, count(distinct item) as freq from consumption group by primary_language, year(start_date), format;";
$consumptionSummaryByPrimaryLanguageStartYearAndFormatResult = $mysqli -> query($consumptionSummaryByPrimaryLanguageStartYearAndFormatQuery);

$consumptionSummaryArray = [];
for ($i = 0; $i < $consumptionSummaryByPrimaryLanguageStartYearAndFormatResult -> num_rows; $i++) {
  $row = $consumptionSummaryByPrimaryLanguageStartYearAndFormatResult -> fetch_assoc();
  if (!isset($consumptionSummaryArray[$row['primary_language']])) {
    $consumptionSummaryArray[$row['primary_language']] = [];
  }
  if (!isset($consumptionSummaryArray[$row['primary_language']][$row['start_year']])) {
    $consumptionSummaryArray[$row['primary_language']][$row['start_year']] = [];
  }  
  $consumptionSummaryArray[$row['primary_language']][$row['start_year']][$row['format']] = $row['freq'];
}

print '<h4 id="consumptionSummaryByPrimaryLanguageStartYearAndFormat">Consumption summary by consumption language, start year, and format</h4>';
print "\n";
print '<table id="myTableConsumptionSummaryByPrimaryLanguageStartYearAndFormat" class="tablesorter">'."\n";
print "<thead>\n";
print '<tr><th>Primary language</th>';
print '<th>Start year</th>';
print '<th>Count of consumption of distinct single videos (such as movies)</th>';
print '<th>Count of consumption of distinct series (such as TV show or web series)</th>';
print "</tr></thead>\n<tbody>\n";

foreach ($languages as $language) {
  foreach ($years as $year) {
    if (isset($consumptionSummaryArray[$language]) &&
      isset($consumptionSummaryArray[$language][$year])) {
      print '<tr>';
      print '<td>'.$language.'</td>';
      print '<td>'.$year.'</td>';
      print '<td align="right">'.($consumptionSummaryArray[$language][$year]['Single video (such as movie)'] ?? 0).'</td>';
      print '<td align="right">'.($consumptionSummaryArray[$language][$year]['Series (such as TV show or web series)'] ?? 0).'</td>';
      print "</tr>\n";
    }
  }
}

print "</tbody>\n</table>\n";

?>