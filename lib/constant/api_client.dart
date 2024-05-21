import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

class ApiClient {
  String? token;

  ApiClient({this.token});

  Future<http.Response> get(String url) async {
    final headers = {
      'Content-Type': 'application/json',
      if (token != null) 'Authorization': 'Bearer $token',
    };

    return http.get(Uri.parse(url), headers: headers);
  }

  Future<http.Response> post(String url,
      {required Map<String, dynamic> body}) async {
    final headers = {
      'Content-Type': 'application/json',
      if (token != null) 'Authorization': 'Bearer $token',
    };

    return http.post(Uri.parse(url), headers: headers, body: jsonEncode(body));
  }

  Future<http.StreamedResponse> postWithFile(String url,
      {required Map<String, String> body,
      required File file,
      required String pathApi}) async {
    final headers = {
      if (token != null) 'Authorization': 'Bearer $token',
    };

    try {
      var request = http.MultipartRequest('POST', Uri.parse(url));
      request.headers.addAll(headers);

      body.forEach((key, value) {
        request.fields[key] = value;
      });

      var stream = http.ByteStream(file.openRead());
      var length = await file.length();
      var multipartFile = http.MultipartFile(
        pathApi,
        stream,
        length,
        filename: file.path.split('/').last,
      );

      request.files.add(multipartFile);

      return await request.send();
    } catch (e) {
      rethrow;
    }
  }

  Future<http.Response> put(String url,
      {required Map<String, dynamic> body}) async {
    final headers = {
      'Content-Type': 'application/json',
      if (token != null) 'Authorization': 'Bearer $token',
    };

    return http.put(Uri.parse(url), headers: headers, body: jsonEncode(body));
  }

  Future<http.Response> delete(String url) async {
    final headers = {
      'Content-Type': 'application/json',
      if (token != null) 'Authorization': 'Bearer $token',
    };

    return http.delete(Uri.parse(url), headers: headers);
  }

  Future<http.Response> logout(String url) async {
    final headers = {
      'Content-Type': 'application/json',
      if (token != null) 'Authorization': 'Bearer $token',
    };

    return http.post(Uri.parse(url), headers: headers);
  }
}