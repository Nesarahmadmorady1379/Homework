import 'package:flutter/material.dart';
main(){
  runApp(Assignment10Page());
}
class Assignment10Page extends StatefulWidget {
  const Assignment10Page({super.key});

  @override
  State<Assignment10Page> createState() => _Assignment10PageState();
}

class _Assignment10PageState extends State<Assignment10Page> {
  TextEditingController mynameconrolar=TextEditingController();
  TextEditingController mypasswordcontrolarconrolar=TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          title: Text('assingment 10'),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
         //body starts here
        body: Center(
          child: ListView(

            children:[
              //first container instagram page
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  margin: EdgeInsets.all(20),

                  decoration:BoxDecoration(
                    color: Colors.white12,
                    borderRadius: BorderRadius.all(Radius.circular(0.0)),
                  ) ,

                  child: Column(
                    children: [
                      SizedBox(height: 40,),
                      Text('instagram'),
                      SizedBox(height: 40,),
                      SizedBox(height: 10,),
                      TextField(
                        controller: mynameconrolar,
                        decoration: InputDecoration(
                          labelText: 'name and last name',

                        ),
                      ),
                     SizedBox(height: 2,),
                      TextField(
                        controller: mypasswordcontrolarconrolar,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          suffixIcon: Icon(Icons.hide_source),

                        ),
                      ),
                      SizedBox(height: 5,),
                      Text('Forgot password',textAlign: TextAlign.end,),
                      SizedBox(height: 5,),
                      TextButton(onPressed: null, child: Text('log in',textAlign: TextAlign.center,)),
                      SizedBox(height: 3,),
                      Text('or',textAlign: TextAlign.center,),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.facebook,color: Colors.blue,),
                          SizedBox(width: 2,),
                          Text('log in with facebook'),

                        ],
                      ),
                      SizedBox(height: 40,),

                      Container(

                        height: 40,
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Donot have an account ?'),
                            Text('sign up',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.blue),)
                          ],
                        ),
                      ),
                      SizedBox(height: 40,),
                      Container()


                    ],
                  ),
                ),
              )
            ] 
          ),
        ),
      ),
    );
  }
}