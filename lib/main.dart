import 'package:first_login/constant.dart';
import 'package:first_login/sigin_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auth Screen',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: TextTheme(
            display1: TextStyle(
                color: Colors.white,
              fontWeight: FontWeight.bold
            ),
          button: TextStyle(
            color: kPrimaryColor
          ),
          headline: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.normal,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white.withOpacity(0.2),
            )
          )
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        children: [
          Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/perosn.jpeg"),
                    fit: BoxFit.cover
                  )
                ),
              ),
          ),
          Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    textAlign: TextAlign.center,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Baking Lesson\n",
                            style: Theme.of(context).textTheme.display1
                          ),
                          TextSpan(
                            text: "Master The Art Of Baking",
                            style: Theme.of(context).textTheme.headline,
                          )
                        ]
                      ),
                  ),

                  FittedBox(
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(
                                builder: (context){
                                return SignInScreen();
                        }));
                      },
                      child: Container(
                        margin: EdgeInsets.only(bottom: 25),
                        padding: EdgeInsets.symmetric(horizontal: 26,vertical: 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: kPrimaryColor,
                        ),
                        child: Row(
                          children: [
                            Text(
                              "Start Learning",
                              style: Theme.of(context).textTheme.button.copyWith(
                                  color: Colors.black,
                              ),

                            ),
                            SizedBox(width: 10,),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.black,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
          )
        ],
      ),
    );
  }
}

