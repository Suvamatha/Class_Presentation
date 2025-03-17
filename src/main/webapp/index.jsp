<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
    <link rel="stylesheet" href="style.css">
    <title>Suvam Portfolio</title>
</head>
<style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600&display=swap');
*{
    padding: 0;
    margin: 0;
    font-family: 'Poppins', sans-serif;
    box-sizing: border-box;
}
body{
    width: 100%;
    height: 100vh;
    overflow: hidden;
    background-color: black;
}
nav{
    width: 100%;
    height: 10vh;
    position: sticky;
}
.nav-container{
    width: 100%;
    height: 100%;
    display: flex;
    justify-content: space-around;
    align-items: center;
}
.logo{
    color: white;
    font-size: 2rem;
    font-weight: bold;
}
.logo span{
    color: #077b32;
    text-shadow: 0 0 10px #077b32;
}
.hamburg,
.cancel{
    cursor: pointer;
    position: absolute;
    right: 15px;
    top: 10px;
    color: white;
    display: none;
    font-size: clamp(2.5rem, 0.5rem + 5vw, 3rem);
}
.nav-container .links{
    display: flex;
}
.nav-container .links a{
    position: relative;
    font-size: 1.2rem;
    color: white;
    margin: 0 20px;
    text-decoration: none;
    font-weight: 550;
    transition: 0.3s linear;
}
.nav-container .links a::before{
    position: absolute;
    content: "";
    bottom: -3px;
    left: 0;
    width: 0%;
    height: 3px;
    background-color: #077b32;
    transition: 0.2s linear;
}
.nav-container .links a:hover::before{
    width: 100%;
}
.nav-container .links a:hover{
    color: #077b32;
}
.dropdown{
    z-index: 100;
    position: absolute;
    top: 0;
    transform: translateY(-500px);
    width: 100%;
    height: auto;
    backdrop-filter: blur(4px) brightness(40%);
    box-shadow:  0 0 20px black;
    transition: 0.2s linear;
}
.dropdown .links a{
    display: flex;
    color: white;
    text-decoration: none;
    justify-content: center;
    padding: 15px 0;
    align-items: center;
    transition: 0.2s linear;
}
.dropdown .links a:hover{
    background-color: #077b32;
}
section{
    width: 100%;
    height: 90vh;
}
.main-container{
    width: 100%;
    height: 100%;
    display: flex;
    justify-content: space-evenly;
    align-items: center;
}
.main-container .image{
    width: 500px;
    height: 80vh;
    border-radius: 100%;
    overflow: hidden;
    box-shadow: 0 0 50px #077b32;
}
.main-container .image img{
    width: 100%;
}
.main-container .image:hover{
    animation: animate 1.5s ease-in-out infinite;
}
@keyframes animate {
    0%{
        scale: 1;
    }
    50%{
        scale: 1.05;
    }
    100%{
        scale: 1;
    }
}
.main-container .content{
    color: white;
    width: 40%;
    min-height: 100px;
}
.content h1{
    font-size: clamp(1rem, 1rem + 5vw, 1.8rem);
}
.content h1 span{
    color: #077b32;
    text-shadow: 0  0 10px #077b32;
}
.content .typewriter{
    font-size: clamp(1rem, 1rem + 5vw, 2.5rem);
    font-weight: 600;
}
.content .typewriter-text{
    color: #077b32;
    text-shadow: 0 0 10px #077b32;
}
.content p{
    font-size: clamp(0.4rem , 0.2rem + 9vw, 1rem);
    margin: 10px 0;
}
.social-links i{
    display: inline-flex;
    justify-content: center;
    align-items: center;
    width: 3rem;
    height: 3rem;
    background-color: transparent;
    border: 0.2rem solid #077b32;
    border-radius: 50%;
    color: #077b32;
    margin: 5px 15px;
    font-size: 1.5rem;
    transition: 0.2s linear;
}
.social-links i:hover{
    scale: 1.3;
    color: black;
    background-color: #077b32;
    filter: drop-shadow(0 0 10px #077b32);
}
.content button{
    width: 50%;
    height: 6vh;
    margin: 30px;
    background-color: #077b32;
    color: white;
    border: none;
    outline: none;
    font-size: 120%;
    font-weight: 700;
    border-radius: 5px;
    transition: 0.2s linear;
}
.content button:hover{
    scale: 1.1;
    color: #077b32;
    border: 2px solid #077b32;
    background-color: transparent;
    font-weight: 700;
    box-shadow: 0 0 40px #077b32;
}
@media (max-width:884px) {
    nav .logo{
        position: absolute;
        top: 16px;
        left: 15px;
        font-size: 1.5rem;
    }
    .main-container {
        display: flex;
        flex-direction: column;
    }
    .nav-container .links{
        display: none;
    }
    .hamburg,
    .cancel{
        display: block;
    }
    .main-container .content{
        width: 80%;
    }
    .social-links i{
        width: 2.5rem;
        height: 2.5rem;
        font-size: 1.5rem;
    }
    .main-container .image{
        z-index: -1;
        width: 50%;
        height: 60%;
    }
}
@media (max-width:440px){
    .main-container .image{
        width: 50%;
        height: 60%;
        margin-bottom: 0px;
    }
    .main-container .content{
        width: 80%;
    }
    .main-container button{
        margin-top: 15px;
    }
}
</style>
<script>
    function hamburg(){
    const navbar = document.querySelector(".dropdown")
    navbar.style.transform = "translateY(0px)"
}
function cancel(){
    const navbar = document.querySelector(".dropdown")
    navbar.style.transform = "translateY(-500px)"
}
// Typewriter Effect
const texts = [
    "DEVELOPER",
    "DESIGNER",
    "DevOps"
]
let speed  =100;
const textElements = document.querySelector(".typewriter-text");
let textIndex = 0;
let charcterIndex = 0;
function typeWriter(){
    if (charcterIndex < texts[textIndex].length){
        textElements.innerHTML += texts[textIndex].charAt(charcterIndex);
        charcterIndex++;
        setTimeout(typeWriter, speed);
    }
    else{
        setTimeout(eraseText, 1000)
    }
}
function eraseText(){
    if(textElements.innerHTML.length > 0){
        textElements.innerHTML = textElements.innerHTML.slice(0,-1);
        setTimeout(eraseText, 50)
    }
    else{
        textIndex = (textIndex + 1) % texts.length;
        charcterIndex = 0;
        setTimeout(typeWriter, 500)
    }
}
window.onload = typeWriter
</script>
<body>
    <nav>
        <div class="nav-container">
            <div class="logo" data-aos="zoom-in" data-aos-duration="1500">
                Suvam <span>Shrestha</span>
            </div>
            <div class="links">
                <div class="link" data-aos="fade-up" data-aos-duration="1500" data-aos-delay="100"><a href="#">Home</a></div>
                <div class="link" data-aos="fade-up" data-aos-duration="1500" data-aos-delay="200"><a href="#">About</a></div>
                <div class="link" data-aos="fade-up" data-aos-duration="1500" data-aos-delay="300"><a href="#">Skills</a></div>
                <div class="link" data-aos="fade-up" data-aos-duration="1500" data-aos-delay="400"><a href="#">Services</a></div>
                <div class="link" data-aos="fade-up" data-aos-duration="1500" data-aos-delay="500"><a href="#">Contact</a></div>
        </div>
        <i class="fa-solid fa-bars hamburg" onclick="hamburg()"></i>
    </div>
        <div class="dropdown">
            <div class="links">
                <a href="#">Home</a>
                <a href="#">About</a>
                <a href="#">Skills</a>
                <a href="#">Service</a>
                <a href="#">Contact</a>
                <i class="fa-solid fa-xmark cancel" onclick="cancel()"></i>
            </div>
        </div>
    </nav>
    <section>
        <div class="main-container">
            <div class="image" data-aos="zoom-out" data-aos-duration="3000">
                <img src="_Killua Zoldyck icon_.jpeg" alt="">
            </div>
            <div class="content">
                <h1 data-aos="fade-left" data-aos-duration="1500" data-aos-delay="700">Hey I'm <span>Suvam</span></h1>
                <div class="typewriter" data-aos="fade-right" data-aos-duration="1500" data-aos-delay="900">I'm a <span class="typewriter-text"></span><label for="">|</label></div>
                <p data-aos="flip-down" data-aos-duration="1500" data-aos-delay="1100">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Fugit quasi commodi quia rerum, iste corporis expedita in excepturi nesciunt repellendus quisquam amet provident ad mollitia debitis odit voluptatem necessitatibus tempora.</p>
                <div class="social-links">
                    <a href="#" data-aos="fade-up" data-aos-duration="1500" data-aos-delay="1300"><i class="fa-brands fa-github"></i></a>
                    <a href="#" data-aos="fade-up" data-aos-duration="1500" data-aos-delay="1400"><i class="fa-brands fa-facebook"></i></a>
                    <a href="#" data-aos="fade-up" data-aos-duration="1500" data-aos-delay="1500"><i class="fa-brands fa-linkedin"></i></a>
                    <a href="#" data-aos="fade-up" data-aos-duration="1500" data-aos-delay="1600"><i class="fa-brands fa-twitter"></i></a>
                </div>
                <div class="btn" data-aos="zoom-in" data-aos-duration="1500" data-aos-delay="1800">
                    <button>Hire me</button>
                </div>
            </div>
        </div>
    </section>
    <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
    <script>
      AOS.init({offset:0});
    </script>
    <script src="script.js"></script>
</body>
</html>