class StudentsTable {

  // L Brom 02, Alexander Svenstrup, Poulsen
  public int studentNumber;
  public String name;
  public static final String CREATE_TABLE = "CREATE TABLE students ("
    + "studentNumber INT(255),"
    + "name VARCHAR(255),"
    + "studentsclasses INTEGER,"
    + "FOREIGN KEY (studentsclasses) REFERENCES classes (classesid)"
    + ")";
  public static final String DROP_TABLE = "DROP TABLE students";

  void insertData() {
  // insert classes data here!
  }
}
