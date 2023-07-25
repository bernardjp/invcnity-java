<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" >
        <link rel="icon" type="image/png" href="favicon.png"/>
        <link rel="stylesheet" type="text/css" href="./styles.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <title>IN/VCNITY</title>
    </head>
    <body id="page-top">
        <jsp:include page="WEB-INF/pages/commons/header.jsp"/>

        <header class="masthead text-center text-white" style="min-height: calc(100vh - 51px);align-items: center;display: flex;justify-content: center;padding-bottom: 16rem;">
            <div class="masthead-content">
                <div class="container px-5">
                    <h1 class="masthead-heading mb-0">IN/VCNITY</h1>
                    <h2 class="masthead-subheading mb-0">Home of your future vicinity</h2>
                    <a class="btn btn-primary btn-xl rounded-pill mt-5 px-3" href="#scroll">Learn More</a>
                </div>
            </div>
            <div class="bg-circle-1 bg-circle"></div>
            <div class="bg-circle-2 bg-circle"></div>
            <div class="bg-circle-3 bg-circle"></div>
            <div class="bg-circle-4 bg-circle"></div>
        </header>

        <section style="padding: 4.5rem 0;">
            <article id="scroll">
                <div class="container px-4">
                    <div class="row gx-5 align-items-center">
                        <div class="col-lg-6 order-lg-2">
                            <div class="px-5"><img class="img-fluid rounded-circle" src="assets/images/01.jpg" alt="..." /></div>
                        </div>
                        <div class="col-lg-6 order-lg-1">
                            <div class="p-5">
                                <h2 class="display-4">Keep track of your Real Estate prospects</h2>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod aliquid, mollitia odio veniam sit iste esse assumenda amet aperiam exercitationem, ea animi blanditiis recusandae! Ratione voluptatum molestiae adipisci, beatae obcaecati.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </article>

            <article>
                <div class="container px-4">
                    <div class="row gx-5 align-items-center">
                        <div class="col-lg-6">
                            <div class="px-5"><img class="img-fluid rounded-circle" src="assets/images/02.jpg" alt="..." /></div>
                        </div>
                        <div class="col-lg-6">
                            <div class="p-5">
                                <h2 class="display-4">One place, all the key information</h2>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod aliquid, mollitia odio veniam sit iste esse assumenda amet aperiam exercitationem, ea animi blanditiis recusandae! Ratione voluptatum molestiae adipisci, beatae obcaecati.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </article>

            <article>
                <div class="container px-4">
                    <div class="row gx-5 align-items-center">
                        <div class="col-lg-6 order-lg-2">
                            <div class="px-5"><img class="img-fluid rounded-circle" src="assets/images/03.jpg" alt="..." /></div>
                        </div>
                        <div class="col-lg-6 order-lg-1">
                            <div class="p-5">
                                <h2 class="display-4">Housing your Dreams!</h2>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod aliquid, mollitia odio veniam sit iste esse assumenda amet aperiam exercitationem, ea animi blanditiis recusandae! Ratione voluptatum molestiae adipisci, beatae obcaecati.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </article>
        </section>

        <jsp:include page="WEB-INF/pages/operations/loginModal.jsp"/>
        <jsp:include page="WEB-INF/pages/commons/footer.jsp"/>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
        <script src="https://kit.fontawesome.com/5e4baeebac.js" crossorigin="anonymous"></script>
    </body>
</html>