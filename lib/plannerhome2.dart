import 'package:flutter/material.dart';
import'dart:async';
class Book extends StatefulWidget {
  static String tag = 'Book-Now';
  @override
  State<StatefulWidget> createState() {
    return new BookState();
  }
}
class BookState extends State<Book> {
  bool photographer = false;
  bool extradecoration = false;

  Widget checkbox(String title, bool boolValue) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(title),
        Checkbox(
          value: boolValue,
          onChanged: (bool value) {
            setState(() {
              switch (title) {
                case "Photographer":
                  photographer = value;
                  break;
              }
              switch (title) {
                case "Extra Decoration":
                  extradecoration = value;
                  break;
              }
            });
          },
        )
      ],
    );
  }
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
      
       body:new Container(
        alignment: Alignment.topCenter,
        child: new ListView(
          children: <Widget>[
            new Container(
              color: Colors.white,
              child: new Column(
                children: <Widget>[
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
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Home"),
        backgroundColor: Colors.pink.shade600,
        actions:<Widget>[
          new IconButton(
            icon:new Icon(Icons.notifications),
            onPressed: ()=>Navigator.pushNamed(context, "/NotifyOne"),
          ),
        ]
          ), 
           
        
        drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            
//            header
            new UserAccountsDrawerHeader(
              accountName: Text('ABCD'),
              accountEmail: Text('hotelhimalaya.ss@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white,),
                ),
              ),
              decoration: new BoxDecoration(
                  color: Colors.pink.shade600
              ),
            ),

//            body

            InkWell(
              onTap: ()=>Navigator.pushNamed(context, "/PlannerBook"),
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home),
              ),
            ),

            InkWell(
              onTap: ()=>Navigator.pushNamed(context, "/ProfilePage"),
              child: ListTile(
                title: Text('My account'),
                leading: Icon(Icons.person),
              ),
            ),
            Divider(),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings, color: Colors.blue,),
              ),
            ),
            InkWell(
              onTap: ()=>Navigator.pushNamed(context, "/loginOne"),
              child: ListTile(
                title: Text('LogOut'),
                leading: Icon(Icons.arrow_back_ios),
              ),
            ),
          ],
        ),
      ),

      body: new Container(
        alignment: Alignment.topCenter,
        child: new ListView(
          children: <Widget>[
             new Image.asset(
              'assets/lights.jpg',
               //width: 400.0,
              height: 150.0,
            fit: BoxFit.cover,
            ),
             new Image.asset(
              'assets/booknow.jpg',
               //width: 400.0,
            //height: 140.0,
              fit: BoxFit.cover,
            ),
            new Container(
              color: Colors.white,
              child: new Column(
                children: <Widget>[
                  new Padding(padding: new EdgeInsets.all(10.5)), 
                     new TextFormField(
                      decoration: const InputDecoration(
                      border:OutlineInputBorder(),
                      filled: true,
                      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    labelText: 'Name',
             
            ),
                 keyboardType: TextInputType.text,
                  
                    ),
                    new Padding(padding: new EdgeInsets.all(10.5)), 
                     new TextFormField(
                      decoration: const InputDecoration(
                      border:OutlineInputBorder(),
                      filled: true,
                      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    labelText: 'Phone Number',
             
            ),
            
                 keyboardType: TextInputType.number,
                  
                    ),
                    new Padding(padding: new EdgeInsets.all(10.5)), 
                     new TextFormField(
                      decoration: const InputDecoration(
                      border:OutlineInputBorder(),
                      filled: true,
                      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    labelText: 'Address',
             
            ),
                 keyboardType: TextInputType.text,
                  
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
                    new Padding(padding: new EdgeInsets.all(10.5)), 
                  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  checkbox("Photographer", photographer),
                ],
              ),
            ],
          ),
        ),
        new Padding(padding: new EdgeInsets.all(10.5)), 
                  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  checkbox("Extra Decoration",extradecoration),
                ],
              ),
            ],
          ),
        ),
                  new Padding(padding: new EdgeInsets.all(10.5)), 
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
                               child: new Text("Save",
                                 style: new TextStyle(color: Colors.white,
                                 fontSize: 16.9))),
                         ),
                         
                      ],
                    ),
                  )
                ],
              ),

            ),
            new Padding(padding: new EdgeInsets.all(10.5)),
          ],
        ),
      

      )
    );
  }
}







  