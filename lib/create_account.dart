import 'package:flutter/material.dart';
import 'package:yozana/auth.dart';
import 'package:yozana/home_page.dart';
import 'package:google_sign_in/google_sign_in.dart';
class CreateAccount extends StatefulWidget {
  static String tag = 'Create_page';
  @override
  State<StatefulWidget> createState() {
    return new CreateAccountState();
  }
}
class CreateAccountState extends State<CreateAccount> {

  final  _userController = new TextEditingController();
  final TextEditingController _phoneController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Create New Account"),
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
                        controller: _userController,
                        textCapitalization: TextCapitalization.words,
                        decoration: InputDecoration(
                        border:OutlineInputBorder(),
                         filled: true,
                         contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                         icon: Icon(Icons.person),
                          hintText: 'What do people call you?',
                          labelText: 'Name *',
            ),
                      ),
                       new Padding(padding: new EdgeInsets.all(10.0)), 
                       new Padding(padding: new EdgeInsets.only(left: 24.0,right: 34.0)), 
                       new TextFormField(
                         keyboardType: TextInputType.emailAddress,
                        textCapitalization: TextCapitalization.words,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                         border:OutlineInputBorder(),
                         filled: true,
                         icon: Icon(Icons.email),
                          hintText: 'Email Address',
                          labelText: 'Email*',
            ),
                      ),

                  
                  new Padding(padding: new EdgeInsets.all(10.0)), 
                    new TextFormField(
                      maxLength: 8,
                      controller: _passwordController,
                      decoration: new InputDecoration(
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        filled:true,
                          hintText: 'Password',
                          labelText: 'Password*',
                          icon: new Icon(Icons.lock),

                      ),
                      obscureText: true,
                    ),
                    
                    new Padding(padding: new EdgeInsets.all(10.5)), 
                     new TextFormField(
                      controller: _phoneController,
                      decoration: const InputDecoration(
                      border:OutlineInputBorder(),
                      filled: true,
                      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                       icon: Icon(Icons.phone),
                       prefixText: '+977',
                       hintText: 'Where can we reach you?',
                    labelText: 'Phone Number *',
             
            ),
                 keyboardType: TextInputType.phone,
                  
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
                               Navigator.of(context).pushNamed(HomePage.tag);},
                               color: Colors.pink.shade400,
                               child: new Text("Login as User",
                                 style: new TextStyle(color: Colors.white,
                                 fontSize: 16.9))),
                         ),
                  new Center(
                    child: new Column(
                      children: <Widget>[
                         // Login button
                         new Container(
                           margin: const EdgeInsets.only(left: 38.0),
                           child: new RaisedButton(
                             onPressed:(){
                               Navigator.of(context).pushNamed('/PlannerPage');},
                               color: Colors.pink.shade400,
                               child: new Text("Login as Planner",
                                 style: new TextStyle(color: Colors.white,
                                 fontSize: 16.9))),
                         ),
                         
                         new Container(
                           margin: const EdgeInsets.only(left: 38.0),
                           child: new RaisedButton(
                             onPressed:() => authService.googleSignIn(),
                               color: Colors.red,
                               child: new Text("Login with Google",
                                 style: new TextStyle(color: Colors.white,
                                 fontSize: 16.9))),
                         ),
                         new Container(
                           margin: const EdgeInsets.only(left: 38.0),
                           child: new RaisedButton(
                             onPressed:(){
                               Navigator.of(context).pushNamed(HomePage.tag);},
                               color: Colors.blue.shade900,
                               child: new Text("Login with Facebook",
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

          ]
    ),
      ),
      );
  }
      
}





