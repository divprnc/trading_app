import 'package:flutter/material.dart';

class EditPassword extends StatefulWidget {
  @override
  _EditPasswordState createState() => _EditPasswordState();
}

class _EditPasswordState extends State<EditPassword> {
  @override
  Widget build(BuildContext context) {
        return Scaffold(
          backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Text("Change Password", style: TextStyle(fontFamily: "Quicksand",),), backgroundColor: Colors.blueGrey.shade800,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:14),
              child: Text("Change Password", style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,fontFamily: "Quicksand",
              ),),
            ),
             Form(
               child: Column(
                 children: [
                   Padding(
              padding: const EdgeInsets.all(14.0),
              child: Container(
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Colors.blueGrey.shade100,
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
                child: TextFormField(
                  obscureText: true,
                  onChanged: (value) {
                    setState(() {
                    });
                  },
                  validator: (value) {
                    if (value.isEmpty || value.length <8) {
                      return 'Please Enter the password of minimum length 8';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.text,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 15),
                    hintText: "New  Password..",
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      color: Colors.black,
                    ),
                  ),
                  style: TextStyle(
                    color: Colors.black,fontFamily: "Quicksand",
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14.0, right: 14.0),
              child: Container(
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Colors.blueGrey.shade100,
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
                child: TextFormField(
                  obscureText: true,
                  onChanged: (value) {
                    setState(() {
                    });
                  },
                  validator: (value) {
                    return "";
                  },
                  keyboardType: TextInputType.text,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 15),
                    hintText: "Confirm New Password..",
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.black,
                    ),
                  ),
                  style: TextStyle(
                    color: Colors.black,fontFamily: "Quicksand",
                  ),
                ),
              ),
            ),
                 ],
               ),
             ),
            Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              child: RaisedButton(
                color: Colors.blueGrey.shade800,
                onPressed: () async {
                  
                },
                elevation: 10.0,
                padding: EdgeInsets.all(15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  "Update Password",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,fontFamily: "Quicksand",
                  ),
                ),
              ),
            ),
          ],
        ),
    );
  }
}