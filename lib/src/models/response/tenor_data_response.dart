class TenorData {
  final String id;
  final String title;
  final Map<String, MediaFormat> mediaFormats;
  final double created;
  final String contentDescription;
  final String itemUrl;
  final String url;
  final List<String> tags;
  final List<String> flags;
  final bool hasAudio;

  TenorData({
    required this.id,
    required this.title,
    required this.mediaFormats,
    required this.created,
    required this.contentDescription,
    required this.itemUrl,
    required this.url,
    required this.tags,
    required this.flags,
    required this.hasAudio,
  });

  factory TenorData.fromJson(Map<String, dynamic> json) => TenorData(
        id: json['id'],
        title: json['title'],
        mediaFormats: (json['media_formats'] as Map<String, dynamic>).map(
          (key, value) => MapEntry(
            key,
            MediaFormat.fromJson(value),
          ),
        ),
        created: json['created'],
        contentDescription: json['content_description'],
        itemUrl: json['itemurl'],
        url: json['url'],
        tags: (json['tags'] as List<dynamic>).map((e) => e.toString()).toList(),
        flags: (json['flags'] as List<dynamic>).map((e) => e.toString()).toList(),
        hasAudio: json['hasaudio'],
      );
}

class MediaFormat {
  final String url;
  final double duration;
  final String preview;
  final List<int> dims;
  final int size;

  MediaFormat({
    required this.url,
    required this.duration,
    required this.preview,
    required this.dims,
    required this.size,
  });

  factory MediaFormat.fromJson(Map<String, dynamic> json) => MediaFormat(
      url: json['url'],
      duration: double.parse('${json['duration']}'),
      preview: json['preview'],
      dims: (json['dims'] as List<dynamic>).map((e) => int.parse('$e')).toList(),
      size: json['size']);
}

///A position identifier to use with the next API query, through the pos field, to retrieve the next set of results. If there are no further results, next returns an empty string.
class TenorDataResponse {
  final String? locale;
  final List<TenorData> results;
  final String? next;

  TenorDataResponse({
    this.locale,
    required this.results,
    this.next,
  });

  factory TenorDataResponse.fromJson(Map<String, dynamic> json) =>
      TenorDataResponse(
        locale: json['locale'],
        results: (json['results'] as List<dynamic>)
            .map((e) => TenorData.fromJson(e))
            .toList(),
        next: json['next'],
      );
}
