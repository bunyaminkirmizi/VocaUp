import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart' as sql;

class DatabaseHelper {
  static Future<void> initialize(sql.Database database) async {
    await database.execute("""CREATE TABLE items(
        id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        title TEXT,
        description TEXT,
        createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
      )
      """);
  }

  static Future<sql.Database> open() async {
    return sql.openDatabase(
      'words.db',
      version: 1,
      onCreate: (sql.Database database, int version) async {
        await initialize(database);
      },
    );
  }
}
