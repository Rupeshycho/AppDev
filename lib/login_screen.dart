import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Text('Sign in ',
            style:
              TextStyle(
                  color: Color(0XFF0B4096),
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
              ),)),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                  "This is the sign in for login. this is the login page  ",
                   style: TextStyle(
                     color: Colors.grey,
                   ),
                  textAlign: TextAlign.center,
              ),
            ),

          ),
          Center(
            child: Row(
              children: [
                Expanded(child: SizedBox( height:70, child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        children: [
                          Image.asset(
                              "assets/images/googlelogo.png",
                            height: 30,
                            width: 30,
                          ),


                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Google", style: TextStyle(fontWeight: FontWeight.w900),),
                          ),
                        ],
                      ),
                    ),
                  ),
                ))),
                Expanded(child: SizedBox(height: 70, child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/facebook.png",
                            height: 30,
                            width: 30,
                          ),
                          // Icon(Icons.face_2_outlined),

                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Text("Facebook", style: TextStyle(fontWeight: FontWeight.w900),),
                          ),
                        ],
                      ),
                    ),
                  ),
                ))),
              ],
            ),
          ),
          Row(
            children: const[
              Expanded(child: Divider()),
              Text("Or"),
              Expanded(child: Divider()),
            ],
          ),

        ],
      ),
    );


  }
}
