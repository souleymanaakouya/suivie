import 'package:firebase/main.dart';
import 'package:firebase/ui/home/emargement.dart';
import 'package:firebase/ui/home/acceuil.dart';
import 'package:firebase/ui/home/presence.dart';
import 'package:firebase/ui/widgets/drawer.widgets.dart';
import 'package:firebase/ui/widgets/popupmenu.widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      drawer: MyDrawer(),

      // popupmenu: Popup(),
      appBar: AppBar(
        title: Text('Home'),
      ),
     );
  }
}
