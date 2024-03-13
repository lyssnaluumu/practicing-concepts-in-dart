// Good: Separate responsibilities into different classes.
class UserData {
  void save(String data) {
    // Save user data to a database
    print('User data saved');
  }
}

class Logger {
  void log(String message) {
    // Log the message
    print('Log: $message');
  }
}
