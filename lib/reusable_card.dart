import 'package:flutter/cupertino.dart';

class ReusableCard extends StatelessWidget {

  var culor;
  var cardChild;
  void Function()?  onPress;
  ReusableCard({ this.cardChild,this.culor, this.onPress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
          child: cardChild,
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: culor,
            borderRadius: BorderRadius.circular(10),
          ),

        ),
    );
  }
}