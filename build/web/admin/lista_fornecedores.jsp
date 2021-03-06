<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- meta -->
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <title>L'elegance Adicionar Estilo</title>
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


        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
    </head>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="http://getbootstrap.com/dist/js/bootstrap.min.js"></script>
    <body>

        <!-- start section navbar -->
        <c:if test="${isComum==true}">
            <nav class="navbar navbar-dropdown navbar-fixed-top navbar-expand-lg">
                <div class="row">
                    <div class="container">

                        <div class="logo">
                            <a href="index.jsp"><img src="img_projeto/logooo.png" alt=""></a>
                        </div>

                        <div class="responsive"><i data-icon="m" class="ion-navicon-round"></i></div>
                        <div class="espaco"></div>
                        <ul class="nav-menu list-unstyled">
                            <li><a href="../preAlterarFuncionario" class="smoothScroll">Dados Pessoais</a></li>
                            <li><a href="../sairFuncionario" class="smoothScroll">Sair</a></li>
                        </ul>

                    </div>
                </div>
            </nav>
        </c:if>

        <c:if test="${isComum==false}">
            <nav class="navbar navbar-dropdown navbar-fixed-top navbar-expand-lg">
                <div class="row">
                    <div class="container">

                        <div class="logo">
                            <a href="index.jsp"><img src="img_projeto/logooo.png" alt=""></a>
                        </div>

                        <div class="responsive"><i data-icon="m" class="ion-navicon-round"></i></div>
                        <div class="espaco"></div>
                        <ul class="nav-menu list-unstyled">
                            <li><a href="index.html" class="smoothScroll">Home</a></li>
                            <li><a href="../carregarEstilos" class="smoothScroll">Boxs</a></li>
                            <li><a href="../carregarFuncionarios" class="smoothScroll">Funcionarios</a></li>
                            <li><a href="../preAlterarFuncionario" class="smoothScroll"> Dados Pessoais</a></li>
                            <li><a href="../carregarFornecedores" class="smoothScroll"> Fornecedores</a></li> 
                            <li><a href="../sairFuncionario" class="smoothScroll"> Sair</a></li> 
                        </ul>

                    </div>
                </div>
            </nav>
        </c:if>

        <!-- End section navbar -->
        <br>
        <br>
        <br>
        <br>
        <br>
          <br>
        <!-- table -->
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="table-responsive">

                        <cente><a href="abrirCadastroFornecedor"><button class="btn btn-lg btn-primary btn-lista btn-excluirestilo text-uppercase"  name="add" type="submit">Adicionar Fornecedor</button></a></cente>

                        <br>
                        <br>
                        <table id="mytable" class="table table-bordred table-striped">
                            <thead>
                            <th>Nome</th>
                            <th>Email</th>
                            <th>Editar</th>
                                <c:if test="${isComum==false}">
                                <th>Alterar</th>  
                                </c:if>
                            </thead>
                            <tbody>
                                <tr>
                                    <c:forEach var="fornecedor" items="${fornecedores}">
                                        <td>${fornecedor.nome}</td>
                                        <td>${fornecedor.email}</td>
                                        <td>
                                <cente><a href="preAlterarFornecedor?id=${fornecedor.id}"><button class="btn btn-lg btn-primary btn-lista text-uppercase" name="adcionar" type="submit">Editar Fornecedor</button></a></cente>
                                </td>
                                <c:if test="${fornecedor.status=='Ativo'&&isComum==false}">
                                    <td>
                                    <cente><button class="btn btn-lg btn-success btn-lista text-uppercase"  name="delete" type="submit">Ativo</button></cente>
                                    </td>
                                </c:if>
                                <c:if test="${fornecedor.status=='Inativo'&&isComum==false}">
                                    <td>
                                    <cente><a href="AtivarFornecedor?id=${fornecedor.id}"><button class="btn btn-lg btn-primary btn-lista btn-excluirestilo text-uppercase"  name="delete" type="submit">Ativar</button></a></cente>
                                    </td>
                                </c:if>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
                        <h4 class="modal-title custom_align" id="Heading">Edit Your Detail</h4>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <input class="form-control " type="text" placeholder="Mohsin">
                        </div>
                        <div class="form-group">

                            <input class="form-control " type="text" placeholder="Irshad">
                        </div>
                        <div class="form-group">
                            <textarea rows="2" class="form-control" placeholder="CB 106/107 Street # 11 Wah Cantt Islamabad Pakistan"></textarea>
                        </div>
                    </div>
                    <div class="modal-footer ">
                        <button type="button" class="btn btn-warning btn-lg" style="width: 100%;"><span class="glyphicon glyphicon-ok-sign"></span> Update</button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
        <div class="modal fade" id="delete" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
                        <h4 class="modal-title custom_align" id="Heading">Delete this entry</h4>
                    </div>
                    <div class="modal-body">

                        <div class="alert alert-danger"><span class="glyphicon glyphicon-warning-sign"></span> Are you sure you want to delete this Record?</div>

                    </div>
                    <div class="modal-footer ">
                        <button type="button" class="btn btn-success"><span class="glyphicon glyphicon-ok-sign"></span> Yes</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> No</button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
</html>