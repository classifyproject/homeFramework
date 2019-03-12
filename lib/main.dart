import 'package:flutter/material.dart';
import 'package:gradient_widgets/gradient_widgets.dart';
import 'package:superellipse_shape/superellipse_shape.dart';
// import 'profile.dart';
import 'homework.dart';
import 'timetable.dart';
// import 'package:flare_flutter/flare_actor.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
 Widget build(BuildContext context) {
   return MaterialApp(
     theme: ThemeData(
       primarySwatch: Colors.indigo,
       highlightColor: Colors.transparent,
       splashColor: Colors.transparent,
     ),
     home: HomePage(),
   );
  }
 }

class HomePage extends StatelessWidget {

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
            image: AssetImage("assets/skidrow.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.fromLTRB(15.0, 150.0, 15.0, 0.0),
      child: Column(
      children: <Widget>[
            Card(
              elevation: 2.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Column(
                  children: <Widget>[
                  Container(
                  height: 285,
                  width: 380,
                ),
                  ],
                ),
              ),
   ],
  ),
      ),
      Container(
        margin: EdgeInsets.fromLTRB(15.0, 460.0, 15.0, 0.0),
      child: Column(
      children: <Widget>[
            Card(
              elevation: 2.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Column(
                  children: <Widget>[
                  Container(
                  height: 328,
                  width: 380,
                ),
                  ],
                ),
              ),
   ],
  ),
      ),
      Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(28, 65, 20, 7),
              child: Text(
                'Welcome, Krish',
                style: TextStyle(fontSize: 23.5, fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ],
      ),
      Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(28, 105, 20, 7),
              child: Text(
                'JUNE 2, 2019       ·       4 HOMEWORKS',
                style: TextStyle(fontSize: 12.5, fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ],
      ),
      /* Container(
          margin: EdgeInsets.fromLTRB(350.0, 60.0, 5.0, 0.0),
            width: 38.0,
            height: 38.0,
            child: Material(
              color: Colors.blueGrey[400],
              shape: SquircleBorder(
                side: BorderSide(color: Colors.blueGrey[800], width: 3.0),
              ),
              child: Image.network('https://raw.githubusercontent.com/ScottS2017/local_package/master/lib/image/bipi/placeholder_icon.jpg', fit: BoxFit.cover)
            ),
          ), */
        Container(
            margin: EdgeInsets.fromLTRB(355.0, 70.0, 0.0, 0.0),
            child: Material(
              clipBehavior: Clip.antiAlias,
              shape: SuperellipseShape(
                borderRadius: BorderRadius.circular(28.0),
              ), // SuperellipseShape
              color: Colors.white,
              //shadowColor: Colors.black38,
              shadowColor: Colors.purple[900],
              elevation: 1.0,
              child: Image.network('https://raw.githubusercontent.com/ScottS2017/local_package/master/lib/image/bipi/placeholder_icon.jpg', fit: BoxFit.cover, scale: 8.5),
            ),
          ),
        Container(
            margin: EdgeInsets.fromLTRB(350.0, 140.0, 10.0, 0.0),
           child: CircularGradientButton(
                  elevation: 1.0,
                  gradient: Gradients.backToFuture,
                  child: Icon(
                    Icons.add,
                    size: 23.0,
                    color: Colors.white,
                  ),
                  // callback: () => print(''))
                  callback: () {
                  Navigator.push(
                    context,
                      MaterialPageRoute(builder: (context) => Homework()),
                  );
                },
              ),
          ),
          Row(
            children: <Widget>[
            InkWell(
              onTap: () {
                  Navigator.push(
                    context,
                      MaterialPageRoute(builder: (context) => Timetable()),
                  );
            },
              child: Container(
                margin: EdgeInsets.fromLTRB(43.5, 485.0, 0.0, 0.0),
                child: Icon(
                  Icons.calendar_today,
                  size: 25.0,
                  color: Colors.tealAccent,
                ),
              ),
            ),
          InkWell(
            onTap: () {
                  Navigator.push(
                    context,
                      MaterialPageRoute(builder: (context) => Timetable()),
                  );
            },
             child: Container(
                margin: EdgeInsets.fromLTRB(10.0, 485.0, 0.0, 0.0),
                child: Text(
                  'MONDAY',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13.5,
                    color: Colors.tealAccent,
                  ),
                ),
              ),
            ),
            ],
          ),
          Row(
            children: <Widget>[
            InkWell(
              onTap: () {
                  Navigator.push(
                    context,
                      MaterialPageRoute(builder: (context) => Homework()),
                  );
            },
              child: Container(
                margin: EdgeInsets.fromLTRB(43.5, 170.0, 0.0, 0.0),
                child: Icon(
                  Icons.list,
                  size: 30.0,
                  color: Colors.amber[800],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                  Navigator.push(
                    context,
                      MaterialPageRoute(builder: (context) => Homework()),
                  );
            },
              child: Container(
                margin: EdgeInsets.fromLTRB(10.0, 170.0, 0.0, 0.0),
                child: Text(
                  'HOMEWORK',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13.5,
                    color: Colors.amber[800],
                  ),
                ),
              ),
            ),
            ],
          ), 
          /* Container(
            color: Colors.transparent,
              child: Container(
                margin: EdgeInsets.fromLTRB(0.0, 815.0, 0.0, 28.0), 
                 child: TabBar(
              isScrollable: true,
              labelColor: Colors.white,
              labelPadding: EdgeInsets.fromLTRB(18, 0, 18, 16),
              unselectedLabelColor: Colors.white,
              unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
              indicatorColor: Colors.white,
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
       ), */
          ],
        ),
     ),
    );
 }
}

/* class SquircleBorder extends ShapeBorder {
  final BorderSide side;
  final double superRadius;

  const SquircleBorder({
    this.side: BorderSide.none,
    this.superRadius: 5.0,
  })
    : assert(side != null),
      assert(superRadius != null);

  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.all(side.width);

  @override
  ShapeBorder scale(double t) {
    return new SquircleBorder(
      side: side.scale(t),
      superRadius: superRadius * t,
    );
  }

  @override
  Path getInnerPath(Rect rect, {TextDirection textDirection}) {
    return _squirclePath(rect.deflate(side.width), superRadius);
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection textDirection}) {
    return _squirclePath(rect, superRadius);
  }

  static Path _squirclePath(Rect rect, double superRadius) {
    final c = rect.center;
    final dx = c.dx * (1.0 / superRadius);
    final dy = c.dy * (1.0 / superRadius);
    return new Path()
      ..moveTo(c.dx, 0.0)
      ..relativeCubicTo(c.dx - dx, 0.0, c.dx, dy, c.dx, c.dy)
      ..relativeCubicTo(0.0, c.dy - dy, -dx, c.dy, -c.dx, c.dy)
      ..relativeCubicTo(-(c.dx - dx), 0.0, -c.dx, -dy, -c.dx, -c.dy)
      ..relativeCubicTo(0.0, -(c.dy - dy), dx, -c.dy, c.dx, -c.dy)
      ..close();
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection textDirection}) {
    switch (side.style) {
      case BorderStyle.none:
        break;
      case BorderStyle.solid:
        var path = getOuterPath(rect.deflate(side.width / 2.0), textDirection: textDirection);
        canvas.drawPath(path, side.toPaint());
    }
  }
} */

List<String> currentHomeworks = ['Spanish', 'English', 'Maths'];

/* Card(
            semanticContainer: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Container(
              height: 550,
              width: 444,
            ),
          ), */


/* onTap: () {
                  Navigator.push(
                    context,
                      MaterialPageRoute(builder: (context) => TimetablePage()),
                  );
            }, */


// onPressed: () => Navigator.of(context).pop(),


// proxima nova