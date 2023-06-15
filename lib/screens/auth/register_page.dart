import 'package:anime_app/screens/auth/widget/text_form.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 25),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 12),
                  child: Text(
                    "Register",
                  ),
                ),

                AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Image.asset("assets/image/register_image.jpeg")),
                const SizedBox(
                  height: 15,
                ),

                // { Email Field }
                TextFormWidget(
                  textEditingController: _emailTextController,
                  hintText: "Masukan Email",
                  labelText: "Email",
                  textInputType: TextInputType.emailAddress,
                ),

                const SizedBox(
                  height: 15,
                ),

                // { Password Field }
                TextFormWidget(
                    textEditingController: _passwordTextController,
                    hintText: "Masukan Password",
                    labelText: "Password",
                    textInputType: TextInputType.text),

                const SizedBox(
                  height: 18,
                ),

                ActionChip(
                  label: const Text("Already have a account? Login Now !!"),
                  onPressed: () => Navigator.pushNamed(context, "/"),
                ),

                const SizedBox(
                  height: 30,
                ),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(320, 50),
                      maximumSize: const Size(520, 70),
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      backgroundColor: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                  onPressed: () => Navigator.pushNamed(context, "/app"),
                  child: const Text("Register Now"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
