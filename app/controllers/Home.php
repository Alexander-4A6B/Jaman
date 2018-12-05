<?php
class Home extends Controller {

    public function __construct()
    {
        $this->model = new Main_model;
    }

    public function index()
    {
        $employee = new Employee;
        $department = new Department;

        $data['title'] = TITLE;
        $id = 40;

        $data['show_deparments'] = $department->show_deparments();
        $data['read_department'] = $department->read_department($id);
        $date['create_deparments'] = $department->create_deparments();

        $data['employee'] = $employee->read_all_employees();

        Load::view('home', $data);
    }

}