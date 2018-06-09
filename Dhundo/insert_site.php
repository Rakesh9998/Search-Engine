<?php ob_start();
 require_once("connect_db.php"); ?>
<?php require_once("functions.php"); ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="stylesheet/bootstrap.min.css">
    <link rel="stylesheet" href="stylesheet/style.css"/>
    <script src="js/sweetalert.min.js"></script> 
    <link rel="stylesheet" type="text/css" href="stylesheet/sweetalert.css">
    <title>Add a website</title>
</head>
<body>
<div class="container">
        <div class="row">
        <div class="col-md-12 header">
          <a href="index.html"><h1>DHUNDO</h1></a>
            <pre><h3><p>           Your own search engine.. </p></h3></pre>
        </div>
        </div>
    <form id="neg-style" action="insert_site.php" method="post" enctype="multipart/form-data" >

        <table cellspacing="5" border="2">
            <tr colspan="2">
             <caption><h1> Insert new website  </h1> </caption>
            </tr>
            <tr>
                <td> Site Title </td>
                <td><input type="text" name="site_title" /> </td>
            </tr>
            <tr>
                <td> Site Link </td>
                <td><input type="text" name="site_link" /> </td>
            </tr>
            <tr>
                <td> Site Keyword </td>
                <td><input type="text" name="site_keyword" /> </td>
            </tr>
            <tr>
                <td> Site Description </td>
                <td><textarea  cols="21" rows="5" name="site_desc"></textarea></td>
            </tr>
            <tr>
                <td> Site Image </td>
                <td><input type="file" name="site_image" /> </td>
            </tr>
        </table>
         <pre>            <input id="mid" type="submit" value="Add site now" name="submit" /></pre>
    </form>
</div>
</body>
<footer>
            &copy; SHIVAM SRIVASTAVA
        </footer>
</html>

<?php
if(isset($_POST['submit'])){
//escape all strings
$site_title = $_POST['site_title'];
$site_link = $_POST['site_link'];
$site_keyword = $_POST['site_keyword'];
$site_description = $_POST['site_desc'];
$site_image = $_FILES['site_image']['name'];
$site_image_temp = $_FILES['site_image']['tmp_name'];


if($site_title=='' || $site_link=='' || $site_keyword=='' || 
$site_description==''){
    echo "<script> swal(\"Something was Empty!\", \"Please fill all the fields.\",\"error\");</script>";
    //redirect_to("insert_site.php");
    exit();
}
else{
    $query =  "INSERT INTO ";
    $query .= "sites (site_title, site_link, site_keyword, site_desc, ";
    $query .= "site_image) ";
    $query .= "VALUES ( :title, :link, :keyword, ";
    $query .= ":description, :image)";

    $statement = $db->prepare($query);
    $statement->execute(array(':title' => $site_title, ':link' => $site_link, ':keyword' => $site_keyword, ':description' =>  $site_description, ':image' => $site_image));

    move_uploaded_file($site_image_temp,"images/{$site_image}"); 

    if($statement -> rowCount() == 1){
        echo "<script> swal(\"Inserted !\", \"Site was successfully added.\", \"success\");</script>";
    }
   
}
}
?>
<?php
    #if(isset($connection)) { mysqli_close($connection); }
    ob_end_flush();
?>