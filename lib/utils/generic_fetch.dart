class FetchResponse<T> {
  final T? data;
  final bool success;
  final String? errorMessage;

  FetchResponse({this.data, required this.success, this.errorMessage});
}
