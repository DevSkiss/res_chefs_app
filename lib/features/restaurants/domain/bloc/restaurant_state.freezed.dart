// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'restaurant_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RestaurantStateTearOff {
  const _$RestaurantStateTearOff();

  _RestaurantState call(
      {bool isLoading = false,
      bool hasError = false,
      bool isFinished = false}) {
    return _RestaurantState(
      isLoading: isLoading,
      hasError: hasError,
      isFinished: isFinished,
    );
  }
}

/// @nodoc
const $RestaurantState = _$RestaurantStateTearOff();

/// @nodoc
mixin _$RestaurantState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  bool get isFinished => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RestaurantStateCopyWith<RestaurantState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantStateCopyWith<$Res> {
  factory $RestaurantStateCopyWith(
          RestaurantState value, $Res Function(RestaurantState) then) =
      _$RestaurantStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, bool hasError, bool isFinished});
}

/// @nodoc
class _$RestaurantStateCopyWithImpl<$Res>
    implements $RestaurantStateCopyWith<$Res> {
  _$RestaurantStateCopyWithImpl(this._value, this._then);

  final RestaurantState _value;
  // ignore: unused_field
  final $Res Function(RestaurantState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? hasError = freezed,
    Object? isFinished = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: hasError == freezed
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isFinished: isFinished == freezed
          ? _value.isFinished
          : isFinished // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$RestaurantStateCopyWith<$Res>
    implements $RestaurantStateCopyWith<$Res> {
  factory _$RestaurantStateCopyWith(
          _RestaurantState value, $Res Function(_RestaurantState) then) =
      __$RestaurantStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, bool hasError, bool isFinished});
}

/// @nodoc
class __$RestaurantStateCopyWithImpl<$Res>
    extends _$RestaurantStateCopyWithImpl<$Res>
    implements _$RestaurantStateCopyWith<$Res> {
  __$RestaurantStateCopyWithImpl(
      _RestaurantState _value, $Res Function(_RestaurantState) _then)
      : super(_value, (v) => _then(v as _RestaurantState));

  @override
  _RestaurantState get _value => super._value as _RestaurantState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? hasError = freezed,
    Object? isFinished = freezed,
  }) {
    return _then(_RestaurantState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: hasError == freezed
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isFinished: isFinished == freezed
          ? _value.isFinished
          : isFinished // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_RestaurantState implements _RestaurantState {
  _$_RestaurantState(
      {this.isLoading = false, this.hasError = false, this.isFinished = false});

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: false)
  @override
  final bool hasError;
  @JsonKey(defaultValue: false)
  @override
  final bool isFinished;

  @override
  String toString() {
    return 'RestaurantState(isLoading: $isLoading, hasError: $hasError, isFinished: $isFinished)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RestaurantState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.hasError, hasError) ||
                const DeepCollectionEquality()
                    .equals(other.hasError, hasError)) &&
            (identical(other.isFinished, isFinished) ||
                const DeepCollectionEquality()
                    .equals(other.isFinished, isFinished)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(hasError) ^
      const DeepCollectionEquality().hash(isFinished);

  @JsonKey(ignore: true)
  @override
  _$RestaurantStateCopyWith<_RestaurantState> get copyWith =>
      __$RestaurantStateCopyWithImpl<_RestaurantState>(this, _$identity);
}

abstract class _RestaurantState implements RestaurantState {
  factory _RestaurantState({bool isLoading, bool hasError, bool isFinished}) =
      _$_RestaurantState;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get hasError => throw _privateConstructorUsedError;
  @override
  bool get isFinished => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RestaurantStateCopyWith<_RestaurantState> get copyWith =>
      throw _privateConstructorUsedError;
}
