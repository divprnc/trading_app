import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';


class ReferAndEarn extends StatefulWidget {
  @override
  _ReferAndEarnState createState() => _ReferAndEarnState();
}

class _ReferAndEarnState extends State<ReferAndEarn> {
  @override
  Widget build(BuildContext context) {
   return  Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.blueGrey.shade900,
       title: Text("Refer And Earn"),
     ),
        body: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(
                  top: 35
                ),
                child: Column(
                  children: [
                    Center(
                      child: Image.asset(
                        "assets/images/refer.jpg",
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.35,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Container(
                        child: Text(
                          "Invite your friend and get referal bonus",
                          style: TextStyle(
                              fontFamily: "Quicksand",
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        child: Text(
                          "Share the code below or ask them to enter it in refer and earn section. ",
                          style: TextStyle(
                              fontFamily: "Quicksand",
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.blueGrey.shade300),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 15, right: 15, top: 10),
                      child: DottedBorder(
                        color: Colors.blueGrey.shade300,
                        child: Container(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.05,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "   " + "CUYG56",
                                  style: TextStyle(
                                      fontFamily: "Quicksand",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.blueGrey.shade300),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    // Clipboard.setData(
                                    //         new ClipboardData(text: mycode))
                                    //     .then((value) => {
                                              
                                    //         });
                                  },
                                  child: Row(
                                    children: [
                                      Icon(Icons.copy,
                                          color: Colors.blueGrey.shade300),
                                      Text(
                                        "Copy Code" + "   ",
                                        style: TextStyle(
                                            fontFamily: "Quicksand",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                            color: Colors.blueGrey.shade300),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
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
                          "Invite Friend",
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
                ),
              ),
            ),
   );
  }
}