import 'package:getx_api/data/network/network_api_services.dart';
import 'package:getx_api/res/app_url/app_url.dart';

class LoginRepository {
  final _apiServices = NetworkApiServices();

  Future<dynamic> loginApi(var data) async {
    //print(AppUrl.loginApi);
    dynamic response = await _apiServices.postApi(data, AppUrl.loginApi);
    return response;
  }
}
