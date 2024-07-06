// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Content _$ContentFromJson(Map<String, dynamic> json) {
  return _Content.fromJson(json);
}

/// @nodoc
mixin _$Content {
  String? get ml => throw _privateConstructorUsedError;
  String? get codeBar => throw _privateConstructorUsedError;
  String? get longCodeBar => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContentCopyWith<Content> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentCopyWith<$Res> {
  factory $ContentCopyWith(Content value, $Res Function(Content) then) =
      _$ContentCopyWithImpl<$Res, Content>;
  @useResult
  $Res call({String? ml, String? codeBar, String? longCodeBar, String? name});
}

/// @nodoc
class _$ContentCopyWithImpl<$Res, $Val extends Content>
    implements $ContentCopyWith<$Res> {
  _$ContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ml = freezed,
    Object? codeBar = freezed,
    Object? longCodeBar = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      ml: freezed == ml
          ? _value.ml
          : ml // ignore: cast_nullable_to_non_nullable
              as String?,
      codeBar: freezed == codeBar
          ? _value.codeBar
          : codeBar // ignore: cast_nullable_to_non_nullable
              as String?,
      longCodeBar: freezed == longCodeBar
          ? _value.longCodeBar
          : longCodeBar // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContentImplCopyWith<$Res> implements $ContentCopyWith<$Res> {
  factory _$$ContentImplCopyWith(
          _$ContentImpl value, $Res Function(_$ContentImpl) then) =
      __$$ContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? ml, String? codeBar, String? longCodeBar, String? name});
}

/// @nodoc
class __$$ContentImplCopyWithImpl<$Res>
    extends _$ContentCopyWithImpl<$Res, _$ContentImpl>
    implements _$$ContentImplCopyWith<$Res> {
  __$$ContentImplCopyWithImpl(
      _$ContentImpl _value, $Res Function(_$ContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ml = freezed,
    Object? codeBar = freezed,
    Object? longCodeBar = freezed,
    Object? name = freezed,
  }) {
    return _then(_$ContentImpl(
      ml: freezed == ml
          ? _value.ml
          : ml // ignore: cast_nullable_to_non_nullable
              as String?,
      codeBar: freezed == codeBar
          ? _value.codeBar
          : codeBar // ignore: cast_nullable_to_non_nullable
              as String?,
      longCodeBar: freezed == longCodeBar
          ? _value.longCodeBar
          : longCodeBar // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContentImpl with DiagnosticableTreeMixin implements _Content {
  const _$ContentImpl(
      {required this.ml,
      required this.codeBar,
      required this.longCodeBar,
      required this.name});

  factory _$ContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContentImplFromJson(json);

  @override
  final String? ml;
  @override
  final String? codeBar;
  @override
  final String? longCodeBar;
  @override
  final String? name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Content(ml: $ml, codeBar: $codeBar, longCodeBar: $longCodeBar, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Content'))
      ..add(DiagnosticsProperty('ml', ml))
      ..add(DiagnosticsProperty('codeBar', codeBar))
      ..add(DiagnosticsProperty('longCodeBar', longCodeBar))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentImpl &&
            (identical(other.ml, ml) || other.ml == ml) &&
            (identical(other.codeBar, codeBar) || other.codeBar == codeBar) &&
            (identical(other.longCodeBar, longCodeBar) ||
                other.longCodeBar == longCodeBar) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ml, codeBar, longCodeBar, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentImplCopyWith<_$ContentImpl> get copyWith =>
      __$$ContentImplCopyWithImpl<_$ContentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContentImplToJson(
      this,
    );
  }
}

abstract class _Content implements Content {
  const factory _Content(
      {required final String? ml,
      required final String? codeBar,
      required final String? longCodeBar,
      required final String? name}) = _$ContentImpl;

  factory _Content.fromJson(Map<String, dynamic> json) = _$ContentImpl.fromJson;

  @override
  String? get ml;
  @override
  String? get codeBar;
  @override
  String? get longCodeBar;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$ContentImplCopyWith<_$ContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
