import 'package:flutter/material.dart';
import'dart:async';
class BookNow extends StatefulWidget {
  static String tag = 'Book-Now';
  @override
  State<StatefulWidget> createState() {
    return new BookNowState();
  }
}
class BookNowState extends State<BookNow> {

  DateTime _date=new DateTime.now();
  TimeOfDay _time=TimeOfDay.now();
  Future<Null> _selectDate(BuildContext context) async{
    final DateTime picked=await showDatePicker(
      context: context,
      initialDate: _date,
      firstDate: new DateTime(2019),
      lastDate: new DateTime(2020),
      );
      if(picked!=null && picked!=_date){
        print('Date selected:${_date.toString()}');
        setState(() {
          _date=picked;
        });

      }

  }
    Future<Null> _selectTime(BuildContext context) async{
      final TimeOfDay picked=await showTimePicker(
      context: context,
      initialTime: _time,
      
      );
      if(picked!=null && picked!=_time){
        print('Date selected:${_date.toString()}');
        setState(() {
          _time=picked;
        });
    }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Book Now"),
        backgroundColor: Colors.pink.shade400,
      ),
      body: new Container(
        alignment: Alignment.topCenter,
        child: new ListView(
          children: <Widget>[
            new Container(
              color: Colors.white,
              child: new Column(
                children: <Widget>[
                  new Padding(padding: new EdgeInsets.all(10.5)), 
                    new TextFormField(
                        keyboardType: TextInputType.number,
                        textCapitalization: TextCapitalization.words,
                        decoration: InputDecoration(
                        border:OutlineInputBorder(),
                         filled: true,
                         contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                          labelText: 'Choose your Destination',
            ),
                      ),
                       new Padding(padding: new EdgeInsets.all(10.5)), //add padding
                  new Center(
                    child: new Column(
                      children: <Widget>[
                         new Container(
                           margin: const EdgeInsets.only(left: 38.0),
                           child:new RaisedButton(
                             onPressed:(){
                               _selectDate(context);
                              },
                               color: Colors.pink.shade400,
                               child: new Text('Select Date',
                                 style: new TextStyle(color: Colors.white,
                                 fontSize: 16.9)
                                 ),
                                 ),
                         ),
                         
                      ],
                    ),
                  ),
                  new Padding(padding: new EdgeInsets.all(10.5)), //add padding
                  new Center(
                    child: new Column(
                      children: <Widget>[
                         new Container(
                           margin: const EdgeInsets.only(left: 38.0),
                           child:new RaisedButton(
                             onPressed:(){
                               _selectTime(context);
                              },
                               color: Colors.pink.shade400,
                               child: new Text('Select Time',
                                 style: new TextStyle(color: Colors.white,
                                 fontSize: 16.9)
                                 ),
                                 ),
                         ),
                         
                      ],
                    ),
                  ),
                  
                  new Padding(padding: new EdgeInsets.all(10.0)), 
                    new TextFormField(
                      decoration: new InputDecoration(
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        filled:true,
                          labelText: 'No of People',

                      ),
                    ),
                    
                    new Padding(padding: new EdgeInsets.all(10.5)), 
                     new TextFormField(
                      decoration: const InputDecoration(
                      border:OutlineInputBorder(),
                      filled: true,
                      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    labelText: 'Outdoor/Indoor',
             
            ),
                 keyboardType: TextInputType.text,
                  
                    ),

                  new Padding(padding: new EdgeInsets.all(10.5)), //add padding
                  new Center(
                    child: new Column(
                      children: <Widget>[
                         // Login button
                         new Container(
                           margin: const EdgeInsets.only(left: 38.0),
                           child: new RaisedButton(
                             onPressed:(){
                              },
                               color: Colors.pink.shade400,
                               child: new Text("Submit",
                                 style: new TextStyle(color: Colors.white,
                                 fontSize: 16.9))),
                         ),
                         
                      ],
                    ),
                  )
                ],
              ),

            ),//form ends here
          ],
        ),
      ),


    );
  }
}

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Book Now"),
        backgroundColor: Colors.pink.shade400,
      ),
      body: new Container(
        alignment: Alignment.topCenter,
        child: new ListView(
          children: <Widget>[
            new Container(
              color: Colors.white,
              child: new Column(
                children: <Widget>[
                  new Padding(padding: new EdgeInsets.all(10.5)), 
                    new TextFormField(
                        keyboardType: TextInputType.number,
                        textCapitalization: TextCapitalization.words,
                        decoration: InputDecoration(
                        border:OutlineInputBorder(),
                         filled: true,
                         contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                          labelText: 'Choose your Destination',
            ),
                      ),
                       new Padding(padding: new EdgeInsets.all(10.5)), //add padding
                  new Center(
                    child: new Column(
                      children: <Widget>[
                         new Container(
                           margin: const EdgeInsets.only(left: 38.0),
                           child:new RaisedButton(
                             onPressed:(){
                               _selectDate(context);
                              },
                               color: Colors.pink.shade400,
                               child: new Text('Select Date',
                                 style: new TextStyle(color: Colors.white,
                                 fontSize: 16.9)
                                 ),
                                 ),
                         ),
                         
                      ],
                    ),
                  ),
                  new Padding(padding: new EdgeInsets.all(10.5)), //add padding
                  new Center(
                    child: new Column(
                      children: <Widget>[
                         new Container(
                           margin: const EdgeInsets.only(left: 38.0),
                           child:new RaisedButton(
                             onPressed:(){
                               _selectTime(context);
                              },
                               color: Colors.pink.shade400,
                               child: new Text('Select Time',
                                 style: new TextStyle(color: Colors.white,
                                 fontSize: 16.9)
                                 ),
                                 ),
                         ),
                         
                      ],
                    ),
                  ),
                  
                  new Padding(padding: new EdgeInsets.all(10.0)), 
                    new TextFormField(
                      decoration: new InputDecoration(
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        filled:true,
                          labelText: 'No of People',

                      ),
                    ),
                    
                    new Padding(padding: new EdgeInsets.all(10.5)), 
                     new TextFormField(
                      decoration: const InputDecoration(
                      border:OutlineInputBorder(),
                      filled: true,
                      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    labelText: 'Outdoor/Indoor',
             
            ),
                 keyboardType: TextInputType.text,
                  
                    ),

                  new Padding(padding: new EdgeInsets.all(10.5)), //add padding
                  new Center(
                    child: new Column(
                      children: <Widget>[
                         // Login button
                         new Container(
                           margin: const EdgeInsets.only(left: 38.0),
                           child: new RaisedButton(
                             onPressed:(){
                              },
                               color: Colors.pink.shade400,
                               child: new Text("Submit",
                                 style: new TextStyle(color: Colors.white,
                                 fontSize: 16.9))),
                         ),
                         
                      ],
                    ),
                  )
                ],
              ),

            ),//form ends here
          ],
        ),
      ),


    );
  }




}
