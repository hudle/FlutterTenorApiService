import 'package:tenor_api_service/src/ext/map_ext.dart';
import 'package:tenor_api_service/src/models/request/tenor_request.dart';

///[id] string
///The id of a Response Object, Doesn't have a default value.
///[query] <b> Strongly recommended </b> string
///The search string that leads to this share.
///Doesn't have a default value.
///
/// There's no formal response to the Register Share endpoint. Developers can check the HTTPS response code to determine whether they've successfully reached the API.
class RegisterShareRequest extends TenorRequest {
  final String id;
  final String? query;
  RegisterShareRequest({required super.key, required this.id, super.clientKey, super.country, super.locale, this.query});

  @override
  Map<String, dynamic> toJson() {
    return super.toJson()
      ..['id'] = id
      ..whenNotNull('q', query);
  }
}