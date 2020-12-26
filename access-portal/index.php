<?php
include_once('doctype.inc');
print '<title>Entertainment and self-education portal for Vipul Naik</title>';
include_once('strip-commas.inc');
include_once('backend/stringFunctions.inc');
include_once('backend/globalVariables/lists.inc');
print '<link href="style.css" rel="stylesheet" type="text/css" />'."\n";
print '<script type="text/javascript" src="./jquery-3.1.1.min.js"></script>'."\n";
print '<script type="text/javascript" src="./jquery.tablesorter.js"></script>'."\n";
print '</head>';
include_once("backend/globalVariables/passwordFile.inc");
print "<body>\n";
print '<script>$(document).ready(function(){$("table").tablesorter({textExtraction: stripCommas});});</script>'."\n";
print '<h3>Entertainment and self-education portal for Vipul Naik</h3>';
include_once('preamble.inc');
print '<h4>Table of contents</h4>';
print '<ul>';
print '<li><a href="#consumptionSummaryByPrimaryLanguageAndFormat">Consumption summary by primary language and format</a></li>';
print '<li><a href="#consumptionSummaryByConsumptionVenueAndFormat">Consumption summary by consumption venue and format</a></li>';
print '<li><a href="#consumptionSummaryByConsumptionVenuePrimaryLanguageAndFormat">Consumption summary by consumption venue, primary language, and format</a></li>';
print '<li><a href="#consumptionSummaryByStartYearAndFormat">Consumption summary by start year and format</a></li>';
print '<li><a href="#consumptionList">Consumption list</a></li>';
print '</ul>';

include ("backend/consumptionSummaryByPrimaryLanguageAndFormat.inc");
include ("backend/consumptionSummaryByConsumptionVenueAndFormat.inc");
include ("backend/consumptionSummaryByConsumptionVenuePrimaryLanguageAndFormat.inc");
include ("backend/consumptionSummaryByStartYearAndFormat.inc");
include ("backend/consumptionList.inc");

include_once('anchorjs.inc');
print '</body>';
?>
