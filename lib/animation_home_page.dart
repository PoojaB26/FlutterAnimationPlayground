import 'package:flutter/material.dart';
import 'package:animation_playground/AnimationTopics.dart';
import 'package:animation_playground/topic_list_item.dart';
class AnimationHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return new Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: new Text("Animation Playground"),
        ),
        body: new Column(
          children: <Widget>[
            Expanded(
                child: _buildListItems())
          ],
        ),
      );

  }

  Widget _buildListItems(){
    return new ListView.builder(
      itemBuilder: (BuildContext context, int index) =>
      new TopicListItem(
        animationTopics: topics[index],
      ),
      itemCount: topics.length,
      itemExtent: 80.0,
    );
  }

}