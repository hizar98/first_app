import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return /*SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(30),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.pink.shade400,
          ),
          child: Column(
            children: [
              const SizedBox(height: 80),
              const Text('Signup',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),),
              const SizedBox(height: 50),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter your name',
                  hintStyle: TextStyle(
                    color: Colors.grey.shade100,
                  ),
                  border: OutlineInputBorder(
                    //borderSide: BorderSide(color: Colors.white,width: 10),
                    borderRadius: BorderRadius.circular(50)
                  ),

                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter your father name',
                  hintStyle: TextStyle(
                    color: Colors.grey.shade100,
                  ),
                  border: OutlineInputBorder(
                    //borderSide: BorderSide(color: Colors.white,width: 10),
                      borderRadius: BorderRadius.circular(50)
                  ),

                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter your email',
                  hintStyle: TextStyle(
                    color: Colors.grey.shade100,
                  ),
                  border: OutlineInputBorder(
                    //borderSide: BorderSide(color: Colors.white,width: 10),
                      borderRadius: BorderRadius.circular(50)
                  ),

                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Enter your password',
                  hintStyle: TextStyle(
                    color: Colors.grey.shade100,
                  ),
                  border: OutlineInputBorder(
                    //borderSide: BorderSide(color: Colors.white,width: 10),
                      borderRadius: BorderRadius.circular(50),
                  ),

                ),
              ),
              const SizedBox(height: 20),
              InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1,color: Colors.black.withOpacity(.4)),
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(40)
                  ),
                  child: const Center(
                    child: Text('Signup',

                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: const Text('Already have account?',style: TextStyle(color: Colors.white,fontSize: 14),))
            ],
          )
        ),
      ),
    );
  }*/ Scaffold(
      appBar: AppBar(title: const Center(child: Text('main')),),
      body: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance.collection("Users").snapshots(),
          builder: (context, snapshot) {
            return !snapshot.hasData
            ? CircularProgressIndicator(): Text("ok");
          }
      ),
    );
  }
}
