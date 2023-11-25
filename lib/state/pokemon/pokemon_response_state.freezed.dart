// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_response_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PokemonResponseState {
  AsyncValue<List<Pokemon>> get pokemonList =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String get nextPageLink => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokemonResponseStateCopyWith<PokemonResponseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonResponseStateCopyWith<$Res> {
  factory $PokemonResponseStateCopyWith(PokemonResponseState value,
          $Res Function(PokemonResponseState) then) =
      _$PokemonResponseStateCopyWithImpl<$Res, PokemonResponseState>;
  @useResult
  $Res call(
      {AsyncValue<List<Pokemon>> pokemonList,
      bool isLoading,
      String nextPageLink});
}

/// @nodoc
class _$PokemonResponseStateCopyWithImpl<$Res,
        $Val extends PokemonResponseState>
    implements $PokemonResponseStateCopyWith<$Res> {
  _$PokemonResponseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemonList = null,
    Object? isLoading = null,
    Object? nextPageLink = null,
  }) {
    return _then(_value.copyWith(
      pokemonList: null == pokemonList
          ? _value.pokemonList
          : pokemonList // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<Pokemon>>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      nextPageLink: null == nextPageLink
          ? _value.nextPageLink
          : nextPageLink // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonResponseStateImplCopyWith<$Res>
    implements $PokemonResponseStateCopyWith<$Res> {
  factory _$$PokemonResponseStateImplCopyWith(_$PokemonResponseStateImpl value,
          $Res Function(_$PokemonResponseStateImpl) then) =
      __$$PokemonResponseStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AsyncValue<List<Pokemon>> pokemonList,
      bool isLoading,
      String nextPageLink});
}

/// @nodoc
class __$$PokemonResponseStateImplCopyWithImpl<$Res>
    extends _$PokemonResponseStateCopyWithImpl<$Res, _$PokemonResponseStateImpl>
    implements _$$PokemonResponseStateImplCopyWith<$Res> {
  __$$PokemonResponseStateImplCopyWithImpl(_$PokemonResponseStateImpl _value,
      $Res Function(_$PokemonResponseStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemonList = null,
    Object? isLoading = null,
    Object? nextPageLink = null,
  }) {
    return _then(_$PokemonResponseStateImpl(
      pokemonList: null == pokemonList
          ? _value.pokemonList
          : pokemonList // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<Pokemon>>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      nextPageLink: null == nextPageLink
          ? _value.nextPageLink
          : nextPageLink // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PokemonResponseStateImpl implements _PokemonResponseState {
  const _$PokemonResponseStateImpl(
      {this.pokemonList = const AsyncValue<List<Pokemon>>.loading(),
      this.isLoading = false,
      this.nextPageLink = ''});

  @override
  @JsonKey()
  final AsyncValue<List<Pokemon>> pokemonList;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String nextPageLink;

  @override
  String toString() {
    return 'PokemonResponseState(pokemonList: $pokemonList, isLoading: $isLoading, nextPageLink: $nextPageLink)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonResponseStateImpl &&
            (identical(other.pokemonList, pokemonList) ||
                other.pokemonList == pokemonList) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.nextPageLink, nextPageLink) ||
                other.nextPageLink == nextPageLink));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, pokemonList, isLoading, nextPageLink);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonResponseStateImplCopyWith<_$PokemonResponseStateImpl>
      get copyWith =>
          __$$PokemonResponseStateImplCopyWithImpl<_$PokemonResponseStateImpl>(
              this, _$identity);
}

abstract class _PokemonResponseState implements PokemonResponseState {
  const factory _PokemonResponseState(
      {final AsyncValue<List<Pokemon>> pokemonList,
      final bool isLoading,
      final String nextPageLink}) = _$PokemonResponseStateImpl;

  @override
  AsyncValue<List<Pokemon>> get pokemonList;
  @override
  bool get isLoading;
  @override
  String get nextPageLink;
  @override
  @JsonKey(ignore: true)
  _$$PokemonResponseStateImplCopyWith<_$PokemonResponseStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
