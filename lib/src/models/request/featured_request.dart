import 'package:tenor_api_service/src/ext/map_ext.dart';
import 'package:tenor_api_service/src/models/request/tenor_request.dart';
import 'package:tenor_api_service/src/models/response/tenor_data_response.dart';

///[limit] Optional integer
///Fetch up to the specified number of results.
///The default value is 20, and the maximum value is 50.
///
/// /// @return [TenorDataResponse]
class TenorFeaturedRequest extends TenorRequest {
  int? limit;

  TenorFeaturedRequest({
    required super.key,
    super.clientKey,
    super.searchFilter,
    super.country,
    super.locale,
    super.mediaFilter,
    super.arRange,
    super.contentFilter,
    super.pos,
    this.limit,
  });

  @override
  Map<String, dynamic> toJson() {
    return super.toJson()..whenNotNull('limit', limit);
  }
}
