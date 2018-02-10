<?php

class connect
{
    protected $dsn        = 'mysql:host=localhost;dbname=YellowPage';
    protected $user       = 'root';
    protected $password   = 'mohamedashraf';
    protected $option = array(PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8');
    public $connect;

    function __construct()
    {
        try
        {
            $this->connect = new PDO($this->dsn,$this->user,$this->password,$this->option);

        }catch (PDOException $exception)
        {
            echo 'Not Connected ' . $exception->getMessage();
        }

    }
    public function db()
    {
        return $this->connect;
    }

    public function CloseConnect()
    {
        $this->connect = null;
    }
}
