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
            <form action="${pageContext.request.contextPath}/estates?action=update&idEstate=${estate.id}" method="POST" class="was-validated">
                <jsp:include page="../commons/navigationButtonsEdit.jsp"/>

                <section id="details">
                    <div class="container">
                        <div class="row">
                            <div class="col">
                                <div class="card">
                                    <div class="card-header">
                                        <h4>Edit VCNITY</h4>
                                    </div>
                                    <div class="card-body">
                                        <div class="form-group  py-2"">
                                            <label for="name">Name</label>
                                            <input type="text" class="form-control" name="name" id="name" value="${estate.name}" required/>
                                        </div>
                                        <div class="form-group  py-2"">
                                            <label for="publicationURL">Publication URL</label>
                                            <input type="text" class="form-control" name="publicationURL" id="publicationURL" value="${estate.publicationURL}" required/>
                                        </div>
                                        <div class="form-group  py-2"">
                                            <label for="locationURL">Location URL</label>
                                            <input type="text" class="form-control" name="locationURL" id="locationURL" value="${estate.locationURL}" required/>
                                        </div>
                                        <div class="form-group  py-2"">
                                            <label for="price">Price</label>
                                            <input type="number" class="form-control" name="price" id="price" value="${estate.price}" required/>
                                        </div>
                                        <div class="form-group py-2"">
                                            <label for="rooms">Rooms</label>
                                            <input type="number" class="form-control" name="rooms" id="rooms" value="${estate.rooms}" required/>
                                        </div>
                                        <div class="form-group py-2"">
                                            <label for="buildingSize">Building Size</label>
                                            <input type="number" class="form-control" name="buildingSize" id="buildingSize" value="${estate.buildingSize}" required/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </form>

            <jsp:include page="./loginModal.jsp"/>
            <jsp:include page="./deleteConfirmationModal.jsp"/>
        </main>
        <jsp:include page="../commons/footer.jsp"/>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
        <script src="https://kit.fontawesome.com/5e4baeebac.js" crossorigin="anonymous"></script>
    </body>
</html>