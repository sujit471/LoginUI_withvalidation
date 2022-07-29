import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'My first project'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool value = false;
  int _counter = 0;
  final _formKey = GlobalKey<FormState>();
  var isLoading = false;
  void _submit() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    _formKey.currentState!.save();
  }

  get child => null;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: false,
   // appBar: AppBar(
   //
   //   // title: Center(child: Text('sujit')),
   //  ),
body :Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Form(
    key: _formKey,
    child:   Column (

      crossAxisAlignment: CrossAxisAlignment.start,

      children: [

        SizedBox(height:40),

         Padding(

           padding: const EdgeInsets.fromLTRB(30, 30, 0, 0),

           child: Text("Welcome",style: TextStyle(

             color : Colors.black,

             fontSize: 34,

             fontWeight: FontWeight.bold,



           ),

           ),





         ),

        SizedBox(height: 20,),

        Padding(

          padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),

          child: Text("Sujit Thapa ",

    style :TextStyle(

      fontSize: 34,

      color: Colors.green,

    )

          ),

        ),

        SizedBox(height: 20),

        Padding(

          padding: const EdgeInsets.fromLTRB(30, 20, 0, 20),

          child: Text("Email",

              style :TextStyle(

                fontSize: 14,

                color: Colors.grey,

              )

          ),

        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 0, 10, 0),

          child: Container(

            decoration: BoxDecoration(

              border: Border.all(
                color: Colors.green,
              ),

              borderRadius: BorderRadius.circular(10),

            ),

            child: Padding(

              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),

              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  hintText: 'Enter the email address',

                ),

                  validator: (value) {

            if (value == null || value.isEmpty) {

            return 'Please enter a valid email address';

            }

            if(!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)){

              return 'Please enter a valid Email';

            }

            return null;

            },
              ),
            ),

          ),

        ),

        SizedBox(height: 20,),

        Padding(

          padding: const EdgeInsets.fromLTRB(30, 10, 0, 20),

          child: Text("Password",

              style :TextStyle(

                fontSize: 14,

                color: Colors.grey,

              )

          ),

        ),

        Padding(
          padding: const EdgeInsets.fromLTRB(30, 0, 10, 0),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.green,
              ),

              borderRadius: BorderRadius.circular(10),

            ),

            child: Padding(

              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),

              child: TextFormField(
                  obscureText: true,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    hintText: 'Password',

                  ),

                validator: (value) {

                  if (value == null || value.isEmpty) {

                    return 'Password cannot be empty';

                  }
                  else if(value.length<6){
                    return'password must be character of more than 6';
                  }

                  return null;

                },

              ),

            ),

          ),

        ),

        Padding(

          padding: const EdgeInsets.fromLTRB(20, 20, 10, 10),

          child: Row(

            children: [

              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Row(
                  children: <Widget>[
                    Padding(

                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),

                      child: Checkbox(

                        value: this.value,

                        onChanged: (value) {

                          setState(() {

                            this.value != value;
                          }
                          );

                        },

                      ),

                    ),

                   // child[

          // Checkbox(

          //     activeColor: Color(0xff00C8E8),

          //   value: _isChecked,

          //   onChanged: _handleRemeberme),

                 //   ] ,

                    Text("Remember me",style:TextStyle(

                      fontSize: 12,

                    )

                    ),

                  ],

                ),

              ),

              Padding(

                padding: const EdgeInsets.fromLTRB(60, 0 ,0, 0),

                child: Text("Forgot Password",style: TextStyle(

                  color: Colors.red,

                  fontSize: 12,

                ),

                ),

              ),

            ],

          ),

        ),

       Padding(

         padding: const EdgeInsets.fromLTRB(30, 20, 10, 20),

         child: Container(

           decoration: BoxDecoration(

             color: Colors.green,

             borderRadius: BorderRadius.circular(10),

           ),




           padding: EdgeInsets.all(15),

    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        primary: Colors.green,
      ),
      onPressed: () => _submit(),
      child: Center(child: Text("Sign In"),

      ),
    ),

         ),

       ),

      Padding(

        padding: const EdgeInsets.fromLTRB(80, 20, 10, 0),

        child: Row(

          children: [

            Text("Don't have an account?",style:TextStyle(

              fontSize: 12,

            ),
            ),

            RichText(
              text: TextSpan(text: "",style: TextStyle(
                color: Colors.red,
                fontSize: 12,
              ),
                children: <TextSpan>[
                  TextSpan(
                      text: 'Sign Up',
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          print(ListView.separated(separatorBuilder: (BuildContext context, int index) => const Divider(color: Colors.red,),itemCount: 10,itemBuilder: (context, index){
                            return ListTile(
                              title: Text('Hello$index'),
                            );
                          },
                          ),
                          );
                        },

                  ),
                ]

              ),
            ),

          ],

        ),

      ),

      ],

    ),
  ),
),


     // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
