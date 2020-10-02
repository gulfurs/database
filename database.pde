import de.bezier.data.sql.*;

SQLite db;
Knap nyTabel;

void setup() {
  size(600, 600);
  db = new SQLite(this, "data/test.db");  // open database file
  nyTabel = new Knap(width*0.5, height*0.5, width*0.5, height*0.5, "nyTabel");

  if (db.connect()) {
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
  if (nyTabel.clicked()) {
    cleanConsole();
    println("Der er lavet en ny tabel");
    db.query(StudentsTable.CREATE_TABLE);
  }
}

void cleanConsole () {
  // Lidt en dårlig måde at klargøre konsollen
  for (int i = 0; i < 1000; i++) println();
}


/*
  TODO: Load text from the .txt files and save them in a database! 
  TODO: Alt skal kunne nulstilles!
  TODO: Krypter noget data!
  TODO: Backup fil der skal kunne indlæses med alt indholdet (det er vel bare .txt filerne dem selv)
*/
