<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: *");
header("Access-Control-Allow-Methods: *");

require_once "config/db.php";

class DAO //data access objects sluzi da vraca podatke iz baze u formu klase, pomocu toga se mogu update-ovati podaci ili brisati iz baze
{

    private $db;

    //sql 

    private $GETCURRENTNUMBER = "SELECT * from counter where DATE(date)=CURDATE();";
    private $INSERTCUSTOMERSDATA = "INSERT INTO counter SET date=?, reserved_number=?, current_number=?, created_at=?";
    private $UPDATECUSTOMERSDATA = "UPDATE counter SET reserved_number=? WHERE DATE(date)=CURDATE();";
    private $UPDATEEMPLOYEESDATA = "UPDATE counter SET current_number=? WHERE DATE(date)=CURDATE();";


    //construct
    public function __construct()
    {
        $this->db = DB::createInstance();
    }

    //functions
    /** 
     *
     * Get current number from database
     * @param 
     * @return array
     */
    public function getCurrentNumber() //funkcija za dobijanje trenutnog broja
    {
        $statement = $this->db->prepare($this->GETCURRENTNUMBER);
        $result=$statement->execute();

        return $statement->fetch();
    }

    /** 
     *
     * Get current number from database
     * @param $date, $reserved_number, $current_number, $created
     * @return 
     */
    public function insertCustomersData($date, $reserved_number, $current_number, $created)
    {
        $statement = $this->db->prepare($this->INSERTCUSTOMERSDATA);
        $statement->bindValue(1, $date);
        $statement->bindValue(2, $reserved_number);
        $statement->bindValue(3, $current_number);
        $statement->bindValue(4, $created);
        $statement->execute();
    }

    /** 
     *
     * Update reserved number in database
     * @param $reserved_number
     * @return 
     */
    public function updateCustomersData($reserved_number) //ne koristimo u ovom slucaju
    {
        $statement = $this->db->prepare($this->UPDATECUSTOMERSDATA);
        $statement->bindValue(1, $reserved_number);
        $statement->execute();
    }

    /** 
     *
     * Update current number in database
     * @param $current
     * @return 
     */
    public function updateEmployeesData($current)//ne koristimo u ovom slucaju
    {
        $statement = $this->db->prepare($this->UPDATEEMPLOYEESDATA); 
        $statement->bindValue(1, $current);
        $statement->execute();
    }

}




?>