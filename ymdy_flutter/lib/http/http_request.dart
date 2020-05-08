import 'package:dio/dio.dart';
import 'package:package_info/package_info.dart';

class YMHttpRequest {
  static final Dio dio = Dio();

  static Future<T> request<T>(String url,
      {String method = "get", Map<String, dynamic> params}) async {
    // 1.创建单独配置
    final options = Options(method: method);

    // 2.发送网络请求
    try {
      PackageInfo packageInfo = await PackageInfo.fromPlatform();
      var version = packageInfo.version;
      if (params != null)
        params.addAll({"app": "ymdy", "store": "ymdy", "version": version});
      else
        params = {"app": "ymdy", "store": "ymdy", "version": version};
      Response response =
          await dio.request(url, queryParameters: params, options: options);
      return response.data;
    } on DioError catch (e) {
      return Future.error(e);
    }
  }
}
