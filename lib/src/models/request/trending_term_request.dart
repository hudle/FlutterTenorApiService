import 'package:tenor_api_service/src/ext/map_ext.dart';
import 'package:tenor_api_service/src/models/request/tenor_request.dart';
import 'package:tenor_api_service/src/models/response/suggestions_response.dart';

///[limit] Optional integer
///Fetch up to the specified number of results.
///The default value is 20, and the maximum value is 50.
///@return [SuggestionsResponse]
class TenorTrendingTermsRequest extends TenorRequest {
  final int? limit;

  TenorTrendingTermsRequest({
    required super.key,
    super.clientKey,
    super.country,
    super.locale,
    this.limit,
  });

  @override
  Map<String, dynamic> toJson() {
    return super.toJson()..whenNotNull('limit', limit);
  }
}
