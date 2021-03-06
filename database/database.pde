import de.bezier.data.sql.*;

SQLite db;
Knap nyTabel;
Knap nulstilles;
Knap indlaesKlasser;

StudentsTable studentsTable;
ClassesTable classesTable;
BooksTable booksTable;

void setup() {
  size(600, 600);

  db = new SQLite(this, "data/test.db");  // open database file

  //Knapper
  nyTabel = new Knap(width*0.05, height*0.05, width*0.1, height*0.1, "nyTabel");
  nulstilles = new Knap(width*0.15, height*0.05, width*0.1, height*0.1, "sletTabel");
  indlaesKlasser = new Knap(width*0.25, height*0.05, width*0.1, height*0.1, "IndlæsKlasser");

  studentsTable = new StudentsTable();
  classesTable = new ClassesTable();
  booksTable = new BooksTable();

  if (db.connect()) {
    //db.query("INSERT INTO students_table (studentNumber, name, profilePicture)"
    //    + "VALUES (2, \"looool\", \"lol\")"
    //);

    db.query("SELECT * FROM books_table");

    while (db.next()) {
      //StudentsTable t = new StudentsTable();
      //db.setFromRow(t);
      //println(t);
      println(db.getString("ROWID"));
    }
  }
}

void draw() {
  background(200);
  nyKlasse();
  knapper();
}

void knapper() {
  nyTabel.update();
  nulstilles.update();
  indlaesKlasser.update();
}

void nyKlasse() {
  if (nyTabel.clicked()) {
    cleanConsole();
    createAllTables();
    
    println("Der er lavet en ny tabel");
  }

  if (nulstilles.clicked()) {
    cleanConsole();
    dropAllTables();

    println("Alt er nulstillet");
  }

  if (indlaesKlasser.clicked()) {
    cleanConsole();
    insertAllData();

    println("Alle klasser er indlæst");
  }
}

void createAllTables() {
  db.query(studentsTable.CREATE_TABLE);
  db.query(classesTable.CREATE_TABLE);
  db.query(booksTable.CREATE_TABLE);
}
 
void dropAllTables() {
  db.query(studentsTable.DROP_TABLE);
  db.query(classesTable.DROP_TABLE);
  db.query(booksTable.DROP_TABLE);
}

void insertAllData() {
  studentsTable.insertData();
  classesTable.insertData();
  booksTable.insertData();
}

void cleanConsole () {
  for (int i = 0; i < 1000; i++) println();
}


 /*
 TODO: Load text from the .txt files and save them in a database! 
 TODO: Alt skal kunne nulstilles!
 TODO: Krypter noget data!
 TODO: Backup fil der skal kunne indlæses med alt indholdet (det er vel bare .txt filerne dem selv)
 */
