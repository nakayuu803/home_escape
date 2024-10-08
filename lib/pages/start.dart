import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:home_escape/constant/constant.dart';

import 'package:home_escape/main.dart';
import 'package:home_escape/pages/sign_in.dart';

class StartPage extends ConsumerWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final double deviceHeight =
        MediaQuery.of(context).size.height; //端末の縦の大きさを取得
    final double deviceWidth = MediaQuery.of(context).size.width; //端末の横の大きさを取得

    return Scaffold(
      backgroundColor: Color(0xFFF38D49),
      body: Column(
        children: [
          SizedBox(height: deviceHeight * 0.1),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
            // ロゴ画像
            child: Center(
              child: Container(
                child: Image.asset('assets/images/icon.png'),
                width: deviceHeight * 0.4,
              ),
            ),
          ),
          SizedBox(height: deviceHeight * 0.1),
          Padding(
              // ゲストスタートボタン
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
              child: Center(
                child: ElevatedButton(
                  onPressed: () async {
                    // ボタンを押すとホーム画面に遷移
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const HomePage(title: 'HomePage')),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(deviceWidth * 0.7, deviceHeight * 0.08),
                    backgroundColor: Color(0xffFFE2C6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text('ゲストとしてはじめる'),
                ),
              )),
          SizedBox(height: deviceHeight * 0.05),
          Padding(
              // ログインスタートボタン
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    // toDo: ボタンを押すとログインページに遷移
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const SignUp()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(deviceWidth * 0.7, deviceHeight * 0.08),
                    backgroundColor: Color(0xffFFE2C6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text('ログインしてはじめる'),
                ),
              )),
        ],
      ),
    );
  }
}
