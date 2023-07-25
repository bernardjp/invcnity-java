<meta http-equiv = "refresh" content="0;url=${pageContext.request.contextPath}/estates">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" >
        <link rel="icon" type="image/png" href="favicon.png"/>
        <link rel="stylesheet" type="text/css" href="./styles.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <title>Login</title>
    </head>
    <body>
        <jsp:include page="WEB-INF/pages/commons/header.jsp"/>

        <main class="container p-5" style="min-height: calc(100vh - 120px);">
            <section class="d-flex flex-column align-items-center">
                <h2 class="text-center py-5 mb-4">Redirecting to IN/VCNITY Manager dashboard</h2>
                <div class="lds-spinner"><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div></div>
            </section>

            <jsp:include page="WEB-INF/pages/operations/loginModal.jsp"/>
        </main>

        <jsp:include page="WEB-INF/pages/commons/footer.jsp"/>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
        <script src="https://kit.fontawesome.com/5e4baeebac.js" crossorigin="anonymous"></script>
    </body>
</html>