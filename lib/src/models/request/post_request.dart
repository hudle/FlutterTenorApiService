import 'package:tenor_api_service/src/ext/map_ext.dart';
import 'package:tenor_api_service/src/models/request/tenor_request.dart';
import 'package:tenor_api_service/src/models/response/tenor_data_response.dart';

///[ids] Required string
///A comma-separated list of Response [TenorDataResponse] Object IDs.
///Doesn't have a default value, and the maximum value is 50.
///[limit] Optional integer
///Fetch up to the specified number of results.
///The default value is 20, and the maximum value is 50.
///
/// @return [TenorDataResponse]
class TenorPostRequest extends TenorRequest {
  final String ids;
  final int? limit;

  TenorPostRequest({
    required super.key,
    required this.ids,
    super.clientKey,
    super.mediaFilter,
    this.limit,
    super.pos,
  });

  @override
  Map<String, dynamic> toJson() {
    return super.toJson()
      ..['ids'] = ids
      ..whenNotNull('limit', limit);
  }
}
