import '../data_source/remote_data_source.dart';
import '../mapper/mapper.dart';
import '../network/network_info.dart';
import '../../domain/model/models.dart';
import '../network/requests.dart';
import '../network/failure.dart';
import '../../domain/repository/repository.dart';
import 'package:dartz/dartz.dart';

class RepositoryImplementation implements Repository {
  final NetworkInfo _networkInfo;
  final RemoteDataSource _remoteDataSource;
  RepositoryImplementation(this._networkInfo, this._remoteDataSource);
  @override
  Future<Either<Failure, Authentication>> login(
      LoginResquest loginResquest) async {
    if (await _networkInfo.isConnected) {
      //connected, call api
      final response = await _remoteDataSource.login(loginResquest);
      if (response.status == 0) {
        //success
        // return either right
        // return data
        return Right(response.toDomain());
      } else {
        //failure,return either left
        //failure,return business error
        return Left(Failure(response.status!, response.message!));
      }
    } else {
      //return either left
      //return return interconnection error
      return Left(Failure(501, "Check your internet connection!"));
    }
  }
}
