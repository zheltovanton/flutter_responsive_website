import 'dart:io';

import 'package:dio/dio.dart';

class FeedbackSend {
  Future send(String text) async {
    var dio = Dio();
    String API_TELEGRAM = "xdev";
    String CHAT = "-12345";

    String url = "https://tlgr.org/chat.php?key=" +
        API_TELEGRAM +
        "&chat=" +
        CHAT +
        "&text=" +
        text;

    print(url);
    try {
      var response = await dio.get(url,
          options: Options(
              headers: {HttpHeaders.contentTypeHeader: ContentType.json}));
      } catch (e) {
      print(e);
    }
  }
}