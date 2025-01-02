
import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';
part 'model.g.dart';

@freezed
class Model with _$Model {
  factory Model({
    required bool status,
    required Data? data,
  }) = _Model;

  factory Model.fromJson(Map<String, dynamic> json) => _$ModelFromJson(json);
}

@freezed
class Data with _$Data {
  factory Data({
    required AuthResponse? authResponse,
    required OrdersResponse? ordersResponse,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class AuthResponse with _$AuthResponse {
  factory AuthResponse({
    required String firstName,
    required String lastName,
    required String email,
    required String avatar,
    required String firebaseCustomToken,
    required String jwt,
  }) = _AuthResponse;

  factory AuthResponse.fromJson(Map<String, dynamic> json) => _$AuthResponseFromJson(json);
}

@freezed
class OrdersResponse with _$OrdersResponse {
  factory OrdersResponse({
    required List<Order> ordersList,
    required List<Empty> emptiesList,
  }) = _OrdersResponse;

  factory OrdersResponse.fromJson(Map<String, dynamic> json) => _$OrdersResponseFromJson(json);
}

@freezed
class Order with _$Order {
  factory Order({
    required CustomerDetail customerDetail,
    required List<OrderItem> orderItems,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}

@freezed
class CustomerDetail with _$CustomerDetail {
  factory CustomerDetail({
    required int customerId,
    required int providedCustomerId,
    required int orderID,
    required int tourId,
    required int customerNumber,
    required String customerName,
    required double destinationLatitude,
    required double destinationlongitude,
    required String address,
    required String orderStatus,
    required String customerWish,
  }) = _CustomerDetail;

  factory CustomerDetail.fromJson(Map<String, dynamic> json) => _$CustomerDetailFromJson(json);
}

@freezed
class OrderItem with _$OrderItem {
  factory OrderItem({
    required int itemId,
    required String itemName,
    required int itemTotal,
    required String itemAvatar,
    required bool isScannable,
    required List<int> boxIds,
  }) = _OrderItem;

  factory OrderItem.fromJson(Map<String, dynamic> json) => _$OrderItemFromJson(json);
}

@freezed
class Empty with _$Empty {
  factory Empty({
    required int id,
    required int partNo,
    required String image,
    required String description,
  }) = _Empty;

  factory Empty.fromJson(Map<String, dynamic> json) => _$EmptyFromJson(json);
}
