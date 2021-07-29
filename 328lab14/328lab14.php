<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">

<!--
    trying PHP SimpleXML package

    by: Philip Toulinov and Brian Buchmiller
    last modified: 2020-05-01

    you can run this using the URL:
	https://nrs-projects.humboldt.edu/~pnt40/328lab14/328lab14.php
-->

<head>
    <title> PHP XML </title>
    <meta charset="utf-8" />

    <link href="https://nrs-projects.humboldt.edu/~st10/styles/normalize.css"
          type="text/css" rel="stylesheet" />
</head>

<body>

<?php
    $myXmlEmail = simplexml_load_file("lab14-1.xml");

    $to = $myXmlEmail->to;
    $from = trim($myXmlEmail->from);
    $heading = trim($myXmlEmail->heading);
?>

  <ul>
    <pre>
        <li> $phpVersion1->{'to'} is: [<?= $to ?>] </li>
        <li> $phpVersion1->{'from'} is: [<?= $from ?>] </li>
        <li> $phpVersion2['heading'] is: [<?= $heading ?>] </li>
    </pre>
  </ul>

<?php

    $myJSONString = file_get_contents("lab14-3.json");

    $phpVersion1 = json_decode($myJSONString);

    $sender = $phpVersion1->{'sender'};
    $recipient = $phpVersion1->{'recipient'};
    $read_time = $phpVersion1->{'read_time'};

?> 

   <ul>
    <pre>
        <li> $phpVersion1->{'sender'} is: [<?= $sender ?>] </li>
        <li> $phpVersion1->{'recipient'} is: [<?= $recipient ?>] </li>
        <li> $phpVersion2['read_time'] is: [<?= $read_time ?>] </li>
     </pre>
   </ul> 


</body>
</html>
