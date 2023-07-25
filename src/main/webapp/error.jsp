<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" >
        <link rel="icon" type="image/png" href="favicon.png"/>
        <link rel="stylesheet" type="text/css" href="./styles.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <title>Error</title>
    </head>
    <body>
    <jsp:include page="WEB-INF/pages/commons/header.jsp"/>

    <main class="container p-5" style="min-height: calc(100vh - 120px);">
        <section style="padding: 4.5rem 0;">
            <article>
                <div class="container px-4">
                    <div class="row gx-5 align-items-center">
                        <div class="col-lg-6">
                            <div class="p-5">
                                <h2 class="display-5 text-center">Error: Service unavailable.</h2>
                                <p class="text-center">Sorry, but our services are currently unavailable. Try again later!</p>
                                <div class="d-flex justify-content-center pt-2 gap-2">
                                    <a class="btn btn-primary btn-lg rounded-pill px-3 px-4" href="${pageContext.request.contextPath}">
                                        Go back
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="px-4"><img class="img-fluid rounded-circle" src="assets/images/02.jpg" alt="..." /></div>
                        </div>
                    </div>
                </div>
            </article>
        </section>

        <jsp:include page="WEB-INF/pages/operations/loginModal.jsp"/>
    </main>

    <jsp:include page="WEB-INF/pages/commons/footer.jsp"/>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/5e4baeebac.js" crossorigin="anonymous"></script>
    </body>
</html>