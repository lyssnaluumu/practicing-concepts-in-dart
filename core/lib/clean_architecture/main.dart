import 'repositories/user_repository.dart';
import 'use_cases/authenticate_user.dart';
import 'entities/auth_token.dart';

void main() async {
  UserRepository userRepository = UserRepositoryImpl();
  AuthenticateUser authenticateUserUseCase = AuthenticateUser(userRepository);

  AuthToken authToken = await authenticateUserUseCase.execute('john.doe@example.com', 'password123');
  print('Authenticated! Token: ${authToken.token}');
}