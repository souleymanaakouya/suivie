import 'package:firebase/ui/home/emargement.dart';
import 'package:firebase/ui/home/acceuil.dart';
import 'package:firebase/ui/home/presence.dart';
import 'package:firebase/ui/pages/home.page.dart';
import 'package:firebase/ui/pages/ictl1.dart';
import 'package:firebase/ui/pages/ictl2.dart';
import 'package:firebase/ui/pages/ictl3.dart';
import 'package:firebase/ui/widgets/drawer.widgets.dart';
import 'package:firebase/ui/widgets/popupmenu.widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase/login/Screens/login/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/home":(context) => HomePage(),
        "/ictl1": (context) => IctL1(),
        "/ictl2": (context) => IctL2(),
        "/ictl3": (context) => IctL3(),
        
      },
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        textTheme: GoogleFonts.robotoTextTheme(Theme.of(context).textTheme)
 
      ),
      initialRoute: "/LoginScreen",
      home:  LoginScreen(),
      
     );
  }
}





class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  String title = 'BottomNavigationBar';

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text(""),
        centerTitle: true,
      ),
      body: TabBarView(
        children: <Widget>[ Acceuil(), Presence(), Emargement()],
        // If you want to disable swiping in tab the use below code
        physics: NeverScrollableScrollPhysics(),
        controller: _tabController,
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(10.0),
        child: ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(30.0),
          ),
          child: Container(
            color: Colors.black26,
            child: TabBar(
              labelColor: Colors.deepPurpleAccent,
              unselectedLabelColor: Colors.white,
              labelStyle: TextStyle(fontSize: 15.0),

              //For Indicator Show and Customization
              indicatorColor: Colors.deepPurpleAccent,
              tabs: <Widget>[
                Tab(
                  icon: Icon(
                  Icons.home,   
                    size: 24.0,
                  ),
                  text: 'Acceuil',
                ),
                Tab(
                  icon: Icon(
                    Icons.book_online,
                    size: 24.0,
                  ),
                  text: 'Presence',
                ),
                Tab(
                  icon: Icon(
                    Icons.list_alt,
                    size: 24.0,
                  ),
                  text: 'Emargement',
                ),
              ],
              controller: _tabController,
            ),
          ),
        ),
      ),
    );
  }
}
