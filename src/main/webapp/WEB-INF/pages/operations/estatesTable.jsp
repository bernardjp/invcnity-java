<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:setLocale value="en_US"/>
<div class="table-responsive my-5">
    <table class="table bg-light">
        <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">VCNITY</th>
                <th scope="col">Link</th>
                <th scope="col" style="display: flex;justify-content: center;">Location</th>
                <th scope="col">Price</th>
                <th scope="col" style="display: flex;justify-content: center;">Rooms</th>
                <th scope="col">Size</th>
                <th scope="col"></th>
            </tr>
        </thead>
        <tbody>
        <c:forEach var="estate" items="${estates}" varStatus="status">
            <tr>
                <td>${status.count}</td>
                <td>${estate.name}</td>
                <td>
                    <a class="px-2" href="${estate.publicationURL}" target="_blank">
                        <i class="fa-solid fa-arrow-up-right-from-square"></i>
                    </a>
                </td>
                <td style="display: flex;justify-content: center;">
                    <a href="${estate.locationURL}" target="_blank">
                        <i class="fa-solid fa-location-dot" style="color: #eb5652;"></i>
                    </a>
                </td>
                <td><fmt:formatNumber value="${estate.price}" type="currency"/></td>
                <td style="display: flex;justify-content: center;">${estate.rooms}</td>
                <td>${estate.buildingSize} m2</td>
                <td style="display: flex;justify-content: flex-end;">
                    <a href="${pageContext.request.contextPath}/estates?action=edit&idEstate=${estate.id}" class="btn btn-outline-danger btn-sm">
                        <i class="fas fa-angle-double-right" style="color: #eb5652;"></i>
                        Edit
                    </a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
