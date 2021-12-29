import 'package:flutter/material.dart';
import 'package:pod_player/Firebase/GoogleSignIn.dart';
import 'package:pod_player/Widgets/PseudoSplash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
    create: (context) =>GoogleSignInProvider(),
    child: MaterialApp(
          debugShowCheckedModeBanner: false,
          //Dark and light themes
          theme: ThemeData(
              scaffoldBackgroundColor:Colors.white,
            brightness: Brightness.dark,
          ),
          darkTheme: ThemeData(
          scaffoldBackgroundColor:Color(0xff1f1d2c),
              brightness: Brightness.dark),
          title: 'PodPlayer',
          //Redirect to Psplash for one-time check
          home: Psplash()),
  );
  }

