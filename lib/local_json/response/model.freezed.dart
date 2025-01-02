// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Model _$ModelFromJson(Map<String, dynamic> json) {
  return _Model.fromJson(json);
}

/// @nodoc
mixin _$Model {
  bool get status => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  /// Serializes this Model to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Model
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ModelCopyWith<Model> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelCopyWith<$Res> {
  factory $ModelCopyWith(Model value, $Res Function(Model) then) =
      _$ModelCopyWithImpl<$Res, Model>;
  @useResult
  $Res call({bool status, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ModelCopyWithImpl<$Res, $Val extends Model>
    implements $ModelCopyWith<$Res> {
  _$ModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Model
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ) as $Val);
  }

  /// Create a copy of Model
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ModelImplCopyWith<$Res> implements $ModelCopyWith<$Res> {
  factory _$$ModelImplCopyWith(
          _$ModelImpl value, $Res Function(_$ModelImpl) then) =
      __$$ModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool status, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ModelImplCopyWithImpl<$Res>
    extends _$ModelCopyWithImpl<$Res, _$ModelImpl>
    implements _$$ModelImplCopyWith<$Res> {
  __$$ModelImplCopyWithImpl(
      _$ModelImpl _value, $Res Function(_$ModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of Model
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = freezed,
  }) {
    return _then(_$ModelImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModelImpl implements _Model {
  _$ModelImpl({required this.status, required this.data});

  factory _$ModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModelImplFromJson(json);

  @override
  final bool status;
  @override
  final Data? data;

  @override
  String toString() {
    return 'Model(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, data);

  /// Create a copy of Model
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModelImplCopyWith<_$ModelImpl> get copyWith =>
      __$$ModelImplCopyWithImpl<_$ModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModelImplToJson(
      this,
    );
  }
}

abstract class _Model implements Model {
  factory _Model({required final bool status, required final Data? data}) =
      _$ModelImpl;

  factory _Model.fromJson(Map<String, dynamic> json) = _$ModelImpl.fromJson;

  @override
  bool get status;
  @override
  Data? get data;

  /// Create a copy of Model
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModelImplCopyWith<_$ModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  AuthResponse? get authResponse => throw _privateConstructorUsedError;
  OrdersResponse? get ordersResponse => throw _privateConstructorUsedError;

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call({AuthResponse? authResponse, OrdersResponse? ordersResponse});

  $AuthResponseCopyWith<$Res>? get authResponse;
  $OrdersResponseCopyWith<$Res>? get ordersResponse;
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authResponse = freezed,
    Object? ordersResponse = freezed,
  }) {
    return _then(_value.copyWith(
      authResponse: freezed == authResponse
          ? _value.authResponse
          : authResponse // ignore: cast_nullable_to_non_nullable
              as AuthResponse?,
      ordersResponse: freezed == ordersResponse
          ? _value.ordersResponse
          : ordersResponse // ignore: cast_nullable_to_non_nullable
              as OrdersResponse?,
    ) as $Val);
  }

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthResponseCopyWith<$Res>? get authResponse {
    if (_value.authResponse == null) {
      return null;
    }

    return $AuthResponseCopyWith<$Res>(_value.authResponse!, (value) {
      return _then(_value.copyWith(authResponse: value) as $Val);
    });
  }

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrdersResponseCopyWith<$Res>? get ordersResponse {
    if (_value.ordersResponse == null) {
      return null;
    }

    return $OrdersResponseCopyWith<$Res>(_value.ordersResponse!, (value) {
      return _then(_value.copyWith(ordersResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthResponse? authResponse, OrdersResponse? ordersResponse});

  @override
  $AuthResponseCopyWith<$Res>? get authResponse;
  @override
  $OrdersResponseCopyWith<$Res>? get ordersResponse;
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authResponse = freezed,
    Object? ordersResponse = freezed,
  }) {
    return _then(_$DataImpl(
      authResponse: freezed == authResponse
          ? _value.authResponse
          : authResponse // ignore: cast_nullable_to_non_nullable
              as AuthResponse?,
      ordersResponse: freezed == ordersResponse
          ? _value.ordersResponse
          : ordersResponse // ignore: cast_nullable_to_non_nullable
              as OrdersResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  _$DataImpl({required this.authResponse, required this.ordersResponse});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  final AuthResponse? authResponse;
  @override
  final OrdersResponse? ordersResponse;

  @override
  String toString() {
    return 'Data(authResponse: $authResponse, ordersResponse: $ordersResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.authResponse, authResponse) ||
                other.authResponse == authResponse) &&
            (identical(other.ordersResponse, ordersResponse) ||
                other.ordersResponse == ordersResponse));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, authResponse, ordersResponse);

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  factory _Data(
      {required final AuthResponse? authResponse,
      required final OrdersResponse? ordersResponse}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  AuthResponse? get authResponse;
  @override
  OrdersResponse? get ordersResponse;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AuthResponse _$AuthResponseFromJson(Map<String, dynamic> json) {
  return _AuthResponse.fromJson(json);
}

/// @nodoc
mixin _$AuthResponse {
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get avatar => throw _privateConstructorUsedError;
  String get firebaseCustomToken => throw _privateConstructorUsedError;
  String get jwt => throw _privateConstructorUsedError;

  /// Serializes this AuthResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthResponseCopyWith<AuthResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthResponseCopyWith<$Res> {
  factory $AuthResponseCopyWith(
          AuthResponse value, $Res Function(AuthResponse) then) =
      _$AuthResponseCopyWithImpl<$Res, AuthResponse>;
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      String email,
      String avatar,
      String firebaseCustomToken,
      String jwt});
}

/// @nodoc
class _$AuthResponseCopyWithImpl<$Res, $Val extends AuthResponse>
    implements $AuthResponseCopyWith<$Res> {
  _$AuthResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? avatar = null,
    Object? firebaseCustomToken = null,
    Object? jwt = null,
  }) {
    return _then(_value.copyWith(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      firebaseCustomToken: null == firebaseCustomToken
          ? _value.firebaseCustomToken
          : firebaseCustomToken // ignore: cast_nullable_to_non_nullable
              as String,
      jwt: null == jwt
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthResponseImplCopyWith<$Res>
    implements $AuthResponseCopyWith<$Res> {
  factory _$$AuthResponseImplCopyWith(
          _$AuthResponseImpl value, $Res Function(_$AuthResponseImpl) then) =
      __$$AuthResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      String email,
      String avatar,
      String firebaseCustomToken,
      String jwt});
}

/// @nodoc
class __$$AuthResponseImplCopyWithImpl<$Res>
    extends _$AuthResponseCopyWithImpl<$Res, _$AuthResponseImpl>
    implements _$$AuthResponseImplCopyWith<$Res> {
  __$$AuthResponseImplCopyWithImpl(
      _$AuthResponseImpl _value, $Res Function(_$AuthResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? avatar = null,
    Object? firebaseCustomToken = null,
    Object? jwt = null,
  }) {
    return _then(_$AuthResponseImpl(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      firebaseCustomToken: null == firebaseCustomToken
          ? _value.firebaseCustomToken
          : firebaseCustomToken // ignore: cast_nullable_to_non_nullable
              as String,
      jwt: null == jwt
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthResponseImpl implements _AuthResponse {
  _$AuthResponseImpl(
      {required this.firstName,
      required this.lastName,
      required this.email,
      required this.avatar,
      required this.firebaseCustomToken,
      required this.jwt});

  factory _$AuthResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthResponseImplFromJson(json);

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String email;
  @override
  final String avatar;
  @override
  final String firebaseCustomToken;
  @override
  final String jwt;

  @override
  String toString() {
    return 'AuthResponse(firstName: $firstName, lastName: $lastName, email: $email, avatar: $avatar, firebaseCustomToken: $firebaseCustomToken, jwt: $jwt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthResponseImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.firebaseCustomToken, firebaseCustomToken) ||
                other.firebaseCustomToken == firebaseCustomToken) &&
            (identical(other.jwt, jwt) || other.jwt == jwt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName, email,
      avatar, firebaseCustomToken, jwt);

  /// Create a copy of AuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthResponseImplCopyWith<_$AuthResponseImpl> get copyWith =>
      __$$AuthResponseImplCopyWithImpl<_$AuthResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthResponseImplToJson(
      this,
    );
  }
}

abstract class _AuthResponse implements AuthResponse {
  factory _AuthResponse(
      {required final String firstName,
      required final String lastName,
      required final String email,
      required final String avatar,
      required final String firebaseCustomToken,
      required final String jwt}) = _$AuthResponseImpl;

  factory _AuthResponse.fromJson(Map<String, dynamic> json) =
      _$AuthResponseImpl.fromJson;

  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get email;
  @override
  String get avatar;
  @override
  String get firebaseCustomToken;
  @override
  String get jwt;

  /// Create a copy of AuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthResponseImplCopyWith<_$AuthResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrdersResponse _$OrdersResponseFromJson(Map<String, dynamic> json) {
  return _OrdersResponse.fromJson(json);
}

/// @nodoc
mixin _$OrdersResponse {
  List<Order> get ordersList => throw _privateConstructorUsedError;
  List<Empty> get emptiesList => throw _privateConstructorUsedError;

  /// Serializes this OrdersResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrdersResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrdersResponseCopyWith<OrdersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersResponseCopyWith<$Res> {
  factory $OrdersResponseCopyWith(
          OrdersResponse value, $Res Function(OrdersResponse) then) =
      _$OrdersResponseCopyWithImpl<$Res, OrdersResponse>;
  @useResult
  $Res call({List<Order> ordersList, List<Empty> emptiesList});
}

/// @nodoc
class _$OrdersResponseCopyWithImpl<$Res, $Val extends OrdersResponse>
    implements $OrdersResponseCopyWith<$Res> {
  _$OrdersResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrdersResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ordersList = null,
    Object? emptiesList = null,
  }) {
    return _then(_value.copyWith(
      ordersList: null == ordersList
          ? _value.ordersList
          : ordersList // ignore: cast_nullable_to_non_nullable
              as List<Order>,
      emptiesList: null == emptiesList
          ? _value.emptiesList
          : emptiesList // ignore: cast_nullable_to_non_nullable
              as List<Empty>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrdersResponseImplCopyWith<$Res>
    implements $OrdersResponseCopyWith<$Res> {
  factory _$$OrdersResponseImplCopyWith(_$OrdersResponseImpl value,
          $Res Function(_$OrdersResponseImpl) then) =
      __$$OrdersResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Order> ordersList, List<Empty> emptiesList});
}

/// @nodoc
class __$$OrdersResponseImplCopyWithImpl<$Res>
    extends _$OrdersResponseCopyWithImpl<$Res, _$OrdersResponseImpl>
    implements _$$OrdersResponseImplCopyWith<$Res> {
  __$$OrdersResponseImplCopyWithImpl(
      _$OrdersResponseImpl _value, $Res Function(_$OrdersResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrdersResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ordersList = null,
    Object? emptiesList = null,
  }) {
    return _then(_$OrdersResponseImpl(
      ordersList: null == ordersList
          ? _value._ordersList
          : ordersList // ignore: cast_nullable_to_non_nullable
              as List<Order>,
      emptiesList: null == emptiesList
          ? _value._emptiesList
          : emptiesList // ignore: cast_nullable_to_non_nullable
              as List<Empty>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrdersResponseImpl implements _OrdersResponse {
  _$OrdersResponseImpl(
      {required final List<Order> ordersList,
      required final List<Empty> emptiesList})
      : _ordersList = ordersList,
        _emptiesList = emptiesList;

  factory _$OrdersResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrdersResponseImplFromJson(json);

  final List<Order> _ordersList;
  @override
  List<Order> get ordersList {
    if (_ordersList is EqualUnmodifiableListView) return _ordersList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ordersList);
  }

  final List<Empty> _emptiesList;
  @override
  List<Empty> get emptiesList {
    if (_emptiesList is EqualUnmodifiableListView) return _emptiesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_emptiesList);
  }

  @override
  String toString() {
    return 'OrdersResponse(ordersList: $ordersList, emptiesList: $emptiesList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrdersResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._ordersList, _ordersList) &&
            const DeepCollectionEquality()
                .equals(other._emptiesList, _emptiesList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_ordersList),
      const DeepCollectionEquality().hash(_emptiesList));

  /// Create a copy of OrdersResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrdersResponseImplCopyWith<_$OrdersResponseImpl> get copyWith =>
      __$$OrdersResponseImplCopyWithImpl<_$OrdersResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrdersResponseImplToJson(
      this,
    );
  }
}

abstract class _OrdersResponse implements OrdersResponse {
  factory _OrdersResponse(
      {required final List<Order> ordersList,
      required final List<Empty> emptiesList}) = _$OrdersResponseImpl;

  factory _OrdersResponse.fromJson(Map<String, dynamic> json) =
      _$OrdersResponseImpl.fromJson;

  @override
  List<Order> get ordersList;
  @override
  List<Empty> get emptiesList;

  /// Create a copy of OrdersResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrdersResponseImplCopyWith<_$OrdersResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Order _$OrderFromJson(Map<String, dynamic> json) {
  return _Order.fromJson(json);
}

/// @nodoc
mixin _$Order {
  CustomerDetail get customerDetail => throw _privateConstructorUsedError;
  List<OrderItem> get orderItems => throw _privateConstructorUsedError;

  /// Serializes this Order to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderCopyWith<Order> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res, Order>;
  @useResult
  $Res call({CustomerDetail customerDetail, List<OrderItem> orderItems});

  $CustomerDetailCopyWith<$Res> get customerDetail;
}

/// @nodoc
class _$OrderCopyWithImpl<$Res, $Val extends Order>
    implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerDetail = null,
    Object? orderItems = null,
  }) {
    return _then(_value.copyWith(
      customerDetail: null == customerDetail
          ? _value.customerDetail
          : customerDetail // ignore: cast_nullable_to_non_nullable
              as CustomerDetail,
      orderItems: null == orderItems
          ? _value.orderItems
          : orderItems // ignore: cast_nullable_to_non_nullable
              as List<OrderItem>,
    ) as $Val);
  }

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CustomerDetailCopyWith<$Res> get customerDetail {
    return $CustomerDetailCopyWith<$Res>(_value.customerDetail, (value) {
      return _then(_value.copyWith(customerDetail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderImplCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$$OrderImplCopyWith(
          _$OrderImpl value, $Res Function(_$OrderImpl) then) =
      __$$OrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CustomerDetail customerDetail, List<OrderItem> orderItems});

  @override
  $CustomerDetailCopyWith<$Res> get customerDetail;
}

/// @nodoc
class __$$OrderImplCopyWithImpl<$Res>
    extends _$OrderCopyWithImpl<$Res, _$OrderImpl>
    implements _$$OrderImplCopyWith<$Res> {
  __$$OrderImplCopyWithImpl(
      _$OrderImpl _value, $Res Function(_$OrderImpl) _then)
      : super(_value, _then);

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerDetail = null,
    Object? orderItems = null,
  }) {
    return _then(_$OrderImpl(
      customerDetail: null == customerDetail
          ? _value.customerDetail
          : customerDetail // ignore: cast_nullable_to_non_nullable
              as CustomerDetail,
      orderItems: null == orderItems
          ? _value._orderItems
          : orderItems // ignore: cast_nullable_to_non_nullable
              as List<OrderItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderImpl implements _Order {
  _$OrderImpl(
      {required this.customerDetail, required final List<OrderItem> orderItems})
      : _orderItems = orderItems;

  factory _$OrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderImplFromJson(json);

  @override
  final CustomerDetail customerDetail;
  final List<OrderItem> _orderItems;
  @override
  List<OrderItem> get orderItems {
    if (_orderItems is EqualUnmodifiableListView) return _orderItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderItems);
  }

  @override
  String toString() {
    return 'Order(customerDetail: $customerDetail, orderItems: $orderItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderImpl &&
            (identical(other.customerDetail, customerDetail) ||
                other.customerDetail == customerDetail) &&
            const DeepCollectionEquality()
                .equals(other._orderItems, _orderItems));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, customerDetail,
      const DeepCollectionEquality().hash(_orderItems));

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      __$$OrderImplCopyWithImpl<_$OrderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderImplToJson(
      this,
    );
  }
}

abstract class _Order implements Order {
  factory _Order(
      {required final CustomerDetail customerDetail,
      required final List<OrderItem> orderItems}) = _$OrderImpl;

  factory _Order.fromJson(Map<String, dynamic> json) = _$OrderImpl.fromJson;

  @override
  CustomerDetail get customerDetail;
  @override
  List<OrderItem> get orderItems;

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CustomerDetail _$CustomerDetailFromJson(Map<String, dynamic> json) {
  return _CustomerDetail.fromJson(json);
}

/// @nodoc
mixin _$CustomerDetail {
  int get customerId => throw _privateConstructorUsedError;
  int get providedCustomerId => throw _privateConstructorUsedError;
  int get orderID => throw _privateConstructorUsedError;
  int get tourId => throw _privateConstructorUsedError;
  int get customerNumber => throw _privateConstructorUsedError;
  String get customerName => throw _privateConstructorUsedError;
  double get destinationLatitude => throw _privateConstructorUsedError;
  double get destinationlongitude => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get orderStatus => throw _privateConstructorUsedError;
  String get customerWish => throw _privateConstructorUsedError;

  /// Serializes this CustomerDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CustomerDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomerDetailCopyWith<CustomerDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerDetailCopyWith<$Res> {
  factory $CustomerDetailCopyWith(
          CustomerDetail value, $Res Function(CustomerDetail) then) =
      _$CustomerDetailCopyWithImpl<$Res, CustomerDetail>;
  @useResult
  $Res call(
      {int customerId,
      int providedCustomerId,
      int orderID,
      int tourId,
      int customerNumber,
      String customerName,
      double destinationLatitude,
      double destinationlongitude,
      String address,
      String orderStatus,
      String customerWish});
}

/// @nodoc
class _$CustomerDetailCopyWithImpl<$Res, $Val extends CustomerDetail>
    implements $CustomerDetailCopyWith<$Res> {
  _$CustomerDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomerDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerId = null,
    Object? providedCustomerId = null,
    Object? orderID = null,
    Object? tourId = null,
    Object? customerNumber = null,
    Object? customerName = null,
    Object? destinationLatitude = null,
    Object? destinationlongitude = null,
    Object? address = null,
    Object? orderStatus = null,
    Object? customerWish = null,
  }) {
    return _then(_value.copyWith(
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
      providedCustomerId: null == providedCustomerId
          ? _value.providedCustomerId
          : providedCustomerId // ignore: cast_nullable_to_non_nullable
              as int,
      orderID: null == orderID
          ? _value.orderID
          : orderID // ignore: cast_nullable_to_non_nullable
              as int,
      tourId: null == tourId
          ? _value.tourId
          : tourId // ignore: cast_nullable_to_non_nullable
              as int,
      customerNumber: null == customerNumber
          ? _value.customerNumber
          : customerNumber // ignore: cast_nullable_to_non_nullable
              as int,
      customerName: null == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      destinationLatitude: null == destinationLatitude
          ? _value.destinationLatitude
          : destinationLatitude // ignore: cast_nullable_to_non_nullable
              as double,
      destinationlongitude: null == destinationlongitude
          ? _value.destinationlongitude
          : destinationlongitude // ignore: cast_nullable_to_non_nullable
              as double,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      orderStatus: null == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String,
      customerWish: null == customerWish
          ? _value.customerWish
          : customerWish // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomerDetailImplCopyWith<$Res>
    implements $CustomerDetailCopyWith<$Res> {
  factory _$$CustomerDetailImplCopyWith(_$CustomerDetailImpl value,
          $Res Function(_$CustomerDetailImpl) then) =
      __$$CustomerDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int customerId,
      int providedCustomerId,
      int orderID,
      int tourId,
      int customerNumber,
      String customerName,
      double destinationLatitude,
      double destinationlongitude,
      String address,
      String orderStatus,
      String customerWish});
}

/// @nodoc
class __$$CustomerDetailImplCopyWithImpl<$Res>
    extends _$CustomerDetailCopyWithImpl<$Res, _$CustomerDetailImpl>
    implements _$$CustomerDetailImplCopyWith<$Res> {
  __$$CustomerDetailImplCopyWithImpl(
      _$CustomerDetailImpl _value, $Res Function(_$CustomerDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomerDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerId = null,
    Object? providedCustomerId = null,
    Object? orderID = null,
    Object? tourId = null,
    Object? customerNumber = null,
    Object? customerName = null,
    Object? destinationLatitude = null,
    Object? destinationlongitude = null,
    Object? address = null,
    Object? orderStatus = null,
    Object? customerWish = null,
  }) {
    return _then(_$CustomerDetailImpl(
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
      providedCustomerId: null == providedCustomerId
          ? _value.providedCustomerId
          : providedCustomerId // ignore: cast_nullable_to_non_nullable
              as int,
      orderID: null == orderID
          ? _value.orderID
          : orderID // ignore: cast_nullable_to_non_nullable
              as int,
      tourId: null == tourId
          ? _value.tourId
          : tourId // ignore: cast_nullable_to_non_nullable
              as int,
      customerNumber: null == customerNumber
          ? _value.customerNumber
          : customerNumber // ignore: cast_nullable_to_non_nullable
              as int,
      customerName: null == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      destinationLatitude: null == destinationLatitude
          ? _value.destinationLatitude
          : destinationLatitude // ignore: cast_nullable_to_non_nullable
              as double,
      destinationlongitude: null == destinationlongitude
          ? _value.destinationlongitude
          : destinationlongitude // ignore: cast_nullable_to_non_nullable
              as double,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      orderStatus: null == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String,
      customerWish: null == customerWish
          ? _value.customerWish
          : customerWish // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomerDetailImpl implements _CustomerDetail {
  _$CustomerDetailImpl(
      {required this.customerId,
      required this.providedCustomerId,
      required this.orderID,
      required this.tourId,
      required this.customerNumber,
      required this.customerName,
      required this.destinationLatitude,
      required this.destinationlongitude,
      required this.address,
      required this.orderStatus,
      required this.customerWish});

  factory _$CustomerDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerDetailImplFromJson(json);

  @override
  final int customerId;
  @override
  final int providedCustomerId;
  @override
  final int orderID;
  @override
  final int tourId;
  @override
  final int customerNumber;
  @override
  final String customerName;
  @override
  final double destinationLatitude;
  @override
  final double destinationlongitude;
  @override
  final String address;
  @override
  final String orderStatus;
  @override
  final String customerWish;

  @override
  String toString() {
    return 'CustomerDetail(customerId: $customerId, providedCustomerId: $providedCustomerId, orderID: $orderID, tourId: $tourId, customerNumber: $customerNumber, customerName: $customerName, destinationLatitude: $destinationLatitude, destinationlongitude: $destinationlongitude, address: $address, orderStatus: $orderStatus, customerWish: $customerWish)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerDetailImpl &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.providedCustomerId, providedCustomerId) ||
                other.providedCustomerId == providedCustomerId) &&
            (identical(other.orderID, orderID) || other.orderID == orderID) &&
            (identical(other.tourId, tourId) || other.tourId == tourId) &&
            (identical(other.customerNumber, customerNumber) ||
                other.customerNumber == customerNumber) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.destinationLatitude, destinationLatitude) ||
                other.destinationLatitude == destinationLatitude) &&
            (identical(other.destinationlongitude, destinationlongitude) ||
                other.destinationlongitude == destinationlongitude) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.orderStatus, orderStatus) ||
                other.orderStatus == orderStatus) &&
            (identical(other.customerWish, customerWish) ||
                other.customerWish == customerWish));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      customerId,
      providedCustomerId,
      orderID,
      tourId,
      customerNumber,
      customerName,
      destinationLatitude,
      destinationlongitude,
      address,
      orderStatus,
      customerWish);

  /// Create a copy of CustomerDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerDetailImplCopyWith<_$CustomerDetailImpl> get copyWith =>
      __$$CustomerDetailImplCopyWithImpl<_$CustomerDetailImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerDetailImplToJson(
      this,
    );
  }
}

abstract class _CustomerDetail implements CustomerDetail {
  factory _CustomerDetail(
      {required final int customerId,
      required final int providedCustomerId,
      required final int orderID,
      required final int tourId,
      required final int customerNumber,
      required final String customerName,
      required final double destinationLatitude,
      required final double destinationlongitude,
      required final String address,
      required final String orderStatus,
      required final String customerWish}) = _$CustomerDetailImpl;

  factory _CustomerDetail.fromJson(Map<String, dynamic> json) =
      _$CustomerDetailImpl.fromJson;

  @override
  int get customerId;
  @override
  int get providedCustomerId;
  @override
  int get orderID;
  @override
  int get tourId;
  @override
  int get customerNumber;
  @override
  String get customerName;
  @override
  double get destinationLatitude;
  @override
  double get destinationlongitude;
  @override
  String get address;
  @override
  String get orderStatus;
  @override
  String get customerWish;

  /// Create a copy of CustomerDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomerDetailImplCopyWith<_$CustomerDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderItem _$OrderItemFromJson(Map<String, dynamic> json) {
  return _OrderItem.fromJson(json);
}

/// @nodoc
mixin _$OrderItem {
  int get itemId => throw _privateConstructorUsedError;
  String get itemName => throw _privateConstructorUsedError;
  int get itemTotal => throw _privateConstructorUsedError;
  String get itemAvatar => throw _privateConstructorUsedError;
  bool get isScannable => throw _privateConstructorUsedError;
  List<int> get boxIds => throw _privateConstructorUsedError;

  /// Serializes this OrderItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderItemCopyWith<OrderItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderItemCopyWith<$Res> {
  factory $OrderItemCopyWith(OrderItem value, $Res Function(OrderItem) then) =
      _$OrderItemCopyWithImpl<$Res, OrderItem>;
  @useResult
  $Res call(
      {int itemId,
      String itemName,
      int itemTotal,
      String itemAvatar,
      bool isScannable,
      List<int> boxIds});
}

/// @nodoc
class _$OrderItemCopyWithImpl<$Res, $Val extends OrderItem>
    implements $OrderItemCopyWith<$Res> {
  _$OrderItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? itemName = null,
    Object? itemTotal = null,
    Object? itemAvatar = null,
    Object? isScannable = null,
    Object? boxIds = null,
  }) {
    return _then(_value.copyWith(
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int,
      itemName: null == itemName
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      itemTotal: null == itemTotal
          ? _value.itemTotal
          : itemTotal // ignore: cast_nullable_to_non_nullable
              as int,
      itemAvatar: null == itemAvatar
          ? _value.itemAvatar
          : itemAvatar // ignore: cast_nullable_to_non_nullable
              as String,
      isScannable: null == isScannable
          ? _value.isScannable
          : isScannable // ignore: cast_nullable_to_non_nullable
              as bool,
      boxIds: null == boxIds
          ? _value.boxIds
          : boxIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderItemImplCopyWith<$Res>
    implements $OrderItemCopyWith<$Res> {
  factory _$$OrderItemImplCopyWith(
          _$OrderItemImpl value, $Res Function(_$OrderItemImpl) then) =
      __$$OrderItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int itemId,
      String itemName,
      int itemTotal,
      String itemAvatar,
      bool isScannable,
      List<int> boxIds});
}

/// @nodoc
class __$$OrderItemImplCopyWithImpl<$Res>
    extends _$OrderItemCopyWithImpl<$Res, _$OrderItemImpl>
    implements _$$OrderItemImplCopyWith<$Res> {
  __$$OrderItemImplCopyWithImpl(
      _$OrderItemImpl _value, $Res Function(_$OrderItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? itemName = null,
    Object? itemTotal = null,
    Object? itemAvatar = null,
    Object? isScannable = null,
    Object? boxIds = null,
  }) {
    return _then(_$OrderItemImpl(
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int,
      itemName: null == itemName
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      itemTotal: null == itemTotal
          ? _value.itemTotal
          : itemTotal // ignore: cast_nullable_to_non_nullable
              as int,
      itemAvatar: null == itemAvatar
          ? _value.itemAvatar
          : itemAvatar // ignore: cast_nullable_to_non_nullable
              as String,
      isScannable: null == isScannable
          ? _value.isScannable
          : isScannable // ignore: cast_nullable_to_non_nullable
              as bool,
      boxIds: null == boxIds
          ? _value._boxIds
          : boxIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderItemImpl implements _OrderItem {
  _$OrderItemImpl(
      {required this.itemId,
      required this.itemName,
      required this.itemTotal,
      required this.itemAvatar,
      required this.isScannable,
      required final List<int> boxIds})
      : _boxIds = boxIds;

  factory _$OrderItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderItemImplFromJson(json);

  @override
  final int itemId;
  @override
  final String itemName;
  @override
  final int itemTotal;
  @override
  final String itemAvatar;
  @override
  final bool isScannable;
  final List<int> _boxIds;
  @override
  List<int> get boxIds {
    if (_boxIds is EqualUnmodifiableListView) return _boxIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_boxIds);
  }

  @override
  String toString() {
    return 'OrderItem(itemId: $itemId, itemName: $itemName, itemTotal: $itemTotal, itemAvatar: $itemAvatar, isScannable: $isScannable, boxIds: $boxIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderItemImpl &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.itemName, itemName) ||
                other.itemName == itemName) &&
            (identical(other.itemTotal, itemTotal) ||
                other.itemTotal == itemTotal) &&
            (identical(other.itemAvatar, itemAvatar) ||
                other.itemAvatar == itemAvatar) &&
            (identical(other.isScannable, isScannable) ||
                other.isScannable == isScannable) &&
            const DeepCollectionEquality().equals(other._boxIds, _boxIds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, itemId, itemName, itemTotal,
      itemAvatar, isScannable, const DeepCollectionEquality().hash(_boxIds));

  /// Create a copy of OrderItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderItemImplCopyWith<_$OrderItemImpl> get copyWith =>
      __$$OrderItemImplCopyWithImpl<_$OrderItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderItemImplToJson(
      this,
    );
  }
}

abstract class _OrderItem implements OrderItem {
  factory _OrderItem(
      {required final int itemId,
      required final String itemName,
      required final int itemTotal,
      required final String itemAvatar,
      required final bool isScannable,
      required final List<int> boxIds}) = _$OrderItemImpl;

  factory _OrderItem.fromJson(Map<String, dynamic> json) =
      _$OrderItemImpl.fromJson;

  @override
  int get itemId;
  @override
  String get itemName;
  @override
  int get itemTotal;
  @override
  String get itemAvatar;
  @override
  bool get isScannable;
  @override
  List<int> get boxIds;

  /// Create a copy of OrderItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderItemImplCopyWith<_$OrderItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Empty _$EmptyFromJson(Map<String, dynamic> json) {
  return _Empty.fromJson(json);
}

/// @nodoc
mixin _$Empty {
  int get id => throw _privateConstructorUsedError;
  int get partNo => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// Serializes this Empty to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Empty
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EmptyCopyWith<Empty> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmptyCopyWith<$Res> {
  factory $EmptyCopyWith(Empty value, $Res Function(Empty) then) =
      _$EmptyCopyWithImpl<$Res, Empty>;
  @useResult
  $Res call({int id, int partNo, String image, String description});
}

/// @nodoc
class _$EmptyCopyWithImpl<$Res, $Val extends Empty>
    implements $EmptyCopyWith<$Res> {
  _$EmptyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Empty
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? partNo = null,
    Object? image = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      partNo: null == partNo
          ? _value.partNo
          : partNo // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmptyImplCopyWith<$Res> implements $EmptyCopyWith<$Res> {
  factory _$$EmptyImplCopyWith(
          _$EmptyImpl value, $Res Function(_$EmptyImpl) then) =
      __$$EmptyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int partNo, String image, String description});
}

/// @nodoc
class __$$EmptyImplCopyWithImpl<$Res>
    extends _$EmptyCopyWithImpl<$Res, _$EmptyImpl>
    implements _$$EmptyImplCopyWith<$Res> {
  __$$EmptyImplCopyWithImpl(
      _$EmptyImpl _value, $Res Function(_$EmptyImpl) _then)
      : super(_value, _then);

  /// Create a copy of Empty
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? partNo = null,
    Object? image = null,
    Object? description = null,
  }) {
    return _then(_$EmptyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      partNo: null == partNo
          ? _value.partNo
          : partNo // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmptyImpl implements _Empty {
  _$EmptyImpl(
      {required this.id,
      required this.partNo,
      required this.image,
      required this.description});

  factory _$EmptyImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmptyImplFromJson(json);

  @override
  final int id;
  @override
  final int partNo;
  @override
  final String image;
  @override
  final String description;

  @override
  String toString() {
    return 'Empty(id: $id, partNo: $partNo, image: $image, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmptyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.partNo, partNo) || other.partNo == partNo) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, partNo, image, description);

  /// Create a copy of Empty
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmptyImplCopyWith<_$EmptyImpl> get copyWith =>
      __$$EmptyImplCopyWithImpl<_$EmptyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmptyImplToJson(
      this,
    );
  }
}

abstract class _Empty implements Empty {
  factory _Empty(
      {required final int id,
      required final int partNo,
      required final String image,
      required final String description}) = _$EmptyImpl;

  factory _Empty.fromJson(Map<String, dynamic> json) = _$EmptyImpl.fromJson;

  @override
  int get id;
  @override
  int get partNo;
  @override
  String get image;
  @override
  String get description;

  /// Create a copy of Empty
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmptyImplCopyWith<_$EmptyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
