import 'package:firstapp/register.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( const SignIn());
}


class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(child: LoginPage()),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.pink.shade500,
            Colors.pink.shade300,
            Colors.pink.shade400,
          ], begin: Alignment.topCenter),
        ),
        child: Column(
          children: [
            const SizedBox(height: 50),

            const Header(),
            const Spacer(),
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      topLeft: Radius.circular(50),
                  ),
                color: Colors.white,
              ),
              child: const InputWrapper(),
            )
          ],
        ),
      ),
    );
  }
}
class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          SizedBox(height: 40),
          Center(
            child: Text(
              'Login',
              style: TextStyle(color: Colors.white, fontSize: 28),
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: Text(
              'Welcome to FLUTAPP Developers',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}


class InputWrapper extends StatelessWidget {
  const InputWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(10),
    child: Column(
    children: [
      const SizedBox(height: 40,),
    Container(
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Colors.white
    ),
    child: const InputField(),
    ),
    const SizedBox(height:  40,),
    const Text('Forgot password',style: TextStyle(
    color: Colors.grey,
    ),
    ),
      const SizedBox(height: 40,),
    const Button(),],
    ),);
  }
}


class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const Home1() ));
      },
      child: Container(
        height: 50,
        margin: const EdgeInsets.symmetric(horizontal: 50),
        decoration: BoxDecoration(
          color: Colors.cyan.shade500,
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Center(
          child: Text('Login',
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.bold
          ),),
        ),
      ),
    );
  }
}

class Home1 extends StatelessWidget {
  const Home1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pop(context);
      },
      child: const RegistrationPage(),
    );
  }
}



class InputField extends StatelessWidget {
  const InputField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Colors.grey.shade200)
          )
        ),
        child: const TextField(
          decoration: InputDecoration(
            hintText: 'Enter your email',
            hintStyle: TextStyle(color: Colors.grey),
            border: InputBorder.none,
          ),
        ),
      ),
      Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(color: Colors.grey.shade200)
            )
        ),
        child: const TextField(
          decoration: InputDecoration(
            hintText: 'Enter your password',
            hintStyle: TextStyle(color: Colors.grey),
            border: InputBorder.none,
          ),
        ),
      ),
    ],);
  }
}



