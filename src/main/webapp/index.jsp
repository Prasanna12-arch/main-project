<!DOCTYPE html>
<html lang="en">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<style>/* styles.css */

/* Reset default browser styles */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

/* Set a background color for the entire page */
body {
    font-family: Arial, sans-serif;
    background-color: #e6f0ff;
}

/* Header styles */
header {
    background-color: #1a1aff;
    color: #fff;
    padding: 20px;
    text-align: center;
}

header h1 {
    font-size: 2.5rem;
}

nav ul {
    list-style: none;
}

nav ul li {
    display: inline-block;
    margin-right: 20px;
}

nav ul li a {
    text-decoration: none;
    color: #fff;
    font-weight: bold;
}

/* Hero section styles */
#hero {
    background-image: url('path/to/your-image.jpg');
    background-size: cover;
    color: #fff;
    text-align: center;
    padding: 100px 0;
}

#hero h2 {
    font-size: 2rem;
}

.cta-button {
    display: inline-block;
    padding: 10px 20px;
    background-color: #f9f9f9;
    color: #fff;
    text-decoration: none;
    border-radius: 5px;
    font-weight: bold;
}
#a {
    padding: 50px 0;
    text-align: center;
}
/* About section styles */
#about {
    padding: 50px 0;
    text-align: center;
    }

/* Services section styles */
#services {
    background-color: #e6f0ff;
    padding: 50px 0;
    text-align: center;
    
}

#services ul {
    list-style: none;
}

#services ul li {
    margin-bottom: 20px;
}

/* Contact section styles */
#contact {
    padding: 50px 0;
    text-align: center;
}

/* Footer styles */
footer {
    background-color: #1a1aff;
    color: #fff;
    text-align: center;
    padding: 20px;
}

/* Responsive styles */
@media screen and (max-width: 768px) {
    header h1 {
        font-size: 2rem;
    }
}
</style>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>OBS</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <header>
        <h1><i class="fas fa-university" style="font-size: 2rem; margin-right: 10px;"></i>APPWAY ONLINE BANKING SYSTEM</h1>
        <br>
        <nav>
            <ul>
                <li>About Us</li>
                <li>Services</li>
                <li>Contact</li>
                <li><a href="register.jsp">Register</a></li>
                <li><a href="transaction.jsp">History</a></li>
                
                
            </ul>
        </nav>
    </header>
    <section id="a">
        <h3><i class="far fa-handshake"style="font-size: 2rem; margin-right: 10px;"></i>Welcome to</h3><br><br>
       <h1> APPWAY ONLINE BANKING SYSTEM</h1>
        
    </section>

   
    <section id="about">
        <h2><i class="fas fa-info-circle icon"style="font-size: 1.5rem; margin-right: 10px;"></i>About Us</h2><br>
        <p>A secure and feature-rich Online Banking System to provide customers with convenient and efficient access to
banking services.</p>
    </section>

    <section id="services">
        <h2><i class="fas fa-cogs icon"style="font-size: 1.5rem; margin-right: 10px;"></i>Our Services</h2>
        <ul>
        <br>
            <li>Account management</li>
            <li>Billpayments</li>
            <li>Investiments</li>
            <li>Customer support</li>
             <li>Fund Transfers</li>
             <li>Providing Loans</li>
        </ul>
    </section>

    <section id="contact">
        <h2><i class="fas fa-phone-square icon"style="font-size: 1.5rem; margin-right: 10px;"></i>Contact Us</h2>
        <p>Email: appwaybanking2000@gmail.com</p>
        <p>Phone: +1 (123) 456-7890</p>
        <!-- Add a contact form here -->
    </section>

    <footer>
        <p>© 2024 APPWAY ONLINE BANKING.PVT.lim. All rights reserved.</p>
    </footer>
</body>
</html>