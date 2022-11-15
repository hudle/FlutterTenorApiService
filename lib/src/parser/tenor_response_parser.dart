import 'package:tenor_api_service/src/models/response/suggestions_response.dart';
import 'package:tenor_api_service/src/models/response/tenor_category_object.dart';
import 'package:tenor_api_service/src/models/response/tenor_data_response.dart';

class TenorResponseParser<T> {

  T? parse(dynamic response) {
    T? t;

    if (response is Map<String, dynamic>) {
      if (T == TenorDataResponse) {
        final data = TenorDataResponse.fromJson(response);
        t = data as T;
      }

      if (T == TenorCategoryResponse) {
        final data = TenorCategoryResponse.fromJson(response);
        t = data as T;
      }

      if (T == SuggestionsResponse) {
        final data = SuggestionsResponse.fromJson(response);
        t = data as T;
      }
    }

    return t;
  }

}