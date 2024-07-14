import 'dart:convert';

import 'package:http/http.dart' as http;

class Api {
  Future<dynamic> get({required String url,dynamic token}) async {
    
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll({'Autherization': 'Bearer $token'});
    }
    http.Response response =await http.get(Uri.parse(url),headers: headers);
    List<dynamic> data = jsonDecode(response.body);
    if (response.statusCode == 200) {
      return data;
    } else {
      throw Exception(
          "There is a problem with Status Code ${response.statusCode}");
    }
  }

  Future<dynamic> post({required String url,required dynamic body, dynamic token}) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll({'Autherization': 'Bearer $token'});
    }
    http.Response response =
        await http.post(Uri.parse(url), body: body, headers: headers);
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      return data;
    }
    else {
      throw Exception("There is a problem with Status Code ${response.statusCode}");
    }
  }
  Future<dynamic> put({required String url,required dynamic body,dynamic token }) async{
    http.Response response = await http.post(Uri.parse(url));
    Map<String,String>headers={};
    headers.addAll({'Content-Type':'application/x-www-form-urlencoded'});
    if(token!=null)
    {
      headers.addAll({'Autherization':'Bearer $token'});
    }
    if(response.statusCode==200)
    {
    Map<String,dynamic> data=jsonDecode(response.body);
    return data;
    }
    else {
      throw Exception("There is a problem with Status Code ${response.statusCode}");
    }
  }
}


















