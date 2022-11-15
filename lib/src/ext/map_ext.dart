extension MapExt on Map<String, dynamic> {

  whenNotNull(String key, dynamic data) {
    if (data != null) {
      this[key] = data;
    }
  }
}