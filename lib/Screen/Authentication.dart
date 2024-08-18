import 'package:flutter/material.dart';
import 'package:flutter_widgets/Function/auth_signup.dart';

class Authentication extends StatefulWidget {
  const Authentication({super.key});

  @override
  State<Authentication> createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  final _formKey = GlobalKey<FormState>();
  bool isLogin = false;
  String username = '';
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Authentication"),
      ),
      body: Form(
        key: _formKey,
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              !isLogin
                  ? TextFormField(
                key: const ValueKey('username' ),
                decoration: const InputDecoration(hintText: 'Enter Username'),
                validator: (value) {
                  if (value!.toString().length < 3) {
                    return "Username is too small";
                  } else {
                    return null;
                  }
                },
                onSaved:(value){
                  setState(() {
                    username = value!;
                  });
                },
              )
                  : Container(),
              TextFormField(
                key: const ValueKey('email'),
                decoration: const InputDecoration(hintText: 'Enter Email'),
                validator: (value) {
                  if ((!value!.toString().contains('@'))) {
                    return "InValid Email";
                  } else {
                    return null;
                  }
                },
                onSaved:(value){
                  setState(() {
                    email = value!;
                  });
                },
              ),
              TextFormField(
                obscureText: true,
                key: const ValueKey('password'),
                decoration: const InputDecoration(hintText: 'Enter Password'),
                validator: (value) {
                  if (value!.toString().length < 6) {
                    return "Password Should be greater than 6";
                  } else {
                    return null;
                  }
                },
                onSaved:(value){
                  setState(() {
                    password = value!;
                  });
                },
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if(_formKey.currentState!.validate()){
                      _formKey.currentState!.save();
                      isLogin ? SignIn(email, password)
                           :SignUp(email,password);
                    }
                  },
                  style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all(Colors.deepPurple)),
                  child: isLogin
                      ? const Text(
                    "Login",
                    style: TextStyle(color: Colors.white),
                  )
                      : const Text(
                    "SignUp",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      isLogin = !isLogin;
                    });
                  },
                  child: isLogin
                      ? Text("Don't Have Account ? SignUp")
                      : Text("Already Signed Up ? Login"))
            ],
          ),
        ),
      ),
    );
  }
}
