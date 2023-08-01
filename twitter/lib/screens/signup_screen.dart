import 'package:flutter/material.dart';
import '../widgets/entry_field.dart';
import '../widgets/flat_button.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  late TextEditingController _nameController;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late TextEditingController _confirmController;
  late GlobalKey<FormState> _formKey;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _confirmController = TextEditingController();
    _formKey = GlobalKey<FormState>();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.blue),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          'Sign Up',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey[100],
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            height: screenHeight - 88,
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    'http://assets.stickpng.com/images/580b57fcd9996e24bc43c53e.png',
                    height: 90,
                  ),
                  const SizedBox(height: 30),
                  CustomEntryField(
                    controller: _nameController,
                    hint: 'Enter name',
                  ),
                  const SizedBox(height: 20),
                  CustomEntryField(
                    controller: _emailController,
                    hint: 'Enter email',
                  ),
                  const SizedBox(height: 20),
                  CustomEntryField(
                    controller: _passwordController,
                    hint: 'Enter password',
                    isPassword: true,
                  ),
                  const SizedBox(height: 20),
                  CustomEntryField(
                    controller: _confirmController,
                    hint: 'Confirm password',
                    isPassword: true,
                  ),
                  const SizedBox(height: 30),
                  CustomFlatButton(
                    label: 'Submit',
                    onPressed: () {},
                    isbold: true,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
