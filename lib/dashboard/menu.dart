import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jagoo_it/InputValidation/InputValidation.dart';
import 'package:jagoo_it/SimpleCalculator/SimpleCalculator.dart';

import '../dummyUI/dummyUI_Home.dart';

class menuScreen extends StatefulWidget {
  const menuScreen({super.key});

  @override
  State<menuScreen> createState() => _menuScreenState();
}

class _menuScreenState extends State<menuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Choose Section",
            style:
                GoogleFonts.poppins(fontWeight: FontWeight.w700, fontSize: 30),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(children: [
            ListTile(
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DummyUIHomeScreen()),
                )
              },
              title: Text(
                "Dummy UI",
                style: GoogleFonts.poppins(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              isThreeLine: true,
              subtitle: Text(
                "Practice Flutter UI and get familiar with UI Widgets",
                style: GoogleFonts.poppins(color: Colors.grey, fontSize: 16),
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
              shape: const Border(bottom: BorderSide(color: Colors.black26)),
            ),
            ListTile(
              title: Text(
                "Simple Calculator",
                style: GoogleFonts.poppins(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SimpleCalculatorScreen()),
                )
              },
              isThreeLine: true,
              subtitle: Text(
                "Creating calculator app that consists add,divide,substact,multiply function",
                style: GoogleFonts.poppins(color: Colors.grey, fontSize: 16),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
              shape: Border(bottom: BorderSide(color: Colors.black26)),
            ),
            ListTile(
              title: Text(
                "Input Validation",
                style: GoogleFonts.poppins(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => InputValidationScreen()),
                )
              },
              isThreeLine: true,
              subtitle: Text(
                "Play around with email input & password input",
                style: GoogleFonts.poppins(color: Colors.grey, fontSize: 16),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
              shape: Border(bottom: BorderSide(color: Colors.black26)),
            ),
          ]),
        ));
  }
}
