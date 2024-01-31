import 'package:date_input_form_field/date_input_form_field.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Date Input Form Field Example',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MyHomePage(title: 'Date Input Form Field Example'),
      );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final controller = TextEditingController();
  final formKey = GlobalKey<FormState>();
  DateTime dateOfBirth =
      DateTime.now().subtract(const Duration(days: 365 * 18));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                DateInputFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  format: 'dd/MM/yyyy',
                  controller: controller,
                  validator: (value) {
                    final text = value?.$1;
                    final date = value?.$2;
                    if (date == null) {
                      if (text == null || text.isEmpty) {
                        return 'Please enter a date';
                      } else if (text.isNotEmpty) {
                        return 'Please enter a valid date\nFormat: dd/MM/yyyy\nExample: 01/01/2000';
                      }
                      return null;
                    }
                    if (DateTime.now()
                        .subtract(const Duration(days: 365 * 18))
                        .isBefore(date)) {
                      return 'You must be 18 years old';
                    } else if (DateTime.now()
                        .subtract(const Duration(days: 365 * 100))
                        .isAfter(date)) {
                      return 'You must be less than 100 years old';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    final dateOfBirth = value.$2;
                    if (dateOfBirth == null) return;
                    setState(() {
                      this.dateOfBirth = dateOfBirth;
                    });
                  },
                  decoration: const InputDecoration(
                    labelText: 'Date of Birth',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState?.validate() == true) {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text('Date of Birth'),
                              content: Text(
                                'You were born on ${dateOfBirth.day}/${dateOfBirth.month}/${dateOfBirth.year}. You are ${DateTime.now().difference(dateOfBirth).inDays ~/ 365} years approximately!',
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: const Text('OK'),
                                ),
                              ],
                            );
                          });
                    }
                  },
                  child: const Text('Submit'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
