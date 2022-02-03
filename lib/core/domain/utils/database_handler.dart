import 'dart:io';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class DatabaseHelper {
  static const _databaseName = "res_chefs.db";
  static const _databaseVersion = 1;

  // make this a singleton class
  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  // only have a single app-wide reference to the database
  static Database? _database;
  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }
    // lazily instantiate the db the first time it is accessed
    _database = await _initDatabase();
    return _database!;
  }

  // this opens the database (and creates it if it doesn't exist)
  _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, _databaseName);
    return await openDatabase(path,
        version: _databaseVersion, onCreate: _onCreate);
  }

  // SQL code to create the database table
  Future _onCreate(Database database, int version) async {
    await database.execute(
      '''CREATE TABLE restaurants(
         id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
         name TEXT, 
         address1 TEXT,
         address2 TEXT,
         city TEXT, 
         state TEXT,
         country TEXT, 
         phone TEXT
      )''',
    );

    await database.execute(
      '''CREATE TABLE chefs(
          id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
          first_name TEXT, 
          last_name TEXT, 
          address TEXT, 
          city TEXT, 
          state TEXT, 
          country TEXT, 
          email TEXT
      )''',
    );

    await database.execute(
      '''CREATE TABLE work(
          restaurant_id INTEGER,
          chef_id INTEGER
      )''',
    );
  }
}
