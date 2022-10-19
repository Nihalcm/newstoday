import 'package:flutter/material.dart';
import 'package:newstoday/modelclass/source.dart';
class News
{
  final Source? source;
  final String? title;
  final String?urltoimage;

  const News({
    this.source,
    this.urltoimage,
    this.title

})
}