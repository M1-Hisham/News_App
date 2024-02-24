import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(6)),
            child: Image(
              image: AssetImage('assets/health.avif'),
            ),
          ),
        ),
        Text(
          'nmbdfbdfhjbvdhjsfv sjhakfdgjdsgf   hdjkfb dfsjkghsjadkfgdf ',
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            'hjghfgh dhfgdhjfgj sdhgfjhsgf jdshfjkg',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
          ),
        )
      ],
    );
  }
}
