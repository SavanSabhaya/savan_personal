class AddressBuilder {
  static Map<String, String> parseAddress(String address) {
    List<String> parts = address.split(',');
    return {
      "street": parts.isNotEmpty ? parts[0].trim() : "",
      "city": parts.length > 1 ? parts[1].trim() : "",
      "state": parts.length > 2 ? parts[2].trim() : "",
      "country": parts.length > 3 ? parts[3].trim() : "",
    };
  }
}
