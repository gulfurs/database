import de.bezier.data.sql.*;

SQLite db;
Knap nyTabel;

void setup() {
  size(600, 600);
  nyTabel = new Knap(width*0.5,height*0.5,width*0.5,height*0.5,"nyTabel");
  
  db = new SQLite( this, "data/test.db");  // open database file

  if (db.connect()) {
    //println("lool");
    //String[] tableNames = db.getTableNames();

    //db.query("SELECT * FROM %s", tableNames[0]);

    //while (db.next()) {
    //  TableOne t = new TableOne();
    //  db.setFromRow(t);
    //  println(t);
    //}
  }
}


void draw () {
  background(200);
  knapper();
  nyKlasse();
  
}

class TableOne {
  public String fieldOne;
  public int fieldTwo;

  public String toString () {
    return String.format("fieldOne: %s fieldTwo: %d", fieldOne, fieldTwo);
  }
}


void knapper(){
  nyTabel.update();
  
}

void nyKlasse () {
  if ( nyTabel.clicked() ) {
    println("Der er lavet en ny tabel");
  }

}
