import 'package:flutter/material.dart';
import 'package:trading/Screens/edit_account.dart';
import 'package:trading/Screens/edit_mobile.dart';
import 'package:trading/Screens/edit_password.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  void initState(){
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
          title: Text("Settings", style: TextStyle(fontFamily: "Quicksand",),), backgroundColor: Colors.blueGrey.shade800),
      body:SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (_) {
                          return EditPassword();
                        }));
                      },
                      child: Container(
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey.shade200,
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 6.0,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        height: 60.0,
                        child: ListTile(
                          title: Text(
                            "Change Password",
                            style: TextStyle(color: Colors.black, fontSize: 20,fontFamily: "Quicksand",),
                          ),
                          leading: Icon(
                            Icons.lock,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (_) {
                          return EditMobileData();
                        }));
                      },
                                          child: Container(
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey.shade200,
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 6.0,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        height: 60.0,
                        child: ListTile(
                          title: Text(
                            "Mobile Number",
                            style: TextStyle(color: Colors.black, fontSize: 20,fontFamily: "Quicksand",),
                          ),
                          leading: Icon(
                            Icons.phone_android,
                            color: Colors.black,
                          ),
                          trailing: GestureDetector(
                            onTap: () {
                              
                            },
                            child: Icon(Icons.info),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (_) {
                          return EditAccountData();
                        }));
                      },
                                          child: Container(
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey.shade200,
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 6.0,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        height: 60.0,
                        child: ListTile(
                          title: Text(
                            "Account Details",
                            style: TextStyle(color: Colors.black, fontSize: 20,fontFamily: "Quicksand",),
                          ),
                          leading: Icon(
                            Icons.account_balance,
                            color: Colors.black,
                          ),
                          trailing: GestureDetector(
                            onTap: () {
                              _scaffoldKey.currentState.showSnackBar(SnackBar(
                                backgroundColor: Colors.blueGrey.shade800,
                                content: Text(
                                  'Please Fill your account details to receive payments in your bank account',
                                  style: TextStyle(
                                    fontSize: 15,fontFamily: "Quicksand",
                                    color: Colors.white,
                                  ),
                                ),
                                duration: Duration(seconds: 3),
                              ));
                            },
                            child: Icon(Icons.info),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
