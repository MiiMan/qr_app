import 'package:flutter/material.dart';
import 'package:qr_app/widgets/misis_appbar.dart';
import 'package:qr_app/widgets/white_text_field.dart';
import 'package:qr_app/consts.dart' as consts;

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);


  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController
  loginTextField = TextEditingController(),
      passwordTextField = TextEditingController();

  bool wrongPassword = false;

  bool checkLoginPassword() {
    if (loginTextField.text == 'test' && passwordTextField.text == 'test') {
      return true;
    }
    return false;
  }

  void onCheckLoginPassword() {
    if (!checkLoginPassword()) {
      setState(() {wrongPassword = true; });
    } else {
      Navigator.pushReplacementNamed(context, '/MainPage');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: consts.misisWhite,
      appBar:const MisisAppBar(
        height: 120,
        title: 'Вход',
        asset: 'assets/enter.png',
      ),
      body: Stack(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            color: consts.misisGray,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Почта', style: consts.misisHeaderBlack18Pt),
                const SizedBox(height: 5,),
                WhiteTextField(controller: loginTextField,),
                const SizedBox(height: 20,),
                const Text('Пароль', style: consts.misisHeaderBlack18Pt),
                const SizedBox(height: 5,),
                WhiteTextField(controller: passwordTextField,),
                const SizedBox(height: 20,),
                SizedBox(
                  height: 50,
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          width: 100,
                          height: 40,
                          color: consts.misisBlue,
                          child: TextButton(
                            onPressed: onCheckLoginPassword,
                            child: const Text('Войти', style: consts.misisHeaderWhite18Pt),
                          ),
                        ),
                      ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 100),
                            width: wrongPassword? 200:1,
                            child: const Text('Перепроверьте данные',
                              overflow: TextOverflow.fade,
                              maxLines: 1,
                              softWrap: false,
                              style: consts.misisTextBlack14Pt
                            ),
                          )
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
