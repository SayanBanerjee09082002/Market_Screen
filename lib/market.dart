import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Market extends StatefulWidget {
  @override
  _Market createState() => _Market();
}

class _Market extends State<Market> {
  var _controller = TextEditingController();

  final color = [
    Color.fromARGB(255, 5, 255, 180),
    Color.fromARGB(255, 237, 39, 55)
  ];

  final icon = [
    Icon(
      Icons.call_made,
      size: 8,
      color: Colors.green,
    ),
    Icon(
      Icons.call_received,
      size: 8,
      color: Colors.red,
    ),
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    Widget Profile() {
      return IconButton(
        onPressed: null,
        icon: Icon(
          Icons.woman_outlined,
          color: Colors.white,
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'MARKET',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            fontFamily: 'Montserrat',
          ),
        ),
        actions: [Profile()],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: 110,
              height: 66,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      'Balance',
                      style: TextStyle(
                          color: Color.fromARGB(255, 209, 194, 194),
                          fontSize: 15,
                          fontFamily: 'Inter'),
                    ),
                  ),
                  Text('\$2000',
                      style: TextStyle(fontSize: 30, fontFamily: 'Inter'))
                ],
              ),
            ),
            Container(
              height: 36,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                  ),
                  BoxShadow(
                    color: Colors.black,
                    spreadRadius: -12.0,
                    blurRadius: 12.0,
                  ),
                ],
              ),
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 10.0),
                child: TextFormField(
                  style: TextStyle(color: Colors.black),
                  controller: _controller,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search',
                    hintStyle: TextStyle(color: Colors.grey),
                    icon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    suffixIcon: IconButton(
                      onPressed: _controller.clear,
                      icon: Icon(
                        Icons.cancel_rounded,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 149,
              height: 30,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  'Popular Currencies',
                  style: TextStyle(
                      color: Color.fromARGB(255, 209, 194, 194),
                      fontSize: 15,
                      fontFamily: 'Inter'),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      final cardcolor = color[index % color.length];
                      final cardicon = icon[index % color.length];
                      index = index + 1;
                      return Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          color: cardcolor,
                          child: ListTile(
                              horizontalTitleGap: 0,
                              leading: Icon(Icons.home, color: Colors.black),
                              trailing: Container(
                                width: 100,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text('\$7639.98',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            fontFamily: 'Inter')),
                                    Container(
                                      width: 37,
                                      height: 18,
                                      padding: EdgeInsets.all(3.0),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(
                                                  5.0) //                 <--- border radius here
                                              ),
                                          border:
                                              Border.all(color: Colors.black)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          cardicon,
                                          Text(
                                            '0.11%',
                                            style: TextStyle(
                                                fontSize: 8,
                                                color: Colors.black,
                                                fontFamily: 'Inter'),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              title: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("BTC/BUSD",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontFamily: 'Inter')),
                                  Row(
                                    children: [
                                      Text(
                                        'Bitcoin',
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.black,
                                            fontFamily: 'Inter'),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(
                                        Icons.remove_red_eye,
                                        size: 15,
                                        color: Colors.black,
                                      ),
                                    ],
                                  )
                                ],
                              )));
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
