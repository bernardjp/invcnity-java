<div class="modal fade" id="loginModal" tabindex="-1" aria-labelledby="loginModal" aria-hidden="true">
    <div class="modal-dialog modal-m">
        <div class="modal-content" style="max-width: 720px;">
            <div class="modal-header bg-danger text-white px-4">
                <h5 class="modal-title">Login</h5>
                <button type="button" class="btn btn-close" style="filter: invert();" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>

            <form action="${pageContext.request.contextPath}/login" method="POST" class="was-validated">
                <div class="modal-body px-4 py-2">
                    <div class="form-group py-2">
                        <label for="username">Username</label>
                        <input type="text" class="form-control" name="username" id="username" maxlength="12" required/>
                    </div>
                    <div class="form-group py-2">
                        <label for="password">Password</label>
                        <input type="password" class="form-control mt-1" name="password" id="password" maxlength="60" required/>
                    </div>
                </div>
                <div class="modal-footer px-4">
                    <button class="btn btn-primary btn-lg" type="submit">Login</button>
                </div>
            </form>

            <div class="d-flex justify-content-center align-items-center p-2 mb-3">
                First time here? <a class="px-1" href="${pageContext.request.contextPath}/sign-up">Sign up</a> to create a new account!</div>
        </div>
    </div>
</div>