<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>OTP Verification</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        /* Reset & Base Styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            display: flex;
            flex-direction: column;
            height: 100vh;
            background-color: #f4f4f4;
        }

        /* Navbar */
       .navbar {
            width: 100vw;
            background-color: #f9e9de;
            color: black;
            padding: 15px;
            text-align: center;
            font-size: 22px;
            font-weight: bold;
            position: fixed;
            top: 0;
            left: 0;
            display: flex;
            align-items: center;
            justify-content: center;
        }
	  .logo-container {
            display: flex;
            align-items: center;
        }

        .logo-container img {
            height: 50px;
            margin-right: 10px;
        }

        /* Main Layout */
        .main-container {
            display: flex;
            flex: 1;
        }

        /* Left Image Section */
        .image-container {
            flex: 60%;
            background: url('pp.png') no-repeat center center;
            background-size: cover;
        }

        /* Right OTP Section */
        .otp-container {
            flex: 40%;
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: #ffffff;
        }

        .otp-box {
            width: 80%;
            max-width: 350px;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
            background-color: #fff;
            text-align: center;
        }

        .otp-box h2 {
            margin-bottom: 20px;
            color: #333;
        }

        input[type="text"] {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border-radius: 5px;
            border: 1px solid #ccc;
            font-size: 16px;
            text-align: center;
        }

        button {
            width: 100%;
            padding: 12px;
            background-color: #007BFF;
            color: white;
            font-size: 16px;
            font-weight: bold;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 10px;
        }

        button:hover {
            background-color: #5e35b1;
        }

        .resend-link {
            display: block;
            margin-top: 10px;
            text-decoration: none;
            color: #007BFF;
            font-size: 14px;
            cursor: pointer;
        }

        .resend-link:hover {
            text-decoration: underline;
        }

        @media (max-width: 768px) {
            .main-container {
                flex-direction: column;
            }

            .image-container {
                height: 200px;
                flex: none;
                background-size: cover;
            }

            .otp-container {
                flex: none;
                padding: 20px;
            }
        }
    </style>
</head>
<body>

    <!-- Navbar -->
    <nav class="navbar">
        <div class="logo-container">
            <img src="scdl.png" alt="Logo"> <!-- Ensure this image is correctly placed -->
            <span>Symbiosis Center for Distance Learning</span>
        </div>
    </nav>
    
    <!-- Main Section -->
    <div class="main-container">
        <!-- Left Image -->
        <div class="image-container"></div>

        <!-- Right OTP Box -->
        <div class="otp-container">
            <div class="otp-box">
                <h2>Enter OTP</h2>
                <form id="otpForm" action="Schedule_an_appointment.jsp" method="post">
                    <input type="text" name="otp" maxlength="6" pattern="\d{6}" placeholder="Enter 6-digit OTP" >
                    <button type="submit">Submit OTP</button>
                </form>
                <a href="#" class="resend-link" onclick="resendOTP()">Resend OTP</a>
            </div>
        </div>
    </div>

    <script>
        function resendOTP() {
            alert("A new OTP has been sent to your registered mobile/email.");
            // Optionally, redirect to a servlet that generates a new OTP
            window.location.href = 'ResendOtpServlet';
        }
    </script>

</body>
</html>
