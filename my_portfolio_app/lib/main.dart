import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/widgets.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CustomSplashScreen(),
    ),
  );
}

class CustomSplashScreen extends StatefulWidget {
  const CustomSplashScreen({Key key}) : super(key: key);

  @override
  _CustomSplashScreenState createState() => _CustomSplashScreenState();
}

class _CustomSplashScreenState extends State<CustomSplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
        seconds: 4,
        navigateAfterSeconds: new MyApp(),
        title: new Text(
          'Ritik Patle',
          style: TextStyle(
            color: Colors.teal.shade900,
            fontFamily: 'Source Sans Pro',
            fontSize: 20.0,
          ),
        ),
        image: new Image.asset('assets/rplogo.png'),
        backgroundColor: Colors.white,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 100.0,
        loaderColor: Colors.teal);
  }
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('assets/Ritik_Patle.jpg'),
            ),
            Text(
              'Ritik Patle',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 40.0,
                color: Colors.white,
              ),
            ),
            AnimatedTextKit(
              repeatForever: true,
              animatedTexts: [
                TypewriterAnimatedText(
                  'Web Developer',
                  textAlign: TextAlign.left,
                  textStyle: const TextStyle(
                    fontFamily: 'Source Sans Pro',
                    color: Colors.white,
                    fontSize: 30.0,
                    letterSpacing: 2.5,
                  ),
                ),
                TypewriterAnimatedText(
                  'Flutter Developer',
                  textAlign: TextAlign.left,
                  textStyle: const TextStyle(
                    fontFamily: 'Source Sans Pro',
                    color: Colors.white,
                    fontSize: 30.0,
                    letterSpacing: 2.5,
                  ),
                ),
                TypewriterAnimatedText(
                  'Python Programmer',
                  textAlign: TextAlign.left,
                  textStyle: const TextStyle(
                    fontFamily: 'Source Sans Pro',
                    color: Colors.white,
                    fontSize: 30.0,
                    letterSpacing: 2.5,
                  ),
                ),
                TypewriterAnimatedText(
                  'Creative Writer',
                  textAlign: TextAlign.left,
                  textStyle: const TextStyle(
                    fontFamily: 'Source Sans Pro',
                    color: Colors.white,
                    fontSize: 30.0,
                    letterSpacing: 2.5,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
              width: 180.0,
              child: Divider(
                color: Colors.white,
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 25.0,
              ),
              child: ListTile(
                onTap: () {
                  const url = 'tel:+91 9340238551';
                  launch(url);
                },
                leading: Icon(
                  Icons.call,
                  color: Colors.teal.shade900,
                ),
                title: Text(
                  '+91 9340238551',
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 25.0,
              ),
              child: ListTile(
                onTap: () async {
                  const url = 'mailto:ritik.patle.000@gmail.com';
                  launch(url);
                },
                leading: Icon(
                  Icons.email_outlined,
                  color: Colors.teal.shade900,
                ),
                title: Text(
                  'ritik.patle.000@gmail.com',
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 25.0,
              ),
              child: ListTile(
                onTap: () async {
                  const url = 'https://ritik-patle.web.app/';
                  launch(url);
                },
                leading: Icon(
                  Icons.web_sharp,
                  color: Colors.teal.shade900,
                ),
                title: Text(
                  'Website [Ritik Patle]',
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 25.0,
              ),
              child: ListTile(
                onTap: () async {
                  const url = 'https://github.com/RitikPatle';
                  launch(url);
                },
                leading: Icon(
                  Icons.link,
                  color: Colors.teal.shade900,
                ),
                title: Text(
                  'Github [Ritik Patle]',
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 25.0,
              ),
              child: ListTile(
                onTap: () async {
                  const url =
                      'https://www.canva.com/design/DAEeLK5xWvw/Yw5ciotDgBV64Hmf-1i4iQ/view?utm_content=DAEeLK5xWvw&utm_campaign=designshare&utm_medium=link&utm_source=publishsharelink';
                  launch(url);
                },
                leading: Icon(
                  Icons.link,
                  color: Colors.teal.shade900,
                ),
                title: Text(
                  'Resume [Ritik Patle]',
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
