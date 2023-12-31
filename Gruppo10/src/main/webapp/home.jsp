<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Home</title>
    <link rel="stylesheet" type="text/css" href="./css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css" integrity="sha512-NmLkDIU1C/C88wi324HBc+S2kLhi08PN5GDeUVVVC/BVt/9Izdsc9SVeVfA1UZbY3sHUlDSyRXhCzHfr6hmPPw==" crossorigin="anonymous" />


    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flickity/2.2.1/flickity.min.css" integrity="sha512-ztsAq/T5Mif7onFaDEa5wsi2yyDn5ygdVwSSQ4iok5BPJQGYz1CoXWZSA7OgwGWrxrSrbF0K85PD5uLpimu4eQ==" crossorigin="anonymous" />

    <script src="https://unpkg.com/scrollreveal@4.0.0/dist/scrollreveal.min.js"></script>
</head>
<body>
<div>
    <header>
        <a href="#">
            <img src="images/logo.png" alt="logo" width="150px" height="120px">
        </a>
    </header>
</div>

<div class="sidebar">
    <ul>
        <li><a href="chi_siamo.html"></span class="fa fa-long-arrow-right"> Chi Siamo</a></li>
        <li><a href="vetrina.html"></span class="fa fa-long-arrow-right"> Vetrina</a></li>
        <li><a href="formazione.html"></span class="fa fa-long-arrow-right"> Formazione</a></li>
        <li><a href="info_mestiere.html"></span class="fa fa-long-arrow-right"> Info mestiere</a></li>
    </ul>
</div>


<!-- popup conferma -->
<%
    String nomeCtt = (String) request.getAttribute("nomeContattare");
    String emailCtt = (String) request.getAttribute("emailContattare");
    String telCtt = (String) request.getAttribute("telefonoContattare");
    String indCtt = (String) request.getAttribute("indirizzoContattare");
    String artigiano = (String) request.getAttribute("artigianoContattare");
%>

<div id="popup" class="popup zoom" >
    <div class="popup-intestazione">
        <span>RICHIESTA INCONTRO RICEVUTA</span>
    </div>
    <div class="popup-contenuto">
        <span>Caro <%=nomeCtt%>, sarai contattato appena possibile dall'artigiano <%=artigiano%> tramite l'indirizzo email
            <%=emailCtt%> oppure su cellulare al numero <%=telCtt%>. Se non riusciamo a contattarti attraverso tali mezzi ti invieremo
            via posta all'indirizzo <%=indCtt%> l'invito da parte dell'artigiano selezionato.</span>
    </div>

    <div class="popup-btn">
        <a onclick="closePopup('popup')">CHIUDI</a>
    </div>
</div>


<!-- Poster (Spiderman)-->
<div class="poster mt-3">
    <div class="poster__img reveal">
        <img class="poster__image" src="images/home/artHome1.jpeg" alt="immagine di gruppo di artigiani">
    </div>
    <div class="poster__content reveal">
        <h3 class="big-text">Benvenuti al Progetto Inclusione Artigianato Italiano</h3>
        <p style="margin-top: 5%">Il nostro obiettivo è promuovere e valorizzare l'artigianato italiano, sostenendo gli artigiani locali e diffondendo la loro cultura e tradizione.</p>
        <a href="#" class="btn"> Scopri di più</a>
    </div>
</div>



<!-- BG Cover () -->
<div class="bg-cover mt-3">
    <div class="bg-cover__img reveal">
        <img src="images/home/artHome2.jpeg" class="mk" alt="immagine di gruppo di artigiani">
    </div>

    <div class="bg-cover__text reveal">

        <h3 class="big-text">La Nostra Missione</h3>
        <p class="tw">La nostra missione è creare una comunità inclusiva che celebra l'artigianato italiano e ne riconosce il valore all'interno della società. Vogliamo sensibilizzare il pubblico sull'importanza di sostenere gli artigiani locali, promuovendo il loro lavoro e offrendo opportunità di apprendimento e collaborazione.</p>
        <a href="" class="btn">Scopri di più</a>

    </div>
</div>








<!-- Poster () -->
<div class="poster1 mt-3">

    <div class="poster__content1 reveal">
        <h3 class="big-text1">Scopri gli Artigiani Locali</h3>
        <p>Visita il nostro elenco di artigiani locali e scopri le loro creazioni uniche e tradizionali.</p>
        <a href="" class="btn">Scopri di più</a>
    </div>

    <div class="poster__img1  reveal">
        <img src="images/home/artHome3.jpeg" alt="immagine di gruppo di artigiani">
    </div>

</div>

<script>

    ScrollReveal().reveal('.reveal');

    ScrollReveal().reveal('.reveal',  { distance: '100px', duration: 1500, easing: 'cubic-bezier(.215, .61, .355, 1)', interval: 600, mobile: false }) ; /*animazione reveal*/

    ScrollReveal().reveal('.zoom',  {  duration: 1500, easing: 'cubic-bezier(.215, .61, .355, 1)', interval: 200, scale: 0.65, mobile: false}); /*animazione zoom*/

    function closePopup(id) {
        document.getElementById(id).style.display = 'none';
    }

</script>
</body>

</html>
