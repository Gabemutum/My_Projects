<?php
$page_title = 'Sing Up';
include('includes/header.html');
echo '<h1>________________</h1>';
echo '<h1>________________</h1>';
echo '<h1>Register for Customers List</h1>';
require('../mysqli_connect.php'); 

if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    
    $errors = []; 

    if (empty($_POST['first_name'])) {
        $errors[] = 'You forgot to enter your first name.';
    } else {
        $fn = mysqli_real_escape_string($dbc, trim($_POST['first_name']));
    }

    if (empty($_POST['last_name'])) {
        $errors[] = 'You forgot to enter your last name.';
    } else {
        $ln = mysqli_real_escape_string($dbc, trim($_POST['last_name']));
    }

    if (empty($_POST['email'])) {
        $errors[] = 'You forgot to enter your email address.';
    } else {
        $email = mysqli_real_escape_string($dbc, trim($_POST['email']));
    }

    if (empty($_POST['phone'])) {
        $errors[] = 'You forgot to enter your phone number.';
    } else {
        $phone = mysqli_real_escape_string($dbc, trim($_POST['phone']));
    }

    if (empty($_POST['dish'])) {
        $errors[] = 'You forgot to select a favorite dish.';
    } else {
        $dish = mysqli_real_escape_string($dbc, trim($_POST['dish']));
    }

    if (empty($errors)) {
        #$q= "INSERT INTO info values(NULL, '$fn', '$ln', '$email', '$phone', '$dish')";

        $q = "INSERT INTO info (first_name, last_name, email, phone, fav_dish_id) VALUES ('$fn', '$ln', '$email', '$phone', '$dish')";
        $r = @mysqli_query($dbc, $q); 
        if ($r) { 
            echo '<p>Customer is registered.</p>';

        } else { 
            echo '<h1>System Error</h1>
            <p class="error">You could not be registered.</p>';

        } 
        mysqli_close($dbc); 
        include('includes/footer.html');
        exit();

    } else { 
        echo '<h1>Error!</h1>
        <p class="error">The following error(s) occurred:<br>';
        foreach ($errors as $msg) { 
            echo " - $msg<br>\n";
        }
        
    } 
    
} 
?>

<form action="register.php" method="post">
    <p>First Name: <input type="text" name="first_name" size="15" maxlength="20" value="<?php if (isset($_POST['first_name'])) echo $_POST['first_name']; ?>"></p>
    <p>Last Name: <input type="text" name="last_name" size="15" maxlength="40" value="<?php if (isset($_POST['last_name'])) echo $_POST['last_name']; ?>"></p>
    <p>Email Address: <input type="email" name="email" size="20" maxlength="60" value="<?php if (isset($_POST['email'])) echo $_POST['email']; ?>" > </p>
    <p>Phone Number: <input type="number" name="phone" size="20" maxlength="30" value="<?php if (isset($_POST['phone'])) echo $_POST['phone']; ?>" ></p>
    <p>Favorite dish:
    <select name="dish"> <?php
        $q_dish = "SELECT dish_id, dish_name FROM dishes";
        $r_dish = @mysqli_query($dbc, $q_dish);
        while ($row = mysqli_fetch_array($r_dish, MYSQLI_ASSOC)) {
            echo '<option value=" '. $row['dish_id'] . '">' . $row['dish_name']. '</option>';
        } ?>
    </select></p> 
    <p><input type="submit" name="submit" value="Register"></p>
</form>

<?php
$qu = "SELECT CONCAT(last_name, ', ', first_name) AS name, email as email, phone as phone, fav_dish_id as dish FROM info ";
$rr = @mysqli_query($dbc, $qu); // Run the query.

// Count the number of returned rows:
$num = mysqli_num_rows($rr);

if ($num > 0) { // If it ran OK, display the records.

    echo"\n<p><br>";
	// Print how many users there are:
	echo "<p>\nThere are currently $num registered users.</p>\n";

	// Table header.
	echo '<table width="60%" class="table">
	<thead>
	<tr>
		<th align="left">Name</th>
		<th align="left">Date Registered</th>
	</tr>
	</thead>
	<tbody>
';

	// Fetch and print all the records:
	while ($row = mysqli_fetch_array($rr, MYSQLI_ASSOC)) {
		echo '<tr><td align="left">' . $row['name']  . '</td><td align="left">' . $row['email'] 
        . '</td><td align="left">' . $row['phone']  . '</td><td align="left">' . $row['dish'] . '</td></tr>
		';
	}

	echo '</tbody></table>'; // Close the table.

	mysqli_free_result ($rr); // Free up the resources.

} else { // If no records were returned.

	echo '<p class="error">There are currently no registered users.</p>';

}
mysqli_close($dbc);
 include('includes/footer.html');?>
