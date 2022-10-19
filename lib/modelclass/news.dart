import 'package:flutter/material.dart';
import 'package:newstoday/modelclass/source.dart';
class News
{
  final Source? source;
  final String? title;
  final String?urltoimage;
  final String? publisheddate;
  final String? description;

  const News({
    this.source,
    this.urltoimage,
    this.title,
    this.publisheddate,
    this.description

});
  factory News.fromJson(Map<String,dynamic>json){
    return News(source: Source.fromJson(json['source']),
    title: json['title'],
    urltoimage: json['urlToImage']
    ,publisheddate: json['publishedAt']);
  }
}