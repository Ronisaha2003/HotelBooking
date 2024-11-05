<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hotel Reservation</title>
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
   <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
</head>
<style>
 body, html {
          height: 100%;
          margin: 0;
          font-family: Arial, Helvetica, sans-serif;
      }
       .bg-image {
          /* The image used */
          background-image: url('images/hotel3.jpg');

          /* Full height */
          height: 100%; 

          /* Center and scale the image nicely */
          background-position: center;
          background-repeat: no-repeat;
          background-size: cover;
      }
      .container{
            max-width: 600px;
            margin: 50px auto;
            background-color: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.1);
}
.navbar{
			background: blue; font-family: calibri; padding-right: 15px;padding-left: 15px;
		}
		.navdiv{
			display: flex; align-items: center; justify-content: space-between;
		}
		.logo a{
			font-size: 35px; font-weight: 600; color: black;
		}
		li{
			list-style: none; display: inline-block;
		}
		li a{
			color: black; font-size: 18px; font-weight: bold; margin-right: 25px;
		}
		button{
			background-color: blue; margin-left: 10px; border-radius: 10px; padding: 10px; width: 90px;
		}
		button a{
			color: white; font-weight: bold; font-size: 15px;
		}
</style>
<body>
<div class="bg-image">


<form id="booking-form">
<nav class="navbar">
		<div class="navdiv">
			<div class="logo"><a href="#">BOOKNEST</a> </div>
			<ul>
				<li><a href="/">Home</a></li>
				<li><a href="/about">About</a></li>
				<li><a href="/contact">Contact</a></li>
				<li><a href="/logout">Logout</a></li>
			</ul>
	       </div>
</nav>
<div class="container">
    <label for="name">Name:</label>
    <input type="text" id="name" placeholder="name"  class="form-control mb-4 col-4" required><br>

<label for="name">Email:</label>
    <input type="email" id="email" placeholder="email"  class="form-control mb-4 col-4" required><br>

<label for="name">phno</label>
    <input type="text" id="phno" placeholder="phno"  class="form-control mb-4 col-4" required><br>



    <label for="amount">Amount:</label>
    <input type="text" id="amount" placeholder="amount"  class="form-control mb-4 col-4" required><br>

    <button type="button" id="rzp-button1">BOOk</button>
    </div>
</form>


</div>
 <script>
    async function createOrder(){
    	console.log("--- order creation started---")
    	const response=await fetch('http://localhost:8090/create-order',{
    		method:'POST',
    		headers:{
    			'content-Type':'application/json'
    		},
    		body: JSON.stringify({
    			name:document.getElementById('name').value,
    			email:document.getElementById('email').value,
    			phno:document.getElementById('phno').value,   			
    			amount:document.getElementById('amount').value,
    			
    			currency:'INR'
    			
    		})
    	});
    	const order= await response.json();
    	console.log("---order creation completed---");
    	return order;
    }   
    document.getElementById('rzp-button1').onclick=async function(e){
    	const order= await createOrder();
    	console.log(order);
    	
    	var options={
    			"key":"rzp_test_DooJ5jOwcR2vVW",
    			"amount":order.amount,
    			"currency":'INR',
    			"name":"Ritwik",
    			"order_Id":order.razorpayOrderId,
    			"receipt":order.email,
    			"callback_url":"http://localhost:8090/handle-payment-callback",
    			"prefil":{
    				"name":order.name,
    				"email":order.email,
    				"contact":order.phno,
    				
    			},
    			"theme":{
    				"color":"#3399cc"
    			}
    	};
    	var rzp1=new Razorpay(options);
    	rzp1.open();
    	e.preventDefault();
    }
    </script>
</body>
</html>
