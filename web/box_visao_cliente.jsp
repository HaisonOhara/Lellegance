<!DOCTYPE html>
<html lang="en">

<head>
    <!-- meta -->
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>L'elegance Assinar</title>
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,300i,400,400i,500,500i,600,600i,700,700i|Playfair+Display:400,400i,700,700i,900,900i" rel="stylesheet">

    <!-- Bootstrap CSS File -->
    <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Libraries CSS Files -->
    <link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/magnific-popup/magnific-popup.css" rel="stylesheet">
    <link href="lib/hover/hover.min.css" rel="stylesheet">

    <!-- Main Stylesheet File -->
    <link href="css/style.css" rel="stylesheet">

    <!-- Responsive css -->
    <link href="css/responsive.css" rel="stylesheet">

    <!-- Favicon -->
    <link rel="shortcut icon" href="img_projeto/favicon.png">


</head>

<body>
    <form method="post" action="preAssinar">
        <input type="hidden" name="id" value="${estilo.id}">
        <%@include file="menu.jsp"%>
            <!-- start section header -->
            <div id="estilo" class="home">
                <div class="container">
                    <div class="header-content">
                        <h12>${estilo.nome}</h12>
                        <h13>Um estilo para voce usar no dia a dia sem deixar de ser elegante.</h13>
                        <h14><a>Assine este estilo</a></h14>
                    </div>
                </div>
            </div>
            <!--==========================
      About Us Section
    ============================-->
            <div class="container">

                <header class="section-header">
                    <h1>
                        <center>Box</center>
                    </h1>
                    <p>${estilo.descricao}.</p>
                    <p>R$ ${estilo.valor}</p>
                </header>

                <div class="row about-cols">

                    <div class="col-md-4 wow fadeInUp">
                        <div class="about-col">
                            <div class="img">
                                <img src="img_projeto/camiseta.png" alt="" class="img-fluid">
                            </div>
                            <br>
                            <h2 class="title"><a href="#">Camiseta</a></h2>
                            <p>
                                Lorem ipsum dolor sit amet, consectetur elit, sed do eiusmod tempor ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                                <div class="form-label-group">
                                    <select id="inputTroupa" class="form-control" name="MedidaCamiseta">
                                  <option>Tamanho da Roupa</option>
                                  <option value="PP">PP</option>
                                  <option value="P">P</option>
                                  <option value="M">M</option>
                                  <option value="G">G</option>
                                  <option value="GG">GG</option>
                                 </select>
                                </div>
                            </p>
                        </div>
                    </div>

                    <div class="col-md-4 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="about-col">
                            <div class="img">
                                <img src="img_projeto/bermudaa.jpg" alt="" class="img-fluid" />
                            </div>
                            <br>
                            <h2 class="title"><a href="#">Bermuda</a></h2>
                            <p>
                                Sed ut perspiciatis unde omnis iste natus error sit voluptatem doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.
                                <div class="form-label-group">
                                    <select id="inputTroupa" class="form-control" name="MedidaCalca">
                                  <option>Tamanho da Bermuda</option>
                                  <option value=33>33</option>
                                  <option value=34>34</option>
                                  <option value=35>35</option>
                                  <option value=36>36</option>
                                  <option value=37>37</option>
                                  <option value=38>38</option>
                                  <option value=39>39</option>
                                  <option value=40>40</option>
                                  <option value=41>41</option>
                                  <option value=42>42</option>
                                  <option value=43>43</option>
                                  <option value=44>44</option>
                                  <option value=46>46</option>                        
                                </select>
                                </div>
                            </p>
                        </div>
                    </div>

                    <div class="col-md-4 wow fadeInUp" data-wow-delay="0.2s">
                        <div class="about-col">
                            <div class="img">
                                <img src="img_projeto/sapateniss.jpg" alt="" class="img-fluid">
                            </div>
                            <br>
                            <h2 class="title"><a href="#">Sapatenis</a></h2>
                            <p>
                                Nemo enim ipsam voluptatem quia voluptas sit aut odit aut fugit, sed quia magni dolores eos qui ratione voluptatem sequi nesciunt Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet.
                                <div class="form-label-group">
                                    <select id="inputTroupa" class="form-control" name="MedidaCalcado">
                                  <option>Tamanho do Cal�ado</option>
                                  <option value=34>34</option>
                                  <option value=36>36</option>
                                  <option value=38>38</option>
                                  <option value=40>40</option>
                                  <option value=42>42</option>
                                  <option value=44>44</option>
                                  <option value=46>46</option>
                                  <option value=48>48</option>
                                  <option value=50>50</option>
                                 </select>
                                </div>
                            </p>
                        </div>
                    </div>
                    <header class="section-header">
                        <h1>
                            <center>Tempo de Assinatura</center>
                        </h1>
                        <p>
                            <select id="tempoAssinatura" class="form-control" name="plano">
                              <option value="0">Tempo de Assinatura</option>
                              <option value="1">1 mes</option>
                              <option value="3">3 meses</option>
                              <option value="6">6 meses</option>                         
                            </select>
                            <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit" value="comprar">Assinar</button>
                        </p>
                    </header>

                </div>

            </div>
            <!-- #about -->


            <!-- start section footer -->

            <!-- End section footer -->

            <!-- JavaScript Libraries -->
            <script src="lib/jquery/jquery.min.js"></script>
            <script src="lib/jquery/jquery-migrate.min.js"></script>
            <script src="lib/bootstrap/js/bootstrap.bundle.min.js"></script>
            <script src="lib/typed/typed.js"></script>
            <script src="lib/owlcarousel/owl.carousel.min.js"></script>
            <script src="lib/magnific-popup/magnific-popup.min.js"></script>
            <script src="lib/isotope/isotope.pkgd.min.js"></script>

            <!-- Contact Form JavaScript File -->
            <script src="contactform/contactform.js"></script>

            <!-- Template Main Javascript File -->
            <script src="js/main.js"></script>
    </form>
</body>

</html>