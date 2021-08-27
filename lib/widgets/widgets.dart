import 'package:flutter/material.dart';
import 'package:wealthedge/screens/newsopen.dart';

Widget anotherNews(
  context,
  newsList,
  index,
) {
  var source = newsList[index]['source']['name'] ?? "Unavailable";
  var title = newsList[index]['title'] ?? "Unavailable";
  //var description = iposNewsList[index]['description'];
  var urlToImage = newsList[index]['urlToImage'] ??
      "https://cdn.business2community.com/wp-content/uploads/2017/08/blank-profile-picture-973460_640.png";
  var url = newsList[index]['url'] ?? null;
  return Container(
    width: MediaQuery.of(context).size.width - 10,
    child: GestureDetector(
      onTap: () {
        url != null
            ? Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NewsOpen(url)),
              )
            : print("");
      },
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Container(
                height: 80,
                width: 80,
                // borderRadius: BorderRadius.circular(8.0),
                child: FittedBox(
                  fit: BoxFit.fill,
                  child: Image.network(
                    urlToImage,
                  ),
                ),
              ),
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Expanded(
                      child: Text(
                        title,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                    child: Expanded(
                      child: Text(
                        source,
                        style: TextStyle(fontSize: 12, color: Colors.grey[400]),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}

Widget ipowidget(context) {
  return GestureDetector(
    onTap: () {},
    child: Container(
      height: 150,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey[850],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network(
                "https://cdn.business2community.com/wp-content/uploads/2017/08/blank-profile-picture-973460_640.png",
                width: 110,
                height: 110,
              ),
              //SizedBox(width: 10),
              Container(
                // color: Colors.blue,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(5, 15, 20, 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Company Name",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 190,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Text("Bidding dates",
                                      style: TextStyle(
                                        fontSize: 10,
                                      )),
                                  SizedBox(height: 10),
                                  Text("12 -15 Aug 2021",
                                      style: TextStyle(
                                        fontSize: 10,
                                      ))
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Text(
                                    "issue price",
                                    style: TextStyle(
                                      fontSize: 10,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "1234",
                                    style: TextStyle(
                                      fontSize: 10,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Text(
                                    "issue price",
                                    style: TextStyle(
                                      fontSize: 10,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "1234",
                                    style: TextStyle(
                                      fontSize: 10,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}
