import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:wealthedge/data/fetchNews.dart';
import 'package:wealthedge/widgets/widgets.dart';

class IPOs extends StatefulWidget {
  const IPOs({Key? key}) : super(key: key);

  @override
  _IPOsState createState() => _IPOsState();
}

class _IPOsState extends State<IPOs> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff212121),
      child: SingleChildScrollView(
        child: FutureBuilder(
            future: getFromIPONewsFireStore(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: Text('Please wait its loading...'));
              } else {
                if (snapshot.hasError)
                  return Center(child: Text('Error: ${snapshot.error}'));
                else
                  return ListView.builder(
                      shrinkWrap: true,
                      itemCount: iposNewsList.length,
                      itemBuilder: (context, index) {
                        return ipowidget(iposNewsList, index, context);
                      });
              }
            }),
      ),
    );
  }
}

var iposNewsList;

FirebaseFirestore? _instance;
Future getFromIPONewsFireStore() async {
  _instance = FirebaseFirestore.instance;
  CollectionReference categories = _instance!.collection("ipos");
  DocumentSnapshot snapshot = await categories.doc("listed").get();
  var data = snapshot.data() as Map;
  iposNewsList = data.values.toList();

  return iposNewsList;
}
