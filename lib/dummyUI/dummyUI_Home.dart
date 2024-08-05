import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jagoo_it/dummyUI/dummyUI_List.dart';

class DummyUIHomeScreen extends StatefulWidget {
  const DummyUIHomeScreen({super.key});

  @override
  State<DummyUIHomeScreen> createState() => _DummyUIHomeScreenState();
}

class CardColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: const BorderSide(color: Colors.black26, width: 1.0),
      ),
      shadowColor: Colors.white,
      color: Colors.white,
      margin: const EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      'https://picsum.photos/250?image=9',
                      width: 70,
                      height: 70,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "How can I be Flutter Development Expert?",
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Jill Lepore \u2022  23 May 23",
                            style: GoogleFonts.poppins(
                              color: Colors.grey,
                              fontSize: 16,
                            ),
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.blue[900],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CardRow extends StatelessWidget {
  final String title;
  final int flex;

  const CardRow({required this.title, required this.flex});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: const BorderSide(color: Colors.black26, width: 1.0),
        ),
        shadowColor: Colors.white,
        color: Colors.white,
        margin: const EdgeInsets.all(8),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    'https://picsum.photos/250?image=9',
                    width: 70,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  title,
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _DummyUIHomeScreenState extends State<DummyUIHomeScreen> {
  void showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Alert'),
          content: Text('Button clicked!'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Dummy UI",
            style:
                GoogleFonts.poppins(fontWeight: FontWeight.w700, fontSize: 30),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DummyUIListScreen()),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Text(
                                  "Next",
                                  style: GoogleFonts.poppins(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              const Icon(Icons.arrow_forward_ios),
                            ],
                          ),
                          Text(
                            "Tab Bar,GridView,ListView",
                            style: GoogleFonts.poppins(
                                color: Colors.grey, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "CONTAINER AND TEXT",
                      style: GoogleFonts.poppins(
                          color: Colors.greenAccent[400],
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side:
                            const BorderSide(color: Colors.black26, width: 1.0),
                      ),
                      shadowColor: Colors.white,
                      color: Colors.white,
                      margin: const EdgeInsets.all(8),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(
                                      'https://cdn-icons-png.flaticon.com/512/25/25231.png',
                                      width: 50,
                                      height: 50,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "How can I be Flutter Development Expert?",
                                        style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Jill Lepore \u2022  23 May 23",
                                            style: GoogleFonts.poppins(
                                              color: Colors.grey,
                                              fontSize: 16,
                                            ),
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.blue[900],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Text(
                      "COLUMN",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.poppins(
                          color: Colors.greenAccent[400],
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    CardColumn(),
                    CardColumn(),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "ROW",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.poppins(
                          color: Colors.greenAccent[400],
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    const Row(
                      children: [
                        CardRow(
                          title: "1st Image",
                          flex: 1,
                        ),
                        CardRow(
                          title: "2nd Image",
                          flex: 1,
                        ),
                        CardRow(
                          title: "3rd Image",
                          flex: 1,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "BUTTON",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.poppins(
                          color: Colors.greenAccent[400],
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.lightBlue[50],
                          fixedSize: const Size(500, 10),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      onPressed: () {
                        showAlertDialog(context);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Press me",
                          textAlign: TextAlign.start,
                          style: GoogleFonts.poppins(
                            color: Colors.blue[800],
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "INPUT",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.poppins(
                          color: Colors.greenAccent[400],
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'Email ',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                        children: [
                          TextSpan(
                            text: '*',
                            style: TextStyle(color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                        hintText: 'Enter your email',
                        labelStyle: TextStyle(color: Colors.blue),
                        prefixIcon:
                            Icon(Icons.email_outlined, color: Colors.blue),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "IMAGE ASSET, SIZED BOX & EXPANDED",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.poppins(
                          color: Colors.greenAccent[400],
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    const Row(
                      children: [
                        CardRow(
                          title: "1st Image",
                          flex: 2,
                        ),
                        CardRow(
                          title: "2nd Image",
                          flex: 1,
                        ),
                      ],
                    ),
                  ],
                ),
              )),
        ));
  }
}
