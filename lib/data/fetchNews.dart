import 'package:dio/dio.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class GetNews {
  var newsList;
  Future getHttp() async {
    try {
      var moneyresponse = await Dio().get(
          'https://newsapi.org/v2/top-headlines?country=in&category=business&apiKey=746a076d37f241f2acf59c8d6920ed75');
      var mcnewsData = moneyresponse.data['articles'];
      newsList = mcnewsData;
      print(newsList);
    } catch (e) {
      print(e);
    }
    // getFromListedIPOFireStore();
  }
}
