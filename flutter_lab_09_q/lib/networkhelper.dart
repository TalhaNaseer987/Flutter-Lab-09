import 'dart:convert';
// import 'dart:html';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';


class networkhelper{
  final Uri uri;
  networkhelper(this.uri);
  Future getdata() async{
    http.Response res = await http.get(uri);
    if(res.statusCode==200){
      String data=res.body;
      print(jsonDecode(data));
      return jsonDecode(data);
    }
    else{
      print(res.statusCode);
    }
  }
}