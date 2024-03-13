// Bad: This class handles both user data and logging, violating SRP.
class User {
  void saveUserData(String data) {
    // Save user data to a database
    print('User data saved');
    // Log the action
    print('Log: User data saved');
  }
}
