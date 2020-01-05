import 'package:certicicatie_qualification/screens/question_confirm.dart';
import 'package:flutter/material.dart';
import 'package:certicicatie_qualification/components/term_list_item.dart';
import 'package:certicicatie_qualification/models/provider_data.dart';
import 'package:provider/provider.dart';

class SelectTerm extends StatelessWidget {
  static const String id = 'select_term';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('出題年度選択')),
      body: Container(
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            //TODO: 正しいIDを入れるようにする
            return TermListItem(title: '平成30年度春季', id: index);
            },
            itemCount: 3,
          ),
        ),
      floatingActionButton:Visibility(
        visible: Provider.of<ProviderData>(context).selectedTermIdsCount > 0,
        child: FloatingActionButton(
          onPressed: (){Navigator.pushNamed(context, QuestionConfirm.id);},
          child: Icon(Icons.skip_next),
        ),
      ),
    );
  }
}

