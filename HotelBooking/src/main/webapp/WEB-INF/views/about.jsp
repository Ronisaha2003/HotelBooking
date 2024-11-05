<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>BookNest.com - Best Hotel Booking Platform</title>
    <style>
        /* Full screen body with background image */
        body {
            margin: 0;
            padding: 0;
            height: 100vh; /* Full viewport height */
            width: 100vw; /* Full viewport width */
            background-position: center;
            background-size: cover;
            background-repeat: no-repeat;
            transition: background-image 1s ease-in-out;
            display: flex;
            flex-direction: column;
            justify-content: space-between; /* Ensures footer stays at the bottom */
        }

        /* Transparent container for content */
        .container {
            max-width: 800px;
            margin: 50px auto;
            background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent background */
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.1);
            text-align: center;
            z-index: 2;
        }

        /* Footer fixed at the bottom of the page */
        .footer {
            width: 100%;
            padding: 10px;
            background-color: rgba(0, 0, 0, 0.8); /* Dark semi-transparent footer */
            color: white;
            text-align: center;
            position: fixed;
            bottom: 0;
        }

        h2 {
            color: #007BFF;
        }

        p {
            font-size: 18px;
            color: black;
        }

        img {
            width: 100%; /* Full width image */
            height: auto;
            margin-top: 20px;
        }
    </style>

    <script>
        // Array of background images
        const backgroundImages = [
            'images/hotel1.jpg', // Image 1
            'images/hotel2.jpg', // Image 2
            'images/hotel3.jpg'  // Image 3
        ];

        // Function to change background images every few seconds
        function changeBackgroundImage() {
            let index = 0; // Start with the first image
            setInterval(function() {
                document.body.style.backgroundImage = 'url(' + backgroundImages[index] + ')';
                index = (index + 1) % backgroundImages.length; // Cycle through images
            }, 5000); // Change image every 5 seconds
        }

        // Run the function when the page loads
        window.onload = changeBackgroundImage;
    </script>
</head>
<body>

    <!-- Container for main content -->
    <div class="container">
        <h2>Welcome to BookNest.com</h2>
        <p>
            BookNest.com is the go-to platform for travelers seeking the best hotel booking experience. We offer some of the 
            <b>lowest rates</b> in the industry, with a variety of exclusive deals tailored to your preferences. Whether you're planning 
            a luxury vacation or a budget-friendly trip, BookNest.com has got you covered. We pride ourselves on our <b>24-hour customer 
            support</b>, ensuring that you're never left without assistance when booking or during your stay. Plus, enjoy the simplicity of 
            booking with no hidden costs.<b>no reservation fees</b> ever! From last-minute deals to seasonal offers, BookNest.com helps you 
            find the perfect accommodation at unbeatable prices.
        </p>
        
    </div>

    <!-- Footer section -->
    <div class="footer">
        &copy; 2024 BookNest.com | Contact us at support@booknest.com | Call: +1-800-123-4567
    </div>

</body>
</html>
