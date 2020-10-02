import de.bezier.data.sql.*;

SQLite db;

void setup() {
  db = new SQLite(this, "data/test.db");  // open database file

  if (db.connect()) {
    db.query(StudentsTable.CREATE_TABLE());

    //db.query();
    //db.saveToDatabase("students_table", new StudentsTable());
    
    //db.registerTableNameForClass("students_table", StudentsTable.class);
    
    //String[] tableNames = db.getTableNames();

    //db.query("SELECT * FROM %s", tableNames[0]);

    //while (db.next()) {
    //  TableOne t = new TableOne();
    //  db.setFromRow(t);
    //  println(t);
    //}
  }
}
