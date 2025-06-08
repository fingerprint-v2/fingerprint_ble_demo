// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ble_scan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BleScannerState {

 StreamSubscription<BluetoothAdapterState>? get adaptorStateSub; StreamSubscription<List<ScanResult>>? get scanResultsSub; bool get isAdapterStateOn; List<ScanResult> get scanResults; dynamic get isScanning;
/// Create a copy of BleScannerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BleScannerStateCopyWith<BleScannerState> get copyWith => _$BleScannerStateCopyWithImpl<BleScannerState>(this as BleScannerState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BleScannerState&&(identical(other.adaptorStateSub, adaptorStateSub) || other.adaptorStateSub == adaptorStateSub)&&(identical(other.scanResultsSub, scanResultsSub) || other.scanResultsSub == scanResultsSub)&&(identical(other.isAdapterStateOn, isAdapterStateOn) || other.isAdapterStateOn == isAdapterStateOn)&&const DeepCollectionEquality().equals(other.scanResults, scanResults)&&const DeepCollectionEquality().equals(other.isScanning, isScanning));
}


@override
int get hashCode => Object.hash(runtimeType,adaptorStateSub,scanResultsSub,isAdapterStateOn,const DeepCollectionEquality().hash(scanResults),const DeepCollectionEquality().hash(isScanning));

@override
String toString() {
  return 'BleScannerState(adaptorStateSub: $adaptorStateSub, scanResultsSub: $scanResultsSub, isAdapterStateOn: $isAdapterStateOn, scanResults: $scanResults, isScanning: $isScanning)';
}


}

/// @nodoc
abstract mixin class $BleScannerStateCopyWith<$Res>  {
  factory $BleScannerStateCopyWith(BleScannerState value, $Res Function(BleScannerState) _then) = _$BleScannerStateCopyWithImpl;
@useResult
$Res call({
 StreamSubscription<BluetoothAdapterState>? adaptorStateSub, StreamSubscription<List<ScanResult>>? scanResultsSub, bool isAdapterStateOn, List<ScanResult> scanResults, dynamic isScanning
});




}
/// @nodoc
class _$BleScannerStateCopyWithImpl<$Res>
    implements $BleScannerStateCopyWith<$Res> {
  _$BleScannerStateCopyWithImpl(this._self, this._then);

  final BleScannerState _self;
  final $Res Function(BleScannerState) _then;

/// Create a copy of BleScannerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? adaptorStateSub = freezed,Object? scanResultsSub = freezed,Object? isAdapterStateOn = null,Object? scanResults = null,Object? isScanning = freezed,}) {
  return _then(_self.copyWith(
adaptorStateSub: freezed == adaptorStateSub ? _self.adaptorStateSub : adaptorStateSub // ignore: cast_nullable_to_non_nullable
as StreamSubscription<BluetoothAdapterState>?,scanResultsSub: freezed == scanResultsSub ? _self.scanResultsSub : scanResultsSub // ignore: cast_nullable_to_non_nullable
as StreamSubscription<List<ScanResult>>?,isAdapterStateOn: null == isAdapterStateOn ? _self.isAdapterStateOn : isAdapterStateOn // ignore: cast_nullable_to_non_nullable
as bool,scanResults: null == scanResults ? _self.scanResults : scanResults // ignore: cast_nullable_to_non_nullable
as List<ScanResult>,isScanning: freezed == isScanning ? _self.isScanning : isScanning // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// @nodoc


class _BleScannerState implements BleScannerState {
  const _BleScannerState({this.adaptorStateSub, this.scanResultsSub, this.isAdapterStateOn = false, final  List<ScanResult> scanResults = const [], this.isScanning = false}): _scanResults = scanResults;
  

@override final  StreamSubscription<BluetoothAdapterState>? adaptorStateSub;
@override final  StreamSubscription<List<ScanResult>>? scanResultsSub;
@override@JsonKey() final  bool isAdapterStateOn;
 final  List<ScanResult> _scanResults;
@override@JsonKey() List<ScanResult> get scanResults {
  if (_scanResults is EqualUnmodifiableListView) return _scanResults;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_scanResults);
}

@override@JsonKey() final  dynamic isScanning;

/// Create a copy of BleScannerState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BleScannerStateCopyWith<_BleScannerState> get copyWith => __$BleScannerStateCopyWithImpl<_BleScannerState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BleScannerState&&(identical(other.adaptorStateSub, adaptorStateSub) || other.adaptorStateSub == adaptorStateSub)&&(identical(other.scanResultsSub, scanResultsSub) || other.scanResultsSub == scanResultsSub)&&(identical(other.isAdapterStateOn, isAdapterStateOn) || other.isAdapterStateOn == isAdapterStateOn)&&const DeepCollectionEquality().equals(other._scanResults, _scanResults)&&const DeepCollectionEquality().equals(other.isScanning, isScanning));
}


@override
int get hashCode => Object.hash(runtimeType,adaptorStateSub,scanResultsSub,isAdapterStateOn,const DeepCollectionEquality().hash(_scanResults),const DeepCollectionEquality().hash(isScanning));

@override
String toString() {
  return 'BleScannerState(adaptorStateSub: $adaptorStateSub, scanResultsSub: $scanResultsSub, isAdapterStateOn: $isAdapterStateOn, scanResults: $scanResults, isScanning: $isScanning)';
}


}

/// @nodoc
abstract mixin class _$BleScannerStateCopyWith<$Res> implements $BleScannerStateCopyWith<$Res> {
  factory _$BleScannerStateCopyWith(_BleScannerState value, $Res Function(_BleScannerState) _then) = __$BleScannerStateCopyWithImpl;
@override @useResult
$Res call({
 StreamSubscription<BluetoothAdapterState>? adaptorStateSub, StreamSubscription<List<ScanResult>>? scanResultsSub, bool isAdapterStateOn, List<ScanResult> scanResults, dynamic isScanning
});




}
/// @nodoc
class __$BleScannerStateCopyWithImpl<$Res>
    implements _$BleScannerStateCopyWith<$Res> {
  __$BleScannerStateCopyWithImpl(this._self, this._then);

  final _BleScannerState _self;
  final $Res Function(_BleScannerState) _then;

/// Create a copy of BleScannerState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? adaptorStateSub = freezed,Object? scanResultsSub = freezed,Object? isAdapterStateOn = null,Object? scanResults = null,Object? isScanning = freezed,}) {
  return _then(_BleScannerState(
adaptorStateSub: freezed == adaptorStateSub ? _self.adaptorStateSub : adaptorStateSub // ignore: cast_nullable_to_non_nullable
as StreamSubscription<BluetoothAdapterState>?,scanResultsSub: freezed == scanResultsSub ? _self.scanResultsSub : scanResultsSub // ignore: cast_nullable_to_non_nullable
as StreamSubscription<List<ScanResult>>?,isAdapterStateOn: null == isAdapterStateOn ? _self.isAdapterStateOn : isAdapterStateOn // ignore: cast_nullable_to_non_nullable
as bool,scanResults: null == scanResults ? _self._scanResults : scanResults // ignore: cast_nullable_to_non_nullable
as List<ScanResult>,isScanning: freezed == isScanning ? _self.isScanning : isScanning // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
