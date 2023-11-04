import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 107,
          width: 107,
          decoration: BoxDecoration(
              gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.red, Colors.amber]),
              borderRadius: BorderRadius.circular(60)),
        ),
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              image: const DecorationImage(
                  image: NetworkImage("https://picsum.photos/id/64/200/300"),
                  fit: BoxFit.cover),
              border: Border.all(color: Colors.white, width: 3),
              color: Colors.grey,
              borderRadius: BorderRadius.circular(60)),
        )
      ],
    );
  }
}
