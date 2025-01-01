import 'package:dio/dio.dart';
import 'package:pruduct_management_app/model/product_model.dart';
import 'package:pruduct_management_app/res/app_url.dart';


class ProductRepository     {
  Dio dio = Dio();
  Future<List<ProductModel>> userListApi() async {
    try {
      // API call using Dio
      Response response = await dio.get(AppUrl.productsApiUrl);

      // Check if the response data is a list
      if (response.data is List) {
        // Map the list of JSON objects to a list of ProductModel
        return (response.data as List)
            .map((e) => ProductModel.fromJson(e))
            .toList();
      } else {
        throw Exception('Unexpected response format: Expected a list');
      }
    } catch (error) {
      // Handle errors from Dio
      throw Exception('Failed to fetch product list: $error');
    }
  }


}
