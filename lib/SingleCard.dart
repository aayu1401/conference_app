import 'package:conference_app/AppTheme.dart';
import 'package:flutter/material.dart';

class SingleCard extends StatefulWidget {

  final String room;
  final String topic;
  final String speaker;

  const SingleCard(
      {Key? key,
        required this.room,
        required this.topic,
        required this.speaker})
      : super(key: key);
  @override
  State<SingleCard> createState() => _SingleCardState();
}

class _SingleCardState extends State<SingleCard> {
  bool _isVisible = true;



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
                _cardText2(widget.speaker)


              ],
            ),
          ],
        ),
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
        'Author : $text',
        style: Theme.of(context).textTheme.headline1!.copyWith(
          color: AppTheme.lightGrey.withOpacity(0.6),
          fontSize: 14,
        ),
      ),
    );
  }

}
