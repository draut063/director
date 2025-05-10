<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Schedule Appointment</title>
    <style>
        /* Base Styles */
        body {
            font-family: sans-serif;
            padding: 20px;
            background-color: #f8f8f8;
            margin: 0;
        }

        
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

        /* Logo Styling */
        .logo-container {
            display: flex;
            align-items: center;
        }

        .logo-container img {
            height: 50px;
            margin-right: 10px;
        }

        /* Space between navbar & form */
        .form-container {
            margin-top: 90px;
        }

        .appointment-form {
            max-width: 500px;
            margin: auto;
            background: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .appointment-form h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        label {
            margin-top: 10px;
            display: block;
            font-weight: bold;
        }

        input, select, textarea, button {
            display: block;
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            box-sizing: border-box;
        }

        textarea {
            resize: vertical;
        }

        button {
            background-color: #248cc1;
            color: white;
            border: none;
            border-radius: 4px;
            margin-top: 20px;
            font-size: 16px;
            cursor: pointer;
        }

        button:hover {
            background-color: #1c6ea4;
        }

        /* Responsive adjustments */
        @media (max-width: 768px) {
            .form-container {
                margin-top: 100px;
            }

            .appointment-form {
                width: 90%;
                padding: 20px;
            }

            .logo-container img {
                height: 40px;
            }
        }
    </style>
</head>
<body>

    <!-- Navbar with Logo -->
    <nav class="navbar">
        <div class="logo-container">
            <img src="scdl.png" alt="Logo"> <!-- Ensure this image is correctly placed -->
            <span>Symbiosis Center for Distance Learning</span>
        </div>
    </nav>

    <div class="form-container">
        <div class="appointment-form">
            <h2>Schedule an Appointment</h2>
            <form action="processAppointment.jsp" method="post">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" required>

                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>

                <label for="phone">Phone Number:</label>
                <input type="text" id="phone" name="phone">

                <label for="location">Location:</label>
                <select id="location" name="location" required>
                    <option value="">Select Location</option>
                    <option value="pune">Pune</option>
                    <option value="mumbai">Mumbai</option>
                    <option value="nashik">Nashik</option>
                </select>

                <label for="address">Address:</label>
                <input type="text" id="address" name="address">

                <label for="meetingType">Meeting Type:</label>
                <select id="meetingType" name="meetingType" required>
                    <option value="">Select Meeting Type</option>
                    <option value="online">Online</option>
                    <option value="in-person">Offline</option>
                </select>

                <label for="priority">Priority:</label>
                <select id="priority" name="priority" required>
                    <option value="">Select Priority</option>
                    <option value="high">High</option>
                    <option value="medium">Medium</option>
                    <option value="low">Low</option>
                </select>

                <label for="personToMeet">Required Attendee:</label>
                <input type="text" id="personToMeet" name="personToMeet">

                <label for="appointmentDateTime">Preferred Date & Time:</label>
                <input type="datetime-local" id="appointmentDateTime" name="appointmentDateTime" required>

                <label for="reason">Agenda to Meet:</label>
                <textarea id="reason" name="reason" rows="4"></textarea>

                <button type="submit">Submit</button>
            </form>
        </div>
    </div>

</body>
</html>
