<?php

$schedule = [
    "monday" => [
        'Сучасні технології Internet-програмування',
        'Операційні системи',
    ],
    "tuesday" => [
        'Якість програмного забезпечення та тестування',
        'Чисельні методи в інформатиці',
    ],
    "wednesday" => [
        'Системи штучного інтелекту',
        'Емпіричні методи програмної інженерії',
    ],
    "thursday" => [
        'Операційні системи',
        'Якість програмного забезпечення та тестування',
    ],
    "friday" => [
        'Системи штучного інтелекту',
        'Сучасні технології Internet-програмування',
    ],
];

header('Content-Type: application/json; charset=utf-8');
$result = [];
if (array_key_exists('dayOfTheWeek', $_GET) && array_key_exists($_GET["dayOfTheWeek"], $schedule)) {
    $result = $schedule[$_GET["dayOfTheWeek"]];
}

echo json_encode($result);
