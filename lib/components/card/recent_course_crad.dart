import 'package:flutter/material.dart';
import 'package:myproject/model/course.dart';

import '../../constants.dart';

class RecentCourseCard extends StatelessWidget {
  RecentCourseCard({this.course});

  Course course;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
             Padding(
               padding:  EdgeInsets.only(left: 8.0,top: 20.0),
               child: Container(
                width: 240,
                height: 240,
                decoration: BoxDecoration(
                    gradient: course.background,
                    borderRadius: BorderRadius.circular(50.0),
                    boxShadow: [
                      BoxShadow(
                        color: course.background.colors[0].withOpacity(0.3),
                        offset: Offset(0, 20),
                        blurRadius: 30.0,
                      ),
                      BoxShadow(
                        color: course.background.colors[1].withOpacity(0.3),
                        offset: Offset(0, 20),
                        blurRadius: 30.0,
                      )
                    ]),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 75.0,
                        right: 32.0,
                        left: 32.0,
                      ),
                      child: Column(
                        children: [
                          Text(
                            course.courseSubtitle,
                            style: kCardSubtitleStyle,
                          ),
                          SizedBox(
                            height: 6.0,
                          ),
                          Text(
                            course.courseTitle,
                            style: kCardTitleStyle,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Image.asset(
                        "asset/illustrations/${course.illustration}",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
            ),
             ),
        Padding(
          padding: EdgeInsets.only(right: 25.0),
          child: Container(
            child: Image.asset('asset/logos/${course.logo}'),
            width: 60.0,
            height: 60.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: kShadowColor,
                    offset: Offset(0, 4),
                    blurRadius: 16.0,
                  )
                ]),
            padding: EdgeInsets.all(8.0),
          ),
        )
      ],
    );
  }
}
