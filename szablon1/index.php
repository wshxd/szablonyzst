<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

<?php
$a = 5;
$i = 5;
$s = 4;
$space = "<br>";
// $gwiazdka = "*"
//Strzałka w prawo
// for ($a = 1; $a <= $i; $a++) {
//         echo str_repeat("*", $a), "<br>";
// }
// for ($a = $s; $a >= 1; $a--) {
//         echo str_repeat("*", $a), "<br>";
// }
// echo "<br>";
// echo "<br>";
// echo "<br>";

//Strzałka w lewo
// for ($b = 1; $b <= $i; $b++) {
//     echo str_repeat($gwiazdka, $b), "<br>";
// }
// for ($b = $s; $b >= 1; $b--) {
//     echo str_repeat($gwiazdka, $b), "<br>";
// }

for ($i = 1; $i <= ($a * 2) - 1; $i++) {
        $gwa = ($i <= $a) ? $i : (2 * $a - $i);
        echo str_repeat("", $a - $gwa), str_repeat("*", $gwa) , "<br>";
};
echo "<br>";
for ($i = 1; $i <= ($a * 2) - 1; $i++) {
    $gwa = ($i <= $a) ? $i : (2 * $a - $i);
    echo str_repeat(nbsp * $a, $a - $gwa), str_repeat("*", $gwa) , "<br>";
};


?>

</body>
</html>