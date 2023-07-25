<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" >
        <link rel="icon" type="image/png" href="favicon.png"/>
        <link rel="stylesheet" type="text/css" href="./styles.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <title>IN/VCNITY Manager</title>
    </head>
    <body>
        <jsp:include page="WEB-INF/pages/commons/header.jsp"/>

        <main class="container p-5" style="min-height: calc(100vh - 120px);">

            <c:choose>
                <c:when test="${user.username==null}">
                    <section style="padding: 4.5rem 0;">
                        <article>
                            <div class="container px-4">
                                <div class="row gx-5 align-items-center">
                                    <div class="col-lg-6">
                                        <div class="px-3"><img class="img-fluid rounded-circle" src="assets/images/04.jpg" alt="..." /></div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="p-5">
                                            <h2 class="display-4">One place, all the data!</h2>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod aliquid, mollitia odio veniam sit ea animi blanditiis recusandae!</p>
                                            <div class="d-flex justify-content-center pt-2 gap-4">
                                                <button type="button" class="btn btn-lg btn-outline-danger rounded-pill px-3 px-4" data-bs-toggle="modal" data-bs-target="#loginModal">Log IN</button>
                                                <a class="btn btn-primary btn-lg rounded-pill px-3 px-4" href="${pageContext.request.contextPath}/sign-up">
                                                    Sign IN
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </article>
                    </section>
                </c:when>
                <c:otherwise>
                    <div class="mb-5 d-flex justify-content-between align-items-end">
                        <div class="d-flex flex-column">
                            <h3 class="m-0" style="font-size: 1.5rem;">
                                Welcome ${user.name} ${user.lastname}!
                                <a class="px-2" href="${pageContext.request.contextPath}/users?action=edit&idUser=${user.id}">
                                    <i class="fa-solid fa-arrow-up-right-from-square"></i>
                                </a>
                             </h3>
                            <h1 class="m-0" style="font-size: 4rem;">VCNITY manager</h1>
                        </div>
                        <jsp:include page="WEB-INF/pages/commons/navigationButtons.jsp"/>
                    </div>
                   <jsp:include page="WEB-INF/pages/operations/infoCards.jsp"/>
                   <jsp:include page="WEB-INF/pages/operations/estatesTable.jsp"/>
                   <jsp:include page="WEB-INF/pages/operations/addEstate.jsp"/>
                </c:otherwise>
            </c:choose>

            <jsp:include page="WEB-INF/pages/operations/loginModal.jsp"/>
        </main>

        <jsp:include page="WEB-INF/pages/commons/footer.jsp"/>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
        <script src="https://kit.fontawesome.com/5e4baeebac.js" crossorigin="anonymous"></script>
    </body>
</html>