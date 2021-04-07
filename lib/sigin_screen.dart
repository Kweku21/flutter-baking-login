import 'package:first_login/constant.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/perosn.jpeg"),
                      fit: BoxFit.cover,
                    alignment: Alignment.bottomCenter,
                  )

                ) ,
              )
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16,),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Text(
                        "Sign In",
                        style: Theme.of(context).textTheme.display1,
                      ),
                      Text(
                        "Sign Up",
                        style: Theme.of(context).textTheme.button,
                      )
                    ],
                  ),

                  Spacer(),
                  Padding(
                    padding:  EdgeInsets.only(bottom: 35),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 16),
                          child: Icon(
                            Icons.alternate_email,
                            color:kPrimaryColor ,
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Enter Email",

                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 16),
                        child: Icon(
                          Icons.lock,
                          color:kPrimaryColor ,
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Enter Password",

                          ),
                        ),
                      )
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white.withOpacity(0.5),)
                          ),
                          padding: EdgeInsets.all(16),

                          child: Icon(
                            Icons.android,
                            color: Colors.white.withOpacity(0.5),
                          ),
                        ),

                        SizedBox(width: 20,),

                        Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white.withOpacity(0.5),)
                          ),
                          padding: EdgeInsets.all(16),

                          child: Icon(
                            Icons.chat,
                            color: Colors.white.withOpacity(0.5),
                          ),
                        ),
                        Spacer(),
                        Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: kPrimaryColor,
                          ),
                          padding: EdgeInsets.all(16),

                          child: Icon(
                            Icons.arrow_forward,
                            color: Colors.black),
                          ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
