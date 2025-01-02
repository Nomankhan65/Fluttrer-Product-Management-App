import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pruduct_management_app/local_json/view_model/data_view_model.dart';

class DataView extends StatelessWidget {
    DataView({super.key});
  final data=Get.put(DataViewModel());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title:Text('data'),),
      body: Obx(() {
      if (data.isLoading.value) {
        return CircularProgressIndicator();
      }

      return ListView.builder(
        itemCount:data.data.value.length,
        itemBuilder: (context, index) {
          final data1=data.data.value[index];
          return Column(
            children: [
              Text(data1.status.toString()),
              Text(data1.data!.authResponse!.firstName.toString()),
              Text(data1.data!.ordersResponse!.ordersList[0].customerDetail.customerId.toString()),
              Text(data1.status.toString()),
              Text(data1.status.toString()),
              Text(data1.status.toString()),

            ],
          );
        },
      );
    })
    );

  }
}
