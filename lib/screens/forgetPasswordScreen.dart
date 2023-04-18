import 'package:e_shopping/screens/signIn_Screen.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          const SizedBox(height: 200),
          const Text(style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
              'Forget Password'
          ),
          const SizedBox(height: 30),
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
              color: Colors.deepOrangeAccent,
            ),
            child:  InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>  const SignIn(),));
              },
              child: const Center(
                child: Text(
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    'Send Reset Link'
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
                'Back to',
              ),
              TextButton(onPressed: (){
                Navigator.of(context).pop();
              }, child: const Text(style: TextStyle(
                color: Colors.deepOrangeAccent,
                fontSize: 15,
              ),'Sign In'),),
            ],
          ),
          const SizedBox(
            height: 232,
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
