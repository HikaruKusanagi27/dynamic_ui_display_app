import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: _StatusSection(),
        ),
      ),
    );
  }
}

// 1. データの定義
class StatusInfo {
  final String imagePath; // 画像パス
  final String name; // 名前パス

  StatusInfo({
    required this.imagePath,
    required this.name,
  });
}

// 2. 身分データの作成
final List<StatusInfo> _statusdData = [
  StatusInfo(
    imagePath: 'images/Julian.png',
    name: 'ジュリアン',
  ),
  StatusInfo(
    imagePath: 'images/Nick.png',
    name: 'ニック',
  ),
  StatusInfo(
    imagePath: 'images/Albert.png',
    name: 'アルバート',
  ),
  StatusInfo(
    imagePath: 'images/Nikolai.png',
    name: 'ニコライ',
  ),
  StatusInfo(
    imagePath: 'images/Fabrizio.png',
    name: 'ファブリツィオ',
  ),
];

// 3. データの表示
class _StatusSection extends StatelessWidget {
  const _StatusSection();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
          itemCount: _statusdData.length,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            final data = _statusdData[index];
            return _StatusList(data);
          },
        ),
      ],
    );
  }
}

class _StatusList extends StatelessWidget {
  final StatusInfo data;
  const _StatusList(this.data);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(data.imagePath),
        Text(
          data.name,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
