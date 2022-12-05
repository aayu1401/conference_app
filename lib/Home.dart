import 'dart:ui';

import 'package:conference_app/Day1.dart';
import 'package:conference_app/Day2.dart';
import 'package:conference_app/Day3.dart';
import 'package:flutter/cupertino.dart';
import 'dart:convert';
import 'package:flutter/services.dart';

import 'package:flutter/material.dart' show AppBar, BuildContext, Colors, Container, DropdownButton, DropdownButtonHideUnderline, DropdownMenuItem, Icon, Icons, Key, Scaffold, State, StatefulWidget, Text, TextStyle, Theme, Widget;

const List<String> list = <String>["Day 1","Day 2","Day 3"];

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String dropDownValue = "Day 1";
  List _schedule = [];
  Map _topic = {};

  Future<void> readSchedule() async {
    final String response = await rootBundle.loadString('assets/schedule.json');
    final data = await json.decode(response);
    setState(() {
      _schedule = data;
    });
  }
  Future<void> readTopic() async {
    final String response = await rootBundle.loadString('assets/topic.json');
    final data = await json.decode(response);
    setState(() {
      _topic = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    readSchedule();
    readTopic();
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Theme.of(context).primaryColor,
        title: const Text("FMFP'22 Schedule",
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.normal,
              fontFamily: 'Poppins',
              fontSize: 20),
        ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 17,top:9,bottom: 9),
              child: SizedBox(
                
                height: 40,
                width: 136,
                child: DecoratedBox(
                  decoration:  BoxDecoration(
                    color: const Color.fromRGBO(226, 209, 249, 1),
                    borderRadius: BorderRadius.circular(4),
                  ),

                  child: Center(
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(


                        dropdownColor: const Color.fromRGBO(226, 209, 249, 1) ,
                          value: dropDownValue,
                            icon: const Icon(Icons.arrow_drop_down),

                          onChanged: (String? value) {
                            // This is called when the user selects an item.
                            setState(() {
                              dropDownValue = value!;
                            });
                          },

                          items: list.map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FontStyle.normal,
                                  fontFamily: 'Poppins',
                                  fontSize: 16),

                            ),
                            );

                          }).toList(),
                        
                        ),
                    ),
                  ),
                ),
              )
            ),
          ]
        ),
      body: showDay()
    );
  }
  showDay(){
    if(dropDownValue=="Day 1")
      {
        return  Day1( schedule: _schedule, topic: _topic);
      }
    else if(dropDownValue=="Day 2")
      {
        return Day2( schedule: _schedule,topic: _topic );
      }
    else
      {
        return  Day3(schedule: _schedule, topic: _topic);
      }
  }
}

