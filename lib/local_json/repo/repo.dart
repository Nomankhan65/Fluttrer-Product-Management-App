
import 'package:pruduct_management_app/local_json/network/network_api_services.dart';
import 'package:pruduct_management_app/local_json/response/model.dart';
class Repo {
  final apiServices = NetworkApiServices();

  Future<Model> getData() async {
    dynamic response = await apiServices.getApi('assets/signin.json');
    print('response------->>>${response['response']}');
    if (response != null) {
      return Model.fromJson(response['response']);
    } else {
      print('error');
      return Model.fromJson(response);
    }
  }
}
