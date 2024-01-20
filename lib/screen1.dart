import 'package:flutter/material.dart';


class Screen1 extends StatefulWidget{
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1();
}


class _Screen1 extends State<Screen1> {
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0.95),
        title: const Text("Sign In", style: TextStyle(
          color: Colors.white,
          fontSize: 32
        ),),

      ),
      body:  Container(

        color: Colors.black,
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const Text("Welcome back !",
            style:  TextStyle(
              color: Colors.white,
              fontSize: 32,
            ),
            ),

            const Text("Please sign in to your account",
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
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
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
                          hintText: 'Username',
                          hintStyle: const TextStyle(
                              color: Colors.white60
                          )
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
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
                  const SizedBox(
                    height: 8,
                  ),
                  const Padding(
                    padding:  EdgeInsets.only(right: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [

                        Text("Forgot Password?",
                          style: TextStyle(
                            color: Colors.white54,
                            fontSize: 15,
                        ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

            ),

            const SizedBox(height: 30,),
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
                'Sign up',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),

            ),
            const SizedBox(height: 50,),

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

        const SizedBox(height: 50,),
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
                    'Sign In with Google',
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
                    'Sign In with Apple',
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
                Text("Don't have an account?  ", style: TextStyle(color: Colors.white, fontSize: 16),),
                Text("Sign up", style: TextStyle(color: Colors.blueAccent, fontSize: 16),)
              ],
            )
          ],
        ),
      ),
    );
  }
}