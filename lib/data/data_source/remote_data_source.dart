import '../network/app_api.dart';
import '../network/requests.dart';
import '../responses/responses.dart';

abstract class RemoteDataSource {
  Future<AuthenticationResponse> login(LoginResquest loginResquest);
}

class RemoteDataSourceImplementation implements RemoteDataSource {
  final AppServiceClient _appServiceClient;
  RemoteDataSourceImplementation(this._appServiceClient);
  @override
  Future<AuthenticationResponse> login(LoginResquest loginResquest) async {
    return await _appServiceClient.login(
        loginResquest.email, loginResquest.password);
  }
}
