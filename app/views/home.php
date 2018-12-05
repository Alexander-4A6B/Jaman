<div class="container my-5">

    <div id="department" class="mt-5">
        <table class="table table-bordered table-striped">
            <thead>
                <tr>
                <th scope="col">department-id</th>
                <th scope="col">department-name</th>
                <th scope="col">manager-id</th>
                <th scope="col">location-id</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($show_deparments as $d): ?>
                <tr>
                <td><?= $d['department-id'];?></td>
                <td><?= $d['department-name'];?></td>
                <td><?= $d['manager-id'];?></td>
                <td><?= $d['location-id'];?></td>
                </tr>
            <?php endforeach;?>
            </tbody>
        </table>
    </div>

    <div id="employee" class="mt-5">
        <div class="table-responsive">
            <table class="table table-bordered table-striped">
            <thead>
                <tr>
                <th scope="col">employee ID</th>
                <th scope="col">First name</th>
                <th scope="col">Last name</th>
                <th scope="col">Email</th>
                <th scope="col">Phone number</th>
                <th scope="col">Hire date</th>
                <th scope="col">Job ID</th>
                <th scope="col">Salary</th>
                <th scope="col">commission pct</th>
                <th scope="col">Manager ID</th>
                <th scope="col">Department ID</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($employee as $e): ?>
            <tr>
                <td><?= $e['employee-id'];?></td>
                <td><?= $e['first-name'];?></td>
                <td><?= $e['last-name'];?></td>
                <td><?= $e['email'];?></td>
                <td><?= $e['phone-number'];?></td>
                <td><?= $e['hire-date'];?></td>
                <td><?= $e['job-id'];?></td>
                <td><?= $e['salary'];?></td>
                <td><?= $e['commission-pct'];?></td>
                <td><?= $e['manager-id'];?></td>
                <td><?= $e['department-id'];?></td>
            </tr>
            <?php endforeach; ?>
        </tbody>
        </table>
      </div>
    </div>

</div>
