<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" >
        <link rel="icon" type="image/png" href="favicon.png"/>
        <link rel="stylesheet" type="text/css" href="./styles.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <title>Edit VCNITY</title>
    </head>
    <body>
        <jsp:include page="../commons/header.jsp"/>

        <main class="container p-5"  style="min-height: calc(100vh - 120px);">
            <form action="${pageContext.request.contextPath}/users?action=update&idUser=${user.id}" method="POST" class="was-validated">

                <section id="actions" class="pt-2 pb-4 mb-4 bg-light">
                    <div class="container">
                        <div class="d-flex justify-content-between">
                            <div>
                                <a href="estates.jsp" class="btn btn-light btn-block">
                                    <i class="fas fa-arrow-left"></i>
                                    Go Back
                                </a>
                            </div>
                            <div class="d-flex" style="gap: 8px;">
                                <button type="submit" class="btn btn-success btn-block">
                                    <i class="fas fa-check"></i>
                                    Save Changes
                                </button>
                                <a href="${pageContext.request.contextPath}/users?action=delete&idUser=${user.id}" class="btn btn-block" style="background-color: #f63443; color: white;">
                                    <i class="fas fa-trash"></i>
                                    Delete Account
                                </a>
                            </div>
                        </div>
                    </div>
                </section>

                <section id="details">
                    <div class="container">
                        <div class="row">
                            <div class="col">
                                <div class="card">
                                    <div class="card-header">
                                        <h4>Edit User information</h4>
                                    </div>
                                    <div class="card-body">
                                        <div class="form-group  py-2"">
                                            <label for="username">Username</label>
                                            <input type="text" class="form-control" name="username" id="username" value="${user.username}" max="12" required/>
                                        </div>
                                        <div class="form-group  py-2"">
                                            <label for="password">Password</label>
                                            <input type="password" class="form-control" name="password" id="password" value="${user.password} max="60" required/>
                                        </div>
                                        <div class="form-group  py-2"">
                                            <label for="name">Name</label>
                                            <input type="text" class="form-control" name="name" id="name" value="${user.name}" max="45" required/>
                                        </div>
                                        <div class="form-group  py-2"">
                                            <label for="lastname">Lastname</label>
                                            <input type="text" class="form-control" name="lastname" id="lastname" value="${user.lastname}" max="45" required/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </form>

            <jsp:include page="./loginModal.jsp"/>
        </main>
        <jsp:include page="../commons/footer.jsp"/>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
        <script src="https://kit.fontawesome.com/5e4baeebac.js" crossorigin="anonymous"></script>
    </body>
</html>