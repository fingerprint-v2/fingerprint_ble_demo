// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ble_advertise.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BleAdvertiserState {

 bool get isSupported; AdvertiseData? get advertiseData; AdvertiseSetParameters? get advertiseSetParameters; dynamic get isAdvertising;
/// Create a copy of BleAdvertiserState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BleAdvertiserStateCopyWith<BleAdvertiserState> get copyWith => _$BleAdvertiserStateCopyWithImpl<BleAdvertiserState>(this as BleAdvertiserState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BleAdvertiserState&&(identical(other.isSupported, isSupported) || other.isSupported == isSupported)&&(identical(other.advertiseData, advertiseData) || other.advertiseData == advertiseData)&&(identical(other.advertiseSetParameters, advertiseSetParameters) || other.advertiseSetParameters == advertiseSetParameters)&&const DeepCollectionEquality().equals(other.isAdvertising, isAdvertising));
}


@override
int get hashCode => Object.hash(runtimeType,isSupported,advertiseData,advertiseSetParameters,const DeepCollectionEquality().hash(isAdvertising));

@override
String toString() {
  return 'BleAdvertiserState(isSupported: $isSupported, advertiseData: $advertiseData, advertiseSetParameters: $advertiseSetParameters, isAdvertising: $isAdvertising)';
}


}

/// @nodoc
abstract mixin class $BleAdvertiserStateCopyWith<$Res>  {
  factory $BleAdvertiserStateCopyWith(BleAdvertiserState value, $Res Function(BleAdvertiserState) _then) = _$BleAdvertiserStateCopyWithImpl;
@useResult
$Res call({
 bool isSupported, AdvertiseData? advertiseData, AdvertiseSetParameters? advertiseSetParameters, dynamic isAdvertising
});




}
/// @nodoc
class _$BleAdvertiserStateCopyWithImpl<$Res>
    implements $BleAdvertiserStateCopyWith<$Res> {
  _$BleAdvertiserStateCopyWithImpl(this._self, this._then);

  final BleAdvertiserState _self;
  final $Res Function(BleAdvertiserState) _then;

/// Create a copy of BleAdvertiserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isSupported = null,Object? advertiseData = freezed,Object? advertiseSetParameters = freezed,Object? isAdvertising = freezed,}) {
  return _then(_self.copyWith(
isSupported: null == isSupported ? _self.isSupported : isSupported // ignore: cast_nullable_to_non_nullable
as bool,advertiseData: freezed == advertiseData ? _self.advertiseData : advertiseData // ignore: cast_nullable_to_non_nullable
as AdvertiseData?,advertiseSetParameters: freezed == advertiseSetParameters ? _self.advertiseSetParameters : advertiseSetParameters // ignore: cast_nullable_to_non_nullable
as AdvertiseSetParameters?,isAdvertising: freezed == isAdvertising ? _self.isAdvertising : isAdvertising // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// @nodoc


class _BleAdvertiserState implements BleAdvertiserState {
  const _BleAdvertiserState({this.isSupported = false, this.advertiseData, this.advertiseSetParameters, this.isAdvertising = false});
  

@override@JsonKey() final  bool isSupported;
@override final  AdvertiseData? advertiseData;
@override final  AdvertiseSetParameters? advertiseSetParameters;
@override@JsonKey() final  dynamic isAdvertising;

/// Create a copy of BleAdvertiserState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BleAdvertiserStateCopyWith<_BleAdvertiserState> get copyWith => __$BleAdvertiserStateCopyWithImpl<_BleAdvertiserState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BleAdvertiserState&&(identical(other.isSupported, isSupported) || other.isSupported == isSupported)&&(identical(other.advertiseData, advertiseData) || other.advertiseData == advertiseData)&&(identical(other.advertiseSetParameters, advertiseSetParameters) || other.advertiseSetParameters == advertiseSetParameters)&&const DeepCollectionEquality().equals(other.isAdvertising, isAdvertising));
}


@override
int get hashCode => Object.hash(runtimeType,isSupported,advertiseData,advertiseSetParameters,const DeepCollectionEquality().hash(isAdvertising));

@override
String toString() {
  return 'BleAdvertiserState(isSupported: $isSupported, advertiseData: $advertiseData, advertiseSetParameters: $advertiseSetParameters, isAdvertising: $isAdvertising)';
}


}

/// @nodoc
abstract mixin class _$BleAdvertiserStateCopyWith<$Res> implements $BleAdvertiserStateCopyWith<$Res> {
  factory _$BleAdvertiserStateCopyWith(_BleAdvertiserState value, $Res Function(_BleAdvertiserState) _then) = __$BleAdvertiserStateCopyWithImpl;
@override @useResult
$Res call({
 bool isSupported, AdvertiseData? advertiseData, AdvertiseSetParameters? advertiseSetParameters, dynamic isAdvertising
});




}
/// @nodoc
class __$BleAdvertiserStateCopyWithImpl<$Res>
    implements _$BleAdvertiserStateCopyWith<$Res> {
  __$BleAdvertiserStateCopyWithImpl(this._self, this._then);

  final _BleAdvertiserState _self;
  final $Res Function(_BleAdvertiserState) _then;

/// Create a copy of BleAdvertiserState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isSupported = null,Object? advertiseData = freezed,Object? advertiseSetParameters = freezed,Object? isAdvertising = freezed,}) {
  return _then(_BleAdvertiserState(
isSupported: null == isSupported ? _self.isSupported : isSupported // ignore: cast_nullable_to_non_nullable
as bool,advertiseData: freezed == advertiseData ? _self.advertiseData : advertiseData // ignore: cast_nullable_to_non_nullable
as AdvertiseData?,advertiseSetParameters: freezed == advertiseSetParameters ? _self.advertiseSetParameters : advertiseSetParameters // ignore: cast_nullable_to_non_nullable
as AdvertiseSetParameters?,isAdvertising: freezed == isAdvertising ? _self.isAdvertising : isAdvertising // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
