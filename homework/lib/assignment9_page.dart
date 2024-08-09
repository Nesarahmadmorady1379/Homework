import 'package:flutter/material.dart';

class Assignment9Page extends StatefulWidget {
  const Assignment9Page({super.key});

  @override
  State<Assignment9Page> createState() => _Assignment9PageState();
}

class _Assignment9PageState extends State<Assignment9Page> {
  final TextEditingController _num1Controller = TextEditingController();
  final TextEditingController _num2Controller = TextEditingController();
  final TextEditingController _currencyController = TextEditingController();
  final TextEditingController _minuteController = TextEditingController();

  String _result = '';
  String _operation = 'Add';

  void _performOperation() {
    setState(() {
      double num1 = double.tryParse(_num1Controller.text) ?? 0.0;
      double num2 = double.tryParse(_num2Controller.text) ?? 0.0;
      double currency = double.tryParse(_currencyController.text) ?? 0.0;
      int minute = int.tryParse(_minuteController.text) ?? 0;

      switch (_operation) {
        case 'Add':
          _result = 'Result: ${num1 + num2}';
          break;
        case 'Multiply':
          _result = 'Result: ${num1 * num2}';
          break;
        case 'Divide':
          _result = 'Result: ${num1 / num2}';
          break;
        case 'Currency':
          _result = 'Result: ${currency * 79.25} AFN'; 
          break;
        case 'Convert':
          _result = 'Result: ${minute * 60} seconds';
          break;
        default:
          _result = 'Invalid operation';
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 10,right: 10),
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.blue,
                  Colors.red,
                  Colors.yellow
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight
                ),
              ),
             child: Row(
              children: [
                ElevatedButton(onPressed: (){
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 80, 139, 187),
                  iconColor: Colors.white,
                ),
                 child: Icon(Icons.arrow_back),),
                SizedBox(width: 320,),
                Text('Assignmet 10',style:TextStyle(fontSize: 22) ,),
              ],
             ),
            ),
          ),
        ),
        body:Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [ Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text('Push the folowing botton to chose one operation',
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    gradient:RadialGradient(colors: [Color.fromARGB(255, 15, 54, 184),Colors.purple],
                    center: Alignment(1.0, 1.0),
                    radius: 1),
                  borderRadius: BorderRadius.circular(30),
                  ),
                  child: DropdownButton<String>(
                    dropdownColor: Colors.blue,     
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    value: _operation,
                    onChanged: (String? newValue) {
                      setState(() {
                        _operation = newValue!;
                      });
                    },
                    items: <String>['Add', 'Multiply', 'Divide', 'Currency', 'Convert']
                        .map<DropdownMenuItem<String>>((String value) { 
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
                if (_operation != 'Currency' && _operation != 'Convert') ...[
                  TextField(
                    controller: _num1Controller,
                    decoration: InputDecoration(labelText: 'Enter first number',border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)))),
                    keyboardType: TextInputType.number,
                  
                  ),
                   SizedBox(height: 10), 
                  TextField(
                    controller: _num2Controller,
                    decoration: InputDecoration(labelText: 'Enter second number',border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)))),
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(height: 10,)
                ] else if (_operation == 'Currency') ...[
                  TextField(
                    controller: _currencyController,
                    decoration: InputDecoration(labelText: 'Enter amount in USD',border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)))),
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(height: 10,)
                ] else if (_operation == 'Convert') ...[
                  TextField(
                    controller: _minuteController,
                    decoration: InputDecoration(labelText: 'Enter minutes',border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)))),
                    keyboardType: TextInputType.number,
                  ),
                ],
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [Colors.yellow,Colors.red],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topLeft)
                  ),
                  child: ElevatedButton(
                    onPressed: _performOperation,
                    style:ElevatedButton.styleFrom( 
                  animationDuration: Duration(seconds: 1),
             
                  
                    ),
                    child: Text('Calculate',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.all(20),
                  height: 100,
                  width: 500,
                  decoration: BoxDecoration(gradient: LinearGradient(colors: [Color.fromARGB(255, 206, 13, 71),Colors.green,Colors.yellow],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
                   ),
                  child: Text(
                    _result,
                    style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
         ] ,),
        ),
      
      )
      
    );
  }
}