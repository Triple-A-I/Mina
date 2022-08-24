import 'package:json_annotation/json_annotation.dart';
part 'responses.g.dart';

@JsonSerializable()
class BaseResponse {
  @JsonKey(name: "status")
  int? status;
  @JsonKey(name: "message")
  String? message;
}

@JsonSerializable()
class CustomerResponse {
  @JsonKey(name: "id")
  String? id;
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "numberOfNotifications")
  int? numberOfNotifications;
  CustomerResponse(this.id, this.name, this.numberOfNotifications);
  //fromJson
  factory CustomerResponse.fromJson(Map<String, dynamic> json) =>
      _$CustomerResponseFromJson(json);
  //toJson
  Map<String, dynamic> toJson() => _$CustomerResponseToJson(this);
}

@JsonSerializable()
class ContactsResponse {
  @JsonKey(name: "email")
  String? email;
  @JsonKey(name: "phone")
  String? phone;
  @JsonKey(name: "link")
  String? link;
  ContactsResponse(this.email, this.link, this.phone);
  //fromJson
  factory ContactsResponse.fromJson(Map<String, dynamic> json) =>
      _$ContactsResponseFromJson(json);
  //toJson
  Map<String, dynamic> toJson() => _$ContactsResponseToJson(this);
}

@JsonSerializable()
class AuthenticationResponse extends BaseResponse {
  @JsonKey(name: "customerResponse")
  CustomerResponse? customerResponse;
  @JsonKey(name: "contactsResponse")
  ContactsResponse? contactsResponse;
  AuthenticationResponse(this.contactsResponse, this.customerResponse);

  //fromJson
  factory AuthenticationResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationResponseFromJson(json);
  //toJson
  Map<String, dynamic> toJson() => _$AuthenticationResponseToJson(this);
}
