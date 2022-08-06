import 'dart:ffi';
import 'dart:ffi';
import 'dart:ui';

import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:intl/intl.dart';
import 'package:iti_third_task/widgets/custom_row.dart';
import 'package:iti_third_task/widgets/main_button.dart';
import 'package:iti_third_task/widgets/square_unit.dart';
import 'package:iti_third_task/widgets/text.dart';

class NewForm extends StatefulWidget {
  const NewForm({Key? key}) : super(key: key);

  @override
  State<NewForm> createState() => _NewFormState();
}

class _NewFormState extends State<NewForm> {
  TextEditingController textController = TextEditingController();
  TextEditingController timeController = TextEditingController();
  TextEditingController newTimeController = TextEditingController();
  final GlobalKey<FormState> _signinformKey = GlobalKey<FormState>();
  bool edit = false;
  late DateTime data;
  //var index = 0;
  List<String> times = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Color(0xff008dad),
        title:Text("Great task",),
        leading: GestureDetector(
          onTap: () {
            // Navigator.push(context,
            //     MaterialPageRoute(builder: (context) => WalletTotal()));
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30,
          ),
        ),
      ),
      body: Container(
        color: Colors.orange[50],
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Form(
              key: _signinformKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 10),
                    child: customTextFormField(
                      labelText: "Title",
                      type: TextInputType.text,
                      controller: textController,
                      icon: Icons.edit,
                      errorMessage: "Title is required",
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 10),
                    child: customTextFormField(
                        labelText: "Select time",
                        icon: Icons.watch_later,
                        type: TextInputType.datetime,
                        controller: timeController,
                        errorMessage: "Please select current time",
                        onTap: () {
                          showTimePicker(
                            context: context,
                            initialTime: TimeOfDay.now(),
                          ).then((value) {
                            if (value == null) {
                              return null;
                            } else {
                              timeController.text =
                                  value.format(context).toString();
                              times.add(value.toString());
                            }
                          });
                        }),
                  ),
                  Card(
                    color: Colors.green[50],
                    elevation: 8,
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none),
                    child: Container(
                      height: 130,
                      margin: EdgeInsets.all(5),
                      child: Column(
                        children: [
                          Expanded(
                              child: Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Center(
                              child: Text(
                                "1. ${textController.text}",
                                overflow: TextOverflow.clip,
                                maxLines: 1,
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.teal[900]),
                              ),
                            ),
                          )),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                  onPressed: () {
                                    if (_signinformKey.currentState
                                            ?.validate() ==
                                        true) {
                                      showTextInputDialog(
                                        context: context,
                                        title:
                                            "Are you sure you want to edit the time?",
                                        textFields: [
                                          DialogTextField(
                                            keyboardType:
                                                TextInputType.datetime,
                                            hintText: "Time",
                                          ),
                                        ],
                                        okLabel: "edit",
                                        cancelLabel: "Cancel",
                                        message: "Select the time",
                                      ).then((value) async {
                                        if (value == null ||
                                            value[0].length < 2)
                                          print("Error!");
                                        else {
                                          String temp = value[0].toString();
                                          //print(temp);
                                          DateTime tempDate =
                                              new DateFormat("hh:mm")
                                                  .parse(temp);
                                          if (tempDate.isAfter(DateTime.now()
                                              .add(const Duration(hours: 2)))) {
                                            return showOkCancelAlertDialog(
                                              context: context,
                                              title: "Can not edit time!",
                                              okLabel: "ok",
                                              cancelLabel: "cancel",
                                            );
                                          } else {
                                            return showOkCancelAlertDialog(
                                              context: context,
                                              title: "Time edited",
                                              okLabel: "ok",
                                              cancelLabel: "cancel",
                                            );
                                          }
                                        }
                                      });
                                    } else
                                      print('error');
                                  },
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.deepOrange[50]),
                                  ),
                                  child: Text("Edit",
                                      style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.deepOrange[600],
                                        backgroundColor: Colors.deepOrange[50],
                                      ))),
                              ElevatedButton(
                                  onPressed: () {
                                    showTextInputDialog(
                                      context: context,
                                      title:
                                          "Are you sure you want to delete an item?",
                                      textFields: [
                                        DialogTextField(
                                          keyboardType: TextInputType.number,
                                          hintText: "Index",
                                        ),
                                      ],
                                      okLabel: "delete",
                                      cancelLabel: "Cancel",
                                      message: "Enter the index",
                                    ).then((value) async {
                                      if (value == null || value.isEmpty)
                                        print("Error!");
                                      else {
                                        times.removeAt(int.parse(value[0]));
                                      }
                                    });
                                  },
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.deepOrange[50]),
                                  ),
                                  child: Text("Delete",
                                      style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.deepOrange[600],
                                        backgroundColor: Colors.deepOrange[50],
                                      ))),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 350,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: times.length,
                      itemBuilder: (context, index) {
                        return Center(
                          child: Column(
                            children: [
                              centerCustomRow(
                                number: index + 1,
                                nameOfButton: times[index],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
