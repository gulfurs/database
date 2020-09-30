import de.bezier.data.sql.*;

SQLite db;

void setup() {
  db = new SQLite( this, "data/test.db");  // open database file

  if (db.connect()) {
    println("lool");
    //String[] tableNames = db.getTableNames();

    //db.query("SELECT * FROM %s", tableNames[0]);

    //while (db.next()) {
    //  TableOne t = new TableOne();
    //  db.setFromRow(t);
    //  println(t);
    //}
  }

}

class TableOne {
  public String fieldOne;
  public int fieldTwo;

  public String toString () {
    return String.format("fieldOne: %s fieldTwo: %d", fieldOne, fieldTwo);
  }
}
