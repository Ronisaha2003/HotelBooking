<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hotel Home Page</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .card {
            display: inline-block;
            margin: 10px;
        }
         .card:hover {
        transform: scale(1.05); /* Slightly enlarge the card */
        transition: transform 0.3s ease; /* Smooth transition */
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Add shadow */
    }

    /* Button hover effect */
    .card .btn-primary:hover {
        background-color: #0056b3; /* Darker shade of blue */
        border-color: #0056b3; /* Match the button color on hover */
    }
         .navbar {
            background-color: rgba(0, 0, 0, 0.8); /* Dark background with opacity */
        }

        .navbar-nav .nav-link {
            color: white !important; /* White navbar links */
        }

        .dropdown-menu {
            background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent dropdown background */
        }
         .overlay-text {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            text-align: center;
            color: white;
        }

        .overlay-text h1 {
            font-size: 4rem;
            font-weight: bold;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.7);
        }
    </style>
</head>
<body>
  <nav class="navbar navbar-expand-lg navbar-dark">
            <a class="navbar-brand" href="#">BOOKNEST</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="/">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/about">About</a>
                    </li>                  
                    
                    
                    <li class="nav-item">
                        <a class="nav-link" href="/logout">Logout</a>
                    </li>
                </ul>
            </div>
        </nav>

<div class="container mt-4">
    <!-- Search Bar -->
    <div class="mb-4">
        <input type="text" id="hotelSearch" onkeyup="searchHotels()" class="form-control" placeholder="Search for hotels...">
    </div>

    <!-- Hotel Cards -->
    <div class="hotel-list">
        <div class="card" style="width: 18rem;">
            <img src="images/hotel1.jpg" height="150px" class="card-img-top" alt="Hotel Sun City">
            <div class="card-body">
                <h5 class="card-title">Hotel Sun City</h5>
                <p class="card-text">Mumbai Central</p>
                <p class="card-text1">$20020</p>
                <a href="/city" class="btn btn-primary">Reserve</a>
            </div>
        </div>
        <div class="card" style="width: 18rem;">
            <img src="images/hotel4.jpg" height="150px" class="card-img-top" alt="HOTEL GRAND VILLA">
            <div class="card-body">
                <h5 class="card-title">HOTEL GRAND VILLA</h5>
                <p class="card-text">East Delhi</p>
                <p class="card-text1">$20000</p>
                <a href="/villa" class="btn btn-primary">Reserve</a>
            </div>
        </div>
        <div class="card" style="width: 18rem;">
            <img src="images/hotel10.jpg" height="150px" class="card-img-top" alt="Hotel TAJ">
            <div class="card-body">
                <h5 class="card-title">Hotel TAJ</h5>
                <p class="card-text">South Kolkata</p>
                <p class="card-text1">$15000</p>
                <a href="/taj" class="btn btn-primary">Reserve</a>
            </div>
        </div>
        <div class="card" style="width: 18rem;">
            <img src="images/hotel6.jpg" height="150px" class="card-img-top" alt="Vivanta Kolkata">
            <div class="card-body">
                <h5 class="card-title">Vivanta Kolkata</h5>
                <p class="card-text">South Kolkata</p>
                <p class="card-text1">$10500</p>
                <a href="/kolkata" class="btn btn-primary">Reserve</a>
            </div>
        </div>
        <div class="card" style="width: 18rem;">
            <img src="images/hotel5.jpg" height="150px" class="card-img-top" alt="The Leela Palace">
            <div class="card-body">
                <h5 class="card-title">The Leela Palace</h5>
                <p class="card-text">Chennai</p>
                <p class="card-text1">$13500</p>
                <a href="/palace" class="btn btn-primary">Reserve</a>
            </div>
        </div>
        <div class="card" style="width: 18rem;">
            <img src="images/hotel2.jpg" height="150px" class="card-img-top" alt="Grand Hyatt">
            <div class="card-body">
                <h5 class="card-title">Grand Hyatt</h5>
                <p class="card-text">Mumbai</p>
                <p class="card-text1">$15000</p>
                <a href="/hyatt" class="btn btn-primary">Reserve</a>
            </div>
        </div>
        <div class="card" style="width: 18rem;">
            <img src="images/hotel7.jpg" height="150px" class="card-img-top" alt="Novotel">
            <div class="card-body">
                <h5 class="card-title">Novotel</h5>
                <p class="card-text">Mumbai</p>
                <p class="card-text1">$10570</p>
                <a href="/novotel" class="btn btn-primary">Reserve</a>
            </div>
        </div>
        <div class="card" style="width: 18rem;">
            <img src="images/hotel8.jpg" height="150px" class="card-img-top" alt="Trident Bandra Kurla">
            <div class="card-body">
                <h5 class="card-title">Trident Bandra Kurla</h5>
                <p class="card-text">Bandra, Mumbai</p>
                <p class="card-text1">$14500</p>
                <a href="/kurla" class="btn btn-primary">Reserve</a>
            </div>
        </div>
    </div>
</div>

<script>
function searchHotels() {
    let input = document.getElementById('hotelSearch').value.toLowerCase();
    let cards = document.getElementsByClassName('card');
    
    for (let i = 0; i < cards.length; i++) {
        let title = cards[i].getElementsByClassName('card-title')[0].innerText.toLowerCase();
        let location = cards[i].getElementsByClassName('card-text')[0].innerText.toLowerCase();
        
        if (title.includes(input) || location.includes(input)) {
            cards[i].style.display = "inline-block";
        } else {
            cards[i].style.display = "none";
        }
    }
}
</script>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

    