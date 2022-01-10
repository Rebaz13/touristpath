import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:tourist_path/screen/widget/place_item.dart';

import 'constant.dart';
class PlaceStaggerdview extends StatelessWidget {
  const PlaceStaggerdview({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18),
      child: StaggeredGridView.countBuilder(
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        crossAxisCount: 4,
        itemCount: placeList.length,

        staggeredTileBuilder: (index) => StaggeredTile.fit(4),
        itemBuilder: (context,index) => PlaceItem(index),



      ),
    );
}
}