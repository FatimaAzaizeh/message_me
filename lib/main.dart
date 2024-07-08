import 'package:flutter/material.dart';
import 'package:message_app/firebase_options.dart';
import 'package:message_app/screens/chat_screen.dart';
import 'package:message_app/screens/gmail.dart';
import 'package:message_app/screens/registration_screen.dart';
import 'package:message_app/screens/signin_screen.dart';
import 'package:message_app/screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart'
    show Firebase, FirebaseApp, FirebaseOptions; //firebase
import 'package:firebase_auth/firebase_auth.dart'; //firebase
import 'package:cloud_firestore/cloud_firestore.dart'; //firebase

final _auth = FirebaseAuth.instance;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //await Firebase.initializeApp();

  //await Firebase.initializeApp();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseFirestore.setLoggingEnabled(true); //add
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: ' MessageMe app',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: _auth.currentUser != null
            ? ChatScreen.screenRoute
            : WelcomeScreen.screenRoute,
        routes: {
          WelcomeScreen.screenRoute: (context) => WelcomeScreen(),
          SignInScreen.screenRoute: (context) => SignInScreen(),
          RegistrationScreen.screenRoute: (context) => RegistrationScreen(),
          ChatScreen.screenRoute: (context) => ChatScreen(),
          byGmail.screenRoute: (context) => byGmail()
        });
  }
}
