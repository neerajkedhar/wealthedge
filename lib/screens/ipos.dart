import 'package:flutter/material.dart';
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
        child: ipowidget(context),
      ),
    );
  }
}
