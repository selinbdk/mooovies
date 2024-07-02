import 'package:flutter/material.dart';

class AppColors {
  //* kullanım => AppColors.buttonColor;
  //* static const Color primaryColor = Color(0xfffffff);
  static const Color secondaryColor = const Color.fromARGB(189, 0, 0, 0);
  static const Color backColor = Color.fromARGB(178, 0, 0, 0);
  static const Color buttonColor = Colors.black12;
}

// class AppColors2 {
//   //* kullanım => AppColors().buttonColor;

//   //* static const Color primaryColor = Color(0xfffffff);
//     Color secondaryColor = Colors.black12;
//     Color buttonColor = Colors.black12;
// }

class _SampleColorUsage extends StatelessWidget {
  const _SampleColorUsage({super.key});

  @override
  Widget build(BuildContext context) {
    // final deviceSize = MediaQuery.of(context).size;

    return Container(
      color: AppColors.buttonColor,
      width: 100,
      height: 200,
    );
  }
}

class UserModel {
  final int userId;
  final String? username;
  final double? weight;
  final bool? canSwim;

  const UserModel(
      {required this.userId, this.username, this.weight, this.canSwim});
}

void main(List<String> args) {
  final user = const UserModel(
      userId: 12, username: 'enes', canSwim: false, weight: 21.3);

  // late final UserModel username;

  // username = UserModel(userId: 123);

  user.userId;
  user.username;
  user.canSwim;
}

class UserWidget extends StatelessWidget {
  const UserWidget({super.key, required this.userModel, required this.title});

  final UserModel userModel;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'username: ${userModel.username ?? ' '}',
          // 'username: ' + (userModel.username ?? ' '),
          // 'username: ' + (userModel.username),
        ),
        Text('title: $title')
      ],
    );
  }
}
