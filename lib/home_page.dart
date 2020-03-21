import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app/detail_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.donut_large),
                  Stack(
                    children: <Widget>[
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          image: DecorationImage(
                            image: AssetImage('assets/avatar.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 40.0,
                        left: 5.0,
                        child: Container(
                          height: 10.0,
                          width: 10.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              color: Colors.green,
                              border: Border.all(
                                color: Colors.white,
                                style: BorderStyle.solid,
                                width: 1.0,
                              )),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Where',
                    style: TextStyle(
                        fontFamily: 'Opensans',
                        fontSize: 40,
                        color: Color(0xFFFD6F4F)),
                  ),
                  Text(
                    'will you go',
                    style: TextStyle(
                      fontFamily: 'Opensans',
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    'today',
                    style: TextStyle(
                      fontFamily: 'Opensans',
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                padding: EdgeInsets.all(6.0),
                height: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.blue.withOpacity(0.3),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey.withOpacity(0.7),
                    ),
                    hintText: 'What would you lilke to discover?',
                    hintStyle: TextStyle(
                      fontFamily: 'Opensans',
                      fontSize: 15.0,
                      color: Colors.grey.withOpacity(0.7),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Most Popular',
                    style: TextStyle(
                      fontFamily: 'Opensans',
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(Icons.more_horiz),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Container(
                height: 250.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    _buildListViewItem(context, 'assets/mountain.jpg', 4.1,
                        'Pamir Mountains', 'China'),
                    _buildListViewItem(context, 'assets/kathmandu.jpg', 3.8,
                        'Pamir Mountains', 'China'),
                    _buildListViewItem(context, 'assets/fishing.jpg', 5.9,
                        'Pamir Mountains', 'China'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListViewItem(BuildContext context, String imgPath,
      double numStar, String name, String country) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => DetailPage()));
        },
        child: Stack(
          children: <Widget>[
            Container(
              height: 250.0,
              width: 200.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imgPath),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            Container(
              height: 250.0,
              width: 200.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.black.withOpacity(0.4),
              ),
            ),
            Positioned(
              top: 10.0,
              left: 10.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: 40.0,
                    width: 60.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40.0),
                      color: Colors.blue.withOpacity(0.3),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          color: Colors.white,
                          size: 14.0,
                        ),
                        SizedBox(
                          width: 3.0,
                        ),
                        Text(
                          numStar.toString(),
                          style: TextStyle(
                              fontFamily: 'Opensans',
                              fontSize: 13.0,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 70.0,
                  ),
                  Container(
                    height: 40.0,
                    width: 60.0,
                    child: Row(
                      children: <Widget>[
                        Text(
                          'More',
                          style: TextStyle(
                              fontFamily: 'Opensans',
                              fontSize: 13.0,
                              color: Colors.white),
                        ),
                        Icon(
                          Icons.arrow_downward,
                          color: Colors.white,
                          size: 14.0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 130.0,
              left: 10.0,
              child: Container(
                child: Text(
                  '$name,${'\n'}$country',
                  style: TextStyle(
                      fontFamily: 'Opensans',
                      fontSize: 20.0,
                      color: Colors.white),
                ),
              ),
            ),
            Positioned(
              top: 200.0,
              left: 10.0,
              child: Container(
                child: Text(
                  'I was here',
                  style: TextStyle(
                      fontFamily: 'Opensans',
                      fontSize: 12.0,
                      color: Colors.white),
                ),
              ),
            ),
            Positioned(
              top: 185.0,
              left: 80.0,
              child: Container(
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.0),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/avatar.jpg'),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 185.0,
              left: 110.0,
              child: Container(
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40.0),
                ),
                child: Center(
                  child: Text(
                    '+17...',
                    style: TextStyle(
                      fontFamily: 'Opensans',
                      fontSize: 8.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
