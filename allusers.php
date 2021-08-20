<?php 
    include 'config.php';
   
    $sql = "SELECT * FROM users";
    $result = mysqli_query($conn,$sql);
?>

<?php include('nav.php'); ?>
<link rel="stylesheet" type="text/css" href="style.css?v=<? php echo time(); ?>">
    


    </style>
    <div class="bgd">
<div class="container">
<h1>All Users</h1>
        <br>
            <div class="row">
                <div class="col">
                    <div class="table-responsive-sm">
                    <table class="table table-hover table-sm table-striped table-condensed table-bordered">
                        <thead>
                            <tr>
                            <th scope="col" class="text-center py-2">Id</th>
                            <th scope="col" class="text-center py-2">Name</th>
                            <th scope="col" class="text-center py-2">E-Mail</th>
                            <th scope="col" class="text-center py-2">Balance</th>
                        
                            </tr>
                        </thead>
                        <tbody>
                        <?php 
                    while($rows=mysqli_fetch_assoc($result)){
                ?>
                    <tr>
                        <td class="py-2"><?php echo $rows['id'] ?></td>
                        <td class="py-2"><?php echo $rows['name']?></td>
                        <td class="py-2"><?php echo $rows['email']?></td>
                    <td class="py-2"><?php echo $rows['balance']?></td>
                     
                    </tr>
                <?php
                    }
                ?>
            
                        </tbody>
                </div>