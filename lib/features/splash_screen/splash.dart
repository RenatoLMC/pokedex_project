import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pokedex_project/features/home/home_page.dart';

/*class Splash extends StatelessWidget {
  @override
  build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
        "images/splash_screen/splash.png",
        fit: BoxFit.cover,
        width: double.infinity,
      ),
    );
  }
}
*/

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([]);
    Future.delayed(Duration(seconds: 6)).then((_) {
      // essa tela não entra na stack
      Navigator.pushReplacement(
          // ignore: missing_required_param
          context,
          MaterialPageRoute(builder: (context) => HomePage()));
    });
  }

  @override
  build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
        "images/splash_screen/splash.png",
        fit: BoxFit.cover,
        width: double.infinity,
      ),
    );
  }
}
