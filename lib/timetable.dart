import 'package:flutter/material.dart';


class Timetable extends StatelessWidget {

 @override
 Widget build(BuildContext context) {
   return DefaultTabController(
     length: 5,
   child: Scaffold(
       backgroundColor: Colors.grey[100],
        body: Stack(
          children: <Widget>[
        Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/TimetableGradient.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    Center(
      child: Container(
        margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 655.0),
        child: Icon(
          Icons.calendar_today, 
            color: Colors.white,
              size: 25.0,
        ),
      ),
      ),
      Container(
        margin: EdgeInsets.fromLTRB(15.0, 120.0, 15.0, 0.0),
      child: Column(
      children: <Widget>[
            Card(
              elevation: 2.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Column(
                  children: <Widget>[
                  Container(
                  height: 350,
                  width: 365,
                ),
                  ],
                ),
              ),
           ],
        ),
      ),
      Container(
        margin: EdgeInsets.fromLTRB(15.0, 500.0, 15.0, 0.0),
      child: Column(
      children: <Widget>[
            Card(
              elevation: 2.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Column(
                  children: <Widget>[
                  Container(
                  height: 150,
                  width: 365,
                ),
                  ],
                ),
              ),
           ],
        ),
      ),
      Container(
          margin: EdgeInsets.fromLTRB(300.0, 485.0, 50.0, 0.0),
           child: FloatingActionButton(
             onPressed: () => {},
             backgroundColor: Colors.tealAccent[400],
              child: Icon(
                    Icons.add,
                    size: 23.0,
                    color: Colors.white,
                  ),
           ),
          ),
      ]
    ),
    bottomNavigationBar: Container(
       color: Colors.grey[100],
              child: Container(
                margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 28.0), 
                 child: TabBar(
              isScrollable: true,
              labelColor: Colors.black,
              labelPadding: EdgeInsets.fromLTRB(18, 0, 18, 16),
              unselectedLabelColor: Colors.black45,
              indicatorColor: Colors.tealAccent,
              indicatorPadding: EdgeInsets.fromLTRB(18, 0, 18, 16),
              labelStyle: TextStyle(fontSize: 16.5, fontWeight: FontWeight.bold),
              tabs: <Tab>[
               Tab(
                  text: "Home",
                ),
                Tab(
                  text: "Timetable",
                ),
                Tab(
                  text: "Homework",
                ),
                Tab(
                  text: "Notes",
                ),
                Tab(
                  text: "Articles",
                ),
              ],
            ),
          ), 
       ),
   ),
   );
 }
}

