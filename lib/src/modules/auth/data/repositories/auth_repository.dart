import '../../../../core/services/client/dtos/client_request_dto.dart';
import '../../../../core/services/client/i_client_service.dart';
import '../../domain/dtos/sign_in_dto.dart';
import '../../domain/dtos/sign_up_dto.dart';
import '../../domain/exceptions/user_not_found_exception.dart';
import '../../domain/repositories/i_auth_repository.dart';
import '../adapters/dtos/sign_in_dto_adapter.dart';
import '../adapters/dtos/sign_up_dto_adapter.dart';

class AuthRepository implements IAuthRepository {
  final IClientService clientService;

  const AuthRepository({required this.clientService});

  @override
  Future<void> signUpUser(SignUpDTO dto) async {
    final response = await clientService.post(
      ClientRequestDTO(
        path: 'login/',
        data: SignUpDTOAdapter.toMap(dto),
      ),
    );

    return;
  }

  @override
  Future<void> signInUser(SignInDTO dto) async {
    final response = await clientService.get(
      ClientRequestDTO(
        path: 'login/',
        data: SignInDTOAdapter.toMap(dto),
      ),
    );

    final usersList = response.body as List;

    if (usersList.every((user) => user['username'] != dto.username && user['password'] != dto.password)) {
      throw UserNotFoundException(
        message: 'Usuário ou senha inválidos',
      );
    }
  }
}