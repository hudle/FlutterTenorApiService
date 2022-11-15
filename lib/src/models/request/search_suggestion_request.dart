import 'package:tenor_api_service/src/ext/map_ext.dart';
import 'package:tenor_api_service/src/models/request/tenor_request.dart';
import 'package:tenor_api_service/src/models/response/suggestions_response.dart';

///[query] Required string
///A search string, it doesn't have a default value.
///[limit] Optional integer
///Fetch up to the specified number of results.
///The default value is 20, and the maximum value is 50.
/// /// @return [SuggestionsResponse]
class TenorSearchSuggestionRequest extends TenorRequest {
  final String query;
  final int? limit;

  TenorSearchSuggestionRequest({
    required super.key,
    required this.query,
    super.clientKey,
    super.country,
    super.locale,
    this.limit,
  });

  @override
  Map<String, dynamic> toJson() {
    return super.toJson()
      ..['q'] = query
      ..whenNotNull('limit', limit);
  }
}
