<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Wishlist</title>
    <style>
        body {
            background-color: #f4f4f4;
        }

        .container {
            margin: 100px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            text-align: center;
        }

        h1 {
            color: #333;
        }

        input[type="text"] {
            padding: 10px;
            width: 60%;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        #saveButton {
            padding: 10px 20px;
            background-color: #ff6600;
            border: none;
            color: #fff;
            border-radius: 5px;
            font-size: 16px;
            margin-left: 10px;
            cursor: pointer;
        }

        ul {
            list-style: none;
            padding: 0;
        }

        li {
            margin: 10px;
            font-size: 20px;
            position: relative;
            animation: fadeIn 1s ease-in;
        }

        li::before {
            content: "\2665"; /* Heart symbol as a bullet point */
            color: #ff0000;
            font-size: 18px;
            margin-right: 10px;
        }

        @keyframes fadeIn {
            0% {
                opacity: 0;
                transform: translateX(-20px);
            }
            100% {
                opacity: 1;
                transform: translateX(0);
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>My Wishlist</h1>
        <!-- Input box for entering movie names -->
        <input type="text" id="movieNameInput" placeholder="Enter a movie name">
        <button id="saveButton">Save</button>
        <ul id="wishlistItems">
            <!-- Display saved movie names here -->
        </ul>
    </div>

    <script>
        // Get references to the input box, save button, and the wishlist item container
        const movieNameInput = document.getElementById('movieNameInput');
        const saveButton = document.getElementById('saveButton');
        const wishlistItems = document.getElementById('wishlistItems');

        // Add a click event handler to the save button
        saveButton.addEventListener('click', function () {
            const movieName = movieNameInput.value;
            if (movieName) {
                // Create a new list item and append it to the wishlist
                const li = document.createElement('li');
                li.textContent = movieName;
                wishlistItems.appendChild(li);

                // Clear the input box
                movieNameInput.value = '';
            }
        });
    </script>
</body>
</html>
