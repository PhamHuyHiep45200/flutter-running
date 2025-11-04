import 'package:flutter/material.dart';
import 'package:working_app/consts/colors.dart';

class AvatarTravel extends StatelessWidget {
  final String avatar;
  final String? name;
  const AvatarTravel({super.key, required this.avatar, this.name});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: avatar.isNotEmpty ? NetworkImage(avatar) : null,
      backgroundColor: avatar.isEmpty
          ? const Color.fromARGB(255, 0, 183, 255)
          : null,
      child: avatar.isEmpty
          ? Text(
              name?.substring(0, 1) ?? 'A',
              style: TextStyle(color: AppColor.white),
            )
          : null,
    );
  }
}
