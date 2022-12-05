import 'package:flutter/material.dart';

class RoomCard extends StatefulWidget {
  final String first_time;
  final String second_time;
  final String third_time;
  final String fourth_time;
  final String fifth_time;
  final String room;
  final String topic;
  final String first;
  final String second;
  final String third;
  final String fourth;
  final String fifth;
  final Map topicList;

  const RoomCard(
      {Key? key,
      required this.first_time,
      required this.second_time,
      required this.third_time,
      required this.fourth_time,
      required this.fifth_time,
      required this.room,
      required this.topic,
      required this.first,
      required this.second,
      required this.third,
      required this.fourth,
      required this.fifth,
      required this.topicList})
      : super(key: key);
  @override
  State<RoomCard> createState() => _RoomCardState();
}

class _RoomCardState extends State<RoomCard> {
  bool _isVisible = true;

  void showDetails() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(

        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
            child: Column(
              children: <Widget>[
                Text(widget.room),
                const Divider(
                  thickness: 1.0,
                  height: 1.0,
                ),
                Text(widget.topic),
                Visibility(
                  visible: !_isVisible,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[

                      Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[

                        const Expanded(child: Divider()),
                        Text(widget.first_time),
                        const Expanded(child: Divider()),
                      ]),
                      Text(widget.topicList[widget.first]["Topic"]),
                      Text(widget.topicList[widget.first]["Speakers"]),
                      Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                        const Expanded(child: Divider()),
                        Text(widget.second_time),
                        const Expanded(child: Divider()),
                      ]),
                      Text(widget.topicList[widget.second]["Topic"]),
                      Text(widget.topicList[widget.second]["Speakers"]),
                      Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                        const Expanded(child: Divider()),
                        Text(widget.third_time),
                        const Expanded(child: Divider()),
                      ]),
                      Text(widget.topicList[widget.third]["Topic"]),
                      Text(widget.topicList[widget.third]["Speakers"]),
                      if (widget.fourth != "") ...[
                        Row( mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                          const Expanded(child: Divider()),
                          Text(widget.fourth_time),
                          const Expanded(child: Divider()),
                        ]),
                        Text(widget.topicList[widget.fourth]["Topic"]),
                        Text(widget.topicList[widget.fourth]["Speakers"]),
                      ],
                      if (widget.fifth != "") ...[

                        Row(mainAxisSize: MainAxisSize.min,
                            children: <Widget>[

                          const Expanded(child: Divider()),
                          Text(widget.fifth_time),
                          const Expanded(child: Divider()),
                        ]),
                        Text(widget.topicList[widget.fifth]["Topic"]),
                        Text(widget.topicList[widget.fifth]["Speakers"]),
                      ]
                    ],
                  ),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20),
                      minimumSize: const Size.fromHeight(50),
                    ),
                    onPressed: showDetails,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (_isVisible == true) ...[
                          const Text('Show Lectures'),
                        ] else ...[
                          const Text('Hide Lectures')
                        ], // <-- Text

                        if (_isVisible == true) ...[
                          const Icon(
                            Icons.arrow_drop_down_sharp,
                            size: 24.0,
                          )
                        ] else ...[
                          const Icon(
                            Icons.arrow_drop_up_sharp,
                            size: 24.0,
                          )
                        ],
                      ],
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
