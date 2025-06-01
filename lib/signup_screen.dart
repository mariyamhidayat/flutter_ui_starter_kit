import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  @override
  State<Signup> createState() => _SignInState();
}

class _SignInState extends State<Signup> {
  TextEditingController _nameEmailController=TextEditingController();
  TextEditingController _passwordController=TextEditingController();
  bool isObscureText=true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          leading: SizedBox(),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  child: Text(
                    "Create an \n Account ",
                    style: TextStyle(fontSize: 44, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _nameEmailController,
                  decoration: InputDecoration(
                      fillColor: Color(0xffF3F3F3),
                      filled: true,
                      hintText: "Username or Email",
                      prefixIcon: Image(image: AssetImage("images/ic_user.png")),
                      hintStyle: TextStyle(color: Colors.grey),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blueAccent),
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.all(Radius.circular(12)))),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: TextFormField(
                    controller: _passwordController,
                    obscureText: isObscureText,
                    decoration: InputDecoration(
                        fillColor: Color(0xffF3F3F3),
                        filled: true,
                        hintText: "Password",
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: IconButton(
                          icon: Icon(
                            isObscureText ? Icons.visibility_off : Icons.visibility,
                          ),
                          onPressed: () {
                            setState(() {
                              isObscureText = !isObscureText;
                            });
                          },
                        ),

                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.all(Radius.circular(12))),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(12)))),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: TextFormField(
                    controller: _passwordController,
                    obscureText: isObscureText,
                    decoration: InputDecoration(
                        fillColor: Color(0xffF3F3F3),
                        filled: true,
                        hintText: "ConfirmPassword",
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: IconButton(
                          icon: Icon(
                            isObscureText ? Icons.visibility_off : Icons.visibility,
                          ),
                          onPressed: () {
                            setState(() {
                              isObscureText = !isObscureText;
                            });
                          },
                        ),

                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.all(Radius.circular(12))),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(12)))),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                RichText(
                  text: TextSpan(
                    style: TextStyle(fontSize: 14.0), // Default text style
                    children: [
                      TextSpan(
                        text: 'By clicking the ',
                        style: TextStyle(color: Colors.grey),
                      ),
                      TextSpan(
                        text: 'Register',
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: ' button, you agree to the public offer.',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),


                SizedBox(
                  height: 20,
                ),
                SizedBox(
                    width: 300,
                    child: ElevatedButton(
                        onPressed: () => {
                          print("UserName::${_nameEmailController.text}"),
                          print("Password::${_passwordController.text}")
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffF83758),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6))),
                        child: Text(
                          "Create an Account",
                          style: TextStyle(color: Colors.white),
                        ))),
                SizedBox(
                  height: 40,
                ),
                Center(
                  child: Column(
                    children: [
                      Text("- OR Continue with -"),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(image: AssetImage("images/ic_google.png")),
                          SizedBox(
                            width: 10,
                          ),
                          Image(image: AssetImage("images/ic_apple.png")),
                          SizedBox(
                            width: 10,
                          ),
                          Image(image: AssetImage("images/ic_facebook.png")),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Create An Account",
                            style: TextStyle(color: Color(0xff575757),fontSize: 14),),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "login",
                            style: TextStyle(
                                color: Color(0xffF83758),
                                decoration: TextDecoration.underline,
                                decorationColor: Color(0xffF83758),
                                decorationThickness: 2
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}



