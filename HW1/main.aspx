﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="WebHW1.main" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0"> <!-- displays site properly based on user's device -->

  <link rel="icon" type="image/png" sizes="32x32" href="./images/favicon-32x32.png">
  <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
  <title>Credit Card Page</title>
  <link rel="stylesheet" href="style.css">
  <!-- Feel free to remove these styles or customise in your own stylesheet 👍 -->
</head>
<body>

    <main>
      <div class="card">
        <div class="card-front">
          <svg width="84" height="47" 
          fill="none" xmlns="http://www.w3.org/2000/svg" class="logo">
          <ellipse cx="23.478" cy="23.5" rx="23.478" ry="23.5" 
          fill="#fff"/><path d="M83.5 23.5c0 5.565-4.507 
          10.075-10.065 10.075-5.559 0-10.065-4.51-10.065-10.075 
          0-5.565 4.506-10.075 10.065-10.075 5.558 0 10.065 4.51 
          10.065 10.075Z" stroke="#fff"/>
        </svg>
          <img src="./images/bg-card-front.png"  class="front"/>
          <span class="card-number">0000 0000 0000 0000</span>
          <span class="cardholder-name">John Doe</span>
          <span class="card-exp-mm">12
          </span>
          <span class="card-exp-yy">25</span>
          <span class="forward-slash"></span>
        </div>

        <div class="card-back">
          <img src="./images/bg-card-back.png" class="back" />
          <span class="cvc">123</span>
        </div>
        
        <div class="layover ">
          <div>
            <svg width="80" height="80" fill="none" xmlns="http://www.w3.org/2000/svg"><circle cx="40" cy="40" r="40" fill="url(#a)"/><path d="M28 39.92 36.08 48l16-16" stroke="#fff" stroke-width="3"/><defs><linearGradient id="a" x1="-23.014" y1="11.507" x2="0" y2="91.507" gradientUnits="userSpaceOnUse"><stop stop-color="#6348FE"/><stop offset="1" stop-color="#610595"/></linearGradient></defs></svg>
            <h3>THANK YOU!</h3>
            <p>We've added your card details</p>
            <button class="submit-btn">Continue</button>
          </div>
        </div>

        <form class="card-details" runat="server">
          <div class="group">
            <label for="name" class="labels spacing-label">
              CARDHOLDER NAME
            </label>
            <input type="text" class="input-field" required id="name" size="44"/>
            <span class="name-error error"></span>
          </div>

          <div class="group">

            <label for="number" class="labels spacing-label">
              CARD NUMBER
            </label>
            <input type="text" class="input-field" required id="number" size="44" />
            <span class="number-error error"></span>
          </div>
          
          
          <div class="date-info">
            <div class="card-date">
              
              <label for="expiry-date" class="labels">EXP. DATE (MM/YY)</label>
              <div>
                <input type="text" size="5" class="input-field mm" placeholder='MM' required id='expiry-date'/>
                <input type="text" size="5" class="input-field yy" placeholder="YY" required id='expiry-date'/>
              </div>
              <span class="exp-error error"></span>
            </div>

            <div class="card-cvc">
              <label for="cvc" class="labels">CVC</label>
              <input type="text" size="15" class="input-field" required id='cvc-field' placeholder="e.g. 123"/>
              <span class="cvc-error error"></span>
            </div>
          </div>
          <div class="submit-box">
            <input type="submit" value="Confirm" class="submit-btn" size="40">  
          </div>
        </form>
        
      </div>
    </main>
    <script src="index.js"></script>
</body>
</html>
