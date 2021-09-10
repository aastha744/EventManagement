import 'package:flutter/material.dart';

class PlannerPage extends StatefulWidget {
  @override
  _PlannerPageState createState() => _PlannerPageState();
}

class _PlannerPageState extends State<PlannerPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: new AppBar(
        title: new Text("Sign In"),
        backgroundColor: Colors.pink.shade400,
      ),
      body: new Container(
      child:  ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
          Images(
            imageloc: 'assets/summit.jpg',
            imagecap: 'Summit Hotel',
          ),

          Images(
            imageloc: 'assets/himalayan.jpg',
            imagecap: 'Himalayan Hotel',
          ),
          

          Images(
            imageloc: 'assets/annapurna.jpg',
            imagecap: 'Annapurna Hotel',
          ),

        ],
      ),
    ),
    );
  }
}

class Images extends StatelessWidget {
  final String imageloc;
  final String imagecap;
  Images({this.imageloc, this.imagecap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, "/Pin");
        },
        child: Container(
          padding: const EdgeInsets.all(2.0),
          width: 400.0,
          child: ListTile(
            title: Image.asset(
              imageloc,
              width: 380.0,
              height: 280.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(imagecap, style: new TextStyle(fontSize: 22.0),),
            )
          ),
        ),
      ),
    );
  }
}
