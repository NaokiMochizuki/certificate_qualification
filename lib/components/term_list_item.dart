import 'package:flutter/material.dart';
import 'package:certicicatie_qualification/models/provider_data.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class TermListItem extends StatefulWidget {
  final int id;
  final String title;
  TermListItem({this.title, this.id});

  @override
  _TermListItemState createState() => _TermListItemState();
}

class _TermListItemState extends State<TermListItem> {

  void onTappedCallback(int id) {
    // 選択,削除されたカテゴリのIDをプロバイダに伝える処理
    if(Provider.of<ProviderData>(context, listen: false).isSelectedId(id)){
      Provider.of<ProviderData>(context, listen: false).removeTermId(id);
    }else{
      Provider.of<ProviderData>(context, listen: false).addSelectedTermId(id);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Provider.of<ProviderData>(context).isSelectedId(widget.id) ? Colors.lightBlue[50] : Colors.white,
      child: ListTile(
          title: Text(widget.title),
          selected: Provider.of<ProviderData>(context).isSelectedId(widget.id),
          onTap: () {
            onTappedCallback(widget.id);
          }),
    );
  }
}
