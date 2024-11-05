<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Booknest.com</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<style>
.container{
    max-width: 600px;
    margin: 50px auto;
    background-color: white;
    padding: 30px;
    border-radius: 8px;
    box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.1);
}
*{
    text-decoration: none;
}
.navbar{
    background: blue; 
    font-family: calibri; 
    padding-right: 15px;
    padding-left: 15px;
}
.navdiv{
    display: flex; 
    align-items: center; 
    justify-content: space-between;
}
.logo a{
    font-size: 35px; 
    font-weight: 600; 
    color: black;
}
li{
    list-style: none; 
    display: inline-block;
}
li a{
    color: black; 
    font-size: 18px; 
    font-weight: bold; 
    margin-right: 25px;
}
button{
    background-color: black; 
    margin-left: 10px; 
    border-radius: 10px; 
    padding: 10px; 
    width: 90px;
}
button a{
    color: white; 
    font-weight: bold; 
    font-size: 15px;
}

/* Form box style */
.form-box {
    background-color: #f8f9fa; /* Light gray background */
    padding: 20px;
    border: 1px solid #ccc;
    border-radius: 8px;
    margin-top: 20px;
}

/* Carousel */
.carousel img {
    max-height: 300px;
    max-width: 100%;
    object-fit: cover;
}

/* Input field styles */
.form-control {
    margin-bottom: 15px;
}

.btn-primary {
    background-color: #007bff;
    border-color: #007bff;
    width: 100%;
}
body,html{
  background-color:lightgrey;
}

</style>
</head>
<body>
<form>
<nav class="navbar">
    <div class="navdiv">
        <div class="logo"><a href="#">HotelManagement</a></div>
        <ul>
            <li><a href="/">Home</a></li>
            <li><a href="#">About</a></li>
            <li><a href="/contact">Contact</a></li>
        </ul>
    </div>
</nav>

<div class="container">
    <!-- Bootstrap Carousel -->
    <div id="hotelCarousel" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="images/hotel8.jpg" class="d-block w-100" alt="Hotel 1">
            </div>
            <div class="carousel-item">
                <img src="images/hotel18.jpg" class="d-block w-100" alt="Hotel 2">
            </div>
           
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#hotelCarousel" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#hotelCarousel" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
    <!-- End Carousel -->

    <h2>Trident Bandra Kurla</h2>
   
    <p>Bandra,Mumbai</p>
</div>

<!-- Form box container -->
<div class="container">
    <div class="form-box">
        <label>Check In: </label>
        <div id="checkin-datepicker" class="input-group date" data-date-format="mm-dd-yyyy">
            <input class="form-control" type="text" readonly />
            <span class="input-group-addon">
                <i class="glyphicon glyphicon-calendar"></i>
            </span>
        </div>

        <label>Check Out: </label>
        <div id="checkout-datepicker" class="input-group date" data-date-format="mm-dd-yyyy">
            <input class="form-control" type="text" readonly />
            <span class="input-group-addon">
                <i class="glyphicon glyphicon-calendar"></i>
            </span>
        </div>

        <!-- Arrange Adult, Child, Room in a single column -->
        <div class="form-group">
            <label for="exampleInputEmail1">Adult</label>
            <input type="number" class="form-control" value="1" min="0" max="1000" step="1" />
        </div>
        <div class="form-group">
            <label for="exampleInputEmail1">Child</label>
            <input type="number" class="form-control" value="1" min="0" max="1000" step="1" />
        </div>
        <div class="form-group">
            <label for="exampleInputEmail1">Room</label>
            <input type="number" class="form-control" value="1" min="0" max="1000" step="1" />
        </div>

        <div class="form-group">
            <div class="row">
                <legend class="col-form-label col-sm-2 pt-0">Filters</legend>
                <div class="col-sm-10">
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios1" value="option1" checked>
                        <label class="form-check-label" for="gridRadios1">Free cancellation</label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios2" value="option2">
                        <label class="form-check-label" for="gridRadios2">Breakfast included</label>
                    </div>
                </div>
            </div>
        </div>

         <a class="btn btn-primary" href="/book" role="button">Reserve</a>
    </div>
</div>
</form>

<script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
<script>
    $(function () {
        $('#checkin-datepicker').datepicker({
            autoclose: true,
            todayHighlight: true
        }).datepicker('update', new Date());
        
        $('#checkout-datepicker').datepicker({
            autoclose: true,
            todayHighlight: true
        }).datepicker('update', new Date());
    });
</script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7HfuibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>
