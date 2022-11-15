import 'package:tenor_api_service/src/ext/map_ext.dart';
import 'package:tenor_api_service/src/models/request/enum.dart';

///See Docs: [https://developers.google.com/tenor/guides/endpoints]

///[key] string API key for privileged access, Doesn't have a default value.
///[clientKey] <b> Strongly recommended </b>
///string
///A client-specified string that represents the integration.
///A client key lets you use the same API key across different integrations but still be able to differentiate them.
///
/// For an app integration, use the same client_key value for all API calls.
///
/// Any client custom behavior is triggered by the pairing of the key and client_key parameters.
///
/// Doesn't have a default value.
/// [locale] <b> Strongly recommended </b>
/// string (xx_YY)
///
/// Specify the default language to interpret the search string. xx is the language's ISO 639-1 language code, while the optional _YY value is the two-letter ISO 3166-1 country code.
///
/// You can use the country code that you provide in locale to differentiate between dialects of the given language.
///
/// The default value is en_US.
/// [mediaFilter] <b> Strongly recommended </b>
/// Comma-separated list of GIF formats to filter the [TenorDataResponse] Objects. By default, media_filter returns all formats for each Response Object.
///
/// Example: media_filter=gif,tinygif,mp4,tinymp4
///
/// Doesn't have a default value.
/// [searchFilter] <b> Optional </b>
/// string
//
/// Comma-separated list of non-GIF content types to filter the [TenorDataResponse] Objects. By default, searchfilter returns GIF content only.
//
/// Doesn't have a default value. The accepted values are sticker, static, and -static:
//
/// searchfilter=sticker returns both static and animated sticker content.
/// searchfilter=sticker,-static returns only animated sticker content.
/// searchfilter=sticker,static returns only static sticker content.
/// For GIF content, either leave searchfilter blank or don't use it.
/// [country] <b> Strongly recommended </b>
/// string (YY)
///
/// Specify the country of origin for the request. To do so, provide its two-letter ISO 3166-1 country code.
///
/// The default value is US.
/// [contentFilter] <b> Strongly recommended </b>
/// enum [ContentFilter]
///
/// Specify the content safety filter level.
///
/// The default value is off. The accepted values are off, low, medium, and high.
///[arRange] <b> Strongly recommended </b>
///Filter the [TenorDataResponse] Objects to only include GIFs with aspect ratios that fit within the selected range.
///
/// The default value is all. The accepted values are all, wide, and standard:
///
/// all: No constraints
/// wide: 0.42 <= aspect ratio <= 2.36
/// standard: 0.56 <= aspect ratio <= 1.78
/// [pos] Optional string
/// /Retrieve results that start at the position "value". Use a non-zero, non-empty value from next, returned by the API response, to get the next set of results. pos isn't an index and might be an integer, float, or string.
/// Doesn't have a default value.
abstract class TenorRequest {
  final String key;
  final String? clientKey;
  final String? locale;
  final String? mediaFilter;
  final String? searchFilter;
  final String? country;
  final ContentFilter? contentFilter;
  final String? arRange;
  final String? pos;

  TenorRequest({required this.key, this.clientKey, this.locale, this.mediaFilter, this.searchFilter, this.country, this.contentFilter, this.arRange, this.pos});

  Map<String, dynamic> toJson() {

    final map = <String, dynamic>{
      'key' : key

    };

    map.whenNotNull('client_key', clientKey);
    map.whenNotNull('locale', locale);
    map.whenNotNull('media_filter', mediaFilter);
    map.whenNotNull('searchfilter', searchFilter);
    map.whenNotNull('country', country);
    map.whenNotNull('contentfilter', contentFilter?.contentFilter);
    map.whenNotNull('ar_range', arRange);
    map.whenNotNull('pos', pos);


    return map;
  }
}

