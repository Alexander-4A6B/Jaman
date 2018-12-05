<?php
class Employee extends Controller {

    public function __construct()
    {
        $this->model = new Main_model;
    }

}