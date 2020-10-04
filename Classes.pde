class ClassesTable {
  public String name;

  public static final String DROP_TABLE = "DROP TABLE classes";
  public static final String CREATE_TABLE = "CREATE TABLE classes ("
    + "classesid INTEGER PRIMARY KEY,"
    + "name VARCHAR(255)"
    + ")";

  void insertData() {
    String[] lines = loadStrings("text-data-files/klasser.txt");

		// Her bliver der ekseveret sql queries som indsætter data i "classes" tabellen
    for (String line : lines) db.query(String.format("INSERT INTO classes (name) VALUES (\"%s\")", line));
  }
}
