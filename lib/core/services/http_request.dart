import 'package:dio/dio.dart';
import 'package:flutter_app/core/services/service_config.dart';

class HttpRequest {
  static final BaseOptions options = BaseOptions(
      baseUrl: HttpConfig.baseUrl, connectTimeout: HttpConfig.timeOut);

  static final Dio dio = Dio(options);

  static Future<T> request<T>(String url,
      {String method = 'get',
      Map<String, dynamic>? parameters,
      Interceptor? inter}) async {
    final options = Options(method: method);

    // 全局拦截器
    // 创建默认的全局拦截器
    Interceptor dInter = InterceptorsWrapper(onRequest: (options, handler) {
      print("请求拦截");
      handler.next(options);
      // handler.resolve(options);
    }, onResponse: (response, handler) {
      print("响应拦截");
      handler.next(response);
    }, onError: (err, handler) {
      print("错误拦截");
      handler.next(err);
    });
    List<Interceptor> inters = [dInter];
    // 请求单独拦截器
    if (inter != null) {
      inters.add(inter);
    }

    dio.interceptors.addAll(inters);

    try {
      Response response =
          await dio.request(url, queryParameters: parameters, options: options);
      return response.data;
    } on DioError catch (error) {
      return Future.error(error);
    }
  }
}
