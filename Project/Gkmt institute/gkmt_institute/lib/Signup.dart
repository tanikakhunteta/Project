import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gkmt_institute/Login.dart';
import 'package:google_fonts/google_fonts.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}

bool showEmailError = false;

class _SignupState extends State<Signup> {
  TextEditingController textEditingController = TextEditingController();

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
                        "Create\nAccount.",
                        style: GoogleFonts.montserrat(
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xff1d3856)),
                        textAlign: TextAlign.left,
                      )))),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            child: TextField(
                style: GoogleFonts.montserrat(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.white),
                decoration: InputDecoration(
                    enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    hintText: "Full Name",
                    hintStyle: GoogleFonts.montserrat(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Colors.white))),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                  inputFormatters: [],
                  controller: textEditingController,
                  onChanged: (value) {
                    setState(() {});
                  },
                  style: GoogleFonts.montserrat(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: Colors.white),
                  keyboardType: TextInputType.emailAddress,
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
          ),
          if (showEmailError) Text('Check your email'),
          Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: TextField(
                    style: GoogleFonts.montserrat(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Colors.white),
                    keyboardType: TextInputType.number,
                    maxLength: 10,
                    decoration: InputDecoration(
                        enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        hintText: "Phone No.",
                        hintStyle: GoogleFonts.montserrat(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            color: Colors.white))),
              )),
          Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: TextField(
                    style: GoogleFonts.montserrat(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Colors.white),
                    decoration: InputDecoration(
                        enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        hintText: "Address",
                        hintStyle: GoogleFonts.montserrat(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            color: Colors.white))),
              )),
          Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  child: TextField(
                      decoration: InputDecoration(
                    enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    hintText: "Interested In",
                    hintStyle: GoogleFonts.montserrat(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Colors.white),
                  )))),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Row(children: [
                    Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5))),
                    Padding(
                        padding: const EdgeInsets.only(left: 7),
                        child: Text(
                          "Agree to terms and conditions",
                          style: GoogleFonts.montserrat(
                              fontSize: 13,
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                        ))
                  ]))),
          SizedBox(
            height: 10,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints.tightFor(height: 50, width: 335),
            child: ElevatedButton(
              onPressed: () {
                showEmailError = !textEditingController.text.isValidEmail();
                // setState(() {});
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Signup(),
                    ));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              child: Text(
                "Sign Up",
                style: GoogleFonts.montserrat(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xff1d3856)),
              )
            )
          ),
          SizedBox(
            height: 20,
          ),
          Row(children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 35),
              child: Text(
                "Already have an account?",
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
                    child: Text(
                      "Sign In",
                      style: GoogleFonts.montserrat(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      textAlign: TextAlign.right,
                    )))
          ])
        ]));
  }
}
