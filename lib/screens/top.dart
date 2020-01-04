import 'package:flutter/material.dart';
import 'package:certicicatie_qualification/screens/home.dart';
import 'package:certicicatie_qualification/screens/select_category.dart';
import 'package:certicicatie_qualification/screens/setting.dart';
import 'package:certicicatie_qualification/screens/study_record.dart';

class Top extends StatefulWidget {
  static const String id = 'top';

  @override
  _TopState createState() => _TopState();
}

class _TopState extends State<Top> with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;
  PageController _pageController;
  final List<BottomNavigationBarItem>_footerItems = [];

  // フッターのアイコンリスト
  static const _footerIcons = [
    Icon(Icons.home),
    Icon(Icons.mode_edit),
    Icon(Icons.show_chart),
    Icon(Icons.settings)
  ];

  // フッターのテキストリスト
  static const _footerTexts = [
    Text('ホーム'),
    Text('学習'),
    Text('学習履歴'),
    Text('設定')
  ];

  // フッターの遷移先一覧
  static List<Widget> _footerRoutes = [
    Home(),
    SelectCategory(),
    StudyRecord(),
    Setting(),
  ];

  @override
  void initState(){
    super.initState();
    // フッターのリストを生成
    for(int i=0; i<_footerIcons.length; i++){
      _footerItems.add(BottomNavigationBarItem(icon: _footerIcons[i], title: _footerTexts[i]));
    }
    //コントローラーの生成
    _pageController = PageController(
      initialPage: _selectedIndex,
    );
  }

  @override
  void dispose() {
    // コントローラ破棄
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('◯◯資格学習アプリ')),),
      body: PageView(
        controller: _pageController,
        onPageChanged: (int index){
          setState(() {
            _selectedIndex = index;
          });
        },
        children: _footerRoutes,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: _footerItems,
        currentIndex: _selectedIndex,
        onTap: (int index){
          setState((){
            _pageController.animateToPage(index,
                duration: Duration(milliseconds: 300), curve: Curves.easeOut);
          });
        },
      ),
    );
  }
}
