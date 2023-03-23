import 'package:demo_new/constant/widgets/textViewField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  padding:  EdgeInsets.only(
                      bottom: 40,
                      top: MediaQuery.of(context).size.height /3),
                  child: const Text('Login Page')),
              const TextFieldView(
                text: 'UserName',
              ),
              const SizedBox(
                height: 10,
              ),
              const TextFieldView(
                text: 'Password',
                obsecure: true,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: 280,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(28)
                ),
                padding: EdgeInsets.only(left: 60),
              )
            ],
          ),
        ),
      ),
    );
  }
}
