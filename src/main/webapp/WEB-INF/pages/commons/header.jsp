<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<nav class="navbar navbar-expand-lg navbar-dark navbar-custom" style="background-color: #f63443;">
    <div class="container px-5">
        <a class="navbar-brand" href="/invcnity-java">IN/VCNITY</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <div class="navbar-nav ms-auto">
                <div class="nav-item mx-3">
                    <a class="nav-link" href="/invcnity-java/estates" style="color: white;">Explore</a>
                </div>
                <c:choose>
                    <c:when test="${user==null}">
                        <button type="button" class="nav-item btn btn-sm btn-outline-light px-3 fw-bold" style="border-radius: 20px;" data-bs-toggle="modal" data-bs-target="#loginModal">LOG IN</button>
                    </c:when>
                    <c:otherwise>
                        <a href="/invcnity-java/logout" class="nav-item btn btn-sm btn-outline-light px-3 fw-bold" style="border-radius: 20px;padding-top: 6px;">LOG OUT</a>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
    </div>
</nav>