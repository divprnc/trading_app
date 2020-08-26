import 'package:flutter/material.dart';
import 'package:trading/Constant/Constant.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String mobilenumber;
  final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey.shade900,
          title: Text(
            "Register / Sign In",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.teal,
        body: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, top: 20.0, right: 16.0),
                    child: Text(
                      "Enter your phone number to Sign In",
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Text("\nNew Mobile Number will registered automatically", style: TextStyle(
                    color: Colors.white
                  ),),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Image(
                      image: AssetImage('assets/images/otp-icon.png'),
                      height: 120.0,
                      width: 120.0,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Flexible(
                        child: new Container(),
                        flex: 1,
                      ),
                      Flexible(
                        child: new TextFormField(
                          decoration: InputDecoration(
                              disabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                            color: Colors.blueGrey.shade900,
                          ))),
                          textAlign: TextAlign.center,
                          autofocus: true,
                          enabled: false,
                          initialValue: "+91",
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        ),
                        flex: 3,
                      ),
                      Flexible(
                        child: new Container(),
                        flex: 1,
                      ),
                      Flexible(
                        child: Form(
                          key: _key,
                          child: new TextFormField(
                            cursorColor: Colors.deepOrangeAccent,
                            decoration: InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.blueGrey.shade900,
                                        width: 2))),
                            textAlign: TextAlign.start,
                            autofocus: false,
                            enabled: true,
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.done,
                            style:
                                TextStyle(fontSize: 20.0, color: Colors.white),
                            onChanged: (value) {
                              setState(() {
                                mobilenumber = value;
                              });
                            },
                            maxLength: 10,
                            validator: (value) {
                              if (value.length < 10) {
                                return 'Please enter a valid mobile number';
                              }
                              return null;
                            },
                          ),
                        ),
                        flex: 9,
                      ),
                      Flexible(
                        child: new Container(),
                        flex: 1,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0, bottom: 40.0),
                    child: new Container(
                      width: 150.0,
                      height: 40.0,
                      child: new RaisedButton(
                          onPressed: () {
                            if (_key.currentState.validate()) {
                              print(mobilenumber);
                              getMobile(mobilenumber);
                            }
                          },
                          child: Text("Request OTP"),
                          textColor: Colors.white,
                          color: Colors.blueGrey.shade900,
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0))),
                    ),
                  )
                ])
          ],
        ));
  }

  void getMobile(mobile) {
    Navigator.pushNamed(context, otpscreen, arguments: {"MobileNumber": mobile});
  }
}
