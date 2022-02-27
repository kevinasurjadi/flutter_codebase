import 'package:http/http.dart' as http;

abstract class HttpClientService {
  Future<http.Response> get(
    String endpoint, {
    Map<String, dynamic>? params,
    Map<String, String>? headers,
  });

  Future<http.Response> post(
    String endpoint, {
    Map<String, dynamic>? body,
    Map<String, String>? headers,
  });

  Future<http.Response> put(
    String endpoint, {
    Map<String, dynamic>? body,
    Map<String, String>? headers,
  });

  Future<http.Response> patch(
    String endpoint, {
    Map<String, dynamic>? body,
    Map<String, String>? headers,
  });

  Future<http.Response> delete(
    String endpoint, {
    Map<String, String>? headers,
  });
}

class HttpClientServiceImpl implements HttpClientService {
  final http.Client client;
  final String baseUrl;

  const HttpClientServiceImpl(this.client, this.baseUrl);

  @override
  Future<http.Response> get(
    String endpoint, {
    Map<String, dynamic>? params,
    Map<String, String>? headers,
  }) async {
    return await client.get(
      Uri(host: baseUrl, path: endpoint, queryParameters: params),
      headers: headers,
    );
  }

  @override
  Future<http.Response> post(
    String endpoint, {
    Map<String, dynamic>? body,
    Map<String, String>? headers,
  }) async {
    return await client.post(
      Uri(host: baseUrl, path: endpoint),
      body: body,
      headers: headers,
    );
  }

  @override
  Future<http.Response> put(
    String endpoint, {
    Map<String, dynamic>? body,
    Map<String, String>? headers,
  }) async {
    return await client.put(
      Uri(host: baseUrl, path: endpoint),
      body: body,
      headers: headers,
    );
  }

  @override
  Future<http.Response> patch(
    String endpoint, {
    Map<String, dynamic>? body,
    Map<String, String>? headers,
  }) async {
    return await client.patch(
      Uri(host: baseUrl, path: endpoint),
      body: body,
      headers: headers,
    );
  }

  @override
  Future<http.Response> delete(
    String endpoint, {
    Map<String, String>? headers,
  }) async {
    return await client.delete(
      Uri(host: baseUrl, path: endpoint),
      headers: headers,
    );
  }
}
