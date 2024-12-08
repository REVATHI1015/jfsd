<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <style>
    .main-image {
        width: 100%;
        height: auto;
    }
    .zigzag-image {
        width: 100%;  /* Set width to 100% of the parent */
        height: 360px; /* Set a fixed height */
        object-fit: cover; /* Ensure the image covers the area without distorting the aspect ratio */
    }
    .text-container {
        padding: 40px; /* Increased padding for text */
        font-size: 28px; /* Increased font size to 28px */
    }
    .green-text {
        color: green; /* Set text color to green */
        font-weight: bold; /* Optional: Make it bold */
    }
    .footer-text {
        text-align: center; /* Center-align the footer text */
        font-size: 24px; /* Font size for footer text */
        margin: 40px 0; /* Margin around the footer text */
        font-weight: bold; /* Optional: Make it bold */
    }
    .row {
        margin-top: 20px;
    }
</style>

</head>

<body>
<%@ include file="mainnavbar.jsp" %>

<div class="container">
    <!-- Main Image -->
    <div class="row">
        <div class="col-md-12">
            <img src="images/bgimg.jpg" class="main-image">
        </div>
    </div>

    <!-- Zig-Zag Model -->
    <div class="row">
        <div class="col-md-6 text-container">
            <img src="images/farm.jpg" alt="Image 1" class="zigzag-image">
        </div>
        <div class="col-md-6 text-container">
            <p>In an era where sustainability and global connectivity are paramount, empowering rural entrepreneurs through technology has become crucial. Our platform is designed to bridge the gap between local farmers and international markets, providing a unique opportunity to transform raw agricultural produce into valuable products.</p>
        </div>
    </div>

    <div class="row">
        <div class="col-md-6 text-container">
            <p><span class="green-text">Our Mission:</span> To support farmers in producing and marketing value-added agricultural products such as processed foods and handmade goods, thereby enhancing their income and promoting rural entrepreneurship. By leveraging technology, we aim to connect farmers with global buyers, ensuring that their products reach markets far beyond local boundaries.</p>
        </div>
        <div class="col-md-6 text-container">
            <img src="images/farmer.jpg" alt="Image 2" class="zigzag-image">
        </div>
    </div>

    <div class="row">
        <div class="col-md-6 text-container">
            <img src="images/farmer2.jpg" alt="Image 3" class="zigzag-image">
        </div>
        <div class="col-md-6 text-container">
            <p><span class="green-text">What We Offer:</span> Our web application offers a comprehensive suite of features that allow farmers to list their products, manage orders, and track their performance. Buyers can explore a diverse range of high-quality agricultural products, place orders, and support sustainable farming practices.</p>
        </div>
    </div>

    <div class="row">
        <div class="col-md-6 text-container">
            <p><span class="green-text">The Impact:</span> By utilizing our platform, farmers gain access to broader markets, innovative tools for product development, and a network of global buyers. This not only helps in reducing farm waste but also fosters economic growth in rural areas, promoting sustainable practices and creating new business opportunities.</p>
        </div>
        <div class="col-md-6 text-container">
            <img src="images/farmtech.jpg" alt="Image 4" class="zigzag-image">
        </div>
    </div>
    
    <!-- Footer Text -->
    <div class="row">
        <div class="col-md-12 footer-text">
            Join us in revolutionizing agriculture and empowering rural communities through global connectivity and value-added products.
        </div>
    </div>
</div>

</body>
</html>
