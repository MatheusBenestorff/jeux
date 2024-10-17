import 'package:flutter/material.dart';

import '../models/post.dart';
import '../utils/app_routes.dart';

class PostItem extends StatelessWidget {
  const PostItem(this.post, {super.key});

  final Post post;

  void _selectpost(BuildContext context) {
    Navigator.of(context).pushNamed(
      AppRoutes.POST_DETAIL,
      arguments: post,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectpost(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    post.image,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  right: 10,
                  bottom: 20,
                  child: Container(
                    width: 300,
                    color: Colors.black54,
                    padding: EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 20,
                    ),
                    child: Text(
                        post.title,
                      style: TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.info),
                      SizedBox(width: 6,),
                      Text('${post.subtitle}'),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
