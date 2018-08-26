import 'package:flutter/material.dart';
import 'package:animation_playground/AnimationTopics.dart';


class TopicListItem extends StatelessWidget{
  final AnimationTopics animationTopics;
  final ValueChanged<AnimationTopics> onTap;

  const TopicListItem({
  Key key,
  @required this.animationTopics,
  this.onTap,
}) : assert(animationTopics!=null),
  super(key: key);

  @override
  Widget build(BuildContext context) {
      return new Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
        ),
        elevation: 4.0,
        child: new Container(
          decoration: new BoxDecoration(
            border: new Border(
                left: new BorderSide(
                  width: 4.0,
                  color: Colors.lightBlue,
                ),
            )
          ),
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, "/${animationTopics.title}");
            },
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: new Text(
                      animationTopics.title,
                    ),
                  ),
                ),
                new Icon(
                  Icons.chevron_right
                )
              ],
            ),
          ),
        ),
      );
  }

}