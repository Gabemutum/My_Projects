<?php
$page_title='Dishes';




include('includes/header.html');
echo '<h1>________________</h1>';
echo '<h1>________________</h1>';
echo '<h1>Available Dishes  </h1>';
require('../mysqli_connect.php');

$price = 0;

// Query:
    $q = "SELECT dish_name, price
    FROM dishes WHERE price >= $price";

 // db connection 
    $r = @mysqli_query($dbc, $q);

    if ($r) { // if the query ran 

        $num = mysqli_num_rows($r);

        if($num >0) {
        echo"<p>There are currently $num available dishes</p>\n";
    }
    echo '<table width="60%" class="table">
    <thead>
    <tr>
        <th align="left">Dish Name</th>
        <th align="left">Price</th>
    
    </tr>
    </thead>
    <tbody>';

    while($row = mysqli_fetch_array($r, MYSQLI_ASSOC)) {
        echo '<tr>';
        echo '<td align="left">' .$row['dish_name']. '</td>';
        echo '<td align="left">' .$row['price']. '</td>';
        
        echo '</tr>';
    }
    echo '</tbody><table>';
    mysqli_free_result($r);


}
?>

<style>
  h1 {text-align: center;
    color: #6c9ae6;}
  p {text-align: center;
    color: #808e93;}
</style>

<?php include('includes/footer.html'); ?>