import 'package:flutter/material.dart';


class Screen2 extends StatefulWidget{
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2();
}


class _Screen2 extends State<Screen2> {
  bool? isChecked = false;
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0.95),
        title: const Text("Sign Up", style: TextStyle(
          color: Colors.white,
          fontSize: 32
        ),),

      ),
      body:  SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.black,
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              const Text("Create an account",
              style:  TextStyle(
                color: Colors.white,
                fontSize: 32,
              ),
              ),
        
              const Text("Please sign up and create a new account",
                style:  TextStyle(
                  color: Colors.white38,
                  fontSize: 16,
                ),
              ),
        
              Card(
                elevation: 0,
                color: Colors.black,
                child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
        
                  children: <Widget>[
        
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                      child: TextField(
        
                        decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.person, color: Colors.white,),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(width: 3, color: Colors.white38),
                              borderRadius: BorderRadius.circular(9.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(width: 3, color: Colors.white),
                              borderRadius: BorderRadius.circular(9.0),
                            ),
        
                            filled: true,
                            fillColor: Colors.black,
                            focusColor: Colors.white,
        
                            hoverColor: Colors.white,
                            hintText: 'Email',
                            hintStyle: const TextStyle(
                                color: Colors.white60
                            )
                        ),
                      ),
                    ),
        
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                      child: TextField(
        
                        decoration: InputDecoration(
                          suffixIcon: const Icon(Icons.remove_red_eye_sharp, color: Colors.white38),
                          prefixIcon: const Icon(Icons.lock, color: Colors.white,),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(width: 3, color: Colors.white60),
                              borderRadius: BorderRadius.circular(9.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(width: 3, color: Colors.white),
                              borderRadius: BorderRadius.circular(9.0),
                            ),
        
                            filled: true,
                            fillColor: Colors.black,
                            focusColor: Colors.white,
        
                            hoverColor: Colors.white,
                            hintText: 'Password',
                            hintStyle: const TextStyle(
                                color: Colors.white60
                            )
                        ),
                      ),
                    ),
        
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                      child: TextField(
        
                        decoration: InputDecoration(
                            suffixIcon: const Icon(Icons.remove_red_eye_sharp, color: Colors.white38),
                            prefixIcon: const Icon(Icons.lock, color: Colors.white,),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(width: 3, color: Colors.white60),
                              borderRadius: BorderRadius.circular(9.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(width: 3, color: Colors.white),
                              borderRadius: BorderRadius.circular(9.0),
                            ),
        
                            filled: true,
                            fillColor: Colors.black,
                            focusColor: Colors.white,
        
                            hoverColor: Colors.white,
                            hintText: 'Confirm password',
                            hintStyle: const TextStyle(
                                color: Colors.white60
                            )
                        ),
                      ),
                    ),
        
                    Row(
                      children: [
                        Checkbox(
                          value: isChecked,
                          checkColor: Colors.white,
                          activeColor: Colors.blueAccent,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value;
                            });
                          },
                        ),
                        Text("Agree to terms and conditions", style: TextStyle(color: Colors.white38),)
                      ],
                    ),
                  ],
                ),
        
              ),
        
              const SizedBox(height: 10,),
              ElevatedButton(
                onPressed: () {
                },
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(362.0, 60.0),
                    backgroundColor: Colors.blueAccent,
                    elevation: 20,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9.0),
                    )
                ),
                child: const Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
        
              ),
              const SizedBox(height: 10,),
        
              Stack(
                alignment: Alignment.center,
                children: [
                  const Divider(
                    thickness: 1,
                    indent: 50,
                    endIndent: 50,
                    color: Colors.white,
                  ),
                  Positioned(
                      child: Container(
                        width: 50,
                        alignment: Alignment.center,
                        color: Colors.black,
                        child:
                            const Text("or", style: TextStyle(color: Colors.white, fontSize: 16),),
                  )
                  )
        
                ],
              ),
        
          const SizedBox(height: 10,),
          Column(
            children: [
              ElevatedButton(
                onPressed: () {
                },
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(362.0, 60.0),
                    backgroundColor: Colors.white,
                    elevation: 20,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9.0),
                    )
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.g_mobiledata_rounded, color: Colors.black, size: 40,),
                     Text(
                      'Sign Up with Google',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                )
        
              ),
              const SizedBox(height: 15,),
              ElevatedButton(
                onPressed: () {
                },
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(362.0, 60.0),
                    backgroundColor: Colors.white,
                    elevation: 20,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9.0),
                    )
                ),
        
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.apple_outlined, color: Colors.black, size: 30,),
                     Text(
                      'Sign Up with Apple',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                )
        
              ),
            ],
          ),
        
              const SizedBox(height: 20,),
             const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Have an account?  ", style: TextStyle(color: Colors.white, fontSize: 16),),
                  Text("Sign In", style: TextStyle(color: Colors.blueAccent, fontSize: 16),)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}