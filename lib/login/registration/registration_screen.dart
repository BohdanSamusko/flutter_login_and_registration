import 'package:auth_ui_demo/common/AuthBackground.dart';
import 'package:auth_ui_demo/common/SampleLogo.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  State createState() {
    return RegistrationScreenState();
  }
}

class RegistrationScreenState extends State<RegistrationScreen> {
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
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 80, left: 16),
                  child: SampleLogo(),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 28),
                child: Text(
                  'Create account',
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 10),
                child: Text(
                  'Please enter valid information to access your account',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 40),
                child: Container(
                  padding: EdgeInsets.only(top: 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      color: Color(0xFF262630)),
                  child: Column(
                    children: <Widget>[
                      fullNameTextField(),
                      formDivider(),
                      emailTextField(),
                      formDivider(),
                      passwordTextField()
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40),
                child: createAccountButton(),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 40),
                child: Text(
                  'Already have an account?',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
              FlatButton(
                onPressed: navigateToLogin,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Login',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget fullNameTextField() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: TextField(
        style: Theme.of(context).textTheme.bodyText1,
        decoration: InputDecoration(
            hintText: 'Full name',
            border: InputBorder.none,
            icon: Icon(
              Icons.person_outline,
              color: Colors.white,
            ),
            hintStyle: Theme.of(context).textTheme.bodyText1),
      ),
    );
  }

  Widget emailTextField() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: TextField(
        style: Theme.of(context).textTheme.bodyText1,
        decoration: InputDecoration(
            hintText: 'Email',
            border: InputBorder.none,
            icon: Icon(
              Icons.mail_outline,
              color: Colors.white,
            ),
            hintStyle: Theme.of(context).textTheme.bodyText1),
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
      padding: EdgeInsets.only(left: 16, right: 16, bottom: 8),
      child: TextField(
        obscureText: _obscurePassword,
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

  void togglePassword() {
    setState(() {
      _obscurePassword = !_obscurePassword;
    });
  }

  Widget createAccountButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Text(
          'Create',
          style: Theme.of(context).textTheme.headline2,
        ),
        Padding(
          padding: EdgeInsets.all(16),
          child: FloatingActionButton(
            onPressed: () {
              print('Create account button pressed');
            },
            child: Icon(Icons.arrow_forward),
            backgroundColor: Colors.yellow,
            foregroundColor: Colors.black,
          ),
        )
      ],
    );
  }

  void navigateToLogin() {
    Navigator.of(context).pop();
  }
}
