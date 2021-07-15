
import 'package:flutter/material.dart';
import 'package:udemy_course/widgets/profile_info.dart';

class CardInformationWidget extends StatelessWidget {
  const CardInformationWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      width: double.infinity,
      height: 250,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
              color: Colors.grey,
              blurRadius: 10,
              offset: Offset.fromDirection(90),
              spreadRadius: 2),
        ],
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 160,
            child: Row(
              children: [
                Container(
                  width: 150,
                  margin: EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/people.jpg')
                    ),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                Flexible(
                  child: Container(
                    margin: EdgeInsets.only(left: 15, top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Joma tech',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          'Mobile Developer',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 20),
                        Flexible(
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.blueGrey[100],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ProfileInfo(subTitle: 'Articles', value: '300'),
                                ProfileInfo(subTitle: 'Followers', value: '99'),
                                ProfileInfo(subTitle: 'Rating', value: '10'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ),
              ],
            ),
          ),
          Flexible(
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                      flex: 1,
                      child: OutlineButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          child: Text(
                            'CHAT',
                            style: TextStyle(fontSize: 16),
                          ),
                          onPressed: () {
                            print('clicked');
                          })),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      flex: 1,
                      child: RaisedButton(
                          color: Colors.blue,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          child: Text(
                            'FOLLOW',
                            style: TextStyle(
                                fontSize: 16, color: Colors.white),
                          ),
                          onPressed: () {
                            print('clicked');
                          })),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
