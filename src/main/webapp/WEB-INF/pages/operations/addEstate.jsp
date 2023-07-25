<div class="modal fade" id="addEstateModal" tabindex="-1" aria-labelledby="addEstateModal" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content" style="max-width: 720px;">
            <div class="modal-header bg-danger text-white px-4">
                <h5 class="modal-title">Add new VCNITY</h5>
                <button type="button" class="btn btn-close" style="filter: invert();" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>

            <form action="${pageContext.request.contextPath}/estates?action=insert" method="POST" class="was-validated">
                <div class="modal-body px-4 py-2">
                    <div class="form-group py-2">
                        <label for="name">Name</label>
                        <input type="text" class="form-control" name="name" id="name" required/>
                    </div>
                    <div class="form-group py-2">
                        <label for="publicationURL">Publication URL</label>
                        <input type="text" class="form-control mt-1" name="publicationURL" id="publicationURL" required/>
                    </div>
                    <div class="form-group py-2">
                        <label for="locationURL">Location URL</label>
                        <input type="text" class="form-control mt-1" name="locationURL" id="locationURL" required/>
                    </div>
                    <div class="form-group py-2">
                        <label for="price">Price</label>
                        <input type="number" class="form-control mt-1" name="price" id="price" required/>
                    </div>
                    <div class="form-group py-2">
                        <label for="rooms">Rooms</label>
                        <input type="number" class="form-control mt-1" name="rooms" id="rooms" required/>
                    </div>
                    <div class="form-group py-2">
                        <label for="buildingSize">Building Size</label>
                        <input type="number" class="form-control mt-1" name="buildingSize" id="buildingSize" required/>
                    </div>
                </div>
                <div class="modal-footer px-4">
                    <button class="btn btn-primary btn-lg" type="submit">SAVE</button>
                </div>
            </form>
        </div>
    </div>
</div>
