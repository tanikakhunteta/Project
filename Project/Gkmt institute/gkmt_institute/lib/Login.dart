import 'package:flutter/material.dart';
import 'package:gkmt_institute/Signup.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isCheck = false;
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xff1d3856),
        body: Column(children: [
          Container(
              width: double.infinity,
              height: 240,
              // ignore: prefer_const_constructors
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      const BorderRadius.only(bottomLeft: Radius.circular(60))),
              child: Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Welcome\nBack!",
                        style: GoogleFonts.montserrat(
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xff1d3856)),
                        textAlign: TextAlign.left,
                      )))),
          const SizedBox(
            height: 50,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    hintText: "Email",
                    hintStyle: GoogleFonts.montserrat(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Colors.white))),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                  style: TextStyle(color: Colors.white),
                  obscureText: isVisible,
                  decoration: InputDecoration(
                      enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      suffix: InkWell(
                          onTap: () {
                            setState(() {
                              isVisible = !isVisible;
                            });
                          },
                          child: !isVisible
                              ? const Icon(
                                  Icons.visibility_outlined,
                                  color: Colors.white,
                                )
                              : const Icon(
                                  Icons.visibility_off_outlined,
                                  color: Colors.white,
                                )),
                      hintText: "Password",
                      hintStyle: GoogleFonts.montserrat(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Colors.white))),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Row(children: [
                    Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5))),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "Remember me",
                        style: GoogleFonts.montserrat(
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            color: Colors.white),
                        textAlign: TextAlign.left,
                      ),
                    )
                  ]))),
          const SizedBox(
            height: 30,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints.tightFor(height: 50, width: 335),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              child: Text(
                "Sign In",
                style: GoogleFonts.montserrat(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xff1d3856)),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 35),
                child: Text(
                  "Don't have an account?",
                  style: GoogleFonts.montserrat(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: Colors.white),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 35),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Login(),
                        ));
                  },
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Signup(),
                          ));
                    },
                    child: Text(
                      "Sign Up",
                      style: GoogleFonts.montserrat(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Align(
              alignment: Alignment.center,
              child: Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Text(
                    "Forgot Password?",
                    style: GoogleFonts.montserrat(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ))),
          const SizedBox(
            height: 30,
          ),
          Align(
              alignment: Alignment.center,
              child: Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Text(
                    "Or Login With",
                    style: GoogleFonts.montserrat(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ))),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(  onPressed: () {}, child: Text("OTP")),
              ElevatedButton(onPressed: () {}, child: Text("Password")),
              ElevatedButton(onPressed: () {}, child: Text("Google"))
            ],
          )
        ]));
  }
}
