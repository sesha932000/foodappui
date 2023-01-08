import 'package:foodapp/utils/app_constants.dart';
import 'package:get/get.dart';

class ApiClient extends GetConnect implements GetxService {
  late String token;
  final String appBaseUrl;
   
  late Map<String, String> _mainHeaders;

  ApiClient({required this.appBaseUrl}) {
    baseUrl = appBaseUrl; //Getx
    timeout = Duration(seconds: 30); //Getx
    token = AppConstants.TOKEN;
    _mainHeaders = {
      'Content-type': 'application/json;charset=utf-8',
      'Authorization': 'Bearer $token',

      //application/json = we are telling to server this is get request but send me in JSON format
      //charset=UTF-8'  = decoding or encoding  section
      //lot of the time Token type is (Baerer)
    };
  }

  Future<Response> getData(String uri,) async {
    try {
      Response response = await get(uri);
      return response;
    } catch (e) {
      return Response(statusCode: 1, statusText: e.toString());
    }
  }
}
