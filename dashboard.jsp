<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MoviePlus</title>
    <!-- Add Bootstrap CSS link -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        /* Custom CSS for your webpage */
        body {
            background-image: url("is1.jpg");
            background-color: #1f0033;
        }

        .navbar {
            background-color: #343a40;
        }

        .navbar-dark .navbar-brand {
            color: #fff;
        }

        .navbar-dark .navbar-toggler-icon {
            background-color: #fff;
        }

        .nav-link {
            color: #fff;
        }

        .container {
            background-color:#1f0033;
            color:white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }
        .main-text {
            font-size: 40px;
            color:white;
            margin-left: 70px;
        }
          
    </style>
</head>
<body>
    <!-- Navigation bar -->
    <nav class="navbar navbar-expand-lg navbar-dark">
        <a class="navbar-brand" href="#">Movies</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" href="/login">Register</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Genre
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="/action.jsp">Action</a>
                        <a class="dropdown-item" href="/comedy.jsp">Comedy</a>
                        <a class="dropdown-item" href="/drama.jsp">Drama</a>
                        <a class="dropdown-item" href="/horror.jsp">Horror</a>
                        <a class="dropdown-item" href="/rec.jsp">Recommendation</a>
                        <!-- Add more genres here -->
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/wishlist.jsp">Wishlist</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/aboutus.jsp">AboutUs</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/cart.jsp">Cart</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/rec.jsp">Recommendations</a>
                </li>
                
                <!-- Add more menu items as needed -->
            </ul>
        </div>
    </nav>
 <div id="text-container" class="main-text"></div>

    <script>
        const textContainer = document.getElementById('text-container');
        const text = "Welcome to MoviePLus";
        let index = 0;

        function typeText() {
            if (index < text.length) {
                textContainer.innerHTML += text.charAt(index);
                index++;
                setTimeout(typeText, 100); // Adjust the delay (in milliseconds) as needed
            }
        }

        typeText(); // Start typing when the page loads
    </script>

<!-- Add Bootstrap JavaScript and jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<!-- Image Slider -->
<div class="container mt-4">
    <div id="imageSlider" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#imageSlider" data-slide-to="0" class="active"></li>
            <li data-target="#imageSlider" data-slide-to="1"></li>
            <li data-target="#imageSlider" data-slide-to="2"></li>
            <!-- Add more indicators as needed -->
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="/images/is1.jpg" alt="Slider Image 1" style="width: 100%; height: 320px;">
                
            </div>
            <div class="carousel-item">
                <img src="/images/ig2.jpg" alt="Slider Image 2" style="width: 100%; height : 320px;">
            </div>
            <div class="carousel-item">
                <img src="/images/is3.jpg" alt="Slider Image 3" style="width: 100%; height : 320px;">
            </div>
            <div class="carousel-item">
                <img src="/images/is4.jpg" alt="Slider Image 3" style="width: 100%; height : 320px">
            </div>
            <!-- Add more slides with images as needed -->
        </div>
        <a class="carousel-control-prev" href="#imageSlider" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#imageSlider" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</div>

<!-- Add a search input field to your dashboard -->
<div class="container mt-4">
    <h1>Find Movie</h1>
    <!-- Add more dashboard components as needed -->

    <!-- Search input field -->
    <div class="input-group mt-3">
        <input type="text" id="movieSearchInput" class="form-control" placeholder="Search for a movie...">
        <div class="input-group-append">
            <button class="btn btn-primary" id="movieSearchBtn" type="button">Search</button>
        </div>
    </div>

    <!-- Display the found movie image -->
    <div class="mt-3" id="foundMovie">
        <img src="" alt="Found Movie" id="foundMovieImage" class="img-fluid">
    </div>
</div>

<!-- JavaScript for movie search functionality -->
<script>
    $(document).ready(function () {
        // Define an array of movie titles and corresponding image URLs
        var movies = [
            { title: "Movie Title 1", image: "/images/movie3.jpg" },
            { title: "Movie Title 2", image: "/images/movie4.jpg" },
            { title: "Movie Title 3", image: "/images/movie5.jpg" },
            { title: "Movie Title 4", image: "/images/movie6.jpg" },
            // Add more movie titles and image URLs here
        ];

        // Function to search for a movie by title
        function searchMovie(title) {
            for (var i = 0; i < movies.length; i++) {
                if (movies[i].title.toLowerCase() === title.toLowerCase()) {
                    return movies[i].image;
                }
            }
            return null; // Return null if movie not found
        }

        // Handle the search button click event
        $("#movieSearchBtn").click(function () {
            var searchTitle = $("#movieSearchInput").val();
            var foundImage = searchMovie(searchTitle);

            if (foundImage) {
                // Display the found movie image
                $("#foundMovieImage").attr("src", foundImage);
                $("#foundMovie").show();
            } else {
                // Movie not found
                alert("Movie not found.");
                $("#foundMovie").hide();
            }
        });
    });
</script>
<style>
    /* ... Other CSS rules ... */

    /* Adjust the left margin for the content area */
    #content {
        margin-left: 70px; /* Adjust the margin as needed based on your vertical navigation bar width */
    }
</style>


<!-- Movie images section -->
<div class="container mt-4">
    <h2>Latest Releases</h2>
    <div class="row">
        <div class="col-md-3">
            <img src="/images/movie3.jpg" alt="Movie 1" class="img-fluid">
            <p>Movie Title 1</p>
        </div>
        <div class="col-md-3">
            <img src="/images/movie4.jpg" alt="Movie 2" class="img-fluid">
            <p>Movie Title 2</p>
        </div>
        <div class="col-md-3">
            <img src="/images/movie5.jpg" alt="Movie 3" class="img-fluid">
            <p>Movie Title 3</p>
        </div>
        <div class="col-md-3">
            <img src="/images/movie6.jpg" alt="Movie 4" class="img-fluid">
            <p>Movie Title 4</p>
        </div>
        <div class="col-md-3">
            <img src="/images/movie1.jpg" alt="Movie 5" class="img-fluid">
            <p>Movie Title 4</p>
        </div>
        <div class="col-md-3">
            <img src="/images/movie2.jpg" alt="Movie 6" class="img-fluid">
            <p>Movie Title 4</p>
        </div>
        <!-- Add more movie images and titles here -->
    </div>
    <!-- See More Button -->
    <div class="text-center mt-3">
        <button id="seeMoreBtn" class="btn btn-primary">See More</button>
    </div>
</div>

<!-- JavaScript for "See More" functionality -->
<script>
    $(document).ready(function () {
        // Hide all movie images beyond the first 4
        $(".row > div:gt(3)").hide();

        $("#seeMoreBtn").click(function () {
            // Toggle visibility of images 5, 6, 7, and 8
            $(".row > div:lt(8)").toggle();
        });
    });
</script>
<style>
    .movie-img {
        width: 100%; /* Set the width to 100% for responsiveness */
        height: 200px; /* Set the desired fixed height */
        object-fit: cover; /* Maintain aspect ratio and cover the container */
    }
</style>
<!-- Popular Shows section -->
<div class="container mt-4">
    <h2>Popular Shows</h2>
    <div class="row" id="popularShows">
        <div class="col-md-3">
            <img src="/images/show1.jpg" alt="Show 1" class="img-fluid">
            <p>Show Title 1</p>
        </div>
        <div class="col-md-3">
            <img src="/images/show2.jpg" alt="Show 2" class="img-fluid">
            <p>Show Title 2</p>
        </div>
        <div class="col-md-3">
            <img src="/images/show3.jpg" alt="Show 3" class="img-fluid">
            <p>Show Title 3</p>
        </div>
        <div class="col-md-3">
            <img src="/images/show4.jpg" alt="Show 4" class="img-fluid">
            <p>Show Title 4</p>
        </div>
        <div class="col-md-3">
            <img src="/images/show5.jpg" alt="Show 4" class="img-fluid">
            <p>Show Title 4</p>
        </div>
        <div class="col-md-3">
            <img src="/images/show6.jpg" alt="Show 4" class="img-fluid">
            <p>Show Title 4</p>
        </div>
        <div class="col-md-3">
            <img src="/images/show7.jpg" alt="Show 4" class="img-fluid">
            <p>Show Title 4</p>
        </div>
        
        <!-- Add more show images and titles here -->
    </div>
    <!-- Show More Button for Popular Shows -->
    <div class="text-center mt-3">
        <button class="btn btn-primary showMoreBtn" data-target="popularShows">Show More</button>
    </div>
</div>


<!-- Popular Movies section -->
<div class="container mt-4">
    <h2>Popular Movies</h2>
    <div class="row" id="popularMovies">
        <div class="col-md-3">
            <img src="/images/pm1.jpg" alt="Popular Movie 1" class="img-fluid">
            <p>Popular Movie Title 1</p>
        </div>
        <div class="col-md-3">
            <img src="/images/pm2.jpg" alt="Popular Movie 2" class="img-fluid">
            <p>Popular Movie Title 2</p>
        </div>
        <div class="col-md-3">
            <img src="/images/pm3.jpg" alt="Popular Movie 3" class="img-fluid">
            <p>Popular Movie Title 3</p>
        </div>
        <div class="col-md-3">
            <img src="/images/pm4.jpg" alt="Popular Movie 4" class="img-fluid">
            <p>Popular Movie Title 4</p>
        </div>
        <div class="col-md-3">
            <img src="/images/pm5.jpg" alt="Popular Movie 4" class="img-fluid">
            <p>Popular Movie Title 4</p>
        </div>
        <div class="col-md-3">
            <img src="/images/pm6.jpg" alt="Popular Movie 4" class="img-fluid">
            <p>Popular Movie Title 4</p>
        </div>
        <div class="col-md-3">
            <img src="/images/pm7.jpg" alt="Popular Movie 4" class="img-fluid">
            <p>Popular Movie Title 4</p>
        </div>
        <!-- Add more popular movie images and titles here -->
    </div>
    <!-- Show More Button for Popular Movies -->
    <div class="text-center mt-3">
        <button class="btn btn-primary showMoreBtn" data-target="popularMovies">Show More</button>
    </div>
</div>

<!-- Sports section -->
<div class="container mt-4">
    <h2>Sports</h2>
    <div class="row" id="sports">
        <div class="col-md-3">
            <img src="/images/c1.jpg" alt="Sport 1" class="img-fluid">
            <p>Sport Event 1</p>
        </div>
        <div class="col-md-3">
            <img src="/images/c2.jpg" alt="Sport 2" class="img-fluid">
            <p>Sport Event 2</p>
        </div>
        <div class="col-md-3">
            <img src="/images/c3.jpg" alt="Sport 3" class="img-fluid">
            <p>Sport Event 3</p>
        </div>
        <div class="col-md-3">
            <img src="/images/c4.jpg" alt="Sport 4" class="img-fluid">
            <p>Sport Event 4</p>
        </div>
        <div class="col-md-3">
            <img src="/images/c5.jpg" alt="Sport 4" class="img-fluid">
            <p>Sport Event 4</p>
        </div>
        <div class="col-md-3">
            <img src="/images/c6.jpg" alt="Sport 4" class="img-fluid">
            <p>Sport Event 4</p>
        </div>
        <!-- Add more sports images and titles here -->
    </div>
    <!-- Show More Button for Sports -->
    <div class="text-center mt-3">
        <button class="btn btn-primary showMoreBtn" data-target="sports">Show More</button>
    </div>
</div>

<!-- JavaScript for "Show More" functionality -->
<script>
    $(document).ready(function () {
        // Hide all images beyond the first 4 in each section
        $(".row > div:gt(3)").hide();

        // Show More Button Click Handler
        $(".showMoreBtn").click(function () {
            var targetId = $(this).data("target");
            $("#" + targetId + " > div:hidden").toggle();
        });
    });
</script>
<style>
    /* Custom CSS for the left-side vertical navigation bar */
    #leftNav {
        position: fixed; /* Fix the navigation bar position */
        top: 0; /* Align it to the top */
        left: 0; /* Align it to the left */
        height: 100%; /* Set the height to cover the entire page */
        width: 100px; /* Set the width to 50px (you can adjust this value) */
        background-color: #343a40; /* Background color */
        padding: 20px; /* Add some padding for better appearance */
    }

    #leftNav .nav-link {
        color: #fff; /* Text color for navigation links */
    }
</style>
<!-- JavaScript for "Show More" functionality -->