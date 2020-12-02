import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playground/core/models/user.dart';
import 'package:playground/core/services/authentication_service.dart';
import 'package:playground/locator.dart';
import 'package:playground/ui/playground_router.dart';
import 'package:provider/provider.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>(
      initialData: User.initial(),
      create: (context) =>
          locator<AuthenticationService>().userController.stream,
      child: MaterialApp(
        title: 'Playground',
        debugShowCheckedModeBanner: false,
        onGenerateRoute: PlaygroundRouter.generateRoute,
        initialRoute: "/login",
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          scaffoldBackgroundColor: Colors.white,
          textTheme: GoogleFonts.dmSansTextTheme().apply(
            displayColor: Color(0xFF171717),
          ),
          appBarTheme: AppBarTheme(
            color: Colors.transparent,
            elevation: 0,
            brightness: Brightness.light,
          ),
        ),
      ),
    );
  }
}
