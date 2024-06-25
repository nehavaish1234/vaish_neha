import 'package:flutter/material.dart';

class MobileLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 300,
          height: 100,
          child: Text(
            'Contact US 7972391849\nEmail : samaystartup@gmail.com',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'Roboto Slab',
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildContainerWithLogo(context, 'https://upload.wikimedia.org/wikipedia/commons/a/a5/Instagram_icon.png', 60),
            buildContainerWithLogo(context, 'https://upload.wikimedia.org/wikipedia/commons/5/51/Facebook_f_logo_%282019%29.svg', 60),
            buildContainerWithLogo(context, 'https://upload.wikimedia.org/wikipedia/commons/c/ca/LinkedIn_logo_initials.png', 60),
            buildContainerWithLogo(context, 'https://upload.wikimedia.org/wikipedia/en/6/60/Twitter_Logo_as_of_2021.svg', 60),
          ],
        ),
        SizedBox(height: 20),
        SizedBox(
          width: 200,
          height: 50,
          child: Text(
            'copyright@samay.live',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w400,
              decoration: TextDecoration.underline,
              height: 1.0,
              letterSpacing: 0.3,
            ),
          ),
        ),
      ],
    );
  }

  Widget buildContainerWithLogo(BuildContext context, String logoUrl, double size) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Image.network(
          logoUrl,
          width: 30,
          height: 30,
        ),
      ),
    );
  }
}
