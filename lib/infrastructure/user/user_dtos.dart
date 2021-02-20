import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cybear_jinni/domain/user/user_entity.dart';
import 'package:cybear_jinni/domain/user/user_value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dtos.freezed.dart';
part 'user_dtos.g.dart';

@freezed
abstract class UserDtos implements _$UserDtos {
  const UserDtos._();

  const factory UserDtos({
    @JsonKey(ignore: true) String id,
    // @required String defaultName,
    @required String email,
  }) = _UserDtos;

  factory UserDtos.fromDomain(UserEntity userEntity) {
    return UserDtos(
      id: userEntity.id.getOrCrash(),
      email: userEntity.email.getOrCrash(),
    );
  }

  UserEntity toDomain() {
    return UserEntity(
      id: UserUniqueId.fromUniqueString(id),
      email: UserEmail(email),
    );
  }

  factory UserDtos.fromJson(Map<String, dynamic> json) =>
      _$UserDtosFromJson(json);

  factory UserDtos.fromFirestore(DocumentSnapshot doc) {
    return UserDtos.fromJson(doc.data()).copyWith(id: doc.id);
  }
}

class ServerTimestampConverter implements JsonConverter<FieldValue, Object> {
  const ServerTimestampConverter();

  @override
  FieldValue fromJson(Object json) {
    return FieldValue.serverTimestamp();
  }

  @override
  Object toJson(FieldValue fieldValue) => fieldValue;
}