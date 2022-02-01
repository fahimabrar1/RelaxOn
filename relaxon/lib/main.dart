import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:relaxon/screens/diary_screen.dart';
import 'package:relaxon/screens/home_screen.dart';
import 'package:relaxon/screens/login_screen.dart';
import 'package:relaxon/screens/paragraph_screen.dart';
import 'package:relaxon/screens/public_chat_screen.dart';
import 'package:relaxon/screens/signup_screen.dart';
import 'package:relaxon/screens/welcome_screen.dart';
import 'global_variables.dart';
import 'screens/landing_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final routerDelegate = BeamerDelegate(
    locationBuilder: RoutesLocationBuilder(routes: {
      // Return either Widgets or BeamPages if more customization is needed
      // '/': (context, state, data) => const PublicChatScreen(),
      '/': (context, state, data) => const LandingScreen(),
      signupPath: (context, state, data) => const SignUpScreen(),
      loginPath: (context, state, data) => const LoginScreen(),
      welcomePath: (context, state, data) => const WelcomeScreen(),
      homePath: (context, state, data) => const HomeScreen(),
      diaryPath: (context, state, data) => const DiaryScreen(),
      publicchatPath: (context, state, data) => const PublicChatScreen(),
      paragraphPath: (context, state, data) => const ParagraphScreen(),
    }),
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      routeInformationParser: BeamerParser(),
      routerDelegate: routerDelegate,
      backButtonDispatcher:
          BeamerBackButtonDispatcher(delegate: routerDelegate),
      title: 'RelaxOn',
    );
  }
}
