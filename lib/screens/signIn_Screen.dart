import 'package:e_shopping/navigationBar.dart';
import 'package:e_shopping/screens/forgetPasswordScreen.dart';
import 'package:e_shopping/screens/homeScreen.dart';
import 'package:e_shopping/screens/signup_Screen.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    bool isChecked = false;

    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.deepOrangeAccent;
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          const SizedBox(height: 150),
          const Text(style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
          'Sign In'
          ),
          const SizedBox(height: 30,),
          Container(
            height: 50,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.deepOrangeAccent,
                  blurRadius: 30.0,
                  spreadRadius: 2.0,
                  offset: Offset(
                    5.0,
                    5.0,
                  ),
                )
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Icon(Icons.email_outlined,color: Colors.deepOrangeAccent,),
                  const SizedBox(width: 20),
                  SizedBox(
                    height: 30,
                    width: 150,
                    child: TextField(
                      controller: textEditingController,
                      decoration: const InputDecoration.collapsed(
                        hintText: 'Email',
                        hintTextDirection: TextDirection.ltr,
                        hintStyle: TextStyle(color: Colors.black),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 30,),
          Container(
            height: 50,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.deepOrangeAccent,
                  blurRadius: 30.0,
                  spreadRadius: 2.0,
                  offset: Offset(
                    5.0,
                    5.0,
                  ),
                )
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Icon(Icons.lock_outline_rounded,color: Colors.deepOrangeAccent,),
                  const SizedBox(width: 20),
                  SizedBox(
                    height: 30,
                    width: 150,
                    child: TextField(
                      controller: passwordController,
                      decoration: const InputDecoration.collapsed(
                        hintText: 'Password',
                        hintTextDirection: TextDirection.ltr,
                        hintStyle: TextStyle(color: Colors.black),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 30,),
          Padding(padding: const EdgeInsets.all(10),child: Row(
            children: [
              Checkbox(
                checkColor: Colors.white,
                fillColor: MaterialStateProperty.resolveWith(getColor),
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              ),
              const Text('Remember Me'),
              const SizedBox(width: 120,),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ForgetPassword()),);
              }, child: const Text(style: TextStyle(
                color: Colors.deepOrangeAccent,
                fontSize: 15,
              ),'Forget Password'),),
            ],
          ),),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) =>  const Navigation(),));
            },
            child: Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.deepOrangeAccent,
              ),
              child: const Center(
                child: Text(
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  'Log In'
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
                'Dont have an account?',
              ),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUp()),);
              }, child: const Text(style: TextStyle(
                color: Colors.deepOrangeAccent,
                fontSize: 15,
              ),'Create One !'),),
            ],
          ),
          const SizedBox(
            height: 135,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset('asset/images/24.png'),
          )
        ],
      ),
    );
  }
}
