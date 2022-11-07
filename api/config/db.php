<?php

class DB{
    private static $factory;

    public static function createInstance($config = null)
    {
        $settings['dbname'] = 'counter-app';
        $settings['dbhost'] = '127.0.0.1';
        $settings['dbport'] = '3310';
        $settings['dbuser'] = 'root';
        $settings['dbpass'] = '';

        //povezivanje na lokalnu bazu

        try{
            $dsn = 'mysql:dbname=' . $settings['dbname'] . ';host=' . $settings['dbhost'].';port='.$settings['dbport'];
            $pdo = new PDO($dsn, $settings['dbuser'], $settings['dbpass'], array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8")); //pdo znaci php data objects sluze za pristup bazi, povezivanje, stavljaju se parametri od baze unutar pr $dsn promenjive

            $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $pdo->setAttribute(PDO::ATTR_EMULATE_PREPARES, true);
            $pdo->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);

            self::$factory[$config] = $pdo;

            return self::$factory[$config];
        }
        catch (PDOException $e) {
            die ('Connection failed: ' . $e->getMessage());
        }
    }
}
?>