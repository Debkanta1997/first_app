import 'package:first_app/homepage.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _email = TextEditingController();
  final _password = TextEditingController();
  bool emailValidate = true;
  bool passValidate = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Container(
              alignment: Alignment.centerLeft,
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.4,
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "Hello\nThere",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w800),
                ),
              )),
          Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Container(
                  alignment: Alignment.topLeft,
                  child: Expanded(
                    child: Column(
                      children: [
                        TextField(
                          controller: _email,
                          onChanged: (text) {
                            text.isEmpty
                                ? emailValidate = false
                                : emailValidate = true;
                            setState(() {});
                          },
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              labelText: 'EMAIL',
                              labelStyle: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.green)),
                              errorText: !emailValidate
                                  ? 'Please enter your Email'
                                  : null),
                        ),
                        SizedBox(height: 30),
                        TextField(
                          controller: _password,
                          onChanged: (text) {
                            text.isEmpty
                                ? emailValidate = false
                                : emailValidate = true;
                            setState(() {});
                          },
                          decoration: InputDecoration(
                              labelText: 'Password',
                              labelStyle: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.green)),
                              errorText: !passValidate
                                  ? 'Please enter your Password'
                                  : null),
                          obscureText: true,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          child: InkWell(
                            onTap: () {},
                            child: Text(
                              'Forgot Password',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Montserrat',
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              gradient: LinearGradient(colors: [
                                Colors.green[600],
                                Colors.green[500]
                              ])),
                          child: TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                              },
                              child: Text(
                                "LOGIN",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              )),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.black,
                                  style: BorderStyle.solid,
                                  width: 1.0),
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(30)),
                          child: TextButton(
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ImageIcon(
                                    AssetImage('assets/images/fb_logo.webp'),
                                    color: Colors.black,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Log in with facebook",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              )),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have an account?"),
                            SizedBox(
                              width: 5,
                            ),
                            InkWell(
                              onTap: () {
                                // Navigator.push(
                                // context,
                                // MaterialPageRoute(
                                // builder: (context) => Signup()));
                              },
                              child: Text(
                                "Signup",
                                style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.w600,
                                    decoration: TextDecoration.underline),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )))
        ],
      ),


    );
  }}
