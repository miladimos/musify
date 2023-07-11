import 'package:dio/dio.dart';
import 'package:musify/app/utils/app_constants.dart';

class HttpService {
  late Dio _dio;

  HttpService() {
    _dio = Dio(
      BaseOptions(
        baseUrl: ApiEndpoints.baseUrl,
        // headers: AppConstants.headers,
      ),
    );

    initializeInterceptors();
  }

  Future<Response> getRequest(String path) async {
    late Response response;
    try {
      response = await _dio.get(path);
    } on DioException catch (e) {
      print(e.message);
      throw Exception(e.message);
    } catch (e) {
      print(e.toString());
    }
    return response;
  }

  Future<Response> postRequest({required String path, var data}) async {
    late Response response;
    try {
      response = await _dio.post(path);
    } on DioException catch (e) {
      print(e.message);
      throw Exception(e.message);
    } catch (e) {
      print(e.toString());
    }
    return response;
  }

  initializeInterceptors() {
    _dio.interceptors.add(InterceptorsWrapper(
      onError: (error, handler) {
        print(error.message);
      },
      onRequest: (request, handler) {
        print("${request.method} ${request.path}");
      },
      onResponse: (response, handler) {
        print(response.data);
      },
    ));
  }
}
