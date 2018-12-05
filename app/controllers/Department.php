<?php
class Department extends Controller {

    public function __construct()
    {
        $this->model = new Main_model;
    }

    public function create_deparments()
    {

      if (isset($_POST['form-submitted'])) {
          
            $fname = $_POST['department_name'];
            $fmanid = $_POST['manager_id'];
            $flocid = $_POST['location_id'];

            $sqlQuery = "INSERT INTO `deparments`(`department-name`, `manager-id`, `location-id`) VALUES ('$fname', '$fmanid', '$flocid')";

            $createResult = $this->model->create($sqlQuery);

            if ($createResult)
            {
                return $createResult;
            } else {
        }

        } else {
            Load::view('create_department');
        }
    }

    public function show_deparments() {
        $query = "SELECT * FROM deparments";
        $data = $this->model->read_all($query);
        return $data;
    }

    public function edit_department()
    {
        if(isset($_POST['edit_department']))
        {
            $department_id = self::sanitize($_POST['department_id']);
            $department_name = self::sanitize($_POST['department_name']);
            $manager_id = self::sanitize($_POST['manager_id']);
            $location_id = self::sanitize($_POST['location_id']);

            $query = "UPDATE deparments SET department-id = :department-id, department-name = :department-name, manager-id = :manager-id, location-id = :location-id";
            $values = [
                ':department-id' => $department_id,
                ':department-name' => $department_name,
                ':manager-id' => $manager_id,
                ':location-id' => $location_id
            ];
            $data = $this->model->update($query, $values);

            return $data;
        }
        else
        {
            Load::view('edit_department');
        }
    }

    public function delete_department($id)
    {
        $query = "DELETE FROM deparments WHERE department-id = ':id'";
        $binds = [':id'=>$id];
        $stmt = $this->model->delete($query, $binds);
        return $stmt;
    }


    public function read_department($id)
    {
        $query = "SELECT * FROM `deparments` WHERE `department-id` = ':id'";
        $binds = [':id'=>$id];
        $stmt = $this->model->read($query, $binds);
      
        return $stmt;
    }

}