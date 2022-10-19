import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../modelclass/news.dart';

class ApiService
{
  Future<List<News>> fetchNews() async{
    final response =await http.get(Uri.parse('https://newsapi.org/v2/everything?q=tesla&from=2022-09-18&sortBy=publishedAt&apiKey=f930d75d0a334919bcab9860e2062505'));

    if (response.statusCode==200)
      {
        var body=json.decode(response.body);

        List<News> _data=List<News>.from(body['articles'].map((e)=>News.fromJson(e)).toList());
        return _data;
      }
    else
      {
        List<News> _data=[];
        return _data;
      }
  }
}