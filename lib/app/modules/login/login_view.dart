import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // var x = controller.loginFormKey.currentState!.validate();

    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 70,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    "Log in",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Form(
                    key: controller.loginFormKey,
                    autovalidateMode: AutovalidateMode.always,
                    child: TextFormField(
                      controller: controller.emailController,
                      onSaved: (value) {
                        controller.email = value!;
                      },
                      validator: (value) {
                        return controller.validateEmail(value!);
                      },
                      onChanged: (Value) {
                        controller.provideTitle();
                      },
                      decoration: const InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          hintText: "email",
                          labelStyle: TextStyle(color: Colors.grey),
                          labelText: "Email",
                          suffix: Icon(
                            Icons.arrow_circle_right,
                            color: Colors.grey,
                            size: 20,
                          )),
                      focusNode: controller.myFocusNode,
                      autofocus: true,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Find email",
                      style: TextStyle(
                          color: Colors.grey,
                          decoration: TextDecoration.underline),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "|",
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Find password",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.grey),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Center(
                      child:
                          // controller.provideTitle();
                          Obx(
                    () => Text(
                      '${controller.title.value}',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  )),
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  width: MediaQuery.of(context).size.width,
                  height: 40,
                  decoration: BoxDecoration(
                      color: controller.title.value == "Next"
                          ? Colors.black87
                          : Colors.black26,
                      borderRadius: BorderRadius.circular(10)),
                )
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
