import '../repositories/user_repository.dart';
import '../entities/auth_token.dart';


class AuthenticateUser {
  final UserRepository _userRepository;

  AuthenticateUser(this._userRepository);

  Future<AuthToken> execute(String email, String password) {
    return _userRepository.authenticate(email, password);
  }
}