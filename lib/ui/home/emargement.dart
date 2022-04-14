import 'package:flutter/material.dart';

class Emargement extends StatelessWidget {
  const Emargement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
         primarySwatch: Colors.blue,
      ),    
      home: Liste(),
      );
  }
}

class Liste extends StatelessWidget {
  const Liste({ Key? key }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    String valueChoose;
    List listIten = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5"];

    return Scaffold(
      backgroundColor: Color.fromARGB(00, 00, 4, 06),
      body: Center(
        // child: DropdownButton(
        // value: valueChoose,
        // onChanged: (newValue){
        //   setState((
        //   {
        //   valueChoose = newValue;
        //   });
        //   },
        // items: listItem.map((valueItem){
        // return DropdownMenuItem(
        // value : valueItem,
        // child: Text(valueItem),
        // );
        // } ).doList(),

        child: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Form(
            // key: _key,
            child: Column(
          children: <Widget>[
            // Image(image: AssetImage("images/imag.png"),),
            Card(
              child: TextFormField(
                // controller: username,
                validator: (e) =>
                    e!.isEmpty ? "Velillez verifier ce champs" : null,
                style: TextStyle(fontSize: 20),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(20),
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(left: 20, right: 15),
                      child: Icon(
                        Icons.legend_toggle_outlined,
                        size: 30,
                      ),
                    ),
                    labelText: "UE",
                    hintText: "nom d'utilisateur"),
                keyboardType: TextInputType.text,
              ),
            ),

            Card(
              child: TextFormField(
                // controller: username,
                validator: (e) =>
                    e!.isEmpty ? "Velillez verifier ce champs" : null,
                style: TextStyle(fontSize: 20),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(20),
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(left: 20, right: 15),
                      child: Icon(
                        Icons.person,
                        size: 30,
                      ),
                    ),
                    labelText: "Nom :",
                    hintText: "Saisisez le nom du Professeur"),
                keyboardType: TextInputType.text,
              ),
            ),

            Card(
              child: TextFormField(
                // controller: username,
                validator: (e) =>
                    e!.isEmpty ? "Velillez verifier ce champs" : null,
                style: TextStyle(fontSize: 20),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(20),
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(left: 20, right: 15),
                      child: Icon(
                        Icons.date_range,
                        size: 30,
                      ),
                    ),
                    labelText: "Date",
                    hintText: "nom d'utilisateur"),
                keyboardType: TextInputType.text,
              ),
            ),

            Card(
              child: TextFormField(
                // controller: username,
                validator: (e) =>
                    e!.isEmpty ? "Velillez verifier ce champs" : null,
                style: TextStyle(fontSize: 20),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(20),
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(left: 20, right: 15),
                      child: Icon(
                        Icons.email,
                        size: 30,
                      ),
                    ),
                    labelText: "Email",
                    hintText: "Votre email"),
                keyboardType: TextInputType.text,
              ),
            ),

            Card(
              child: TextFormField(
                // controller: age,
                validator: (e) =>
                    e!.isEmpty ? "Velillez verifier ce champs" : null,
                style: TextStyle(fontSize: 20),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(20),
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(left: 20, right: 15),
                      child: Icon(
                        Icons.timer,
                        size: 30,
                      ),
                    ),
                    labelText: 'Heure',
                    hintText: "Votre matricule"),
                keyboardType: TextInputType.text,
              ),
            ),

            Card(
              child: TextFormField(
                // controller: age,
                validator: (e) =>
                    e!.isEmpty ? "Velillez verifier ce champs" : null,
                style: TextStyle(fontSize: 20),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(20),
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(left: 20, right: 15),
                      child: Icon(
                        Icons.assignment_turned_in_sharp,
                        size: 30,
                      ),
                    ),
                    labelText: 'Titres traites',
                    hintText: "Votre matricule"),
                keyboardType: TextInputType.text,
              ),
            ),

            SizedBox(
              width: 290,
              height: 50,
              
              child: RaisedButton(
                onPressed: () {},
                color: Colors.deepPurpleAccent,
                child: Text(
                  "Validé",
                  style: TextStyle(
                    fontSize: 19,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: <Widget>[
            //     Text(
            //       "Avez vous un compte",
            //       style: TextStyle(color: Colors.white),
            //     ),
            //     FlatButton(
            //         onPressed: () {
            //           Navigator.push(context,
            //               MaterialPageRoute(builder: (context) =>Menu()));
            //         },
            //         child: Text(
            //           "Login",
            //           style: TextStyle(
            //               color: Colors.lightBlueAccent,
            //               fontWeight: FontWeight.bold),
            //         )),
            //   ],
            // )
          ],
        )),
      )),
    );
  }
}