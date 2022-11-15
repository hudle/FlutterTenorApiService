enum ContentFilter {
  off('off'), low('low'), medium('medium'), high('high');
  final String contentFilter;
  const ContentFilter(this.contentFilter);

  factory ContentFilter.fromJson(String status) {
    return ContentFilter.values.where((element) => status == element.contentFilter).first;
  }
}