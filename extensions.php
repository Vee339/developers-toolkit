<?php

$connect = mysqli_connect('sql213.infinityfree.com','if0_37424683','x7YinD01kU2U','if0_37424683_developer_needs');

$query = 'SELECT * FROM extension';

$result = mysqli_query($connect, $query);

$records = [];

while($record = mysqli_fetch_assoc($result)){
  $records[] = $record;
}
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Developers' Toolkit</title>
    <link rel="stylesheet" href="./styles/main.css" />
  </head>
  <body>
    <section id="container">
      <header>
        <ul id="list">
          <li class="active"><a href="extensions.php">Extensions</a></li>
          <li class=""><a href="websites.php">Websites</a></li>
        </ul>
        <h2 id="site-logo">Developers' Toolkit</h2>
      </header>
      <main>
        <h1>Some useful tools that every developer should look into</h1>
        <div class="cards">
          <?php 
            for($i = 0; $i < count($records); $i++){
          ?>
          <a
            class="card"
            href="<? echo $records[$i]['url'];?>"
            target="_blank"
          >
            <span class="category"><? echo $records[$i]['category'];?></span>
            <div class="tagline">
              <?php 
                if($records[$i]['logo']){
              ?>
              <img src="extension_images/logos/<? echo $records[$i]['logo'];?>" />
              <?php
                }
              ?>
              <h2><? echo $records[$i]['name']; ?></h2>
            </div>
            <div class="imgBox">
              <img src="extension_images/images/<? echo $records[$i]['image'];?>" alt="" />
            </div>
            <div class="info">
              <p>
                <span class="number-of-users"><? echo $records[$i]['users_count']; ?></span> users ★<span
                  class="rating"
                  ><? echo $records[$i]['rating']; ?></span
                >
                (<span class="number-of-ratings"><? echo $records[$i]['ratings_count']; ?></span>
                ratings)
              </p>
            </div>
          </a>
          <?php
        }
        ?>
        </div>
      </main>
      <footer>&copy; copyright. Veerpal Kaur 2025</footer>
    </section>
  </body>
</html>
