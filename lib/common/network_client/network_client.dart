import 'dart:convert';
import 'package:http/http.dart' as http;

abstract class INetworkClient {
  Future<http.Response> get(String endPoint);
  Future<http.Response> delete(String endPoint);
  Future<http.Response> post(String endPoint, {dynamic data});
}

class NetworkClient implements INetworkClient {
  static const String _kBaseUrl =
      'https://spiceblogserver-production.up.railway.app';

  @override
  Future<http.Response> get(String endPoint) async {
    return http.get(Uri.parse('$_kBaseUrl/$endPoint'));
  }

  @override
  Future<http.Response> delete(String endPoint) async {
    return http.delete(Uri.parse('$_kBaseUrl/$endPoint'));
  }

  @override
  Future<http.Response> post(String endPoint, {dynamic data}) async {
    return http.post(Uri.parse('$_kBaseUrl/$endPoint'), body: jsonEncode(data));
  }
}
