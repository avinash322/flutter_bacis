import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SimpleCalculatorScreen extends StatefulWidget {
  const SimpleCalculatorScreen({Key? key}) : super(key: key);

  @override
  State<SimpleCalculatorScreen> createState() => _SimpleCalculatorScreenState();
}

class ChoiceButton extends StatelessWidget {
  final String label;
  final Function() onPressed;
  final bool isSelected;

  const ChoiceButton({
    required this.label,
    required this.onPressed,
    required this.isSelected,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: isSelected ? Colors.blue[50] : null,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 18,
          color: isSelected ? Colors.blue : Colors.black,
        ),
      ),
    );
  }
}

class ChoiceButtonsRow extends StatelessWidget {
  final Function(String) onOperationSelected;
  final String? selectedOperation;

  const ChoiceButtonsRow({
    required this.onOperationSelected,
    required this.selectedOperation,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ChoiceButton(
              label: 'Add',
              onPressed: () => onOperationSelected('+'),
              isSelected: selectedOperation == '+',
            ),
            ChoiceButton(
              label: 'Subtract',
              onPressed: () => onOperationSelected('-'),
              isSelected: selectedOperation == '-',
            ),
            ChoiceButton(
              label: 'Multiply',
              onPressed: () => onOperationSelected('×'),
              isSelected: selectedOperation == '×',
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            ChoiceButton(
              label: 'Divide',
              onPressed: () => onOperationSelected('÷'),
              isSelected: selectedOperation == '÷',
            ),
          ],
        ),
      ],
    );
  }
}

class _SimpleCalculatorScreenState extends State<SimpleCalculatorScreen> {
  String? selectedOperation;
  List<Map<String, dynamic>> historyList = [];
  TextEditingController num1 = TextEditingController();
  TextEditingController num2 = TextEditingController();
  bool warning = false;
  dynamic hasil = "...";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Simple Calculator",
          style: GoogleFonts.poppins(fontWeight: FontWeight.w700, fontSize: 30),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Text(
                "CHOOSE OPERATION",
                textAlign: TextAlign.start,
                style: GoogleFonts.poppins(
                  color: Colors.greenAccent[400],
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              ChoiceButtonsRow(
                onOperationSelected: (operation) {
                  num1.clear();
                  num2.clear();
                  setState(() {
                    selectedOperation = operation;
                    hasil = "...";
                  });
                },
                selectedOperation: selectedOperation,
              ),
              const SizedBox(height: 30),
              selectedOperation != null
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 80,
                              width: 80,
                              child: TextFormField(
                                style: GoogleFonts.poppins(fontSize: 20),
                                controller: num1,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                    borderSide: const BorderSide(
                                        color: Colors.blue, width: 2),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                    borderSide: const BorderSide(
                                        color: Colors.blue, width: 2),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              selectedOperation.toString(),
                              style: GoogleFonts.poppins(
                                fontSize: 50,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            SizedBox(
                              height: 80,
                              width: 80,
                              child: TextFormField(
                                controller: num2,
                                style: GoogleFonts.poppins(fontSize: 20),
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                    borderSide: const BorderSide(
                                        color: Colors.blue, width: 2),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                    borderSide: const BorderSide(
                                        color: Colors.blue, width: 2),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "=",
                              style: GoogleFonts.poppins(
                                fontSize: 50,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Text(
                                  hasil,
                                  style: GoogleFonts.poppins(
                                    fontSize: 50,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.green[50],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              const Icon(Icons.info_outline,
                                  color: Colors.green),
                              const SizedBox(width: 8),
                              Text(
                                warning
                                    ? " Left form cannot be empty"
                                    : 'Press calculate button to get results',
                                style: GoogleFonts.poppins(
                                    color: warning ? Colors.red : Colors.grey,
                                    fontSize: 12,
                                    fontStyle: FontStyle.italic),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 10),
                            Text(
                              "History",
                              style: GoogleFonts.poppins(
                                color: Colors.greenAccent[400],
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 10),
                            if (historyList.isEmpty)
                              Text(
                                'No history found',
                                style: GoogleFonts.poppins(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontStyle: FontStyle.italic,
                                ),
                              )
                            else
                              ListView(
                                shrinkWrap: true,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: historyList.reversed.map((item) {
                                      return Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "${item['num1'].toString()} ${item['operation'].toString()} ${item['num2'].toString()}",
                                                style: GoogleFonts.poppins(
                                                  fontSize: 20,
                                                ),
                                              ),
                                              TextButton(
                                                onPressed: () {
                                                  setState(() {
                                                    num1.text =
                                                        item['num1'].toString();
                                                    num2.text =
                                                        item['num2'].toString();
                                                    selectedOperation =
                                                        item['operation']
                                                            .toString();
                                                    hasil = "...";
                                                  });
                                                },
                                                child: Text(
                                                  "Re-Apply",
                                                  style: GoogleFonts.poppins(
                                                    color: Colors.blue[900],
                                                    fontSize: 13,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          const Divider(),
                                          const SizedBox(height: 10),
                                        ],
                                      );
                                    }).toList(),
                                  ),
                                ],
                              ),
                          ],
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                      ],
                    )
                  : const SizedBox(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.lightBlue[50],
              fixedSize: const Size(500, 10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          onPressed: () {
            if (num1.text.isEmpty || num2.text.isEmpty) {
              setState(() {
                warning = true;
              });
            } else {
              setState(() {
                warning = false;
              });
              if (selectedOperation == "+") {
                setState(() {
                  hasil =
                      (int.parse(num1.text) + int.parse(num2.text)).toString();
                });
              } else if (selectedOperation == "-") {
                setState(() {
                  hasil =
                      (int.parse(num1.text) - int.parse(num2.text)).toString();
                });
              } else if (selectedOperation == "×") {
                setState(() {
                  hasil =
                      (int.parse(num1.text) * int.parse(num2.text)).toString();
                });
              } else if (selectedOperation == "÷") {
                setState(() {
                  hasil =
                      (int.parse(num1.text) ~/ int.parse(num2.text)).toString();
                });
              }
              historyList.add({
                'num1': int.parse(num1.text),
                'num2': int.parse(num2.text),
                'operation': selectedOperation!,
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Calculate",
              textAlign: TextAlign.start,
              style: GoogleFonts.poppins(
                color: Colors.blue[800],
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: SimpleCalculatorScreen(),
  ));
}
