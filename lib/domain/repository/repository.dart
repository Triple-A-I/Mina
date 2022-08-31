import '../../data/network/failure.dart';
import '../../data/network/requests.dart';
import '../model/models.dart';
import 'package:dartz/dartz.dart';

abstract class Repository {
  Future<Either<Failure, Authentication>> login(LoginResquest loginResquest);
}
