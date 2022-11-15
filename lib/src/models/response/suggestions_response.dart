class SuggestionsResponse {
  final String locale;
  final List<String> results;

  SuggestionsResponse({required this.locale, required this.results});

  factory SuggestionsResponse.fromJson(Map<String, dynamic> json) =>
     SuggestionsResponse(
      locale: json['locale'],
      results: (json['results'] as List<dynamic>).map((e) => e.toString()).toList(),
    );

}

