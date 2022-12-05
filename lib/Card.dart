import 'package:conference_app/AppTheme.dart';
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
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(
              Radius.circular(4),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 4,
                offset: const Offset(0, 3),
              )
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    widget.room,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: AppTheme.lightGrey.withOpacity(0.6),
                          fontSize: 14,
                        ),
                  ),
                ),
                const Divider(
                  thickness: 1.0,
                  height: 1.0,
                ),
                Text(
                  widget.topic,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: AppTheme.lightGrey.withOpacity(0.8),
                        fontSize: 16,
                        height: 2,
                      ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Visibility(
                    visible: !_isVisible,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                _cardDivider(),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 6.0),
                                  child: Text(widget.first_time),
                                ),
                                _cardDivider(),
                              ]),
                          _cardText1(widget.topicList[widget.first]["Topic"]),
                          _cardText2(
                              widget.topicList[widget.first]["Speakers"]),
                          Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                _cardDivider(),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 6.0),
                                  child: Text(widget.second_time),
                                ),
                                _cardDivider(),
                              ]),
                          _cardText1(widget.topicList[widget.second]["Topic"]),
                          _cardText2(
                              widget.topicList[widget.second]["Speakers"]),
                          Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                _cardDivider(),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 6.0),
                                  child: Text(widget.third_time),
                                ),
                                _cardDivider(),
                              ]),
                          _cardText1(widget.topicList[widget.third]["Topic"]),
                          _cardText2(
                              widget.topicList[widget.third]["Speakers"]),
                          if (widget.fourth != "") ...[
                            Row(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  _cardDivider(),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 6.0),
                                    child: Text(widget.fourth_time),
                                  ),
                                  _cardDivider(),
                                ]),
                            _cardText1(
                                widget.topicList[widget.fourth]["Topic"]),
                            _cardText2(
                                widget.topicList[widget.fourth]["Speakers"]),
                          ],
                          if (widget.fifth != "") ...[
                            Row(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  _cardDivider(),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 6.0),
                                    child: Text(widget.fifth_time),
                                  ),
                                  _cardDivider(),
                                ]),
                            _cardText1(widget.topicList[widget.fifth]["Topic"]),
                            _cardText2(
                                widget.topicList[widget.fifth]["Speakers"]),
                          ]
                        ],
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.zero)),
                      textStyle: const TextStyle(fontSize: 20),
                      minimumSize: const Size.fromHeight(40),
                      backgroundColor: AppTheme.teal,
                    ),
                    onPressed: showDetails,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (_isVisible == true) ...[
                          Text(
                            'View Lectures',
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      color: Colors.white,
                                      fontSize: 14,
                                    ),
                          ),
                        ] else ...[
                          Text(
                            'Hide Lectures',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(color: Colors.white, fontSize: 14),
                          )
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
          ],
        ),
      ),
    );
  }

  Widget _cardText1(String text) {
    return Padding(
      padding: const EdgeInsets.only(top: 6.0),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: Theme.of(context)
            .textTheme
            .headline1!
            .copyWith(color: AppTheme.lightGrey.withOpacity(0.8), fontSize: 14),
      ),
    );
  }

  Widget _cardText2(String text) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 6.0,
        bottom: 12,
      ),
      child: Text(
        textAlign: TextAlign.center,
        'Speaker : $text',
        style: Theme.of(context).textTheme.headline1!.copyWith(
              color: AppTheme.lightGrey.withOpacity(0.6),
              fontSize: 12,
            ),
      ),
    );
  }

  Widget _cardDivider() {
    return const Expanded(
        child: Divider(
      thickness: 1.5,
    ));
  }
}
