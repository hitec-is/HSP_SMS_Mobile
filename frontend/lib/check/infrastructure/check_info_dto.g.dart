// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CheckInfoDTO _$_$_CheckInfoDTOFromJson(Map<String, dynamic> json) {
  return _$_CheckInfoDTO(
    header: CheckHeaderDTO.fromJson(json['header'] as Map<String, dynamic>),
    intervals: (json['intervals'] as List<dynamic>)
        .map((e) => CheckStandardDTO.fromJson(e as Map<String, dynamic>))
        .toList(),
    sessions: (json['sessions'] as List<dynamic>)
        .map((e) => CheckStandardDTO.fromJson(e as Map<String, dynamic>))
        .toList(),
    details: (json['details'] as List<dynamic>)
        .map((e) => CheckDetailsDTO.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_CheckInfoDTOToJson(_$_CheckInfoDTO instance) =>
    <String, dynamic>{
      'header': instance.header.toJson(),
      'intervals': instance.intervals.map((e) => e.toJson()).toList(),
      'sessions': instance.sessions.map((e) => e.toJson()).toList(),
      'details': instance.details.map((e) => e.toJson()).toList(),
    };

_$_CheckHeaderDTO _$_$_CheckHeaderDTOFromJson(Map<String, dynamic> json) {
  return _$_CheckHeaderDTO(
    id: json['CHKLIST_NO'] as String,
    session: json['CHK_CHASU'] as String,
    interval: json['CHK_INTERVAL'] as String,
    chkYmd: json['CHK_YMD'] as String,
    compCd: json['COMP_CD'] as String,
    objCd: json['OBJ_CD'] as String,
    objNm: json['OBJ_NM'] as String,
    objGubun: json['OBJ_GUBUN'] as String,
    objGubunNm: json['OBJ_GUBUN_NM'] as String,
    plantCd: json['PLANT_CD'] as String,
    plantNm: json['PLANT_NM'] as String,
    userId: json['CHK_USER_ID'] as String,
    userNm: json['CHK_USER_NM'] as String,
    dateCreated: json['CRT_DT'] as String,
  );
}

Map<String, dynamic> _$_$_CheckHeaderDTOToJson(_$_CheckHeaderDTO instance) =>
    <String, dynamic>{
      'CHKLIST_NO': instance.id,
      'CHK_CHASU': instance.session,
      'CHK_INTERVAL': instance.interval,
      'CHK_YMD': instance.chkYmd,
      'COMP_CD': instance.compCd,
      'OBJ_CD': instance.objCd,
      'OBJ_NM': instance.objNm,
      'OBJ_GUBUN': instance.objGubun,
      'OBJ_GUBUN_NM': instance.objGubunNm,
      'PLANT_CD': instance.plantCd,
      'PLANT_NM': instance.plantNm,
      'CHK_USER_ID': instance.userId,
      'CHK_USER_NM': instance.userNm,
      'CRT_DT': instance.dateCreated,
    };

_$_CheckDetailsDTO _$_$_CheckDetailsDTOFromJson(Map<String, dynamic> json) {
  return _$_CheckDetailsDTO(
    chkItemCd: json['CHK_ITEM_CD'] as String,
    chkItemNm: json['CHK_ITEM_NM'] as String,
    intervalChk: json['INTERVAL_CHECK'] as String,
    methodChk: json['METHOD_CHECK'] as String,
    objGubunSub: json['OBJ_GUBUN_SUB'] as String,
    objGubunSubNm: json['OBJ_GUBUN_SUB_NM'] as String,
    remark: json['D_RMK'] as String? ?? '',
    result: json['CHK_RESULT'] as String? ?? '',
    images: (json['IMGS'] as List<dynamic>?)
            ?.map((e) => AddedImageCheckDTO.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$_$_CheckDetailsDTOToJson(_$_CheckDetailsDTO instance) =>
    <String, dynamic>{
      'CHK_ITEM_CD': instance.chkItemCd,
      'CHK_ITEM_NM': instance.chkItemNm,
      'INTERVAL_CHECK': instance.intervalChk,
      'METHOD_CHECK': instance.methodChk,
      'OBJ_GUBUN_SUB': instance.objGubunSub,
      'OBJ_GUBUN_SUB_NM': instance.objGubunSubNm,
      'D_RMK': instance.remark,
      'CHK_RESULT': instance.result,
      'IMGS': instance.images.map((e) => e.toJson()).toList(),
    };

_$_CheckStandardDTO _$_$_CheckStandardDTOFromJson(Map<String, dynamic> json) {
  return _$_CheckStandardDTO(
    id: json['GUBUN'] ?? '',
    name: json['GUBUN_NM'] ?? '',
  );
}

Map<String, dynamic> _$_$_CheckStandardDTOToJson(
        _$_CheckStandardDTO instance) =>
    <String, dynamic>{
      'GUBUN': instance.id,
      'GUBUN_NM': instance.name,
    };

_$_AddedImageCheckDTO _$_$_AddedImageCheckDTOFromJson(
    Map<String, dynamic> json) {
  return _$_AddedImageCheckDTO(
    key: json['KEY'] as String? ?? '',
    no: json['NO'] as String? ?? '',
    name: json['CHK_IMG_URL'] as String? ?? '',
    url: json['CHK_IMG_URL_FULL'] as String? ?? '',
    remark: json['RMK'] as String? ?? '',
    isRemote: json['isRemote'] as bool? ?? true,
  );
}

Map<String, dynamic> _$_$_AddedImageCheckDTOToJson(
        _$_AddedImageCheckDTO instance) =>
    <String, dynamic>{
      'KEY': instance.key,
      'NO': instance.no,
      'CHK_IMG_URL': instance.name,
      'CHK_IMG_URL_FULL': instance.url,
      'RMK': instance.remark,
      'isRemote': instance.isRemote,
    };
