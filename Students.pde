class StudentsTable {
  public int studentNumber;
  public String name;
  public String profilePicture; 
  public static final String CREATE_TABLE = "CREATE TABLE students_table ("
                                      + "studentNumber INT(255),"
                                      + "name VARCHAR(255),"
                                      + "profilePicture VARCHAR(255)"
                                      + ")";
  
  StudentsTable() {
    this.studentNumber = 2;
    this.name = "lol";
    this.profilePicture = "https://lol";
  }

  String toString() {
    return String.format("%s, %s", name, profilePicture);
  }
}
