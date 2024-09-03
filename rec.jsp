<!DOCTYPE html>
<html>
<head>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            background-color: #f5f5f5;
        }
        .container {
            background-color: #fff;
            border-radius: 10px;
            padding: 20px;
            width: 400px;
            margin: 0 auto;
            margin-top: 50px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }
        h1 {
            color: #333;
        }
        label {
            display: block;
            margin-top: 10px;
            text-align: left;
        }
        select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        button {
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #007BFF;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Movie Recommendation</h1>
        <form id="movieForm">
            <label for="movieType">Select Movie Type:</label>
            <select id="movieType">
                <option value="Action">Action</option>
                <option value="Comedy">Comedy</option>
                <option value="Drama">Drama</option>
                <option value="Horror">Horror</option>
                <option value="Science Fiction">Science Fiction</option>
            </select>

            <label for="hero">Favorite Hero:</label>
            <input type="text" id="hero" placeholder="Enter Hero Name">

            <label for="actress">Favorite Actress:</label>
            <input type="text" id="actress" placeholder="Enter Actress Name">

            <label for="genre">Select Genre:</label>
            <select id="genre">
                <option value="Action">Action</option>
                <option value="Comedy">Comedy</option>
                <option value="Drama">Drama</option>
                <option value="Horror">Horror</option>
                <option value="Science Fiction">Science Fiction</option>
            </select>

            <button type="button" onclick="recommendMovies()">Recommend Movies</button>
        </form>

        <div id="recommendations">
            <!-- Recommendations will appear here -->
        </div>
    </div>

    <script>
    function recommendMovies() {
        // Retrieve user selections
        const movieType = document.getElementById('movieType').value;
        const hero = document.getElementById('hero').value;
        const actress = document.getElementById('actress').value;
        const genre = document.getElementById('genre').value;

        // Initialize an empty array for recommendations
        const recommendations = [];

        // Check user preferences and add recommendations
        if (hero.toLowerCase() === 'alluarjun' && actress.toLowerCase() === 'tammanah') {
            recommendations.push('Badrinath');
        }
        if (hero.toLowerCase() === 'ramcharan' && actress.toLowerCase() === 'alia') {
            recommendations.push('RRR');
        }

        // You can add more conditions and recommendations here based on user preferences

        // Display recommendations
        const recommendationsDiv = document.getElementById('recommendations');
        recommendationsDiv.innerHTML = '<h2>Recommended Movies:</h2>';

        if (recommendations.length === 0) {
            recommendationsDiv.innerHTML += 'No recommendations found for your preferences.';
        } else {
            recommendations.forEach(movie => {
                const movieItem = document.createElement('p');
                movieItem.textContent = movie;
                recommendationsDiv.appendChild(movieItem);
            });
        }
    }
</script>
    
</body>
</html>
