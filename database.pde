import de.bezier.data.sql.*;

SQLite db;
Knap nyTabel;

void setup() {
  db = new SQLite(this, "data/test.db");  // open database file
  size(600, 600);
  nyTabel = new Knap(width*0.5, height*0.5, width*0.5, height*0.5, "nyTabel");

  if (db.connect()) {
    //db.query(StudentsTable.CREATE_TABLE);

    //db.query("INSERT INTO students_table (studentNumber, name, profilePicture)"
    //    + "VALUES (2, \"looool\", \"lol\")"
    //);

    db.query("SELECT * FROM students_table");

    while (db.next()) {
      StudentsTable t = new StudentsTable();
      db.setFromRow(t);
      println(t);
    }
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
