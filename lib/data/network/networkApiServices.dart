import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:bloc_practice/data/exceptions/app_exceptions.dart';

import 'baseApiServices.dart';
import 'package:http/http.dart' as http;

class Networkapiservices implements BaseApiServices {
  @override
  Future<dynamic> getApi(String url) async {
    dynamic Jsonresponse;
    try {
      final response = await http.get(Uri.parse(url)).timeout(Duration(seconds: 20));
      return Jsonresponse = returnResponse(response);
    } on SocketException {
      throw InternetException();
    } on TimeoutException{
      throw RequestTimeoutException();
    }
    return Jsonresponse;
  }

  @override
  Future<dynamic> postApi(String url,var data)async{
    dynamic Jsonresponse;
    try {
      final response = await http.post(Uri.parse(url),body: data).timeout(Duration(seconds: 20));
      return Jsonresponse = returnResponse(response);
    } on SocketException {
      throw InternetException();
    } on TimeoutException{
      throw RequestTimeoutException();
    }
    return Jsonresponse;
  }

dynamic returnResponse(http.Response response){
    switch(response){
      case 200:
        dynamic Jsonresponse = jsonDecode(response.body);
        return Jsonresponse;
      case 500:
        throw InternetException();
    }

}
}
