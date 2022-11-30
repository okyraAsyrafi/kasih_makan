import 'package:flutter/material.dart';
import 'package:kasih_makan/style.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isObscure = true;
  final _key = GlobalKey<FormState>();
  TextEditingController tecUsername = TextEditingController(text: '');
  TextEditingController tecPassword = TextEditingController(text: '');
  @override
  Widget build(BuildContext context) {
    Widget logo() {
      return Container(
        width: 130,
        height: 112,
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage("images/logo.png"),
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    Widget loginForm() {
      return Form(
        key: _key,
        child: Container(
          padding: const EdgeInsets.fromLTRB(45, 35, 45, 45),
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: tecUsername,
                style: textPPrimary.copyWith(fontSize: 14),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  filled: true,
                  fillColor: putih,
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 14, horizontal: 14),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: primary),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: "Masukkan Username",
                  hintStyle: textPSecondary,
                  label: const Text("Username"),
                  labelStyle: textPSecondary,
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: tecPassword,
                style: textPPrimary.copyWith(fontSize: 14),
                obscureText: _isObscure,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  filled: true,
                  fillColor: putih,
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 14, horizontal: 14),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: primary),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  suffixIcon: GestureDetector(
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                      icon: Icon(
                        _isObscure
                            ? Icons.visibility_off_outlined
                            : Icons.remove_red_eye,
                        color: secondary,
                      ),
                    ),
                  ),
                  hintText: "Masukkan Password",
                  hintStyle: textPSecondary,
                  label: const Text("Password"),
                  labelStyle: textPSecondary,
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget tombolLogin() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 45),
        height: 55,
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {},
          child: Text(
            "Masuk",
            style: textPPutih.copyWith(
              fontSize: 18,
              fontWeight: bold,
            ),
          ),
          style: TextButton.styleFrom(
            backgroundColor: secondary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage("images/login.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            logo(),
            Text(
              "BIAR KENYANG",
              style: textIPrimary.copyWith(fontSize: 16),
            ),
            loginForm(),
            tombolLogin(),
          ],
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
