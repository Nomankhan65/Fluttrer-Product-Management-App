import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pruduct_management_app/model/hive_product_model.dart';
import 'package:pruduct_management_app/res/app_colors.dart';
import 'package:pruduct_management_app/res/components/custom_button.dart';
import 'package:pruduct_management_app/res/components/custom_text.dart';
import 'package:pruduct_management_app/res/dimentions.dart';
import 'package:pruduct_management_app/res/strings.dart';

import '../view_model/services/database_services.dart';

class ProductDetailScreen extends StatelessWidget {
  int? id;
  String? title;
  double? price; // Keep it as double
  String? description;
  String? image;

  ProductDetailScreen(
      this.id, this.title, this.price, this.description, this.image);
  final dbServices = Get.put(DatabaseServices());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: MyText(
          text: title.toString(),
          fontSize: Dimensions.t1,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(Dimensions.d1),
        child: Column(
          children: [
            SizedBox(height: 500, child: Image.network(image.toString())),
            SizedBox(
              height: Dimensions.d3,
            ),
            MyText(
              color: titleColor,
              text: 'Price ${price!.toStringAsFixed(1)}',
              fontSize: Dimensions.t1,
            ),
            MyText(fontSize: Dimensions.t1, text: description),
            SizedBox(
              height: Dimensions.d3,
            ),
            Obx(() {
              return CustomButton(
                  title: Strings.add,
                  onTap: () async {
                    final product = HiveProductModel(
                      id: id!,
                      title: title!,
                      price: price!,
                      description: description!,
                      image: image!,
                      quantity: 1,
                    );
                    await dbServices.addProduct(product,context);
                  },
                  isLoading: dbServices.loading.value);
            }),
          ],
        ),
      ),
    );
  }
}
