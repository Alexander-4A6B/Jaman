<div class="container mt-5">
    <div class="card p-3">
        <div class="card-body">
            <h5 class="card-title">Edit the department</h5>
            <form method="post" action="">
                <div class="form-group">
                    <label for="department_id">department_id</label>
                    <input type="number" class="form-control" name="department_id" value="<?= $d['department_id']; ?>">
                </div>
                <div class="form-group">
                    <label for="department_name">department_name</label>
                    <input type="text" class="form-control" name="department_name" value="<?= $d['department_name']; ?>">
                </div>
                <div class="form-group">
                    <label for="manager_id">manager_id</label>
                    <input type="number" class="form-control" name="manager_id" value="<?= $d['manager_id']; ?>">
                </div>
                <div class="form-group">
                    <label for="location_id">location_id</label>
                    <input type="number" class="form-control" name="location_id" value="<?= $d['location_id']; ?>">
                </div>
                <button type="submit" class="btn btn-primary form-control" name="edit_department">Edit the department</button>
            </form>
        </div>
    </div>
</div>