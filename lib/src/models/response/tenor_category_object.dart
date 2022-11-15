class TenorCategory {
  final String searchTerm;
  final String path;
  final String image;
  final String name;

  TenorCategory({
    required this.searchTerm,
    required this.path,
    required this.image,
    required this.name,
  });

  factory TenorCategory.fromJson(Map<String, dynamic> json) => TenorCategory(
    searchTerm: json['searchterm'],
    path: json['path'],
    image: json['image'],
    name: json['name']
  );
}



class TenorCategoryResponse {
  final String locale;
  final List<TenorCategory> tags;

  TenorCategoryResponse({
    required this.locale,
    required this.tags,
  });

  factory TenorCategoryResponse.fromJson(Map<String, dynamic> json) => TenorCategoryResponse(
    locale: json['locale'],
    tags: (json['tags'] as List<dynamic>).map((e) => TenorCategory.fromJson(e)).toList()
  );
}



