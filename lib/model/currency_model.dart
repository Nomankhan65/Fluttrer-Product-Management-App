class ExchangeRates {
  String base;
  String date;
  Map<String, double> rates;

  ExchangeRates({required this.base, required this.date, required this.rates});

  factory ExchangeRates.fromJson(Map<String, dynamic> json) {
    return ExchangeRates(
      base: json['base'],
      date: json['date'],
      rates: (json['rates'] as Map<String, dynamic>)
          .map((key, value) => MapEntry(key, (value as num).toDouble())),
    );
  }
}
