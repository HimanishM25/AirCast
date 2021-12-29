import 'package:flutter/material.dart';
import 'package:pod_player/Firebase/GoogleSignIn.dart';
import 'package:provider/provider.dart';

import 'GoogleSignIn.dart';

class GSignInPage extends StatefulWidget {
  const GSignInPage({Key? key}) : super(key: key);

  @override
  _GSignInPageState createState() => _GSignInPageState();
}

class _GSignInPageState extends State<GSignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: () {
          final provider = Provider.of<GoogleSignInProvider>(context, listen:false);
          provider.googleLogin();
          },
        child: Text('Sign In with Google'),


        ),
      ),
    );
  }
}
