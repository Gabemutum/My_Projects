<?php
$page_title='Price';

include('includes/header.html');

echo '<h1>________________</h1>';
echo '<h1>________________</h1>';
echo '<h1>Looking for any specific price?  </h1>';
require('../mysqli_connect.php');

if($_SERVER['REQUEST_METHOD'] == 'POST') {
   
	//checking for errors like in class 
    $errors =[];
    // check for a first name
    if(empty($_POST['price']) ) {
        $errors[] = 'You forgot to enter the price.';
    } else {
        $price = $_POST['price'];
    }

// Query:
    $q = "SELECT dish_name, price
    FROM dishes WHERE price >= $price";

 // db connection 
    $r = @mysqli_query($dbc, $q);

    if ($r) { // if the query ran 

        $num = mysqli_num_rows($r);

        if($num >0) {
        echo"<p>There are currently $num dishes which the price is at least $price</p>\n";
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
} else { // if it did not run ok
    echo '<p class="error">The current user could not be retrieved.</p>';
    echo '<p>' .mysqli_error($dbc). '<br><br>Query" '.$q. '</p>';

}

}
?>

<style>
  h1 {color: #6c9ae6;}
  p {text-align: center;
    color: #808e93;}
</style>

<form action="price.php" method="post">
<p> 
Enter price: <input type="price" name="price" size="10" maxlength="20"
value="<?php if(isset($_POST['price'])) echo $_POST['price']; ?>">
</p>
<p><input type="submit" name="submit" value="Submit">
</p>
</form>
<?php include('includes/footer.html'); ?>