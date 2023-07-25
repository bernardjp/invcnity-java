<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:setLocale value="en_US"/>
<div class="container my-4 d-flex justify-content-between gap-2">
    <div class="card" style="width: 18rem;">
        <h5 class="card-header fs-6">Estates count</h5>
        <div class="card-body">
            <blockquote class="blockquote mb-0">
                <p class="fw-bold">${estatesCount} vcnities</p>
                <footer class="blockquote-footer fs-6">closer to find your <cite title="Home">Home</cite></footer>
            </blockquote>
        </div>
    </div>
    <div class="card" style="width: 18rem;">
        <h5 class="card-header fs-6">Average Price</h5>
        <div class="card-body">
            <blockquote class="blockquote mb-0">
                <p class="fw-bold"><fmt:formatNumber value="${averagePrice}" type="currency"/></p>
                <footer class="blockquote-footer fs-6">weighted in <cite title="Happiness">Happiness</cite></footer>
            </blockquote>
        </div>
    </div>
    <div class="card" style="width: 18rem;">
        <h5 class="card-header fs-6">Average Building Size</h5>
        <div class="card-body">
            <blockquote class="blockquote mb-0">
                <p class="fw-bold">${averageSize} m2</p>
                <footer class="blockquote-footer fs-6">enough for your <cite title="Home">Heart</cite></footer>
            </blockquote>
        </div>
    </div>
    <div class="card" style="width: 18rem;">
        <h5 class="card-header fs-6">Average Rooms Count</h5>
        <div class="card-body">
            <blockquote class="blockquote mb-0">
                <p class="fw-bold">${averageRooms} rooms</p>
                <footer class="blockquote-footer fs-6">the more the <cite title="Home">Merrier</cite></footer>
            </blockquote>
        </div>
    </div>
</div>