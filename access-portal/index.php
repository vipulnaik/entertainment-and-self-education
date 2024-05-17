<?php
include_once('doctype.inc');
print '<script src="change-theme.js"></script>';
print '<title>Entertainment and self-education portal for Vipul Naik</title>';
include_once('strip-commas.inc');
include_once('backend/stringFunctions.inc');
include_once('backend/globalVariables/lists.inc');
print '<link href="style.css" rel="stylesheet" type="text/css" />'."\n";
include_once('style.inc');
print '<script type="text/javascript" src="./jquery-3.7.1.min.js"></script>'."\n";
print '<script type="text/javascript" src="./jquery.tablesorter.js"></script>'."\n";
print '</head>';
include_once("backend/globalVariables/passwordFile.inc");
print "<body>\n";
print '<script>$(document).ready(function(){$("table").tablesorter({textExtraction: stripCommas});});</script>'."\n";
print '<h3>Entertainment and self-education portal for Vipul Naik</h3>';
?>

<p><span id="changeThemeMenu" style="display: none;">Set color scheme to:
         <span id="auto-menu-option" style="cursor: pointer;" class="unselectable" onclick="change_theme.set_color('auto')">auto</span>,
         <span id="light-menu-option" style="cursor: pointer;" class="unselectable" onclick="change_theme.set_color('light')">light</span>,
         <span id="dark-menu-option" style="cursor: pointer;" class="unselectable" onclick="change_theme.set_color('dark')">dark</span>
</span>&thinsp;<!-- blank space to prevent cumulative layout shift --></p>

<?php
include_once('preamble.inc');
print '<h4>Table of contents</h4>';
print '<ul>';
print '<li><a href="#consumptionSummaryByPrimaryLanguageAndFormat">Consumption summary by primary language and format</a></li>';
print '<li><a href="#consumptionSummaryByConsumptionVenueAndFormat">Consumption summary by consumption venue and format</a></li>';
print '<li><a href="#consumptionSummaryByConsumptionVenuePrimaryLanguageAndFormat">Consumption summary by consumption venue, primary language, and format</a></li>';
print '<li><a href="#consumptionSummaryByStartYearAndFormat">Consumption summary by start year and format</a></li>';
print '<li><a href="#consumptionSummaryByConsumptionVenueStartYearAndFormat">Consumption summary by consumption venue, start year, and format</a></li>';
print '<li><a href="#consumptionSummaryByPrimaryLanguageStartYearAndFormat">Consumption summary by primary language, start year, and format</a></li>';
print '<li><a href="#ongoingConsumptionList">Ongoing consumption list</a></li>';
print '<li><a href="#consumptionList">Consumption list</a></li>';
print '</ul>';

include ("backend/consumptionSummaryByPrimaryLanguageAndFormat.inc");
include ("backend/consumptionSummaryByConsumptionVenueAndFormat.inc");
include ("backend/consumptionSummaryByConsumptionVenuePrimaryLanguageAndFormat.inc");
include ("backend/consumptionSummaryByStartYearAndFormat.inc");
include ("backend/consumptionSummaryByConsumptionVenueStartYearAndFormat.inc");
include ("backend/consumptionSummaryByPrimaryLanguageStartYearAndFormat.inc");
include ("backend/ongoingConsumptionList.inc");
include ("backend/consumptionList.inc");

include_once('anchorjs.inc');
print '<script>change_theme.set_theme_from_local_storage();</script>';
print '</body>';
?>
