class StudentsTable {
  public int studentNumber;
  public String name;
  public String profilePicture;
  
  StudentsTable() {
    this.studentNumber = 2;
    this.name = "lol";
    this.profilePicture = "https://lol";
  }

  public String CREATE_TABLE() {
    return "CREATE TABLE students_table ("
      + "studentNumber INT(255),"
      + "name VARCHAR(255),"
      + "profilePicture VARCHAR(255)"
      + ")"; 
  }
}
