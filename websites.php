<?php

$connect = mysqli_connect('sql213.infinityfree.com','if0_37424683','x7YinD01kU2U','if0_37424683_developer_needs');

$query = 'SELECT * FROM websites';

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
          <li class=""><a href="extensions.php">Extensions</a></li>
          <li class="active"><a href="websites.php">Websites</a></li>
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
            <div class="tagline">
              <h2><? echo $records[$i]['title']; ?></h2>
            </div>
            <div class="imgBox">
              <img src="website_images/<? echo $records[$i]['image'];?>" alt="" />
            </div>
            <div class="info">
                <?php
                 if($records[$i]['website']){
                ?>
              <p><? echo $records[$i]['website']; ?></p>
              <?php
                 }
              ?>
             
            </div>
            <div class="description">
                  <? echo $records[$i]['description'];?>
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
