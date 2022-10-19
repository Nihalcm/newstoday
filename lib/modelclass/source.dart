import 'package:flutter/material.dart';
class Source
{
  final String name;
  const Source({
    required this.name
});
  factory Source.fromJson(Map<String,dynamic>json){
    return Source(name: json['name']);
  }
}