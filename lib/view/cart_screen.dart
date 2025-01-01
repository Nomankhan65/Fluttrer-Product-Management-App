import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pruduct_management_app/res/app_colors.dart';
import 'package:pruduct_management_app/res/components/custom_text.dart';
import 'package:pruduct_management_app/res/strings.dart';
import 'package:pruduct_management_app/view_model/services/database_services.dart';

import '../res/dimentions.dart';

class CartScreen extends StatelessWidget {
  CartScreen({super.key});
  final dbServices = Get.put(DatabaseServices());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: MyText(
          text: Strings.cart,
        ),
      ),
      body: Obx(() {
        return ListView.builder(
            itemCount: dbServices.productList.length,
            itemBuilder: (context, index) {
              var data = dbServices.productList.value[index];
              int quantity = data.quantity;
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: Dimensions.d1),
                child: ListTile(
                  leading: Container(
                    height: 60,
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(data.image.toString())),
                        borderRadius: BorderRadius.circular(Dimensions.d1)),
                  ),
                  title: MyText(
                      text: data.title,
                      fontSize: Dimensions.t1,
                      color: titleColor),
                  subtitle: Row(
                    children: [
                      MyText(
                        text: data.price.toStringAsFixed(1),
                        fontSize: Dimensions.t2,
                      ),
                      SizedBox(
                        width: Dimensions.d3,
                      ),
                      IconButton(
                          onPressed: () {
                            if (quantity > 1) {
                              quantity--;
                              dbServices.updateQuantity(data.id, quantity);
                            }
                          },
                          icon: Icon(
                            Icons.remove,
                          )),
                      MyText(
                        text: data.quantity.toString(),
                        color: Colors.green,
                      ),
                      IconButton(
                          onPressed: () {
                            quantity++;
                            dbServices.updateQuantity(data.id, quantity);
                          },
                          icon: Icon(Icons.add))
                    ],
                  ),
                  trailing: IconButton(
                      onPressed: () {
                        dbServices.deleteProduct(data.id);
                      },
                      icon: Icon(
                        Icons.delete,
                        color: Colors.red,
                      )),
                ),
              );
            });
      }),
    );
  }
}
