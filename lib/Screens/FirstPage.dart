import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';


class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: FractionalOffset.topLeft,
                        end: FractionalOffset.bottomRight,
                        colors: [Color(0xffD48EFF),Color(0xff482ABF)]

                    ),
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50),bottomRight: Radius.circular(50))),
                width: double.infinity,
                height: 500,
              ),
              Column(
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Image.asset('assets/images/SignIn.png'),
                    ),
                  ),
                ],
              )

            ],),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Listen to your',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400
                  ),),

                Text('Favorite Podcast',
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w800
                  ),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('with ',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400
                      ),),
                    GradientText('AirCast', colors: [Color(0xffD48EFF),Color(0xff482ABF)],
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w800
                      ),),
                  ],
                ),
              ], ),
          ),

        ],
      ),
    );
  }
}
