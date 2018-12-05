<?php
class Home extends Controller {

    public function __construct()
    {
        $this->model = new Main_model;
    }

    public function index()
    {
        $data['title'] = TITLE;
        $data['department'] = $this->department();
        Load::view('home', $data);
    }

    public function department()
    {
        return 'test department';
    }

}