import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/homescreen.dart';
import 'package:flutterapp/login.dart';

class RegisterActivity extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterActivity> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
//      appBar: AppBar(
//        title: new Text("Login page"),
//        centerTitle: true,
//      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              InkWell(
                child: Image.asset(
                  "assets/images/userlogo.png",
                  height: 120,
                  width: 120,
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 10),
                  child: Text("Register ",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 22))),
              Padding(
                padding: const EdgeInsets.only(
                    top: 5, bottom: 5, left: 15, right: 15),
                child: TextFormField(
                  // obscureText: true,

                  style: TextStyle(
                    color: Colors.black87,
                  ),
                  decoration: new InputDecoration(
                    labelText: 'Name',
                    border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(15.0),
                        borderSide: new BorderSide(
                          width: 3,
                          style: BorderStyle.solid,
                          color: Colors.black87,
                        )),
                    hintStyle: TextStyle(color: Colors.black87),
                    fillColor: Colors.black87,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 5, bottom: 5, left: 15, right: 15),
                child: TextFormField(
                  // obscureText: true,

                  style: TextStyle(
                    color: Colors.black87,
                  ),
                  decoration: new InputDecoration(
                    labelText: 'Mobile number',
                    border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(15.0),
                        borderSide: new BorderSide(
                          width: 3,
                          style: BorderStyle.solid,
                          color: Colors.black87,
                        )),
                    hintStyle: TextStyle(color: Colors.black87),
                    fillColor: Colors.black87,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 5, bottom: 5, left: 15, right: 15),
                child: TextFormField(
                  // obscureText: true,

                  style: TextStyle(
                    color: Colors.black87,
                  ),
                  decoration: new InputDecoration(
                    labelText: 'Email',
                    border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(15.0),
                        borderSide: new BorderSide(
                          width: 3,
                          style: BorderStyle.solid,
                          color: Colors.black87,
                        )),
                    hintStyle: TextStyle(color: Colors.black87),
                    fillColor: Colors.black87,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 5, bottom: 5, left: 15, right: 15),
                child: TextFormField(
                  obscureText: true,
                  style: TextStyle(
                    color: Colors.black87,
                  ),
                  decoration: new InputDecoration(
                    labelText: 'Password',
                    border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(15.0),
                        borderSide: new BorderSide(
                          width: 3,
                          style: BorderStyle.solid,
                          color: Colors.black87,
                        )),
                    hintStyle: TextStyle(color: Colors.black87),
                    fillColor: Colors.black87,
                  ),
                ),
              ),

              /*RaisedButton(
                child: Text("Login"),
               onPressed: _showToast,
                color: Colors.black87,
                textColor: Colors.white,
                padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
                splashColor: Colors.white,
              ),*/
              Container(
                margin: const EdgeInsets.fromLTRB(0, 30, 0, 10),
                child: new RaisedButton(
                  child: Text("Register"),
                  onPressed: visitNewsDetails,
                  color: Color(0xff095d89),
                  textColor: Colors.white,
                  padding: EdgeInsets.fromLTRB(45, 15, 45, 15),
                  splashColor: Colors.white,
                ),
              ),
              Container(
                  margin: const EdgeInsets.fromLTRB(180, 20, 5, 10),
                  child: InkWell(
                      onTap: visitLoginReturn,
                      child: new Text("Already Register? Login",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16)))),
            ],
          ),
        ),
      ),
    );
  }

  visitNewsDetails() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomeScreen()),
    );
  }

  visitLoginReturn() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }
}
