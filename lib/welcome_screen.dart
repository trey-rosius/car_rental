import 'package:flutter/material.dart';

import 'home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFFFCE2B),
      body: Stack(
        alignment: Alignment.center,
        children: [

          Container(
            padding: EdgeInsets.only(left: 70),
            child: Transform.scale(
              scale: 1.5,
                child: Image.asset('assets/images/porshe1.png')),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: size.width/1.2,
              height: 60,
              margin: EdgeInsets.only(bottom: 60),
              child: ElevatedButton(
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.black)),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                  }, child: const Text('Get started',style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFFFFCE2B),
                  fontWeight: FontWeight.bold
              ),)),
            ),
          )
        ],
      ),
    );
  }
}
