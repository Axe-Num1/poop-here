import 'package:flutter/material.dart';
import 'package:poop_here/models/review.dart';

class ReviewCard extends StatefulWidget
{
  final Review review;
  ReviewCard(this.review);

  @override
  _ReviewCardState createState() => _ReviewCardState();
}

class _ReviewCardState extends State<ReviewCard>
{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(widget.review.title),
    );
  }
}
