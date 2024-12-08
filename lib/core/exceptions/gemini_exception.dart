class GeminiException implements Exception {
  final String errorMsg;
  GeminiException(this.errorMsg);

  @override
  String toString() => 'Gemini Exception';
}
