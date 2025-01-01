import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:pruduct_management_app/res/utils.dart';
import 'package:pruduct_management_app/view_model/services/notification_services.dart';

import '../../model/hive_product_model.dart';

class DatabaseServices extends GetxController {
  // Instance of NotificationServices to handle notifications
  var notificationService = NotificationServices();

  // Reactive list to hold product data from Hive
  var productList = <HiveProductModel>[].obs;

  // Reactive variables to track loading state and product quantity
  RxBool loading = false.obs;
  RxInt quantity = 1.obs;

  @override
  void onInit() {
    super.onInit();
    // Load products from Hive when the controller is initialized
    loadProducts();
  }

  // Load products from Hive database into the reactive list
  Future<void> loadProducts() async {
    // Open the Hive box for shopping cart data
    var box = await Hive.openBox<HiveProductModel>('shoppingCart');

    // Load all products from the Hive box into the reactive list
    productList.value = box.values.toList();

    // Schedule a notification if the cart is not empty
    if (box.values.isNotEmpty) {
      notificationService.scheduleNotification(
          DateTime.now().add(const Duration(minutes: 1)), 1);
    }
  }

  // Add a new product to Hive and update the reactive list
  Future<void> addProduct(
      HiveProductModel product, BuildContext context) async {
    try {
      loading.value = true; // Set loading to true during the operation

      // Open the Hive box for shopping cart
      var box = await Hive.openBox<HiveProductModel>('shoppingCart');

      // Add the product to Hive
      await box.add(product);

      // Reload the product list to reflect changes
      loadProducts();

      // Show a success message
      Utils.showSnackBar(context, 'Product added to cart', Colors.green);
    } catch (e) {
      // Handle errors and show an error message
      Utils.showSnackBar(context, 'Error $e', Colors.red);
    } finally {
      // Reset the loading state
      loading.value = false;
    }
  }

  // Delete a product from Hive and update the reactive list
  Future<void> deleteProduct(int id) async {
    // Open the Hive box for shopping cart
    var box = await Hive.openBox<HiveProductModel>('shoppingCart');

    // Find the product in Hive by matching its ID
    var productKey = box.keys.firstWhere(
      (key) {
        var product = box.get(key);
        return product?.id == id;
      },
      orElse: () => null, // Return null if the product is not found
    );

    if (productKey != null) {
      // Delete the product using its key
      await box.delete(productKey);

      // Reload the product list to reflect changes
      loadProducts();
    } else {}
  }

  // Update the quantity of a product in Hive and update the reactive list
  Future<void> updateQuantity(int id, int newQuantity) async {
    // Open the Hive box for shopping cart
    var box = await Hive.openBox<HiveProductModel>('shoppingCart');

    // Find the product in Hive by matching its ID
    var productKey = box.keys.firstWhere(
      (key) {
        var product = box.get(key);
        return product?.id == id;
      },
      orElse: () => null, // Return null if the product is not found
    );

    if (productKey != null) {
      // Retrieve the product from Hive
      var product = box.get(productKey);

      // Update the product's quantity
      product?.quantity = newQuantity;

      // Save the updated product back to Hive
      await box.put(productKey, product!);

      // Update the reactive quantity value
      quantity.value = product.quantity;

      // Reload the product list to reflect changes
      loadProducts();
    } else {}
  }
}
