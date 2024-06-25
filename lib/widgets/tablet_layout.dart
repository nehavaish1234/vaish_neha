import 'package:flutter/material.dart';

class TabletLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 400,
          height: 120,
          child: Text(
            'Contact US 7972391849\nEmail : samaystartup@gmail.com',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontFamily: 'Roboto Slab',
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildContainerWithLogo(context, 'https://upload.wikimedia.org/wikipedia/commons/a/a5/Instagram_icon.png', 80),
            buildContainerWithLogo(context, 'https://upload.wikimedia.org/wikipedia/commons/5/51/Facebook_f_logo_%282019%29.svg', 80),
            buildContainerWithLogo(context, 'https://upload.wikimedia.org/wikipedia/commons/c/ca/LinkedIn_logo_initials.png', 80),
            buildContainerWithLogo(context, 'https://upload.wikimedia.org/wikipedia/en/6/60/Twitter_Logo_as_of_2021.svg', 80),
          ],
        ),
        SizedBox(height: 20),
        SizedBox(
          width: 220,
          height: 55,
          child: Text(
            'copyright@samay.live',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w400,
              decoration: TextDecoration.underline,
              height: 1.0,
              letterSpacing: 0.36,
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
          width: 40,
          height: 40,
        ),
      ),
    );
  }
}
