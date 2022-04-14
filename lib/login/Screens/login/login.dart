import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase/login/Screens/login/companents/cancel_button.dart';
import 'package:firebase/login/Screens/login/companents/login_form.dart';
import 'package:firebase/login/Screens/login/companents/register_form.dart';
import 'package:firebase/login/constants.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  bool isLogin = true;
  late Animation<double> containerSize;
  AnimationController? animationController;
  Duration animationDuration = Duration(milliseconds: 270);

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: animationDuration);
  }

  @override
  void dispose() {
    animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    double viewInset = MediaQuery.of(context)
        .viewInsets
        .bottom; // we are using this to determine Keyboard is opened or not
    double defaultLoginSize = size.height - (size.height * 0.2);
    double defaultRegisterSize = size.height - (size.height * 0.1);

    containerSize =
        Tween<double>(begin: size.height * 0.1, end: defaultRegisterSize)
            .animate(CurvedAnimation(
                parent: animationController!, curve: Curves.linear));

    return Scaffold(
      body: Stack(
        children: [
          // Lets add some decorations
          Positioned(
              top: 100,
              right: -50,
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: kPrimaryColor),
              )),

          Positioned(
              top: -50,
              left: -50,
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: kPrimaryColor),
              )),

          // Cancel Button
          CancelButton(
            isLogin: isLogin,
            animationDuration: animationDuration,
            size: size,
            animationController: animationController,
            tapEvent: isLogin
                ? null
                : () {
                    // returning null to disable the button
                    animationController!.reverse();
                    setState(() {
                      isLogin = !isLogin;
                    });
                  },
          ),

          // Login Form
          LoginForm(
              isLogin: isLogin,
              animationDuration: animationDuration,
              size: size,
              defaultLoginSize: defaultLoginSize),

          // Register Container
          AnimatedBuilder(
            animation: animationController!,
            builder: (context, child) {
              if (viewInset == 0 && isLogin) {
                return buildRegisterContainer();
              } else if (!isLogin) {
                return buildRegisterContainer();
              }

              // Returning empty container to hide the widget
              return Container();
            },
          ),

          // Register Form
          RegisterForm(
              isLogin: isLogin,
              animationDuration: animationDuration,
              size: size,
              defaultLoginSize: defaultRegisterSize),
        ],
      ),
    );
  }

  Widget buildRegisterContainer() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        height: containerSize.value,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(100),
              topRight: Radius.circular(100),
            ),
            color: kBackgroundColor),
        alignment: Alignment.center,
        child: GestureDetector(
          onTap: !isLogin
              ? null
              : () {
                  animationController!.forward();

                  setState(() {
                    isLogin = !isLogin;
                  });
                },
          child: isLogin
              ? Text(
                  "Don't have an account? Sign up",
                  style: TextStyle(color: kPrimaryColor, fontSize: 18),
                )
              : null,
        ),
      ),
    );
  }
}











// import 'dart:js';
// import 'package:flutter/services.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter/material.dart';
// import 'package:login/companents/rounded_input.dart';
// import 'package:login/companents/rounded_password.dart';
// import 'package:login/constants.dart';

// import '../../companents/rounded_button.dart';

// class LoginScreen extends StatefulWidget {
//   const LoginScreen({ Key? key }) : super(key: key);

//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> with SingleTickerProviderStateMixin {

//   bool isLogin = true;
//   late Animation<double> containerSize;
//   late AnimationController animationController;
//   Duration animationDuration = Duration(milliseconds: 270);

//   @override
//   void initState(){
//     super.initState();
//     SystemChrome.setEnabledSystemUIOverlays([]);

//     animationController = AnimationController(vsync: this, duration: animationDuration);

//   }
  
//   @override
//   void dispose(){
//     animationController.dispose();
//     super.dispose();
//   }


//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     double viewInset = MediaQuery.of(context).viewInsets.bottom; //ca permet d verifier si l mo d pass est correc ou pa
//     double defautLoginSize = size.height - (size.height * 0.2);
//     double defautRegisterSize = size.height - (size.height * 0.1);

//     containerSize = Tween<double>(begin: size.height * 0.1, end: defautRegisterSize).animate(CurvedAnimation(parent: animationController, curve: Curves.linear));

//     return Scaffold(
//       body: Stack(
//         children: [
//           // login form
//           Align(
//             alignment: Alignment.center,
//             child: SingleChildScrollView(
//               child: Container(
//                 width: size.width,
//                 height: defautLoginSize,

//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [ 
//                     Text(
//                       'Welcome Back',
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 22
//                       ),
//                     ),
//                     SizedBox(height: 40),
                    
//                     SvgPicture.asset('assets/images/login.svg'),
                  
//                     SizedBox(height: 40,),

//                     RoundedInput(icon: Icons.mail, hint: 'Username'),

//                     RoundedPassword(hint: 'Password'),

//                     RoundedButton(title: 'LOGIN')
//                   ],
//                 ),
//               ),
//             ),
//           ),

//           // Register container

//           AnimatedBuilder(
//             animation: animationController,
//             builder: (context, child){
//               return buildRegisterContainer();
//             },
//             child: Align(
//               alignment: Alignment.bottomCenter,
//               child: Container(
//                 width: double.infinity,
//                 height: size.height * 0.1,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(100),
//                     topRight: Radius.circular(100)
//                   ),
//                   color: kBackgroundColor
//                   ),
//                   alignment: Alignment.center,
//                   child: GestureDetector(
//                     onTap: (){},
//                     child: Text(
//                       "Dont have an account? Sign up",
//                       style: TextStyle(
//                       color: kPrimaryColor,
//                       fontSize: 18
//                       ),
//                     ),
//                   ),
//               ),
//             ),
//           )
//         ],
//       ),
//     );  
//   }
//   Widget buildRegisterContainer(){
        
//   }
// }
