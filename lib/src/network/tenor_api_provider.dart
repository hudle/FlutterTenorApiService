import 'package:tenor_api_service/src/models/request/auto_complete_request.dart';
import 'package:tenor_api_service/src/models/request/category_request.dart';
import 'package:tenor_api_service/src/models/request/featured_request.dart';
import 'package:tenor_api_service/src/models/request/register_share_request.dart';
import 'package:tenor_api_service/src/models/request/search_request.dart';
import 'package:tenor_api_service/src/models/request/search_suggestion_request.dart';
import 'package:tenor_api_service/src/models/request/trending_term_request.dart';
import 'package:tenor_api_service/src/models/response/suggestions_response.dart';
import 'package:tenor_api_service/src/models/response/tenor_category_object.dart';
import 'package:tenor_api_service/src/models/response/tenor_data_response.dart';
import 'package:tenor_api_service/src/network/api_service.dart';
import 'package:tenor_api_service/src/network/client/dio_client.dart';
import 'package:tenor_api_service/src/network/endpoints.dart';

class TenorApiProvider extends DioClient implements TenorApiService {

  @override
  String injectBaseUrl() {
    return kBaseUrl;
  }

  @override
  Future<TenorDataResponse> search(TenorSearchRequest tenorRequest) async {
    return dio.get(Endpoints.search.endpoints, queryParameters: tenorRequest.toJson()).execute();
  }

  @override
  Future<TenorCategoryResponse> categories(TenorCategoryRequest categoryRequest) {
    return dio.get(Endpoints.categories.endpoints, queryParameters: categoryRequest.toJson()).execute();
  }

  @override
  Future<SuggestionsResponse> autoComplete(TenorAutoCompleteRequest autoCompleteRequest) {
    return dio.get(Endpoints.autoComplete.endpoints, queryParameters: autoCompleteRequest.toJson()).execute();
  }

  @override
  Future<TenorDataResponse> featured(TenorFeaturedRequest featuredRequest) {
    return dio.get(Endpoints.featured.endpoints, queryParameters: featuredRequest.toJson()).execute();
  }

  @override
  Future<void> registerShare(RegisterShareRequest registerShareRequest) {
    return dio.get(Endpoints.registerShare.endpoints, queryParameters: registerShareRequest.toJson()).execute();
  }

  @override
  Future<SuggestionsResponse> searchSuggestion(TenorSearchSuggestionRequest suggestionRequest) {
    return dio.get(Endpoints.searchSuggestions.endpoints, queryParameters: suggestionRequest.toJson()).execute();
  }

  @override
  Future<SuggestionsResponse> trendingTerms(TenorTrendingTermsRequest trendingTermsRequest) {
    return dio.get(Endpoints.tendingTerms.endpoints, queryParameters: trendingTermsRequest.toJson()).execute();
  }

}