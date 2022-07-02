import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Signup'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.blue.shade200,
              Colors.blueAccent.shade700,
              Colors.blue.shade900,
            ],
          ),
        ),
        child: Column(children: [
          topSection,
          inputSection,
          signupButton,
        ]),
      ),
    );
  }
}

Widget topSection = Container(
  margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        'Déjà un compte ?',
        style: GoogleFonts.comfortaa(
          color: Colors.white,
        ),
      ),
      const BackButton(),
    ],
  ),
);

class BackButton extends StatelessWidget {
  const BackButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.pop(context);
      },
      child: Text(
        'Connexion',
        style: GoogleFonts.comfortaa(
            color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}

Widget inputSection = Container(
  margin: const EdgeInsets.all(30),
  child: Column(
    children: [
      Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white30, width: 1),
          borderRadius: BorderRadius.circular(30),
          color: const Color.fromRGBO(255, 255, 255, 0.1),
        ),
        height: 60,
        child: Row(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              child: Icon(
                Icons.people_outline,
                size: 30,
                color: Colors.blue.shade900,
              ),
            ),
            SizedBox(
              height: 60,
              width: 230,
              child: Center(
                child: TextField(
                  textAlign: TextAlign.center,
                  style: GoogleFonts.comfortaa(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Pseudo',
                    hintStyle: GoogleFonts.comfortaa(color: Colors.white),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      const SizedBox(
        height: 30,
      ),
      Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white30, width: 1),
          borderRadius: BorderRadius.circular(30),
          color: const Color.fromRGBO(255, 255, 255, 0.1),
        ),
        height: 60,
        child: Row(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              child: Icon(
                Icons.mail_outline,
                size: 30,
                color: Colors.blue.shade900,
              ),
            ),
            SizedBox(
              height: 60,
              width: 230,
              child: Center(
                child: TextField(
                  textAlign: TextAlign.center,
                  style: GoogleFonts.comfortaa(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Adresse email',
                    hintStyle: GoogleFonts.comfortaa(color: Colors.white),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      const SizedBox(
        height: 30,
      ),
      Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white30, width: 1),
          borderRadius: BorderRadius.circular(30),
          color: const Color.fromRGBO(255, 255, 255, 0.1),
        ),
        height: 60,
        child: Row(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              child: Icon(
                Icons.lock_outline,
                size: 30,
                color: Colors.blue.shade900,
              ),
            ),
            SizedBox(
              height: 60,
              width: 230,
              child: Center(
                child: TextField(
                  textAlign: TextAlign.center,
                  style: GoogleFonts.comfortaa(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Mot de passe',
                    hintStyle: GoogleFonts.comfortaa(color: Colors.white),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      const SizedBox(
        height: 30,
      ),
      Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white30, width: 1),
          borderRadius: BorderRadius.circular(30),
          color: const Color.fromRGBO(255, 255, 255, 0.1),
        ),
        height: 60,
        child: Row(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              child: Icon(
                Icons.date_range,
                size: 30,
                color: Colors.blue.shade900,
              ),
            ),
            SizedBox(
              height: 60,
              width: 230,
              child: Center(
                child: TextField(
                  textAlign: TextAlign.center,
                  style: GoogleFonts.comfortaa(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Date de naissance',
                    hintStyle: GoogleFonts.comfortaa(color: Colors.white),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  ),
);

Widget signupButton = ElevatedButton(
  style: ElevatedButton.styleFrom(
    primary: Colors.white,
    padding: const EdgeInsets.fromLTRB(110, 15, 110, 15),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(30)),
    ),
  ),
  child: Text(
    "Inscription".toUpperCase(),
    style: TextStyle(
      color: Colors.blue[900],
      fontSize: 20.0,
    ),
  ),
  onPressed: () {},
);
