import 'package:flutter/material.dart';
import 'package:rupee_textfield/extensions/extensions.dart';
import 'package:rupee_textfield/rupee_textfield.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = TextEditingController();
  final key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("RupeeTextFeild"),
        centerTitle: true,
      ),
      body: Form(
        key: key,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RupeeTextField(
              controller: controller,
              decoration: InputDecoration(
                  hintText: 'Enter Amount',
                  fillColor: Colors.blue.withOpacity(0.1),
                  filled: true,
                  border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(15)))),
              onChanged: (value) {
                setState(() {});
              },
              validator: (value) {
                return value.isEmpty ? "Amount can't be empty" : null;
              },
            ),
            const SizedBox(
              height: 30,
            ),
            Text('formatted value => ${controller.text}'),
            Text(
                'unFormatted String => ${controller.text.toUnFormattedString()}'),
            Text('unforamtted int => ${controller.text.toUnFormattedInt()}'),
            ElevatedButton(
                onPressed: () {
                  if (key.currentState!.validate()) {
                    showDialog(
                        context: context,
                        builder: (ctx) => Dialog(
                              child: Container(
                                height: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Text(
                                    controller.text,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 23),
                                  ),
                                ),
                              ),
                            ));
                  }
                },
                child: const Text('Submit'))
          ],
        ),
      ),
    );
  }
}
