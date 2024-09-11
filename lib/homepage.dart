import 'package:blog_app/AddBlog.dart';
import 'package:blog_app/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        SystemNavigator.pop();
        return true;
      },
      child: Scaffold(
        backgroundColor: Colors.teal[300],
        appBar: AppBar(
          automaticallyImplyLeading: false,
          shadowColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Developer',
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Blogs',
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
            ],
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: InkWell(
                onTap: () {
                  auth.signOut().then((value) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Loginscreen()));
                  });
                },
                child: Icon(Icons.logout_outlined),
              ),
            ),
          ],
          centerTitle: true,
          backgroundColor: Colors.black87,
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: 30,
            ),
            Center(
              child: Card(
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'AI is changing the world',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.amberAccent,
                          fontSize: 20),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Image.network(
                      './assets/images/ai.png',
                      height: 300,
                      width: 600,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Author : Omkar',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.amberAccent,
                          letterSpacing: 2),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 73,
                      width: 500,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Text(
                          'Machine learning (ML) isnt new. However, the field of big data is revitalizing the subject and more organizations are relying on ML models to scale their operations, support staff in working better and faster, to uncover hidden insights from data, or even confirm and challenge underlying assumptions. This is creating widespread interest in related topics with the C-suite, and across business lines and job roles, as enterprises embrace the value of artificial intelligence (AI) and ML. To make a disruptive organizational impact, AI and ML need to be understood and trusted. By consulting these ML blogs from authoritative individuals and organizations that satisfy different skill levels, readers can increase their understanding and comfort level in these areas, get pressing questions answered, and connect with others who have experience using them to great benefit.',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Climbing High On Mount Everest',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.amberAccent,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image.network(
                    './assets/images/mt.jpg',
                    height: 300,
                    width: 600,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Author : Ion Taylor Trekking',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.amberAccent,
                        letterSpacing: 2),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 73,
                    width: 500,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Text(
                        'In I am sitting in my tent at 7,950 meters/ 26,082 feet, high on Mount Everest.  Someone comes into our tent with bad news. A Swiss climber has died in the next tent to us.  We would also have to step over a body at the Balcony at 8,400 meters/ 27,559 feet.  Sitting here, preparing to enter the higher realm of the Death Zone on Mount Everest.  I was faced with the fact that two fellow climbers had died.  One of which I may have to actually step over at some stage climbing high on Mount Everest.',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Helpful Guidelines for Char Dham Yatra',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.amberAccent,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image.network(
                    './assets/images/temple.jpg',
                    height: 300,
                    width: 600,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Author : https://chardhamyatratrip.wordpress.com/',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.amberAccent,
                        letterSpacing: 2),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 73,
                    width: 500,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Text(
                        'A journey of four holy rivers of India, namely Ganga, Yamuna, Mandakini, and Alaknanda, is an experience you don’t want to miss. It is a trip, taking you to the four prominent holy destinations and is an unforgettable experience for all the devotees. Chota Char Dham is a spiritual tour of four pilgrimage sites in India, namely Yamunotri, Gangotri, Kedarnath, and Badrinath, all present in Uttarakhand. Hindus believe that everybody must visit these places during their lifetime.',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ]),
        ),
        floatingActionButton: Container(
          padding: EdgeInsets.symmetric(vertical: 25),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FloatingActionButton(
                  backgroundColor: Colors.black,
                  hoverColor: Colors.teal[300],
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AddBlog()));
                  },
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
