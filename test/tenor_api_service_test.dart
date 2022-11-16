import 'package:flutter_test/flutter_test.dart';
import 'package:tenor_api_service/src/models/request/auto_complete_request.dart';
import 'package:tenor_api_service/src/models/request/category_request.dart';
import 'package:tenor_api_service/src/models/request/featured_request.dart';
import 'package:tenor_api_service/src/models/request/register_share_request.dart';
import 'package:tenor_api_service/src/models/request/search_request.dart';
import 'package:tenor_api_service/src/models/request/search_suggestion_request.dart';
import 'package:tenor_api_service/src/models/request/trending_term_request.dart';
import 'package:tenor_api_service/src/network/api_service.dart';
import 'package:tenor_api_service/src/network/tenor_api_provider.dart';


void main() {
  late TenorApiService apiService;
  const key = 'AIzaSyDRXyttY5JX2_tS8ewP8yALV_u6eYr3nHU';

  setUp(() {
    apiService = TenorApiProvider();
  });
  
  test('Search Api', () async {
    final response = await apiService.search(TenorSearchRequest(key: key, query: 'sports', limit: 3, country: 'IN',));
    expect(true, response.results.isNotEmpty);
  });

  test('Category Api', () async {
    final response = await apiService.categories(TenorCategoryRequest(key: key));
    expect(true, response.tags.isNotEmpty);
  });

  test('Suggestions Api', () async {
    final response = await apiService.searchSuggestion(TenorSearchSuggestionRequest(key: key, query: 'mai'));
    expect(true, response.results.isNotEmpty);
  });

  test('Auto Complete Api', () async {
    final response = await apiService.autoComplete(TenorAutoCompleteRequest(key: key, query: 'mai'));
    expect(true, response.results.isNotEmpty);
  });

  test('Trending Terms Api', () async {
    final response = await apiService.trendingTerms(TenorTrendingTermsRequest(key: key, limit: 10,));
    expect(true, response.results.isNotEmpty);
  });

  test('Featured Api', () async {
    final response = await apiService.featured(TenorFeaturedRequest(key: key, limit: 2,));
    expect(true, response.results.isNotEmpty);
  });

  test('Register Share Api', () async {
    final response = await apiService.registerShare(RegisterShareRequest(key: key, id: '17420918566131897991'));
    expect(true, true);
  });
}
