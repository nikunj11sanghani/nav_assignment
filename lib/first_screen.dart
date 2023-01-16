import 'package:flutter/material.dart';
import 'package:task_2/extra_class.dart';
import 'package:task_2/second_screen.dart';

class FirstScreen extends StatelessWidget {
  FirstScreen({super.key});
  static const routeName = '/first';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ExtraClass;

    return Scaffold(
      appBar: AppBar(
        title: const Text('first Screen'),
      ),
      body: args.isFirstScreen != true
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Clicked Button : ${args.text} ",
                    // "",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                ],
              ),
            )
          : Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SecondScreen(
                              sec_text: 'Clicked Second Button',
                              isThirdButton: true,
                            )),
                  );
                },
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 30,
                  child: Center(
                      child: Text(
                    'go to Second Screen',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
                ),
              ),
            ),
    );
  }
}
