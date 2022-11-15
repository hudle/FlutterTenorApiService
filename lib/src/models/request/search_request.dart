import 'package:tenor_api_service/src/ext/map_ext.dart';

import 'tenor_request.dart';

///[query] Required string
///A search string, it doesn't have a default value.
///[limit] Optional
///Retrieve results that start at the position "value". Use a non-zero, non-empty value from next, returned by the API response, to get the next set of results. pos isn't an index and might be an integer, float, or string.
///Doesn't have a default value.
///[random] Optional boolean
///Specify whether to randomly order the response. The default value is false, which orders the results by Tenor's relevancy ranking.
///The accepted values are true and false.
///
/// @return [TenorDataResponse]
class TenorSearchRequest extends TenorRequest {
  final String query;
  final int? limit;
  final bool? random;

  TenorSearchRequest({
    required super.key,
    required this.query,
    super.clientKey,
    super.searchFilter,
    super.country,
    super.locale,
    super.contentFilter,
    super.mediaFilter,
    super.arRange,
    this.random,
    this.limit,
    super.pos
  });

  @override
  Map<String, dynamic> toJson() {
    return super.toJson()
      ..['q'] = query
      ..whenNotNull('limit', limit)
      ..whenNotNull('random', random)
    ;
  }
}
