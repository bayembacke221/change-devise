import 'package:flutter/material.dart';
import 'package:flutter_app_5/services/ChangeDeviseListener.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double value = 0.0;
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Change Devise')),
        ),
        body: ListView(padding: const EdgeInsets.all(32), children: [
          TextField(
            controller: controller,
            style: const TextStyle(color: Colors.purple, fontSize: 20),
            decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40))),
                labelText: 'FCFA'),
          ),
          const SizedBox(
            height: 20,
          ),
          Stack(
            children: [
              Align(
                alignment: const Alignment(-1, 0),
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        value = ChangeDeviseListener.changeFCFAToEuro(
                            controller.text);
                      });
                    },
                    child: const Icon(
                      Icons.euro,
                      size: 20,
                    )),
              ),
              Align(
                alignment: const Alignment(1, 0),
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        value = ChangeDeviseListener.changeFCFAToYen(
                            controller.text);
                      });
                    },
                    child: const Icon(
                      Icons.currency_yen,
                      size: 20,
                    )),
              ),
              Align(
                alignment: const Alignment(0, 1),
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        value = ChangeDeviseListener.changeFCFAToDollar(
                            controller.text);
                      });
                    },
                    child: const Icon(
                      Icons.attach_money,
                      size: 20,
                    )),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Center(
              child: Text(
            '${value}',
            style: Theme.of(context).textTheme.headline3,
          ))
        ]),
      ),
    );
  }
}
