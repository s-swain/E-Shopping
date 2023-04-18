import 'package:e_shopping/screens/signIn_Screen.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController nameController = TextEditingController();
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
                  const Icon(Icons.person_pin,color: Colors.deepOrangeAccent,),
                  const SizedBox(width: 20),
                  SizedBox(
                    height: 30,
                    width: 150,
                    child: TextField(
                      controller: nameController,
                      decoration: const InputDecoration.collapsed(
                        hintText: 'Name',
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
              const Text('I agree to Terms & Conditions'),
              const SizedBox(width: 120,),
            ],
          ),),
          Container(
            height: 50,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.deepOrangeAccent,
            ),
            child: InkWell(
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
                    'Sign In'
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
                'Already have an account?',
              ),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const SignIn()),);
              }, child: const Text(style: TextStyle(
                color: Colors.deepOrangeAccent,
                fontSize: 15,
              ),'Sign In !'),),
            ],
          ),
          const SizedBox(
            height: 55,
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
