import 'package:flutter/material.dart';
import 'package:wealthedge/screens/ipos.dart';
import 'package:wealthedge/screens/news.dart';
import 'package:wealthedge/screens/wealthEdge.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    super.initState();

    _controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("WealthEdge4u"),
        bottom: TabBar(
          labelColor: Colors.blueAccent,
          indicatorColor: Colors.blueAccent,
          controller: _controller,
          unselectedLabelColor: Colors.grey,
          labelStyle: TextStyle(fontWeight: FontWeight.bold),
          tabs: [Tab(text: "News"), Tab(text: "IPOs"), Tab(text: "WealthEdge")],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [News(), IPOs(), WealthEdgeWP()],
      ),
    );
  }
}
