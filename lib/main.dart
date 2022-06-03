import 'package:flutter/material.dart';
void main() => runApp( MyApp());

class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return new MaterialApp(
     title: 'Flutter Demo',
     theme:  ThemeData(
       primarySwatch: Colors.blue,
     ),
     home:  MyHomePage(),
   );
 }
}

class MyHomePage extends StatefulWidget {
 @override
 _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 var _textController = TextEditingController();
  var _secondtextController = TextEditingController();


 @override
 Widget build(BuildContext context) {
   // ignore: unnecessary_new
   return new Scaffold(
     appBar:  AppBar(
       title:  Text("Test sample for input Widgets"),
     ),
     body:  ListView(
       children:  <Widget>[
          ListTile(
           title:  TextFormField(
             key: Key('textField'),
             controller: _textController,
           ),
         ),
                   ListTile(
           title:  TextFormField(
             key: Key('secondTextfield'),
             controller: _secondtextController,
           ),
         ),
          ListTile(
           title:  ElevatedButton(
             key: Key("button"),
             child:  Text("Next"),
             onPressed: () {
               var route =  MaterialPageRoute(
                 builder: (BuildContext context) =>
                  NextPage(value: _textController.text, value2: _secondtextController.text,),
               );
               Navigator.of(context).push(route);
             },
           ),
         ),
       ],
     ),
   );
 }
}

class NextPage extends StatefulWidget {
 final String? value;
 final String? value2;

NextPage({Key? key, this.value, this.value2}) : super(key: key);
@override
_NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
@override
 Widget build(BuildContext context) {
   return  Scaffold(
     appBar:  AppBar(
    title:  Text("Outputs"),
    ),
    body: ListView(
      children: [
        ListTile(title: Text("${widget.value}")),
        ListTile(title: Text("${widget.value2}"),)
      ],
    )
    
    
    
 );
 }
}