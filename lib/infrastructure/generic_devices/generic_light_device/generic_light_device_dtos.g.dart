// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generic_light_device_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GenericLightDeviceDtos _$_$_GenericLightDeviceDtosFromJson(
    Map<String, dynamic> json) {
  return _$_GenericLightDeviceDtos(
    deviceDtoClass: json['deviceDtoClass'] as String?,
    id: json['id'] as String?,
    defaultName: json['defaultName'] as String?,
    roomId: json['roomId'] as String?,
    roomName: json['roomName'] as String?,
    deviceStateGRPC: json['deviceStateGRPC'] as String?,
    stateMassage: json['stateMassage'] as String?,
    senderDeviceOs: json['senderDeviceOs'] as String?,
    senderDeviceModel: json['senderDeviceModel'] as String?,
    senderId: json['senderId'] as String?,
    lightSwitchState: json['lightSwitchState'] as String?,
    deviceTypes: json['deviceTypes'] as String?,
    compUuid: json['compUuid'] as String?,
  );
}

Map<String, dynamic> _$_$_GenericLightDeviceDtosToJson(
        _$_GenericLightDeviceDtos instance) =>
    <String, dynamic>{
      'deviceDtoClass': instance.deviceDtoClass,
      'id': instance.id,
      'defaultName': instance.defaultName,
      'roomId': instance.roomId,
      'roomName': instance.roomName,
      'deviceStateGRPC': instance.deviceStateGRPC,
      'stateMassage': instance.stateMassage,
      'senderDeviceOs': instance.senderDeviceOs,
      'senderDeviceModel': instance.senderDeviceModel,
      'senderId': instance.senderId,
      'lightSwitchState': instance.lightSwitchState,
      'deviceTypes': instance.deviceTypes,
      'compUuid': instance.compUuid,
    };