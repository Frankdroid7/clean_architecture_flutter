class CountriesException implements Exception {
  final String errorMsg;

  CountriesException(this.errorMsg);

  @override
  String toString() => 'All countries EXCEPTION THROWN';
}
