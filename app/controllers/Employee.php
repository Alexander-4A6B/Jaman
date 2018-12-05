<?php
class Employee extends Controller {

    public function __construct()
    {
        $this->model = new Main_model;
    }

    public function read_all_employees(){
	    $query = "SELECT * FROM `employees`";
        $result = $this->model->read_all($query);

	    return $result;
    }

}