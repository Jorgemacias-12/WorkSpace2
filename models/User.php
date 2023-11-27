<?php

class User extends Model
{
  public $id;
  public $name;
  public $password;
  public $role_id;
  public $department_id;
  public $email;
  public $phone;
  public $salary;
  public $state;
  public $city;
  public $neighborhood;
  public $street;
  public $homeNumber;
  public $hireDate;
  public $employee_role;

  // El constructor ahora maneja todos los posibles campos de $_POST
  public function __construct($data = [])
  {
    $this->id = $data['id'] ?? null;
    $this->name = $data['username'] ?? null; // Cambiado de 'name' a 'username' para reflejar tu estructura $_POST
    $this->password = $data['password'] ?? null; // Asegúrate de encriptarla antes de almacenarla
    $this->role_id = $data['role'] ?? null; // Cambiado de 'role_id' a 'role' para reflejar tu estructura $_POST
    $this->department_id = $data['department'] ?? null; // Cambiado de 'department_id' a 'department' para reflejar tu estructura $_POST
    $this->email = $data['email'] ?? null;
    $this->phone = $data['phone'] ?? null;
    $this->salary = $data['salary'] ?? null;
    $this->state = $data['state'] ?? null;
    $this->city = $data['city'] ?? null;
    $this->neighborhood = $data['neighborhood'] ?? null;
    $this->street = $data['street'] ?? null;
    $this->homeNumber = $data['homeNumber'] ?? null;
    $this->hireDate = $data['hireDate'] ?? null;
    $this->employee_role = $data['employee_role'] ?? null; // Asumiendo que esto es una propiedad que necesitas
  }

  public function save()
  {
    try {
      $conn = $this->db->getConnection();

      $sql = "";
    } catch (Exception $e) {

    }
  }

  public function delete()
  {

  }
}