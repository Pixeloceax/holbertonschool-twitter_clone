import 'package:flutter/material.dart';
import '../widgets/entry_field.dart';
import '../widgets/flat_button.dart';

import 'signup_screen.dart';
import 'forgot_password_screen.dart';
import 'home_screen.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Sign In',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 30,
                  height: 1,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
              Image.network(
                'http://assets.stickpng.com/images/580b57fcd9996e24bc43c53e.png',
                height: 90,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    CustomEntryField(
                      hint: 'Enter email',
                      controller: _emailController,
                      isPassword: false,
                    ),
                    const SizedBox(height: 10),
                    CustomEntryField(
                      hint: 'Enter password',
                      controller: _passwordController,
                      isPassword: true,
                    ),
                  ],
                ),
              ),
              CustomFlatButton(
                label: 'Submit',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                  );
                },
                isbold: true,
              ),
              const SizedBox(height: 30),
              CustomFlatButton(
                  label: 'Sign up',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUp()),
                    );
                  }),
              CustomFlatButton(
                label: 'Forget password ?',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ForgetPassword()),
                  );
                },
                isbold: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
