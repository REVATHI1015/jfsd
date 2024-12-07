<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"> <!-- Font Awesome CDN for social icons -->
     <style>
        .container {
            display: flex;
            flex-direction: column;
            height: 100vh;
        }
.image-section {
 background-image: url('images/bgimg.jpg');
    background-size: cover;
    background-position: center;
    height: 380px; /* Adjust the height as needed */
}

        .content-section {
            flex-grow: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            margin-bottom: 100px;
        }

        .card {
            background-color: #f9f9f9;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            padding: 40px;
            max-width: 400px;
            text-align: center;
            position: relative;
        }

        .team-section {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-wrap: wrap; /* Allow wrapping of cards on smaller screens */
            padding: 20px;
        }

        .team-member-card {
            background-color: #f9f9f9;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            width: 250px; /* Set a fixed width for each card */
            text-align: center;
            margin: 10px; /* Add margin between cards */
        }

        .team-member-card img {
            width: 200px; /* Set width */
            height: 200px; /* Set height */
            object-fit: cover; /* Maintain aspect ratio */
            border-radius: 50%; /* Optional: make images circular */
        }

        .follow-us-card {
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-top: 20px;
        }

        .follow-us-card h2 {
            margin-bottom: 10px;
        }

        .social-icons {
            display: flex;
        }

        .social-icons a {
            margin: 0 10px;
            color: #333;
            text-decoration: none;
        }

        .social-icons a:hover {
            color: #007bff;
        }

        .social-icons i {
            font-size: 24px;
        }

        .follow-us-card p {
            font-size: 18px; /* Adjust this value as needed for desired size */
            line-height: 1.5; /* Optional: Increase line height for better readability */
        }

        .info-card {
            background-color: black; /* Black background */
            color: white; /* White text color for contrast */
            padding: 20px;
            margin-top: 20px; /* Space between cards */
            border-radius: 8px; /* Rounded corners */
            display: flex; /* Use flexbox for alignment */
            flex-direction: column; /* Stack items vertically */
        }

        .info-header {
            display: flex; /* Use flexbox to align items */
            align-items: center; /* Center items vertically */
        }

        .info-header .logo {
            width: 40px; /* Adjust width as needed */
            height: auto; /* Maintain aspect ratio */
            margin-right: 10px; /* Space between logo and text */
        }

        .card-container {
            display: flex; /* Use flexbox to position cards side by side */
            justify-content: space-between; /* Space between the cards */
            width: 100%; /* Full width for the container */
            margin-top: 20px; /* Add some space above the cards */
        }

        .card-item {
            background-color: #333; /* Darker background for inner cards */
            color: white; /* White text for contrast */
            padding: 15px;
            border-radius: 5px;
            width: 750px; /* Set width for square */
            height: auto; /* Set height to auto to adjust with content */
            text-align: center; /* Center text inside cards */
            display: flex; /* Use flexbox for centering content */
            flex-direction: column; /* Stack items vertically */
            justify-content: center; /* Center content vertically */
            align-items: center; /* Center content horizontally */
        }

        .link-container {
            display: flex; /* Use flexbox to display links in a line */
            flex-wrap: wrap; /* Allow wrapping if necessary */
            justify-content: center; /* Center links within the container */
            margin-top: 10px; /* Space above the links */
        }

        .card-item a {
            color: #ffffff; /* White color for the links */
            text-decoration: none; /* Remove underline */
            padding: 12px 16px; /* Add some padding */
            border-radius: 1px; /* Rounded corners */
            transition: background-color 0.3s, color 0.3s; /* Smooth transition for hover effects */
            margin: 5px; /* Space between links */
        }

        /* Hover effect for links */
        .card-item a:hover {
            background-color: rgba(255, 255, 255, 0.2); /* Light background on hover */
            color: #ffcc00; /* Change text color on hover */
        }

        .button-container {
            display: flex; /* Use flexbox to align buttons */
            justify-content: space-between; /* Space out buttons */
            margin-bottom: 15px; /* Space below buttons */
        }

        .button {
            background-color: #007bff; /* Button background color */
            color: white; /* Button text color */
            text-decoration: none; /* Remove underline */
            padding: 10px 20px; /* Add padding for buttons */
            border-radius: 5px; /* Rounded corners */
            transition: background-color 0.3s; /* Transition for hover effect */
        }

        .button:hover {
            background-color: #0056b3; /* Darker background on hover */
        }

        .info-container {
            display: flex; /* Use flexbox to arrange info items */
            flex-direction: column; /* Stack info items vertically */
            align-items: flex-start; /* Align items to the start */
        }

        .info-item {
            display: flex; /* Use flexbox for icon and text alignment */
            align-items: center; /* Center items vertically */
            margin: 5px 0; /* Space between info items */
        }

        .info-icon {
            font-size: 20px; /* Size of the icons */
            margin-right: 10px; /* Space between icon and text */
            color: #007bff; /* Icon color */
        }
    </style>
</head>

<body>
<%@ include file="mainnavbar.jsp" %>
    <div class="container">
        <div class="image-section"></div>
        <div class="content-section">
            <div class="card">
                <h2>About Our Company</h2>
                <p>
                    Our company is dedicated to providing high-quality products and services that meet the needs of our customers. We believe in sustainability and innovation, and we strive to make a positive impact in the communities we serve.
                </p>
            </div>
        </div>
        <div>
            <h1><b>THE TEAM</b></h1>
        </div>
        <div class="team-section">
            <div class="team-member-card">
                <img src="images/dharma.jpg" alt="Member 1">
                <p>Name: Dharma Tejaswi</p>
                <p>Email: 2200030372cser@gmail.com</p>
            </div>
            <div class="team-member-card">
                <img src="images/revathi.jpg" alt="Member 2">
                <p>Name: Revathi Reddy</p>
                <p>Email: 2200030155cser@gmail.com</p>
            </div>
            <div class="team-member-card">
                <img src="images/sandhya.jpg" alt="Member 3">
                <p>Name: Sandhya Rani</p>
                <p>Email: 2200030121cser@gmail.com</p>
            </div>
        </div>
    </div>

    <div class="follow-us-card">
        <h2><b>Follow Us</b></h2>
        <p>To stay updated with the latest news, promotions, and offerings from Farm2Global, make sure to follow us on social media accounts.</p>
        <p>Don't miss out on any updates!</p>
        <p>Happy ordering!</p>
        <div class="social-icons">
            <a href="https://www.facebook.com/your_facebook_page" target="_blank">
                <i class="fab fa-facebook-f"></i>
            </a>
            <a href="https://twitter.com/your_twitter_handle" target="_blank">
                <i class="fab fa-twitter"></i>
            </a>
            <a href="https://www.instagram.com/your_instagram_handle" target="_blank">
                <i class="fab fa-instagram"></i>
            </a>
        </div>
    </div>

    <div class="info-card">
        <div class="info-header">
            <img src="images/logo.jpg" alt="Logo" class="logo"> <!-- Update the path to your logo -->
            <h2>POCK NOW</h2>
        </div>
        <div class="card-container">
            <div class="card-item">
                <div class="link-container"> <!-- Added a wrapper for links -->
                    <a href="/">Home</a>
                    <a href="/aboutus">About Us</a>
                    <a href="/adminlogin">Admin Login</a>
                    <a href="/farmerlogin">Farmer Login</a>
                    <a href="/customerlogin">Customer Login</a>
                    <a href="/farmerreg">Farmer Registration</a>
                    <a href="/customerreg">Customer Registration</a>
                </div>
                <div>@Brand.Inc</div>
            </div>
            <div class="card-item">
                <h3>Card 2 Title</h3>
                <div class="button-container">
                    <a href="/productlist" class="button">Product List</a>
                    <a href="/ordernow" class="button">Order Now</a>
                </div>
                <div class="info-container">
                    <div class="info-item">
                        <i class="fas fa-envelope info-icon"></i> <!-- Email icon -->
                        <span>Email: info@example.com</span>
                    </div>
                    <div class="info-item">
                        <i class="fas fa-phone info-icon"></i> <!-- Contact icon -->
                        <span>Contact: +1234567890</span>
                    </div>
                    <div class="info-item">
                        <i class="fas fa-map-marker-alt info-icon"></i> <!-- Address icon -->
                        <span>Address: 123 Main St, City</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>
