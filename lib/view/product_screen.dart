import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pruduct_management_app/res/app_colors.dart';
import 'package:pruduct_management_app/res/components/custom_text.dart';
import 'package:pruduct_management_app/res/dimentions.dart';
import 'package:pruduct_management_app/res/strings.dart';
import 'package:pruduct_management_app/view/cart_screen.dart';
import 'package:pruduct_management_app/view/product_detail_screen.dart';
import 'package:pruduct_management_app/view_model/auth_view_model.dart';
import 'package:pruduct_management_app/view_model/product_view_model.dart';

import '../view_model/currency_view_model.dart';
import '../view_model/services/notification_services.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final productViewModel = Get.put(ProductViewModel());

  final controller = Get.put(CurrencyViewModel());

  var notification = NotificationServices();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    notification.initialize(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: MyText(text: Strings.products),
        actions: [
          Obx(() {
            if (controller.isLoading.value) {
              return const Center(child: CircularProgressIndicator());
            }

            if (controller.exchangeRates.value == null) {
              return const Center(child: Text(Strings.noData));
            }

            final rates = controller.exchangeRates.value!.rates;

            return DropdownButton<String>(
              icon: Icon(
                Icons.currency_exchange,
                color: titleColor,
              ),
              hint: MyText(
                text: Strings.select,
              ),
              value: controller
                  .selectedCurrency.value, // The currently selected value
              items: rates.entries.map((entry) {
                return DropdownMenuItem<String>(
                  value: entry.key, // Store the currency as the value
                  child: Text(
                      "${entry.key} - ${entry.value}"), // Display currency and rate
                );
              }).toList(),
              onChanged: (value) {
                controller.onChange(value!, rates[value]!);
              },
            );
          }),
          IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => CartScreen()));
              },
              icon: Icon(
                Icons.shopping_cart,
                color: titleColor,
              )),
          IconButton(
              onPressed: () {
                final viewModel = Get.put(AuthViewModel());
                viewModel.logout(context);
              },
              icon: Icon(
                Icons.logout,
                color: Colors.red,
              )),
        ],
      ),
      body: Obx(() {
        // Listen to both requestStatus and selectedRate
        final selectedRate = controller.selectedRate.value;

        switch (productViewModel.requestStatus.value) {
          case 'loading':
            return const Center(
              child: CircularProgressIndicator(),
            );
          case 'error':
            if (productViewModel.setError.isNotEmpty) {
              return Center(
                child: Text(productViewModel.setError.toString()),
              );
            } else {
              return Center(child: Text(productViewModel.setError.toString()));
            }
          case 'completed':
            return Obx(() {
              // Rebuild ListView when `selectedRate` changes
              return ListView.builder(
                itemCount: productViewModel.productList.value.length,
                itemBuilder: (context, index) {
                  var data = productViewModel.productList.value[index];
                  double convertedPrice =
                      data.price! * selectedRate; // Use updated selectedRate

                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: Dimensions.d2, vertical: Dimensions.d1),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(Dimensions.d1),
                      ),
                      child: ListTile(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => ProductDetailScreen(
                                        data.id,
                                        data.title,
                                        data.price,
                                        data.description,
                                        data.image,
                                      )));
                        },
                        leading: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(data.image.toString()),
                            ),
                            borderRadius: BorderRadius.circular(Dimensions.d1),
                          ),
                        ),
                        title: MyText(
                          text: data.title,
                          color: titleColor,
                          fontSize:Dimensions.t1,
                        ),
                        subtitle: MyText(
                          text:
                              '${controller.selectedCurrency.value} ${convertedPrice.toStringAsFixed(1)}',
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            MyText(text: data.rating!.rate.toString()),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.orangeAccent,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            });
          default:
            return const Center(child: Text('Unexpected State'));
        }
      }),
    );
  }
}
