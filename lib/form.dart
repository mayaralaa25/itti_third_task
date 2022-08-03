import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';
import 'package:iti_third_task/screens/wallet_total.dart';

class ValidationForm extends StatefulWidget {
  const ValidationForm({Key? key}) : super(key: key);

  @override
  State<ValidationForm> createState() => _ValidationFormState();
}

class _ValidationFormState extends State<ValidationForm> {
  final TextEditingController _nameTextEditingController =
      TextEditingController();

  final TextEditingController _emailTextEditingController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _signinformKey = GlobalKey<FormState>();
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
        backgroundColor: Color.fromRGBO(5, 16, 84, 1),
        elevation: 0,
        leading: GestureDetector(
           onTap: ()
          {
            Navigator.push(context,
            MaterialPageRoute(builder: (context) => WalletTotal()));
          },
          child: Icon(Icons.arrow_back,color: Colors.purple[900],size:
          35,),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color.fromRGBO(5, 16, 84, 1),
              Color.fromRGBO(2, 4, 64, 1),
              Color.fromRGBO(12, 35, 119, 1),
            ])),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.account_circle_outlined,
                size: 200,
                color: Colors.purple[900],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Form(
                key: _signinformKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                      onTap: () {},
                      keyboardType: TextInputType.text,
                      controller: _nameTextEditingController,
                      validator: (name) {
                        //if (name == null) return null;
                      },
                      decoration: InputDecoration(
                        label: Text('Name'),
                        labelStyle: TextStyle(color: Colors.purple[500]),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.purple,
                        )),
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.purple[500],
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(style: BorderStyle.solid),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      onTap: () {},
                      keyboardType: TextInputType.text,
                      controller: _emailTextEditingController,
                      validator: (email) {
                        //if (email == null) return null;
                      },
                      decoration: InputDecoration(
                        label: Text('Email'),
                        labelStyle: TextStyle(color: Colors.purple[500]),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.purple,
                        )),
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.purple[500],
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(style: BorderStyle.solid),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    DropdownButtonFormField(
                      decoration: InputDecoration(
                        label: Text('  Gender'),
                        labelStyle: TextStyle(color: Colors.purple[500]),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.purple,
                        )),
                        filled: true,
                        fillColor: Colors.white,
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(style: BorderStyle.solid),
                        ),
                      ),
                      validator: (txt) {
                        //if (txt == null) return null;
                      },
                      borderRadius: BorderRadius.circular(10),
                      items: [
                        DropdownMenuItem(
                          child: Text("Male"),
                          value: "male",
                        ),
                        DropdownMenuItem(
                          child: Text("Female"),
                          value: "famle",
                        ),
                      ],
                      onChanged: (value) {
                        print(value);
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    MaterialButton(
                      onPressed: () {
                        if (_signinformKey.currentState!.validate()) {
                          showOkCancelAlertDialog(
                            context: context,
                            title: "Ready to submit",
                            okLabel: "OK",
                            cancelLabel: "Cancel",
                            //isDestructiveAction: true,
                          );
                        } else
                          print('error');
                      },
                      child: Text("Submit"),
                      color: Colors.purple[900],
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
