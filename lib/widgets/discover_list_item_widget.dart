
import 'package:flutter/material.dart';

class DiscoverListItemWidget extends StatelessWidget {
  const DiscoverListItemWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      width: 200,
      child: Column(
        children: [
          Expanded(
            flex: 6,
            child: Container(
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage('https://picsum.photos/200/300'),                
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            flex: 3,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nature',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey
                    ),
                  ),
                  SizedBox(height: 10),
                  Flexible(
                    // child: Text()
                    child: Text(
                      'Let us plant more trees from this year',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
