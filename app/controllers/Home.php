<?php
class Home extends Controller {

    public function __construct()
    {
        $this->model = new Main_model;
    }

    public function index()
    {
        $data['title'] = TITLE;

        Load::view('home', $data);
    }

}