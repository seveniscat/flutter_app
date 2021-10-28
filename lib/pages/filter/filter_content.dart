import 'package:flutter/material.dart';
import 'package:flutter_app/core/viewmodel/filter_view_model.dart';
import 'package:provider/provider.dart';

class FilterContent extends StatelessWidget {
  const FilterContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Container(
          padding: EdgeInsets.all(10),
          child: Text('data'),
        ),
        Expanded(
          child: Consumer<FileterViewModel>(builder: (bctx, filterVM, child) {
            return ListView(
              children: [
                ListTile(
                  title: Text('isa'),
                  subtitle: Text('data'),
                  trailing: Switch(
                      value: filterVM.isA,
                      onChanged: (value) {
                        filterVM.isA = value;
                      }),
                ),
                ListTile(
                  title: Text('isb'),
                  subtitle: Text('data'),
                  trailing: Switch(
                      value: filterVM.isB,
                      onChanged: (value) {
                        filterVM.isB = value;
                      }),
                ),
                ListTile(
                  title: Text('isc'),
                  subtitle: Text('data'),
                  trailing: Switch(
                      value: filterVM.isC,
                      onChanged: (value) {
                        filterVM.isC = value;
                      }),
                ),
              ],
            );
          }),
        ),
      ]),
    );
  }
}
