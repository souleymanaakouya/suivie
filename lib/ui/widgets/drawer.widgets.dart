import 'package:firebase/main.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      
      child: ListView(
        children: [
          DrawerHeader(
              
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Colors.white,
                Colors.deepPurpleAccent,
              ])),
              child: Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage("images/sman.png"),
                  radius: 40,
                ),
              )),
          ListTile(
            title: Text(
              'Acceuil',
              style: TextStyle(fontSize: 22),
            ),
            leading: Icon(
              Icons.home,
              color: Colors.deepPurpleAccent,
            ),
            trailing: Icon(
              Icons.arrow_right,
              color: Colors.deepPurpleAccent,
            ),
            onTap: () {
              //  Navigator.of(context).pop();
              Navigator.pushNamed(context, "/main");
            },
          ),
          Divider(
            height: 4,
            color: Colors.deepPurpleAccent,
          ),
          ListTile(
            title: Text(
              'ICT-L1',
              style: TextStyle(fontSize: 22),
            ),
            leading: Icon(
              Icons.book,
              color: Colors.deepPurpleAccent,
            ),
            trailing: Icon(
              Icons.arrow_right,
              color: Colors.deepPurpleAccent,
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, "/ictl1");
            },
          ),
          Divider(
            height: 4,
            color: Colors.deepPurpleAccent,
          ),
          ListTile(
            title: Text(
              'ICT-L2',
              style: TextStyle(fontSize: 22),
            ),
            leading: Icon(
              Icons.book,
              color: Colors.deepPurpleAccent,
            ),
            trailing: Icon(
              Icons.arrow_right,
              color: Colors.deepPurpleAccent,
            ),
            onTap: () {
               Navigator.of(context).pop();
               Navigator.pushNamed(context, "/ictl2");
            },
          ),
          Divider(
            height: 4,
            color: Colors.deepPurpleAccent,
          ),
          ListTile(
            title: Text(
              'ICT-L3',
              style: TextStyle(fontSize: 22),
            ),
            leading: Icon(
              Icons.book,
              color: Colors.deepPurpleAccent,
            ),
            trailing: Icon(
              Icons.arrow_right,
              color: Colors.deepPurpleAccent,
            ),
            onTap: () {
               Navigator.of(context).pop();
               Navigator.pushNamed(context, "/ictl3");
            },
          ),

           Divider(
            height: 4,
            color: Colors.deepPurpleAccent,
          ),
          ListTile(
            title: Text(
              'Parametre',
              style: TextStyle(fontSize: 22),
            ),
            leading: Icon(
              Icons.settings,
              color: Colors.deepPurpleAccent,
            ),
            trailing: Icon(
              Icons.arrow_right,
              color: Colors.deepPurpleAccent,
            ),
            onTap: () {
            },
          ),

           Divider(
            height: 4,
            color: Colors.deepPurpleAccent,
          ),
          ListTile(
            title: Text(
              'Deconnexion',
              style: TextStyle(fontSize: 22),
            ),
            leading: Icon(
              Icons.logout,
              color: Colors.redAccent,
            ),
            trailing: Icon(
              Icons.arrow_right,
              color: Colors.deepPurpleAccent,
            ),
            onTap: () {

            },
          )
        ],
      ),
    );
  }
}



class Popup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
            debugShowCheckedModeBanner: false,
      home: BottomNavBar(),
    );
  }
}

class BottomNavBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BottomNavBarState();
  }
}

class BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: PopupMenuButton(
              tooltip: 'Ajout',
              child: Icon(
                Icons.more_vert,
                size: 28.0,
                color: Colors.white,
              ),
              itemBuilder: (context) => [
          
                PopupMenuItem(
                  child: Row(
                    children: [
                      Icon(
                        Icons.group_add,
                        color: Colors.black54,
                        size: 22.0,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 10.0,
                        ),
                        child: Text(
                          "Ajoutez un Enseignant",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ],
                    
                  ),
                ),
            
                PopupMenuItem(
                  child: Row(
                    children: [
                      Icon(
                        Icons.list_alt,
                        color: Colors.black54,
                        size: 22.0,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 10.0,
                        ),
                        child: Text(
                          "Liste des Enseignants",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}