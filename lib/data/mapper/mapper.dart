import '../../app/constants.dart';
import '../responses/responses.dart';
import '../../domain/model/models.dart';
import '../../app/extensions.dart';

extension CustomerResponseMapper on CustomerResponse? {
  Customer toDomain() {
    return Customer(
      this?.id.orEmpty() ?? Constants.empty,
      this?.name.orEmpty() ?? Constants.empty,
      this?.numberOfNotifications.orZero() ?? Constants.zero,
    );
  }
}

extension ContactsResponseMapper on ContactsResponse? {
  Contacts toDomain() {
    return Contacts(
      this?.email.orEmpty() ?? Constants.empty,
      this?.link ?? Constants.empty,
      this?.phone.orEmpty() ?? Constants.empty,
    );
  }
}

extension AuthenticationResponseMapper on AuthenticationResponse? {
  Authentication toDomain() {
    return Authentication(
      this?.contactsResponse.toDomain(),
      this?.customerResponse.toDomain(),
    );
  }
}
