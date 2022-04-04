import 'dart:convert';

import 'package:http/http.dart';
import 'package:pdp_online/posts.dart';

class NetworkData{
  static String backend = 'dummy.restapiexample.com';
  static Map<String,String> header = {
    'Context-Type':'application/json; charset=UTF-8'
  };

  /// HTTP API
  static String apiGet = '/api/v1/employees';
  static String apiGetId = '/api/v1/employees/';
  static String apiPost = '/api/v1/create';
  static String apiPut = '/api/v1/update/';  // id
  static String apiDelete = '/api/v1/delete/';  // id

  /***************************  GET, PUT, POST, DELL  ********************/
  /// GET = Ma'lumot olish
static Future<String?> httpGet(String api,Map<String,String>params) async{
  Uri uri = Uri.http('dummy.restapiexample.com', api,params);
  Response response = await get(uri,headers: header);
  if(response.statusCode == 200){
    return response.body;
  }
  return 'no data';
}
  /// POST = Yangi ma'lumot jo'natish
  static Future<String> httpPost(String api,Map<String,String>params) async{
    Uri uri = Uri.http(backend, api);
    Response response = await post(uri,headers: header,body: jsonEncode(params));
    if(response.statusCode == 200 || response.statusCode == 201){
      return response.body;
    }
    return 'no data';
  }
  /// PUT = Ma'lumot o'zgartirish
  static Future<String?> httpPut(String api,Map<String,String>params) async{
    Uri uri = Uri.http(backend, api);
    Response response = await put(uri,headers: header,body: jsonEncode(params));
    if(response.statusCode == 200){
      return response.body;
    }
    return response.reasonPhrase;
  }

  /// DELETE = Ma'lumot o'chirish
  static Future<String?> httpDel(String api,Map<String,String>params) async{
    Uri uri = Uri.http(backend, api,params);
    Response response = await delete(uri,headers: header);
    if(response.statusCode == 200){
      return response.body;
    }
    return null;
  }
/*******************************  parameters  *****************************/

  /// HTTP GET params
  static Map<String,String> paramsEmpty(){
    Map<String,String> params = {};
    return params;
  }
  /// HTTP POST params
  static Map<String,String> paramsCreate(Post post){
    Map<String,String> params = {};
    params.addAll({
      'name':post.name,
      'salary':post.salary.toString(),
      'age':post.age.toString()
    });
    return params;
  }
  /// HTTP PUT params
  static Map<String,String> paramsUpdate(Post post){
    Map<String,String> params = {};
    params.addAll({
      'id':post.id.toString(),
      'title':post.name,
      'body':post.salary.toString(),
      'userId':post.age.toString()
    });
    return params;
  }

}