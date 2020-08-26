import 'package:flutter/material.dart';
import 'package:trading/Screens/add_amount.dart';
import 'package:trading/Screens/withdraw.dart';


class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade900,
      ),
      body:  SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                decoration: BoxDecoration(color: Colors.blueGrey.shade900),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 20),
                child: Text(
                  "Balance",
                  style: TextStyle(color: Colors.white, fontSize: 20,fontFamily: "Quicksand", ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25, left: 20),
                child: Text(
                  "₹ 10050"  ,
                  style: TextStyle(color: Colors.white, fontSize: 40,fontFamily: "Quicksand", ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      OutlineButton(onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                        return AddAmountPage();
                      }));
                    },
                    color: Colors.teal,
                    highlightColor: Colors.teal,
                    borderSide: BorderSide(color: Colors.teal),
                    child: Text("Recharge", style: TextStyle(color: Colors.white,fontFamily: "Quicksand", )),
                    ),
                    OutlineButton(onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                        return WithdrawPage();
                      }));
                    },
                    color: Colors.teal,
                    highlightColor: Colors.teal,
                    borderSide: BorderSide(color: Colors.teal),
                    child: Text("Withdraw", style: TextStyle(color: Colors.white,fontFamily: "Quicksand", )),
                    ),
                    ],
                  ),
                ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Recent Transactions",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,fontFamily: "Quicksand", 
                fontSize: 25),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.58,
              decoration: BoxDecoration(
                color: Colors.blueGrey.shade900,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blueGrey,
                    blurRadius: 6.0,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (_,  index) {
                  if(index%2 == 0) {
                    return   Card(
                      elevation: 5,
                      child: Container(
                        child: ListTile(
                        
                          isThreeLine: true,
                          leading: Icon(Icons.add, color: Colors.green),
                          subtitle: Text("12/10/2020" + "    " + "10:50PM" +"\n" + "Payment Id     " + "asde5sdf5ag", style: TextStyle(fontFamily: "Quicksand", ),),
                          title: Text("Amount Added", style: TextStyle(fontSize: 20,fontFamily: "Quicksand",  fontWeight: FontWeight.bold),),
                          trailing: Text("₹ " + "1520", style: TextStyle(fontSize: 20,fontFamily: "Quicksand",  fontWeight: FontWeight.bold,color: Colors.green),),
                        )
                        ),
                    );
                  }else{
                    return   Card(
                      elevation: 5,
                      child: Container(
                        child: ListTile(
                        
                          isThreeLine: true,
                          leading: Icon(Icons.add, color: Colors.red),
                          subtitle: Text("12/10/2020" + "    " + "10:50PM" +"\n" + "Payment Id     " + "asde5sdf5ag", style: TextStyle(fontFamily: "Quicksand", ),),
                          title: Text("Amount Withdrawl", style: TextStyle(fontSize: 20,fontFamily: "Quicksand",  fontWeight: FontWeight.bold),),
                          trailing: Text("₹ " + "1000", style: TextStyle(fontSize: 20,fontFamily: "Quicksand",  fontWeight: FontWeight.bold,color: Colors.red),),
                        )
                        ),
                    );
                  }
                      
                },
              ),
            ),
          ),
        ],
      ),
    ),
    );
  }

}