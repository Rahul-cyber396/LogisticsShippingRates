<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Simple Interest Calculator</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            background-color: #f4f4f4;
        }
        .container {
            max-width: 400px;
            margin: 0 auto;
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
        }
        label {
            display: block;
            margin-bottom: 8px;
        }
        input[type="number"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 12px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        button {
            width: 100%;
            padding: 10px;
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        button:hover {
            background-color: #218838;
        }
        .result {
            margin-top: 20px;
            text-align: center;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Simple Interest Calculator</h2>
    <label for="principal">Principal Amount:</label>
    <input type="number" id="principal" placeholder="Enter principal amount">

    <label for="rate">Rate of Interest (%):</label>
    <input type="number" id="rate" placeholder="Enter rate of interest">

    <label for="time">Time (in years):</label>
    <input type="number" id="time" placeholder="Enter time in years">

    <button onclick="calculateInterest()">Calculate Interest</button>

    <div class="result" id="result"></div>
</div>

<script>
    function calculateInterest() {
        let principal = document.getElementById('principal').value;
        let rate = document.getElementById('rate').value;
        let time = document.getElementById('time').value;

        if (principal === "" || rate === "" || time === "") {
            document.getElementById('result').innerHTML = "<p style='color:red;'>Please fill out all fields.</p>";
            return;
        }

        let interest = (principal * rate * time) / 100;
        document.getElementById('result').innerHTML = "<h3>Simple Interest: " + interest.toFixed(2) + "</h3>";
    }
</script>

</body>
</html>
