import 'package:email_sender/email_sender.dart';
import 'package:flutter/material.dart';
import 'package:message_app/screens/gmail.dart';
import 'package:message_app/screens/registration_screen.dart';
import 'package:message_app/screens/signin_screen.dart';
import 'package:message_app/widgets/my_button.dart';

class WelcomeScreen extends StatefulWidget {
  static const String screenRoute = 'welcome_screen';

  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                Container(
                  height: 180,
                  child: Image.asset('images/logo.png'),
                ),
                Text(
                  'MessageMe',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                    color: Color(0xff2e386b),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            MyButton(
              color: Colors.yellow[900]!,
              title: 'Sign in',
              onPressed: () {
                Navigator.pushNamed(context, SignInScreen.screenRoute);
              },
            ),
            MyButton(
              color: Colors.yellow[900]!,
              title: 'send message',
              onPressed: () async {
                EmailSender emailsender = EmailSender();
                //Enter your email in send method
                var response = await emailsender.send("eventataau@gmail.com");

                if (response["message"] == "emailSendSuccess") {
                  print('SUCCESS! Email sent to ');
                } else {
                  print(
                      'ERROR! Failed to send email to : ${response["error"]}');
                }
              },
            ),
            MyButton(
              color: Colors.blue[800]!,
              title: 'register',
              onPressed: () {
                Navigator.pushNamed(context, RegistrationScreen.screenRoute);
              },
            ),
            MyButton(
              color: Colors.blue[800]!,
              title: 'gmail',
              onPressed: () {
                Navigator.pushNamed(context, byGmail.screenRoute);
              },
            )
          ],
        ),
      ),
    );
  }
}
