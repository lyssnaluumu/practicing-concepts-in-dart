abstract class Database {
  void saveData(String data);
}

class MySQLDatabase implements Database {
  @override
  void saveData(String data) {
    print('Data saved to MySQL database');
  }
}

class DataProcessor {
  final Database database;

  DataProcessor(this.database);

  void processData(String data) {
    database.saveData(data);
    print('Data processed');
  }
}

void main() {
  Database database = MySQLDatabase();
  DataProcessor processor = DataProcessor(database);

  processor.processData('Some data');
}
