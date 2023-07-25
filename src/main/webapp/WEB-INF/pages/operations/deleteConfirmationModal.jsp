<div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="deleteModal" aria-hidden="true">
    <div class="modal-dialog modal-m">
        <div class="modal-content" style="max-width: 720px;">
            <div class="modal-header bg-danger text-white px-4">
                <h5 class="modal-title">Delete VCNITY</h5>
                <button type="button" class="btn btn-close" style="filter: invert();" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>

            <div class="modal-body p-5">
                <div class="d-flex justify-content-center flex-column">
                    <p class="fw-bold fs-5 text-center">Do you want to delete this VCNITY?</p>
                    <p class="text-center">*This process cannot be reverted</p>
                </div>

                <div class="d-flex justify-content-center gap-5 mt-4">
                    <button class="btn btn-outline-danger btn-lg rounded-pill" style="padding: 0.5rem 2rem;" data-bs-dismiss="modal" aria-label="Close">No</button>
                    <a href="${pageContext.request.contextPath}/estates?action=delete&idEstate=${estate.id}" class="btn btn-primary btn-lg rounded-pill" style="padding: 0.5rem 2rem;">
                        Yes
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>