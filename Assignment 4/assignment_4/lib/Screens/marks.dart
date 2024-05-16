import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Subject Grades Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GradeCalculator(),
    );
  }
}

class GradeCalculator extends StatefulWidget {
  const GradeCalculator({Key? key}) : super(key: key);

  @override
  State<GradeCalculator> createState() => _GradeCalculatorState();
}

class _GradeCalculatorState extends State<GradeCalculator> {
  final List<TextEditingController> controllers =
      List.generate(5, (_) => TextEditingController());
  double total = 0;
  double average = 0;
  String grade = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Subject Grades Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < 5; i++)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: TextField(
                  controller: controllers[i],
                  decoration:
                      InputDecoration(labelText: 'Subject ${i + 1} Grade'),
                  keyboardType: TextInputType.number,
                ),
              ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  total = 0;
                  for (int i = 0; i < 5; i++) {
                    total += double.tryParse(controllers[i].text) ?? 0;
                  }
                  average = total / 5;
                  if (average >= 90) {
                    grade = 'A';
                  } else if (average >= 80) {
                    grade = 'B';
                  } else if (average >= 70) {
                    grade = 'C';
                  } else if (average >= 60) {
                    grade = 'D';
                  } else {
                    grade = 'F';
                  }
                });
              },
              child: const Text('Calculate'),
            ),
            const SizedBox(height: 16),
            Text('Total: $total'),
            Text('Average: ${average.toStringAsFixed(2)}'),
            Text('Grade: $grade'),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    for (int i = 0; i < 5; i++) {
      controllers[i].dispose();
    }
    super.dispose();
  }
}
