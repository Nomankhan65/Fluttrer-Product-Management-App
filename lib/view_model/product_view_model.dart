import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:pruduct_management_app/model/product_model.dart';
import 'package:pruduct_management_app/repository/proudct_repository.dart';
import 'package:pruduct_management_app/view_model/services/notification_services.dart';

class ProductViewModel extends GetxController {
  final _productRepository = ProductRepository();

  // Observables for state management
  final RxString requestStatus = 'loading'.obs;
  final RxList<ProductModel> productList = <ProductModel>[].obs;
  final RxString setError = ''.obs;
  @override
  void onInit() {
    userListApi();
    super.onInit();
  }

  // API call to fetch the product list
  void userListApi() {
    requestStatus.value = 'loading';
    _productRepository.userListApi().then((value) {
      if (value != null && value.isNotEmpty) {
        requestStatus.value = 'completed';
        productList.value = value; // Assign the list of products
      } else {
        requestStatus.value = 'error';
        setError.value = 'No products found';
      }
    }).onError((error, stackTrace) {
      requestStatus.value = 'error';
      setError.value = error.toString(); // Capture and display the error
     });
  }
}
