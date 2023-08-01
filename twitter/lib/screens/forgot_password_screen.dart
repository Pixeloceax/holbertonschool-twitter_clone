import 'package:flutter/material.dart';
import '../widgets/entry_field.dart';
import '../widgets/flat_button.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  late final TextEditingController _emailController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
          'Forget Password',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 100),
              const Text(
                'Forget Password',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              const Text(
                'Enter your email address below to receive password reset instructions.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              CustomEntryField(
                controller: _emailController,
                hint: 'Enter email',
              ),
              const SizedBox(height: 50),
              CustomFlatButton(
                label: 'Submit',
                isbold: true,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
