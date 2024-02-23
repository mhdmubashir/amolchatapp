import 'package:amolchat/components/my_button.dart';
import 'package:amolchat/components/my_textfield.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  //emailcontroler andpw controlers
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();
  final TextEditingController _confirmController = TextEditingController();

  RegisterPage {{super.key}};

  //reg methodd
  void register() {}

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          Icon(
            Icons.message,
            size: 60,
            color: Theme.of(context).colorScheme.primary,
          ),
          const SizedBox(height: 50),
          Text(
            "Lets Create an account for you",
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontSize: 16,
            ),
          ),

          //email
          const SizedBox(height: 25),
          MyTextField(
            hintText: "Email",
            obscureText: false,
            controller: _emailController,
          ),

          //password
          const SizedBox(height: 25),
          MyTextField(
            hintText: "Password",
            obscureText: true,
            controller: _pwController,
          ),

          const SizedBox(height: 25),

//confirmpas
          MyTextField(
            hintText: "Confirm Password",
            obscureText: true,
            controller: _confirmController,
          ),
       const SizedBox(height: 25),

    //regbuttom
          MyButton(
            text: "Register",
            onTap: register,
          ),

          const SizedBox(height: 25),
          //regnow

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Alredy Have an account?",
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary
                ),
                ),
              Text("Login Now",style: TextStyle(
                fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.primary
              ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}