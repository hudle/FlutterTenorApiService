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

abstract class TenorApiService {

  Future<TenorDataResponse> search(TenorSearchRequest tenorRequest);

  Future<TenorCategoryResponse> categories(TenorCategoryRequest categoryRequest);

  Future<SuggestionsResponse> searchSuggestion(TenorSearchSuggestionRequest suggestionRequest);

  Future<SuggestionsResponse> autoComplete(TenorAutoCompleteRequest autoCompleteRequest);

  Future<TenorDataResponse> featured(TenorFeaturedRequest featuredRequest);

  Future<SuggestionsResponse> trendingTerms(TenorTrendingTermsRequest trendingTermsRequest);

  Future<void> registerShare(RegisterShareRequest registerShareRequest);

}