// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ModelImpl _$$ModelImplFromJson(Map<String, dynamic> json) => _$ModelImpl(
      status: json['status'] as bool,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ModelImplToJson(_$ModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      authResponse: json['authResponse'] == null
          ? null
          : AuthResponse.fromJson(json['authResponse'] as Map<String, dynamic>),
      ordersResponse: json['ordersResponse'] == null
          ? null
          : OrdersResponse.fromJson(
              json['ordersResponse'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'authResponse': instance.authResponse,
      'ordersResponse': instance.ordersResponse,
    };

_$AuthResponseImpl _$$AuthResponseImplFromJson(Map<String, dynamic> json) =>
    _$AuthResponseImpl(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      avatar: json['avatar'] as String,
      firebaseCustomToken: json['firebaseCustomToken'] as String,
      jwt: json['jwt'] as String,
    );

Map<String, dynamic> _$$AuthResponseImplToJson(_$AuthResponseImpl instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'avatar': instance.avatar,
      'firebaseCustomToken': instance.firebaseCustomToken,
      'jwt': instance.jwt,
    };

_$OrdersResponseImpl _$$OrdersResponseImplFromJson(Map<String, dynamic> json) =>
    _$OrdersResponseImpl(
      ordersList: (json['ordersList'] as List<dynamic>)
          .map((e) => Order.fromJson(e as Map<String, dynamic>))
          .toList(),
      emptiesList: (json['emptiesList'] as List<dynamic>)
          .map((e) => Empty.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OrdersResponseImplToJson(
        _$OrdersResponseImpl instance) =>
    <String, dynamic>{
      'ordersList': instance.ordersList,
      'emptiesList': instance.emptiesList,
    };

_$OrderImpl _$$OrderImplFromJson(Map<String, dynamic> json) => _$OrderImpl(
      customerDetail: CustomerDetail.fromJson(
          json['customerDetail'] as Map<String, dynamic>),
      orderItems: (json['orderItems'] as List<dynamic>)
          .map((e) => OrderItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OrderImplToJson(_$OrderImpl instance) =>
    <String, dynamic>{
      'customerDetail': instance.customerDetail,
      'orderItems': instance.orderItems,
    };

_$CustomerDetailImpl _$$CustomerDetailImplFromJson(Map<String, dynamic> json) =>
    _$CustomerDetailImpl(
      customerId: (json['customerId'] as num).toInt(),
      providedCustomerId: (json['providedCustomerId'] as num).toInt(),
      orderID: (json['orderID'] as num).toInt(),
      tourId: (json['tourId'] as num).toInt(),
      customerNumber: (json['customerNumber'] as num).toInt(),
      customerName: json['customerName'] as String,
      destinationLatitude: (json['destinationLatitude'] as num).toDouble(),
      destinationlongitude: (json['destinationlongitude'] as num).toDouble(),
      address: json['address'] as String,
      orderStatus: json['orderStatus'] as String,
      customerWish: json['customerWish'] as String,
    );

Map<String, dynamic> _$$CustomerDetailImplToJson(
        _$CustomerDetailImpl instance) =>
    <String, dynamic>{
      'customerId': instance.customerId,
      'providedCustomerId': instance.providedCustomerId,
      'orderID': instance.orderID,
      'tourId': instance.tourId,
      'customerNumber': instance.customerNumber,
      'customerName': instance.customerName,
      'destinationLatitude': instance.destinationLatitude,
      'destinationlongitude': instance.destinationlongitude,
      'address': instance.address,
      'orderStatus': instance.orderStatus,
      'customerWish': instance.customerWish,
    };

_$OrderItemImpl _$$OrderItemImplFromJson(Map<String, dynamic> json) =>
    _$OrderItemImpl(
      itemId: (json['itemId'] as num).toInt(),
      itemName: json['itemName'] as String,
      itemTotal: (json['itemTotal'] as num).toInt(),
      itemAvatar: json['itemAvatar'] as String,
      isScannable: json['isScannable'] as bool,
      boxIds: (json['boxIds'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$$OrderItemImplToJson(_$OrderItemImpl instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'itemName': instance.itemName,
      'itemTotal': instance.itemTotal,
      'itemAvatar': instance.itemAvatar,
      'isScannable': instance.isScannable,
      'boxIds': instance.boxIds,
    };

_$EmptyImpl _$$EmptyImplFromJson(Map<String, dynamic> json) => _$EmptyImpl(
      id: (json['id'] as num).toInt(),
      partNo: (json['partNo'] as num).toInt(),
      image: json['image'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$EmptyImplToJson(_$EmptyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'partNo': instance.partNo,
      'image': instance.image,
      'description': instance.description,
    };
