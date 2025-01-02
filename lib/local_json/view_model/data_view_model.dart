import 'package:get/get.dart';
import 'package:pruduct_management_app/local_json/repo/repo.dart';
import 'package:pruduct_management_app/local_json/response/model.dart';

class DataViewModel extends GetxController {
  final _repo = Repo();
  RxBool isLoading = false.obs;
  final RxList<Model> data = <Model>[].obs;

  @override
  void onInit() {
    getData();
    super.onInit();
  }

  void getData() async {
    try {
      isLoading.value = true;
      final response = await _repo.getData();
      print('object');
      // Ensure response is a list of Model objects
      if (response != null) {
        data.value = [response]; // Wrap the single Model in a list if necessary
      } else {
        data.value = []; // Handle null response gracefully
      }
    } catch (e) {
      isLoading.value = false;
      print('Error : ${e.toString()}');
      Get.snackbar('Error while getting data', e.toString());
    } finally {
      isLoading.value = false;
    }
  }
}
