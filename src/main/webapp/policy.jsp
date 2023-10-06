<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Insurance Web Application</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #d4e4f7; /* Light blue background */
      margin: 0;
      padding: 0;
      background-image: url('/resources/static/images/family.jpg');
      background-size: cover; /* Cover the entire body */
      background-repeat: no-repeat; /* No repeating of the image */
    }

    form {
      background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent white background */
      padding: 30px;
      border-radius: 10px;
      box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
      width: 500px;
      margin: 0 auto;
    }

    h1 {
      text-align: center;
      color: #333;
    }

    table {
      width: 100%;
      border-collapse: collapse;
      margin-top: 20px;
      border: 1px solid #ccc;
    }

    th, td {
      padding: 12px;
      text-align: left;
    }

    th {
      background-color: #333;
      color: #fff;
    }

    input[type="text"] {
      width: 100%;
      padding: 10px;
      margin-bottom: 10px;
      border: 1px solid #ccc;
      border-radius: 5px;
    }

    /* Green button for Create Insurance */
    input[type="submit"] {
      background-color: #4CAF50; /* Green */
      color: #fff;
      padding: 10px 20px;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }

    input[type="submit"]:hover {
      background-color: #45a049; /* Darker Green on hover */
    }

    /* Red button for Delete Insurance */
    input[type="button"] {
      background-color: #FF5733; /* Red */
      color: #fff;
      padding: 10px 20px;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }

    input[type="button"]:hover {
      background-color: #FF2200; /* Darker Red on hover */
    }

    /* Keep Update Insurance button as black */
    input[type="button"].update-button {
      background-color: #333; /* Black */
    }

    input[type="button"].update-button:hover {
      background-color: #555; /* Darker Black on hover */
    }

    .btn-container {
      text-align: center;
      margin-top: 20px;
    }

    .btn-container input {
      margin: 0 10px;
    }

    /* Atractive Colors */
    label {
      color: #333;
    }

    /* Insurance Page Text */
    .insurance-text {
      text-align: center;
      color: #333;
      margin-top: 20px;
      font-size: 18px;
    }
  </style>
</head>
<body>
  <form action="addpolicy" id="polcyForm" method="POST">
    <h1>Mathew's Insurance Application</h1>

    <label for="id">Enter your ID:</label>
    <input type="text" name="id" id="id">

    <label for="name">Enter your name:</label>
    <input type="text" name="name" id="name">

    <label for="address">Enter your address:</label>
    <input type="text" name="address" id="address">

    <label for="contact">Enter your contact:</label>
    <input type="text" name="contact" id="contact">

    <table>
      <thead>
        <tr>
          <th>Policy ID</th>
          <th>Customer Name</th>
          <th>Customer Address</th>
          <th>Contact Number</th>
        </tr>
      </thead>
      <tbody>
        <c:forEach items="${policyList}" var="policy">
          <tr>
            <td>${policy.policyId}</td>
            <td>${policy.customerName}</td>
            <td>${policy.customerAddress}</td>
            <td>${policy.contactNumber}</td>
          </tr>
        </c:forEach>
      </tbody>
    </table>

    <div class="btn-container">
      <input type="submit" value="Create Insurance" onclick="createPolicy()">
      <input type="button" class="update-button" value="Update Insurance" onclick="updatePolicy()">
      <input type="button" value="Delete Insurance" onclick="deletePolicy()">
    </div>

    <div class="insurance-text">
      Welcome to my Insurance Application. Please fill in the information above to get started.
    </div>
  </form>

  <script>
    function createPolicy() {
      alert("Inside createPolicy function");
      var form = document.getElementById("polcyForm");
      form.action = "createpolicy";
      form.method = "POST";
      form.submit();
    }

    function updatePolicy() {
      var form = document.getElementById("polcyForm");
      form.action = "updatepolicy";
      form.method = "POST"; // You may need to adjust the method as needed
      form.submit();
    }

    function deletePolicy() {
      var form = document.getElementById("polcyForm");
      form.action = "deletepolicy";
      form.method = "POST"; // You may need to adjust the method as needed
      form.submit();
    }
  </script>
</body>
</html>
