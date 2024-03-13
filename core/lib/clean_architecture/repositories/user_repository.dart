import '../entities/auth_token.dart';

abstract class UserRepository {
  Future<AuthToken> authenticate(String email, String password);
}

class UserRepositoryImpl implements UserRepository {
  @override
  Future<AuthToken> authenticate(String email, String password) async {
    // In a real app, this would interact with a database or a remote API
    // For simplicity, we're just returning a dummy token
    return AuthToken('dummy_token');
  }
}