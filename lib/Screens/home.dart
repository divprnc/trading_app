import 'package:flutter/material.dart';
import 'package:trading/Screens/Win.dart';
import 'package:trading/Screens/account.dart';
import 'package:trading/Screens/privacy_policy.dart';
import 'package:trading/Screens/refer_and_earn.dart';
import 'package:trading/Screens/settings.dart';
import 'package:trading/Screens/shoping/shopping_homepage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget drawerMenu(String title, IconData icon, Function func) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontFamily: "Quicksand",
        ),
      ),
      leading: Icon(
        icon,
        color: Colors.teal,
      ),
      onTap: func,
    );
  }

  int _selectedIndex = 0;
  final List<Widget> _wid = [
    ShopPage(),
    WinningPage(),
  ];

  void _onClickChange(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Elegance",
        ),
        backgroundColor: Colors.blueGrey.shade900,
        actions: <Widget>[
          FlatButton(
            onPressed: () {},
            child: Stack(
              children: <Widget>[
                new Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
                new Positioned(
                  right: 0,
                  child: new Container(
                    padding: EdgeInsets.all(1),
                    decoration: new BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    constraints: BoxConstraints(
                      minWidth: 12,
                      minHeight: 12,
                    ),
                    child: Center(
                      child: new Text(
                        '5',
                        style: new TextStyle(
                          color: Colors.white,
                          fontSize: 8,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(color: Colors.blueGrey.shade900),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      color: Colors.teal,
                      height: 180,
                      width: double.infinity,
                    ),
                    Positioned(
                        left: 20,
                        top: 45,
                        child: CircleAvatar(
                          backgroundColor: Colors.blueGrey.shade900,
                          child: Icon(
                            Icons.account_circle,
                            color: Colors.teal,
                          ),
                          maxRadius: 30,
                        )),Positioned(
                        left: 100,
                        top: 50,
                        child: Text("Username: kmrprnc", style: TextStyle(
                          color: Colors.white,
                          fontSize: 18
                        ),),
                        ),Positioned(
                        left: 100,
                        top: 70,
                        child: Text("UserId: 100256", style: TextStyle(
                          color: Colors.white,
                          fontSize: 18
                        ),),
                        ),Positioned(
                        left: 100,
                        top: 90,
                        child: Text("Balance: ₹10050", style: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                        ),),
                        ),Positioned(
                        left: 20,
                        top: 120,
                        child: RaisedButton(onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                            return AccountPage();
                          }));
                        }, color: Colors.blueGrey.shade900, child: Text("Recharge",style: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                        ),),)
                        ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                drawerMenu("Orders", Icons.perm_identity, () {}),
                drawerMenu("Account", Icons.account_balance_wallet, () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                            return AccountPage();
                          }));
                }),
                drawerMenu("Contact Us", Icons.help_outline, () {}),
                drawerMenu("Refer and Earn", Icons.people, () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                            return ReferAndEarn();
                          }));
                }),
                drawerMenu("Privacy Policy", Icons.announcement, () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                            return PrivacyPolicy();
                          }));
                }),
                drawerMenu("Settings", Icons.settings, () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                            return SettingsPage();
                          }));
                }),
                drawerMenu("Log Out", Icons.subdirectory_arrow_left, () {
                  // _signOut();
                }),
              ],
            ),
          ),
        ),
      ),
      body: _wid[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blueGrey.shade900,
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.teal,
        currentIndex: _selectedIndex,
        onTap: _onClickChange,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.blueGrey.shade900,
            icon: Icon(
              Icons.shop,
            ),
            label: "Shop",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blueGrey.shade900,
            icon: Icon(
              Icons.wallet_giftcard,
            ),
            label: "Win",
          ),
        ],
      ),
    );
  }
}
