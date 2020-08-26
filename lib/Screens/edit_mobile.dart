import 'package:flutter/material.dart';

class EditMobileData extends StatefulWidget {
  @override
  _EditMobileDataState createState() => _EditMobileDataState();
}

class _EditMobileDataState extends State<EditMobileData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
          title: Text("Mobile Number", style: TextStyle(fontFamily: "Quicksand",),), backgroundColor: Colors.blueGrey.shade800,
        ),
        body: Column(
            children: [
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
                  onChanged: (value) {
                    setState(() {
                    });
                  },
                  validator: (value) {
                    if (value.length != 10) {
                      return 'Enter the correct mobile number';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.number,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 15),
                    hintText: "Mobile Number",
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.phone_android,
                      color: Colors.black,
                    ),
                  ),
                  style: TextStyle(
                    color: Colors.black,
                     fontFamily: "Quicksand", 
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
                  "Update",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                     fontFamily: "Quicksand", 
                  ),
                ),
              ),
            ),
            ],
          )
    );
  }
}