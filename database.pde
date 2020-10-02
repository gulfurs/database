import de.bezier.data.sql.*;

SQLite db;
Knap nyTabel;

void setup() {
  size(600, 600);
  nyTabel = new Knap(width*0.5, height*0.5, width*0.5, height*0.5, "nyTabel");
  db = new SQLite(this, "data/test.db");  // open database file


  if (db.connect()) {
    // db.query(StudentsTable.CREATE_TABLE());

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



void draw () {
  background(200);
  nyKlasse();
  knapper();
}


void knapper() {
  nyTabel.update();
}


void nyKlasse () {
  if ( nyTabel.clicked() ) {
    cleanConsole();
    println("Der er lavet en ny tabel");
  }
}



void keyPressed () {
}



void cleanConsole () {
  for ( int i = 0; i < 1000; i++) {
    println();
  }
}
