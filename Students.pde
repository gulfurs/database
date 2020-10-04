class StudentsTable {

  // L Brom 02, Alexander Svenstrup, Poulsen
  public int studentNumber;
  public String name;
  public static final String CREATE_TABLE = "CREATE TABLE students_table ("
    + "FOREIGN KEY (classes_table_id) REFERENCES classes_table (classes_table_id),"
    + "studentNumber INT(255),"
    + "name VARCHAR(255)"
    + ")";

  void insertData() {
  // insert classes data here!
  }
}
