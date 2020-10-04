class StudentsTable {
  public int studentNumber;
  public String name;

  public static final String DROP_TABLE = "DROP TABLE students";
  public static final String CREATE_TABLE = "CREATE TABLE students ("
    + "studentNumber INT(255),"
    + "name VARCHAR(255),"
    + "studentsclasses INTEGER,"
    + "FOREIGN KEY (studentsclasses) REFERENCES classes (classesid)"
    + ")";

  void insertData() {
    //String[] lines = loadStrings("text-data-files/elever.txt");
    //for (String line : lines) println(line);
  }
}
