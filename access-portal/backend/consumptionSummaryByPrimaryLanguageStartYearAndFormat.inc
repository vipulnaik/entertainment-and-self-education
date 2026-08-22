<?php

$consumptionSummaryByPrimaryLanguageStartYearAndFormatQuery = "select primary_language, year(start_date) as start_year, format, case when rewatch then 'rewatch' else 'new' end as rewatch_or_new, count(distinct item) as freq from consumption group by primary_language, year(start_date), format, rewatch_or_new;";
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
  $consumptionSummaryArray[$row['primary_language']][$row['start_year']][$row['format'].' ('.$row['rewatch_or_new'].')'] = $row['freq'];
}

print '<h4 id="consumptionSummaryByPrimaryLanguageStartYearAndFormat">Consumption summary by consumption language, start year, and format</h4>';
print "\n";
print '<table id="myTableConsumptionSummaryByPrimaryLanguageStartYearAndFormat" class="tablesorter">'."\n";
print "<thead>\n";
print '<tr><th>Primary language</th>';
print '<th>Start year</th>';
print '<th>Count of consumption of distinct new single videos (such as movies)</th>';
print '<th>Count of consumption of distinct new series (such as TV show or web series)</th>';
print '<th>Count of consumption of distinct rewatch single videos (such as movies)</th>';
print '<th>Count of consumption of distinct rewatch series (such as TV show or web series)</th>';
print "</tr></thead>\n<tbody>\n";

foreach ($languages as $language) {
  foreach ($years as $year) {
    if (isset($consumptionSummaryArray[$language]) &&
      isset($consumptionSummaryArray[$language][$year])) {
      print '<tr>';
      print '<td>'.$language.'</td>';
      print '<td>'.$year.'</td>';
      print '<td align="right">'.($consumptionSummaryArray[$language][$year]['Single video (such as movie) (new)'] ?? 0).'</td>';
      print '<td align="right">'.($consumptionSummaryArray[$language][$year]['Series (such as TV show or web series) (new)'] ?? 0).'</td>';
      print '<td align="right">'.($consumptionSummaryArray[$language][$year]['Single video (such as movie) (rewatch)'] ?? 0).'</td>';
      print '<td align="right">'.($consumptionSummaryArray[$language][$year]['Series (such as TV show or web series) (rewatch)'] ?? 0).'</td>';
      print "</tr>\n";
    }
  }
}

print "</tbody>\n</table>\n";

?>