<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

Tenor Api Service Using Dio (v2 version). 

Tenor takes a data-centric approach to deliver relevant GIF searches in over 45 languages worldwide. Integrate Tenor GIF search into your application in a matter of minutes.

## Getting started

[Click here](https://developers.google.com/tenor/guides/quickstart) to generated API KEY

Add Dependency to Flutter
```yaml
dependencies:
  git:
    url: https://github.com/hudle/FlutterTenorApiService
    ref: main
```

## Usage

[See Docs:](https://developers.google.com/tenor/guides/endpoints)

Create ApiService 
```dart
const TenorApiService service = TenorApiProvider();
```
### Search
e.g.
```dart
TenorDataResponse response = await service.search(TenorSearchRequest(key: key, query: 'meme', limit: 2, mediaFilter: 'gif, tinygif', locale: 'en', clientKey: 'my_app', searchFilter: 'static',));
```


## Additional information

See Gif Picker also [Click here](https://github.com/hudle/FlutterTenorApiService)
