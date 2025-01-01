import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:pruduct_management_app/model/currency_model.dart';
import 'package:pruduct_management_app/res/app_url.dart';

class CurrencyViewModel extends GetxController {
  var exchangeRates = Rxn<ExchangeRates>();
  var isLoading = false.obs;
  RxString selectedCurrency = 'USD'.obs; // Default to USD
  RxDouble selectedRate = 1.0.obs; // Default rate (1 USD = 1 USD)

  @override
  void onInit() {
    super.onInit();
    fetchExchangeRates();
  }

  void onChange(String newCurrency, double rate) {
    selectedCurrency.value = newCurrency;
    selectedRate.value = rate;
    update(); // Update the UI
  }
  void fetchExchangeRates() async {
    Dio dio=Dio();
    isLoading.value = true;
    try {
      final response = await
          dio.get(AppUrl.currencyApiUrl);
      if (response.statusCode == 200) {
        exchangeRates.value = ExchangeRates.fromJson(response.data);
      } else {
        Get.snackbar('Error', 'Failed to load exchange rates');
      }
    } catch (e) {
      Get.snackbar('Error', 'An error occurred: $e');
    } finally {
      isLoading.value = false;
    }
  }
}
