<?php

function printDateWithPrecision($date, $datePrecision) {
  if ($datePrecision == 'month' or $datePrecision == 'quarter') {
    $date = substr($date,0,7);
  } else if ($datePrecision == 'year' or $datePrecision == 'multi-year') {
    $date = substr($date,0,4);
  }
  print '<td align="left"><element title="'.$datePrecision.' precision">'.$date.'</element></td>';
}

function cleanNotes($notes) {
  $notesList = explode(" ",$notes);
  $augmentedNotes = "";
  foreach ($notesList as $notesWord) {
    if (substr($notesWord,0,4) == "http") {
      $augmentedNotes = $augmentedNotes . '<a href="'.$notesWord.'">'.$notesWord.'</a> ';
    } else {
      $augmentedNotes = $augmentedNotes . $notesWord . " ";
    }
  }
  return $augmentedNotes;
}

?>