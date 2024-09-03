<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Horror Movies</title>
    <!-- Add Bootstrap CSS link if necessary -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        /* Custom CSS for your horror movie images */
        body {
            background-color: #ffdab9; /* Set a light peach background color */
        }
        .container {
            padding: 20px;
            background-color: #000; /* Set a black background color */
            color: #fff; /* Set white text color for contrast */
            border-radius: 10px; /* Rounded corners for the container */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2); /* Box shadow for a card-like effect */
        }
        .row {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
        }
        .col-md-3 {
            flex-basis: calc(25% - 10px);
            margin-bottom: 20px;
            background-color: #fff; /* Add a white background to individual movie cards */
            border: 1px solid #ddd; /* Add a border to movie cards */
            border-radius: 5px; /* Rounded corners for movie cards */
            padding: 10px; /* Padding inside movie cards */
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.1); /* Box shadow for movie cards */
        }
        .col-md-3 img {
            width: 100%;
            height: auto;
        }
        .col-md-3 p {
           color: #000; /* Set green text color for movie titles */
        }
    </style>
</head>
<body>
    <!-- Navigation bar (you can include the same navigation as in dashboard.jsp if needed) -->
    <!-- For example:
    <nav class="navbar navbar-expand-lg navbar-dark">
        <a class="navbar-brand" href="#">Movies</a>
        <!-- Add your navigation items here -->
    </nav>
    -->

    <!-- Horror Movies section -->
    <div class="container mt-4">
        <h1>Comedy Movies</h1>
        <div class="row">
            <!-- Add the horror movie images and titles here -->
            <div class="col-md-3">
                <img src="/images/c11.jpg" alt="Horror Movie 1" class="img-fluid">
                <p>Horror Movie Title 1</p>
            </div>
            <div class="col-md-3">
                <img src="/images/c12.jpg" alt="Horror Movie 2" class="img-fluid">
                <p>Horror Movie Title 2</p>
            </div>
            <div class="col-md-3">
                <img src="/images/c13.jpg" alt="Horror Movie 3" class="img-fluid">
                <p>Horror Movie Title 3</p>
            </div>
            <div class="col-md-3">
                <img src="/images/c14.jpg" alt="Horror Movie 4" class="img-fluid">
                <p>Horror Movie Title 4</p>
            </div>
            <div class="col-md-3">
                <img src="/images/c15.jpg" alt="Horror Movie 5" class="img-fluid">
                <p>Horror Movie Title 5</p>
            </div>
            <div class="col-md-3">
                <img src="/images/c16.jpg" alt="Horror Movie 6" class="img-fluid">
                <p>Horror Movie Title 6</p>
            </div>
            <div class="col-md-3">
                <img src="/images/c17.jpg" alt="Horror Movie 6" class="img-fluid">
                <p>Horror Movie Title 6</p>
            </div>
            <div class="col-md-3">
                <img src="/images/c11.jpg" alt="Horror Movie 6" class="img-fluid">
                <p>Horror Movie Title 6</p>
            </div>
            <!-- Add more horror movie images and titles as needed -->
        </div>
    </div>

    <!-- Add Bootstrap JavaScript and jQuery if necessary -->
    <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script> -->
</body>
</html>
