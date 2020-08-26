import 'package:flutter/material.dart';




class AddAmountPage extends StatefulWidget {
  @override
  _AddAmountPageState createState() => _AddAmountPageState();
}
class Actor {
  const Actor(this.title);
  final String title;
}
class _AddAmountPageState extends State<AddAmountPage> {
        final List<Actor> _cast = <Actor>[
    const Actor("Currently We are not accepting wallet payments"),
  ];


      Iterable<Widget> get actorWidgets sync* {
    for (final Actor actor in _cast) {
      yield Padding(
        padding: const EdgeInsets.all(4.0),
        child: Chip(
          label: Text(actor.title, style: TextStyle(fontFamily: "Quicksand", ),),
          onDeleted: () {
            setState(() {
              _cast.removeWhere((Actor entry) {
                return entry.title == actor.title;
              });
            });
          },
        ),
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
          title: Text("Add Amount", style: TextStyle(fontFamily: "Quicksand",),), backgroundColor: Colors.blueGrey.shade800),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
                                         Wrap(
                   children: actorWidgets.toList(),
                 ),
            Padding(
              padding: const EdgeInsets.only(left: 14.0, right: 14.0, top: 20),
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
                child: Form(
                  child: TextFormField(
                    onChanged: (value) async {
                      setState(() {
                      });
                    },
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please Enter the Amount';
                      }
                      return null;
                    },
                    cursorColor: Colors.black,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 15),
                      hintText: "Amount...",
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.account_balance,
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
                  "Add Amount",
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
    );
  }
}
