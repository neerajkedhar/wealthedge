import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:wealthedge/data/fetchNews.dart';
import 'package:wealthedge/widgets/widgets.dart';

class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
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

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff212121),
      child: FutureBuilder(
          future: getHttp(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: Text('Please wait its loading...'));
            } else {
              if (snapshot.hasError)
                return Center(child: Text('Error: ${snapshot.error}'));
              else
                return ListView.builder(
                    // physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: newsList.length,
                    itemBuilder: (context, index) {
                      return anotherNews(context, newsList, index);
                    });
            }
          }),
    );
  }
}
