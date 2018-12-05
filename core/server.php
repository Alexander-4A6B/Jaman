<?php

require_once('config.php');

error_reporting($config['error']);

defined('ROOT') || define('ROOT', $config['root']);
defined('TITLE') || define('TITLE', $config['title']);
defined('TEMPLATE') || define('TEMPLATE', $config['template']);
defined('CONTROLLER') || define('CONTROLLER', $config['default_controller']);
defined('METHOD') || define('METHOD', $config['default_method']);
defined('DB_HOST') || define('DB_HOST', $config['db_host']);
defined('DB_USER') || define('DB_USER', $config['db_user']);
defined('DB_PASS') || define('DB_PASS', $config['db_pass']);
defined('DB_NAME') || define('DB_NAME', $config['db_name']);
defined('DSN') || define('DSN', 'mysql:host=' . DB_HOST . ';dbname=' . DB_NAME);