import 'package:tenor_api_service/src/ext/map_ext.dart';
import 'package:tenor_api_service/src/models/response/tenor_category_object.dart';

import 'tenor_request.dart';

///[type] <b> Strongly recommended </b>
///Determines the type of categories returned.
///The default value is <b>featured</b>. The accepted values are <b>featured</b> and <b>trending</b>.
///
/// @return [TenorCategoryResponse]
class TenorCategoryRequest extends TenorRequest {
  final String? type;

  TenorCategoryRequest({
    required super.key,
    super.clientKey,
    super.country,
    super.locale,
    this.type,
    super.contentFilter,
  });

  @override
  Map<String, dynamic> toJson() {
    return super.toJson()..whenNotNull('type', type);
  }
}
