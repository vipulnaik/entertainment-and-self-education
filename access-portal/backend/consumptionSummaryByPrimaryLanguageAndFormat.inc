<?php

$consumptionSummaryByPrimaryLanguageAndFormatQuery = "select primary_language, format, case when rewatch then 'rewatch' else 'new' end as rewatch_or_new, count(distinct item) as freq from consumption group by primary_language, format, rewatch_or_new;";
$consumptionSummaryByPrimaryLanguageAndFormatResult = $mysqli -> query($consumptionSummaryByPrimaryLanguageAndFormatQuery);

$consumptionSummaryArray = [];
for ($i = 0; $i < $consumptionSummaryByPrimaryLanguageAndFormatResult -> num_rows; $i++) {
  $row = $consumptionSummaryByPrimaryLanguageAndFormatResult -> fetch_assoc();
  if (!isset($consumptionSummaryArray[$row['primary_language']])) {
    $consumptionSummaryArray[$row['primary_language']] = [];
  }
  $consumptionSummaryArray[$row['primary_language']][$row['format'].' ('.$row['rewatch_or_new'].')'] = $row['freq'];
}

print '<h4 id="consumptionSummaryByPrimaryLanguageAndFormat">Consumption summary by primary language and format</h4>';
print "\n";
print '<table id="myTableConsumptionSummaryByPrimaryLanguageAndFormat" class="tablesorter">'."\n";
print "<thead>\n";
print '<tr><th>Primary language</th>';
print '<th>Count of consumption of distinct new single videos (such as movies)</th>';
print '<th>Count of consumption of distinct new series (such as TV show or web series)</th>';
print '<th>Count of consumption of distinct rewatch single videos (such as movies)</th>';
print '<th>Count of consumption of distinct rewatch series (such as TV show or web series)</th>';
print "</tr></thead>\n<tbody>\n";

foreach ($languages as $language) {
  print '<tr>';
  print '<td>'.$language.'</td>';
  print '<td align="right">'.($consumptionSummaryArray[$language]['Single video (such as movie) (new)'] ?? 0).'</td>';
  print '<td align="right">'.($consumptionSummaryArray[$language]['Series (such as TV show or web series) (new)'] ?? 0).'</td>';
  print '<td align="right">'.($consumptionSummaryArray[$language]['Single video (such as movie) (rewatch)'] ?? 0).'</td>';
  print '<td align="right">'.($consumptionSummaryArray[$language]['Series (such as TV show or web series) (rewatch)'] ?? 0).'</td>';
  print "</tr>\n";
}

print "</tbody>\n</table>\n";

?>