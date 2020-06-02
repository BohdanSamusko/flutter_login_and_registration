import 'package:auth_ui_demo/common/AuthBackground.dart';
import 'package:auth_ui_demo/common/SampleLogo.dart';
import 'package:auth_ui_demo/registration/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  @override
  State createState() {
    return LoginState();
  }
}

class LoginState extends State<LoginScreen> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return AuthBackground(
      content: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 80, left: 16),
                child: SampleLogo(),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 28),
                child: Text(
                  'Welcome back!',
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 10),
                child: Text(
                  'Enter your email address and password to get access your account.',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 40),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      color: Color(0xFF262630)),
                  child: Column(
                    children: <Widget>[
                      emailTextField(),
                      formDivider(),
                      passwordTextField(),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {
                      print('Forgot button pressed');
                    },
                    child: Text(
                      'Forgot password?',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 40),
                    child: loginButton(),
                  )
                ],
              ),
              loginViaFacebookButton(),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 65),
                child: Text(
                  'Don\'t have an account?',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
              FlatButton(
                onPressed: navigateToRegistration,
                child: Text(
                  'Create account',
                  style: Theme.of(context).textTheme.headline3,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget emailTextField() {
    return Padding(
      padding: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 0),
      child: TextField(
        cursorColor: Colors.white24,
        style: Theme.of(context).textTheme.bodyText1,
        decoration: InputDecoration(
            hintText: 'Email',
            border: InputBorder.none,
            hintStyle: Theme.of(context).textTheme.bodyText1,
            icon: Icon(
              Icons.mail_outline,
              color: Colors.white,
            )),
      ),
    );
  }


  Widget formDivider() {
    return Padding(
      padding: EdgeInsets.only(left: 16),
      child: Divider(
        color: Color(0xFF2c2f37),
      ),
    );
  }

  Widget passwordTextField() {
    return Padding(
      padding: EdgeInsets.only(left: 16, right: 16, top: 0, bottom: 8),
      child: TextField(
        obscureText: _obscurePassword,
        cursorColor: Colors.white24,
        style: Theme.of(context).textTheme.bodyText1,
        decoration: InputDecoration(
            hintText: 'Password',
            border: InputBorder.none,
            hintStyle: Theme.of(context).textTheme.bodyText1,
            icon: Icon(
              Icons.lock_outline,
              color: Colors.white,
            ),
            suffixIcon: InkWell(
              onTap: togglePassword,
              child: _obscurePassword
                  ? Icon(
                      Icons.visibility,
                      color: Colors.white,
                    )
                  : Icon(
                      Icons.visibility_off,
                      color: Colors.white,
                    ),
            ),
            suffixIconConstraints: BoxConstraints.tight(Size(56, 24))),
      ),
    );
  }

  Widget loginButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(
          'Login',
          style: Theme.of(context).textTheme.headline2,
        ),
        Padding(
          padding: EdgeInsets.all(16),
          child: FloatingActionButton(
            onPressed: () {
              print('Login button pressed');
            },
            child: Icon(Icons.arrow_forward),
            backgroundColor: Colors.yellow,
            foregroundColor: Colors.black,
          ),
        )
      ],
    );
  }

  Widget loginViaFacebookButton() {
    return Padding(
      padding: EdgeInsets.only(top: 50, left: 16, right: 16),
      child: InkWell(
        onTap: () {
          print('Login via Facebook pressed');
        },
        child: Container(
          decoration: BoxDecoration(
              color: Color(0xFF3c5999), borderRadius: BorderRadius.circular(8)),
          child: IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: SvgPicture.asset(
                    'assets/logo_facebook.svg',
                    color: Colors.white,
                    width: 24,
                    height: 24,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: VerticalDivider(
                    thickness: 1,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                  child: Text(
                    'Login with Facebook',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void togglePassword() {
    setState(() {
      _obscurePassword = !_obscurePassword;
    });
  }

  void navigateToRegistration() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => RegistrationScreen()));
  }
}
