import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final TextEditingController _numberOneTEController = TextEditingController();
  final TextEditingController _numberTwoTEController = TextEditingController();
  double _result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body:  Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            children: [
              TextField(
                controller: _numberOneTEController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: 'Number 1',
                  labelText: 'Number 1',
                ),
              ),
              const SizedBox(height: 16,),
              TextField(
                controller: _numberTwoTEController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: 'Number 2',
                  labelText: 'Number 2',
                ),
              ),
              const SizedBox(height: 9,),
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 16,
                children: [
                  ElevatedButton.icon(
                    onPressed: (){
                      _add();
                    },
                    icon: const Icon(Icons.add),
                    label: const Text("Add"),
                  ),
                  ElevatedButton.icon(
                    onPressed: (){
                      _sub();
                    },
                    icon: const Icon(Icons.remove),
                    label: const Text("Sub"),
                  ),
                  ElevatedButton.icon(
                    onPressed: (){
                      _multi();
                    },
                    icon: const Icon(Icons.dangerous_outlined),
                    label: const Text("Multi"),
                  ),
                  ElevatedButton.icon(
                    onPressed: (){
                      _div();
                    },
                    icon: const Icon(Icons.directions_off_sharp),
                    label: const Text("Div"),
                  ),
                ],
              ),
              const SizedBox(height: 24,),
              Text("Result: $_result"),
            ],
          ),
        ),
      ),
    );
  }

  void _add(){
    double numberOne = double.tryParse(_numberOneTEController.text) ?? 0;
    double numberTwo = double.tryParse(_numberTwoTEController.text) ?? 0;
    _result = numberOne + numberTwo;
    setState(() {});
  }

  void _sub(){
    double numberOne = double.tryParse(_numberOneTEController.text) ?? 0;
    double numberTwo = double.tryParse(_numberTwoTEController.text) ?? 0;
    _result = numberOne - numberTwo;
    setState(() {});
  }

  void _multi(){
    double numberOne = double.tryParse(_numberOneTEController.text) ?? 0;
    double numberTwo = double.tryParse(_numberTwoTEController.text) ?? 0;
    _result = numberOne * numberTwo;
    setState(() {});
  }

  void _div(){
    double numberOne = double.tryParse(_numberOneTEController.text) ?? 0;
    double numberTwo = double.tryParse(_numberTwoTEController.text) ?? 0;
    _result = numberOne / numberTwo;
    setState(() {});
  }

  @override
  void dispose() {
    _numberTwoTEController.dispose();
    _numberTwoTEController.dispose();
    super.dispose();
  }
}
