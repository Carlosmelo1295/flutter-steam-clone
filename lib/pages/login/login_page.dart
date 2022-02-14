// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:steam_clone_ui/pages/home/store_page.dart';
import 'package:steam_clone_ui/pages/login/widgets/text_field.dart';
import 'package:steam_clone_ui/shared/color_pallet.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AplicationColors.backgroundColor,
      body: LayoutBuilder(
        builder: ((context, constraints) => Center(
              child: SizedBox(
                width: constraints.maxWidth * .90,
                child: Column(
                  children: <Widget>[
                    Expanded(child: SizedBox()),
                    Image(
                      image: AssetImage('./assets/images/steam.png'),
                    ),
                    CustomTextField(
                      title: 'username',
                    ),
                    CustomTextField(
                      title: 'password',
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                          fillColor: MaterialStateProperty.all(
                            AplicationColors.lightBlue,
                          ),
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                        ),
                        Text(
                          'remember my password',
                          style: TextStyle(color: AplicationColors.lightBlue),
                        )
                      ],
                    ),
                    Expanded(child: SizedBox()),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: SizedBox(
                        width: constraints.maxWidth,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => StorePage(),
                              ),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
