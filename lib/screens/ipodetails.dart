import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wealthedge/screens/newsopen.dart';

class IPODetails extends StatefulWidget {
  IPODetails(this.ipo, {Key? key}) : super(key: key);
  var ipo;

  @override
  _IPODetailsState createState() => _IPODetailsState();
}

class _IPODetailsState extends State<IPODetails> {
  void _launchURL(_url) async => await canLaunch(_url)
      ? await launch(_url)
      : throw 'Could not launch $_url';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.ipo['ipo-details']['company-name']}"),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xff212121),
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "About Company:",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("${widget.ipo['about-company']}"),
                ),
                SizedBox(height: 25),
                Text(
                  "IPO Details:",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Bidding Date"),
                              Text(
                                  "${widget.ipo['ipo-details']['bidding-dates']}")
                            ]),
                        SizedBox(height: 10),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Allotment Date"),
                              Text(
                                  "${widget.ipo['ipo-details']['allotment-date']}")
                            ]),
                        SizedBox(height: 10),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Listing Date"),
                              Text(
                                  "${widget.ipo['ipo-details']['listing-date']}")
                            ]),
                        SizedBox(height: 10),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Issue Price"),
                              Text(
                                  "${widget.ipo['ipo-details']['issue-price']}")
                            ]),
                        SizedBox(height: 10),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Issue Size"),
                              Text("${widget.ipo['ipo-details']['issue-size']}")
                            ]),
                        SizedBox(height: 10),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Market Lot"),
                              Text("${widget.ipo['ipo-details']['market-lot']}")
                            ]),
                        SizedBox(height: 10),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Minimum Amount"),
                              Text("${widget.ipo['ipo-details']['min-amount']}")
                            ]),
                        SizedBox(height: 10),
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => NewsOpen(
                                        "${widget.ipo['ipo-details']['rhp']}")),
                              );
                            },
                            child: Text("RHP",
                                style: TextStyle(color: Colors.blueAccent))),
                        SizedBox(height: 10),
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => NewsOpen(
                                        "${widget.ipo['ipo-details']['drhp']}")),
                              );
                            },
                            child: Text("DRHP",
                                style: TextStyle(color: Colors.blueAccent))),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Text("GMP",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Gray Market Premium"),
                        widget.ipo['gmp']['positive']
                            ? Text(
                                "${widget.ipo['gmp']['price']}",
                                style: TextStyle(color: Colors.green),
                              )
                            : Text(
                                "${widget.ipo['gmp']['price']}",
                                style: TextStyle(color: Colors.red),
                              )
                      ]),
                ),
                SizedBox(height: 25),
                Text("Pros and Cons",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Pros:"),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("${widget.ipo['prosandcons']['pros']}"),
                          ),
                          Text("Cons:"),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("${widget.ipo['prosandcons']['cons']}"),
                          ),
                        ]),
                  ),
                ),
                Text("Desclaimer",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        "No financial information whatsoever published anywhere, within this application, should be considered as advice to buy or sell securities or invest in IPOs, or as a guide to doing so in any way whatsoever. All matter published here is purely for educational and information purposes only and under no circumstances should be used for making investment decisions. We are not SEBI Registered analysts. Readers must consult a qualified financial advisor prior to making any actual investment decisions, based on information published on this application. The information in the App is based on information available as of date coupled with market perceptions. \n\n YOUR USE OF THE APP AND YOUR RELIANCE ON ANY INFORMATION ON THE APP IS SOLELY AT YOUR OWN RISK. \n\nyou agree with the Terms and Conditions to use this Application."))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
