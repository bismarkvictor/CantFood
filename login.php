<?php 
  $conn = mysqli_connect("127.0.0.1","root", "", "cant_food");
  $user = $_POST['user'];
  $senha = $_POST['pass'];
  $query = "select * from usuarios";
  $row = mysqli_fetch_array(mysqli_query($conn,$query));
  if ($user == "admin" && $senha== "admin") {
    echo '
    <script>
      window.location.href = "inicio.php"
    </script>
    ';
  }else{
   echo "
    <script>
    	alert('LOGIN/SENHA INCORRETO!');
      window.location.href = 'index.php';
    </script>
    ";}
?>