import 'package:flutter/material.dart';
import 'package:yozana/home_page.dart';
import 'package:yozana/planner_home.dart';
import'package:yozana/create_account.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 150.0,
        child: Image.asset('assets/yozana.jpg'),
      ),
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
         // Navigator.of(context).pushNamed(HomePage.tag);
        },
        color: Colors.pink.shade400,
        child: Text('Log In As ', style: TextStyle(color: Colors.white)),
      ),
    );


 
      final forgotLabel = FlatButton(
      child: Text(
        'Forgot password?',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {},
    );


    final signButton= Padding(
      padding: EdgeInsets.symmetric(vertical: 1.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(CreateAccount.tag);
        },
        color: Colors.pink.shade400,
        child: Text('Sign Up', style: TextStyle(color: Colors.white)),  
      ),
    );

  
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 40.0),
            email,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 18.0),
            signButton,
            SizedBox(height: 0.0),
            loginButton,
             new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 20.0, top: 10.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => HomePage()
                        ));
                      },
                                          child: new Container(
                            alignment: Alignment.center,
                            height: 40.0,
                            decoration: new BoxDecoration(
                                color: Colors.pink.shade400,
                                borderRadius: new BorderRadius.circular(13.0)),
                            child: new Text("User",
                                style: new TextStyle(
                                    fontSize: 15.0, color: Colors.white))),
                    ),
                  ),
                ),
                 Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 20.0, top: 10.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => PlannerPage()
                        ));
                      },
                                          child: new Container(
                            alignment: Alignment.center,
                            height: 40.0,
                            decoration: new BoxDecoration(
                                color: Colors.pink.shade400,
                                borderRadius: new BorderRadius.circular(13.0)),
                            child: new Text("Planner",
                                style: new TextStyle(
                                    fontSize: 15.0, color: Colors.white))),
                    ),
                  ),
                ),
              ],
            ),
            
            SizedBox(height: 0.0),
             forgotLabel,
          ],
        ),
      ),
    );
  }
}

