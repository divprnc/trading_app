import 'package:flutter/material.dart';


class EditAccountData extends StatefulWidget {
  @override
  _EditAccountDataState createState() => _EditAccountDataState();
}

class _EditAccountDataState extends State<EditAccountData> {


  String accountNumber;
  TextEditingController accountNumberData;
  String ifscCode;
  TextEditingController ifscdata;
  String accountHolder;
  TextEditingController holderdata;
  bool isLoading = false;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String mobile;
  TextEditingController mobilenum;

    @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
       appBar: AppBar(
          title: Text("Account Data", style: TextStyle(fontFamily: "Quicksand",),), backgroundColor: Colors.blueGrey.shade800,
        ),
        body: Column(children: [

             Form(
               key: _formKey,
               child: Column(
                 children: [
                   Padding(
                     padding: const EdgeInsets.all(8.0),
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
                             accountNumber = value;
                           });
                         },
                         validator: (value) {
                           if (value.isEmpty) {
                             return 'Please Enter your account number';
                           }
                           return null;
                         },
                         keyboardType: TextInputType.number,
                         controller: accountNumberData,
                         cursorColor: Colors.black,
                         decoration: InputDecoration(
                           contentPadding: EdgeInsets.only(top: 15),
                           hintText: "Account Number",
                           border: InputBorder.none,
                           prefixIcon: Icon(
                             Icons.lock_outline,
                             color: Colors.black,
                           ),
                         ),
                         style: TextStyle(
                           color: Colors.black,
                           fontFamily: "Quicksand"
                         ),
                       ),
                     ),
                   ),
            Padding(
              padding: const EdgeInsets.all(8.0),
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
                      ifscCode = value;
                    });
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Enter your IFSC code of your account number';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.text,
                  controller: ifscdata,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 15),
                    hintText: "IFSC Code",
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.black,
                    ),
                  ),
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Quicksand"
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
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
                      accountHolder = value;
                    });
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Enter Account Holder Name';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.text,
                  controller: holderdata,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 15),
                    hintText: "Account Holder Name",
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.black,
                    ),
                  ),
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Quicksand"
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
                  if(_formKey.currentState.validate()) {

                  }
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
                    fontFamily: "Quicksand"
                  ),
                ),
              ),
            ),
          ],)
    );
  }

}