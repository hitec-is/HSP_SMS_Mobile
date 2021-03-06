// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'tag_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TagStateTearOff {
  const _$TagStateTearOff();

  _TagInitial initial() {
    return const _TagInitial();
  }

  _QrTagReading qrReading() {
    return const _QrTagReading();
  }

  _NfcTagReading nfcReading() {
    return const _NfcTagReading();
  }

  _TagQrRead qrRead(Tag tag) {
    return _TagQrRead(
      tag,
    );
  }

  _TagNfcRead nfcRead(Tag tag) {
    return _TagNfcRead(
      tag,
    );
  }

  _TagFailure failure(TagFailure failure) {
    return _TagFailure(
      failure,
    );
  }
}

/// @nodoc
const $TagState = _$TagStateTearOff();

/// @nodoc
mixin _$TagState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() qrReading,
    required TResult Function() nfcReading,
    required TResult Function(Tag tag) qrRead,
    required TResult Function(Tag tag) nfcRead,
    required TResult Function(TagFailure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? qrReading,
    TResult Function()? nfcReading,
    TResult Function(Tag tag)? qrRead,
    TResult Function(Tag tag)? nfcRead,
    TResult Function(TagFailure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TagInitial value) initial,
    required TResult Function(_QrTagReading value) qrReading,
    required TResult Function(_NfcTagReading value) nfcReading,
    required TResult Function(_TagQrRead value) qrRead,
    required TResult Function(_TagNfcRead value) nfcRead,
    required TResult Function(_TagFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TagInitial value)? initial,
    TResult Function(_QrTagReading value)? qrReading,
    TResult Function(_NfcTagReading value)? nfcReading,
    TResult Function(_TagQrRead value)? qrRead,
    TResult Function(_TagNfcRead value)? nfcRead,
    TResult Function(_TagFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagStateCopyWith<$Res> {
  factory $TagStateCopyWith(TagState value, $Res Function(TagState) then) =
      _$TagStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TagStateCopyWithImpl<$Res> implements $TagStateCopyWith<$Res> {
  _$TagStateCopyWithImpl(this._value, this._then);

  final TagState _value;
  // ignore: unused_field
  final $Res Function(TagState) _then;
}

/// @nodoc
abstract class _$TagInitialCopyWith<$Res> {
  factory _$TagInitialCopyWith(
          _TagInitial value, $Res Function(_TagInitial) then) =
      __$TagInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$TagInitialCopyWithImpl<$Res> extends _$TagStateCopyWithImpl<$Res>
    implements _$TagInitialCopyWith<$Res> {
  __$TagInitialCopyWithImpl(
      _TagInitial _value, $Res Function(_TagInitial) _then)
      : super(_value, (v) => _then(v as _TagInitial));

  @override
  _TagInitial get _value => super._value as _TagInitial;
}

/// @nodoc

class _$_TagInitial extends _TagInitial {
  const _$_TagInitial() : super._();

  @override
  String toString() {
    return 'TagState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _TagInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() qrReading,
    required TResult Function() nfcReading,
    required TResult Function(Tag tag) qrRead,
    required TResult Function(Tag tag) nfcRead,
    required TResult Function(TagFailure failure) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? qrReading,
    TResult Function()? nfcReading,
    TResult Function(Tag tag)? qrRead,
    TResult Function(Tag tag)? nfcRead,
    TResult Function(TagFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TagInitial value) initial,
    required TResult Function(_QrTagReading value) qrReading,
    required TResult Function(_NfcTagReading value) nfcReading,
    required TResult Function(_TagQrRead value) qrRead,
    required TResult Function(_TagNfcRead value) nfcRead,
    required TResult Function(_TagFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TagInitial value)? initial,
    TResult Function(_QrTagReading value)? qrReading,
    TResult Function(_NfcTagReading value)? nfcReading,
    TResult Function(_TagQrRead value)? qrRead,
    TResult Function(_TagNfcRead value)? nfcRead,
    TResult Function(_TagFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _TagInitial extends TagState {
  const factory _TagInitial() = _$_TagInitial;
  const _TagInitial._() : super._();
}

/// @nodoc
abstract class _$QrTagReadingCopyWith<$Res> {
  factory _$QrTagReadingCopyWith(
          _QrTagReading value, $Res Function(_QrTagReading) then) =
      __$QrTagReadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$QrTagReadingCopyWithImpl<$Res> extends _$TagStateCopyWithImpl<$Res>
    implements _$QrTagReadingCopyWith<$Res> {
  __$QrTagReadingCopyWithImpl(
      _QrTagReading _value, $Res Function(_QrTagReading) _then)
      : super(_value, (v) => _then(v as _QrTagReading));

  @override
  _QrTagReading get _value => super._value as _QrTagReading;
}

/// @nodoc

class _$_QrTagReading extends _QrTagReading {
  const _$_QrTagReading() : super._();

  @override
  String toString() {
    return 'TagState.qrReading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _QrTagReading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() qrReading,
    required TResult Function() nfcReading,
    required TResult Function(Tag tag) qrRead,
    required TResult Function(Tag tag) nfcRead,
    required TResult Function(TagFailure failure) failure,
  }) {
    return qrReading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? qrReading,
    TResult Function()? nfcReading,
    TResult Function(Tag tag)? qrRead,
    TResult Function(Tag tag)? nfcRead,
    TResult Function(TagFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (qrReading != null) {
      return qrReading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TagInitial value) initial,
    required TResult Function(_QrTagReading value) qrReading,
    required TResult Function(_NfcTagReading value) nfcReading,
    required TResult Function(_TagQrRead value) qrRead,
    required TResult Function(_TagNfcRead value) nfcRead,
    required TResult Function(_TagFailure value) failure,
  }) {
    return qrReading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TagInitial value)? initial,
    TResult Function(_QrTagReading value)? qrReading,
    TResult Function(_NfcTagReading value)? nfcReading,
    TResult Function(_TagQrRead value)? qrRead,
    TResult Function(_TagNfcRead value)? nfcRead,
    TResult Function(_TagFailure value)? failure,
    required TResult orElse(),
  }) {
    if (qrReading != null) {
      return qrReading(this);
    }
    return orElse();
  }
}

abstract class _QrTagReading extends TagState {
  const factory _QrTagReading() = _$_QrTagReading;
  const _QrTagReading._() : super._();
}

/// @nodoc
abstract class _$NfcTagReadingCopyWith<$Res> {
  factory _$NfcTagReadingCopyWith(
          _NfcTagReading value, $Res Function(_NfcTagReading) then) =
      __$NfcTagReadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$NfcTagReadingCopyWithImpl<$Res> extends _$TagStateCopyWithImpl<$Res>
    implements _$NfcTagReadingCopyWith<$Res> {
  __$NfcTagReadingCopyWithImpl(
      _NfcTagReading _value, $Res Function(_NfcTagReading) _then)
      : super(_value, (v) => _then(v as _NfcTagReading));

  @override
  _NfcTagReading get _value => super._value as _NfcTagReading;
}

/// @nodoc

class _$_NfcTagReading extends _NfcTagReading {
  const _$_NfcTagReading() : super._();

  @override
  String toString() {
    return 'TagState.nfcReading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NfcTagReading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() qrReading,
    required TResult Function() nfcReading,
    required TResult Function(Tag tag) qrRead,
    required TResult Function(Tag tag) nfcRead,
    required TResult Function(TagFailure failure) failure,
  }) {
    return nfcReading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? qrReading,
    TResult Function()? nfcReading,
    TResult Function(Tag tag)? qrRead,
    TResult Function(Tag tag)? nfcRead,
    TResult Function(TagFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (nfcReading != null) {
      return nfcReading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TagInitial value) initial,
    required TResult Function(_QrTagReading value) qrReading,
    required TResult Function(_NfcTagReading value) nfcReading,
    required TResult Function(_TagQrRead value) qrRead,
    required TResult Function(_TagNfcRead value) nfcRead,
    required TResult Function(_TagFailure value) failure,
  }) {
    return nfcReading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TagInitial value)? initial,
    TResult Function(_QrTagReading value)? qrReading,
    TResult Function(_NfcTagReading value)? nfcReading,
    TResult Function(_TagQrRead value)? qrRead,
    TResult Function(_TagNfcRead value)? nfcRead,
    TResult Function(_TagFailure value)? failure,
    required TResult orElse(),
  }) {
    if (nfcReading != null) {
      return nfcReading(this);
    }
    return orElse();
  }
}

abstract class _NfcTagReading extends TagState {
  const factory _NfcTagReading() = _$_NfcTagReading;
  const _NfcTagReading._() : super._();
}

/// @nodoc
abstract class _$TagQrReadCopyWith<$Res> {
  factory _$TagQrReadCopyWith(
          _TagQrRead value, $Res Function(_TagQrRead) then) =
      __$TagQrReadCopyWithImpl<$Res>;
  $Res call({Tag tag});

  $TagCopyWith<$Res> get tag;
}

/// @nodoc
class __$TagQrReadCopyWithImpl<$Res> extends _$TagStateCopyWithImpl<$Res>
    implements _$TagQrReadCopyWith<$Res> {
  __$TagQrReadCopyWithImpl(_TagQrRead _value, $Res Function(_TagQrRead) _then)
      : super(_value, (v) => _then(v as _TagQrRead));

  @override
  _TagQrRead get _value => super._value as _TagQrRead;

  @override
  $Res call({
    Object? tag = freezed,
  }) {
    return _then(_TagQrRead(
      tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as Tag,
    ));
  }

  @override
  $TagCopyWith<$Res> get tag {
    return $TagCopyWith<$Res>(_value.tag, (value) {
      return _then(_value.copyWith(tag: value));
    });
  }
}

/// @nodoc

class _$_TagQrRead extends _TagQrRead {
  const _$_TagQrRead(this.tag) : super._();

  @override
  final Tag tag;

  @override
  String toString() {
    return 'TagState.qrRead(tag: $tag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TagQrRead &&
            (identical(other.tag, tag) ||
                const DeepCollectionEquality().equals(other.tag, tag)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tag);

  @JsonKey(ignore: true)
  @override
  _$TagQrReadCopyWith<_TagQrRead> get copyWith =>
      __$TagQrReadCopyWithImpl<_TagQrRead>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() qrReading,
    required TResult Function() nfcReading,
    required TResult Function(Tag tag) qrRead,
    required TResult Function(Tag tag) nfcRead,
    required TResult Function(TagFailure failure) failure,
  }) {
    return qrRead(tag);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? qrReading,
    TResult Function()? nfcReading,
    TResult Function(Tag tag)? qrRead,
    TResult Function(Tag tag)? nfcRead,
    TResult Function(TagFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (qrRead != null) {
      return qrRead(tag);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TagInitial value) initial,
    required TResult Function(_QrTagReading value) qrReading,
    required TResult Function(_NfcTagReading value) nfcReading,
    required TResult Function(_TagQrRead value) qrRead,
    required TResult Function(_TagNfcRead value) nfcRead,
    required TResult Function(_TagFailure value) failure,
  }) {
    return qrRead(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TagInitial value)? initial,
    TResult Function(_QrTagReading value)? qrReading,
    TResult Function(_NfcTagReading value)? nfcReading,
    TResult Function(_TagQrRead value)? qrRead,
    TResult Function(_TagNfcRead value)? nfcRead,
    TResult Function(_TagFailure value)? failure,
    required TResult orElse(),
  }) {
    if (qrRead != null) {
      return qrRead(this);
    }
    return orElse();
  }
}

abstract class _TagQrRead extends TagState {
  const factory _TagQrRead(Tag tag) = _$_TagQrRead;
  const _TagQrRead._() : super._();

  Tag get tag => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$TagQrReadCopyWith<_TagQrRead> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TagNfcReadCopyWith<$Res> {
  factory _$TagNfcReadCopyWith(
          _TagNfcRead value, $Res Function(_TagNfcRead) then) =
      __$TagNfcReadCopyWithImpl<$Res>;
  $Res call({Tag tag});

  $TagCopyWith<$Res> get tag;
}

/// @nodoc
class __$TagNfcReadCopyWithImpl<$Res> extends _$TagStateCopyWithImpl<$Res>
    implements _$TagNfcReadCopyWith<$Res> {
  __$TagNfcReadCopyWithImpl(
      _TagNfcRead _value, $Res Function(_TagNfcRead) _then)
      : super(_value, (v) => _then(v as _TagNfcRead));

  @override
  _TagNfcRead get _value => super._value as _TagNfcRead;

  @override
  $Res call({
    Object? tag = freezed,
  }) {
    return _then(_TagNfcRead(
      tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as Tag,
    ));
  }

  @override
  $TagCopyWith<$Res> get tag {
    return $TagCopyWith<$Res>(_value.tag, (value) {
      return _then(_value.copyWith(tag: value));
    });
  }
}

/// @nodoc

class _$_TagNfcRead extends _TagNfcRead {
  const _$_TagNfcRead(this.tag) : super._();

  @override
  final Tag tag;

  @override
  String toString() {
    return 'TagState.nfcRead(tag: $tag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TagNfcRead &&
            (identical(other.tag, tag) ||
                const DeepCollectionEquality().equals(other.tag, tag)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tag);

  @JsonKey(ignore: true)
  @override
  _$TagNfcReadCopyWith<_TagNfcRead> get copyWith =>
      __$TagNfcReadCopyWithImpl<_TagNfcRead>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() qrReading,
    required TResult Function() nfcReading,
    required TResult Function(Tag tag) qrRead,
    required TResult Function(Tag tag) nfcRead,
    required TResult Function(TagFailure failure) failure,
  }) {
    return nfcRead(tag);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? qrReading,
    TResult Function()? nfcReading,
    TResult Function(Tag tag)? qrRead,
    TResult Function(Tag tag)? nfcRead,
    TResult Function(TagFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (nfcRead != null) {
      return nfcRead(tag);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TagInitial value) initial,
    required TResult Function(_QrTagReading value) qrReading,
    required TResult Function(_NfcTagReading value) nfcReading,
    required TResult Function(_TagQrRead value) qrRead,
    required TResult Function(_TagNfcRead value) nfcRead,
    required TResult Function(_TagFailure value) failure,
  }) {
    return nfcRead(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TagInitial value)? initial,
    TResult Function(_QrTagReading value)? qrReading,
    TResult Function(_NfcTagReading value)? nfcReading,
    TResult Function(_TagQrRead value)? qrRead,
    TResult Function(_TagNfcRead value)? nfcRead,
    TResult Function(_TagFailure value)? failure,
    required TResult orElse(),
  }) {
    if (nfcRead != null) {
      return nfcRead(this);
    }
    return orElse();
  }
}

abstract class _TagNfcRead extends TagState {
  const factory _TagNfcRead(Tag tag) = _$_TagNfcRead;
  const _TagNfcRead._() : super._();

  Tag get tag => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$TagNfcReadCopyWith<_TagNfcRead> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TagFailureCopyWith<$Res> {
  factory _$TagFailureCopyWith(
          _TagFailure value, $Res Function(_TagFailure) then) =
      __$TagFailureCopyWithImpl<$Res>;
  $Res call({TagFailure failure});

  $TagFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$TagFailureCopyWithImpl<$Res> extends _$TagStateCopyWithImpl<$Res>
    implements _$TagFailureCopyWith<$Res> {
  __$TagFailureCopyWithImpl(
      _TagFailure _value, $Res Function(_TagFailure) _then)
      : super(_value, (v) => _then(v as _TagFailure));

  @override
  _TagFailure get _value => super._value as _TagFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_TagFailure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as TagFailure,
    ));
  }

  @override
  $TagFailureCopyWith<$Res> get failure {
    return $TagFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_TagFailure extends _TagFailure {
  const _$_TagFailure(this.failure) : super._();

  @override
  final TagFailure failure;

  @override
  String toString() {
    return 'TagState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TagFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$TagFailureCopyWith<_TagFailure> get copyWith =>
      __$TagFailureCopyWithImpl<_TagFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() qrReading,
    required TResult Function() nfcReading,
    required TResult Function(Tag tag) qrRead,
    required TResult Function(Tag tag) nfcRead,
    required TResult Function(TagFailure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? qrReading,
    TResult Function()? nfcReading,
    TResult Function(Tag tag)? qrRead,
    TResult Function(Tag tag)? nfcRead,
    TResult Function(TagFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TagInitial value) initial,
    required TResult Function(_QrTagReading value) qrReading,
    required TResult Function(_NfcTagReading value) nfcReading,
    required TResult Function(_TagQrRead value) qrRead,
    required TResult Function(_TagNfcRead value) nfcRead,
    required TResult Function(_TagFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TagInitial value)? initial,
    TResult Function(_QrTagReading value)? qrReading,
    TResult Function(_NfcTagReading value)? nfcReading,
    TResult Function(_TagQrRead value)? qrRead,
    TResult Function(_TagNfcRead value)? nfcRead,
    TResult Function(_TagFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _TagFailure extends TagState {
  const factory _TagFailure(TagFailure failure) = _$_TagFailure;
  const _TagFailure._() : super._();

  TagFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$TagFailureCopyWith<_TagFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
