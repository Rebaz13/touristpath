import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';
import 'package:tourist_path/Hotels/hotelh/recipemodel.dart';
import 'package:url_launcher/url_launcher.dart';

class RecipeDetails extends StatelessWidget {
  final RecipeModel recipeModel;
  RecipeDetails({
    @required this.recipeModel,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final _textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SlidingUpPanel(
        parallaxEnabled: true,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 12,
        ),
        minHeight: (size.height / 2),
        maxHeight: size.height / 1.2,
        panel: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 5,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                recipeModel.title,
                style: _textTheme.headline6,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                recipeModel.writer,
                style: _textTheme.caption,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    FlutterIcons.heart_circle_mco,
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "198",
                    // style: _textTheme.caption,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.location_on,
                        color: Colors.blue,
                      ),
                      onPressed: () {
                        map1();
                      }),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    recipeModel.cookingTime.toString() + '\'',
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 2,
                    height: 30,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    recipeModel.servings.toString() + ' ',
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.black.withOpacity(0.3),
              ),
              Expanded(
                child: DefaultTabController(
                  length: 3,
                  initialIndex: 0,
                  child: Column(
                    children: [
                      TabBar(
                        isScrollable: true,
                        indicatorColor: Colors.red,
                        tabs: [
                          Tab(
                            text: "Detail".toUpperCase(),
                          ),
                          Tab(
                            text: "riquirements".toUpperCase(),
                          ),
                          Tab(
                            text: "Reviews".toUpperCase(),
                          ),
                        ],
                        labelColor: Colors.black,
                        indicator: DotIndicator(
                          color: Colors.black,
                          distanceFromCenter: 16,
                          radius: 3,
                          paintingStyle: PaintingStyle.fill,
                        ),
                        unselectedLabelColor: Colors.black.withOpacity(0.3),
                        labelStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                        labelPadding: EdgeInsets.symmetric(
                          horizontal: 32,
                        ),
                      ),
                      Divider(
                        color: Colors.black.withOpacity(0.3),
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            Ingredients(recipeModel: recipeModel),
                            Container(
                              child: Text("Preparation Tab"),
                            ),
                            Container(
                              child: Text("Reviews Tab"),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Hero(
                    tag: recipeModel.imgPath,
                    child: ClipRRect(
                      child: Image(
                        width: double.infinity,
                        height: (size.height / 2) + 50,
                        fit: BoxFit.cover,
                        image: AssetImage(recipeModel.imgPath),
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 40,
                right: 20,
                child: Icon(
                  FlutterIcons.bookmark_outline_mco,
                  color: Colors.white,
                  size: 38,
                ),
              ),
              Positioned(
                top: 40,
                left: 20,
                child: InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Icon(
                    CupertinoIcons.back,
                    color: Colors.white,
                    size: 38,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

void map1() {
  String ul =
      "https://www.google.com/maps/place/Ramada+by+Wyndham+Sulaymaniyah+Salim+Street,+Salim+Street,+Sulaymaniyah+46010/@35.5570849,45.4282482,13z/data=!4m2!3m1!1s0x40002c20a61be705:0x90d71d407589cb6c?gl=iq";
  launch(ul);
}

class Ingredients extends StatelessWidget {
  const Ingredients({
    Key key,
    @required this.recipeModel,
  }) : super(key: key);

  final RecipeModel recipeModel;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 12.0),
        child: Column(
          children: [
            ListView.separated(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemCount: recipeModel.ingredients.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 2.0,
                  ),
                  child: Text('⚫️ ' + recipeModel.ingredients[index]),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return Divider(color: Colors.black.withOpacity(0.3));
              },
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              color: Colors.red.shade700,
              width: 300,
              height: 50,
              child: TextButton(
                onPressed: () {
                  if (recipeModel.servings == 1) {
                    open2();
                  } else if (recipeModel.servings == 2) {
                    open3();
                  } else if (recipeModel.servings == 3) {
                    open4();
                  } else if (recipeModel.servings == 4) {
                    open5();
                  } else if (recipeModel.servings == 5) {
                    open6();
                  } else if (recipeModel.servings == 6) {
                    open7();
                  } else if (recipeModel.servings == 7) {
                    open8();
                  }
                },
                child: Text(
                  "Book Room",
                  style: TextStyle(
                    color: Colors.black45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void open4() {
  String ul =
      "https://www.booking.com/hotel/iq/khan-saray.en-gb.html?aid=356938&label=metagha-link-LUIQ-hotel-2518389_dev-desktop_los-1_bw-1_dow-Sunday_defdate-1_room-0_gstadt-2_rateid-iq_aud-0_gacid-6623578704_mcid-10_ppa-0_clrid-0_ad-1_gstkid-0_checkin-20220109_lp-2368_r-1527290339296694982&sid=d4c60b05d599a09ad2d4cc69f16ed3f3&all_sr_blocks=251838903_206392920_2_1_0&checkin=2022-01-09&checkout=2022-01-10&dest_id=-3103288&dest_type=city&dist=0&group_adults=2&group_children=0&hapos=1&highlighted_blocks=251838903_206392920_2_1_0&hpos=1&matching_block_id=251838903_206392920_2_1_0&no_rooms=1&req_adults=2&req_children=0&room1=A%2CA&sb_price_type=total&sr_order=popularity&sr_pri_blocks=251838903_206392920_2_1_0__6650&srepoch=1641672343&srpvid=c8568d49b6940231&type=total&ucfs=1&activeTab=main";
  launch(ul);
}

void open5() {
  String ul =
      "https://www.booking.com/hotel/iq/titanic.en-gb.html?aid=311984;label=titanic-yViAURxxhRJPRUQkjovbwAS471110567246%3Apl%3Ata%3Ap1%3Ap2%3Aac%3Aap%3Aneg%3Afi%3Atikwd-375868476931%3Alp9069865%3Ali%3Adec%3Adm%3Appccp%3DUmFuZG9tSVYkc2RlIyh9YXdX6HrtnYy-Ml68sH-ljtU;sid=d4c60b05d599a09ad2d4cc69f16ed3f3;all_sr_blocks=59359302_183147405_2_42_0;checkin=2022-01-09;checkout=2022-01-10;dest_id=-3103288;dest_type=city;dist=0;group_adults=2;group_children=0;hapos=1;highlighted_blocks=59359302_183147405_2_42_0;hpos=1;matching_block_id=59359302_183147405_2_42_0;no_rooms=1;req_adults=2;req_children=0;room1=A%2CA;sb_price_type=total;sr_order=popularity;sr_pri_blocks=59359302_183147405_2_42_0__12000;srepoch=1641672606;srpvid=da3f8dceb0fb0051;type=total;ucfs=1&#hotelTmpl";
  launch(ul);
}

void open6() {
  String ul =
      "https://www.booking.com/hotel/iq/cristal-erbil.en-gb.html?aid=356938;label=metagha-link-LUIQ-hotel-1157830_dev-desktop_los-1_bw-23_dow-Monday_defdate-1_room-0_gstadt-2_rateid-0_aud-0_gacid-6623578704_mcid-10_ppa-0_clrid-0_ad-1_gstkid-0_checkin-20220131_lp-2368_r-2002727910189300292;sid=d4c60b05d599a09ad2d4cc69f16ed3f3;all_sr_blocks=115783001_213535203_2_41_0;checkin=2022-01-31;checkout=2022-02-01;dest_id=-3106433;dest_type=city;dist=0;group_adults=2;group_children=0;hapos=1;highlighted_blocks=115783001_213535203_2_41_0;hpos=1;matching_block_id=115783001_213535203_2_41_0;no_rooms=1;req_adults=2;req_children=0;room1=A%2CA;sb_price_type=total;sr_order=popularity;sr_pri_blocks=115783001_213535203_2_41_0__11700;srepoch=1641672850;srpvid=7ee38e480c060088;type=total;ucfs=1&#hotelTmpl";
  launch(ul);
}

void open7() {
  String ul =
      "https://www.booking.com/hotel/iq/divan-erbil.en-gb.html?aid=356938;label=metagha-link-LUIQ-hotel-371570_dev-desktop_los-1_bw-14_dow-Saturday_defdate-1_room-0_gstadt-2_rateid-0_aud-0_gacid-6623578704_mcid-10_ppa-0_clrid-0_ad-1_gstkid-0_checkin-20220122_lp-2368_r-6721489751043839605;sid=d4c60b05d599a09ad2d4cc69f16ed3f3;all_sr_blocks=37157022_196175345_2_2_0;checkin=2022-01-22;checkout=2022-01-23;dest_id=-3106433;dest_type=city;dist=0;group_adults=2;group_children=0;hapos=1;highlighted_blocks=37157022_196175345_2_2_0;hpos=1;matching_block_id=37157022_196175345_2_2_0;no_rooms=1;req_adults=2;req_children=0;room1=A%2CA;sb_price_type=total;sr_order=popularity;sr_pri_blocks=37157022_196175345_2_2_0__25575;srepoch=1641672987;srpvid=6b068e8c8a99007c;type=total;ucfs=1&#hotelTmpl";
  launch(ul);
}

void open8() {
  String ul =
      "https://www.booking.com/hotel/iq/erbil-quartz.en-gb.html?aid=356938;label=metagha-link-LUIQ-hotel-1179236_dev-desktop_los-1_bw-23_dow-Monday_defdate-1_room-0_gstadt-2_rateid-0_aud-0_gacid-6623578704_mcid-10_ppa-0_clrid-0_ad-1_gstkid-0_checkin-20220131_lp-2368_r-14705276731916790435;sid=d4c60b05d599a09ad2d4cc69f16ed3f3;all_sr_blocks=117923602_207459778_2_41_0;checkin=2022-01-31;checkout=2022-02-01;dest_id=-3106433;dest_type=city;dist=0;group_adults=2;group_children=0;hapos=1;highlighted_blocks=117923602_207459778_2_41_0;hpos=1;matching_block_id=117923602_207459778_2_41_0;no_rooms=1;req_adults=2;req_children=0;room1=A%2CA;sb_price_type=total;sr_order=popularity;sr_pri_blocks=117923602_207459778_2_41_0__8500;srepoch=1641673109;srpvid=76eb8ec9a91d01a2;type=total;ucfs=1&#hotelTmpl";
  launch(ul);
}

void open3() {
  String ul =
      "https://www.booking.com/hotel/iq/grand-millennium-sulaimani.en-gb.html?aid=356938;label=metagha-link-LUIQ-hotel-1061660_dev-desktop_los-1_bw-6_dow-Friday_defdate-1_room-0_gstadt-2_rateid-0_aud-0_gacid-6623578704_mcid-10_ppa-0_clrid-0_ad-1_gstkid-0_checkin-20220114_lp-2368_r-490963529991860129;sid=d4c60b05d599a09ad2d4cc69f16ed3f3;all_sr_blocks=106166001_239707956_0_1_0;checkin=2022-01-14;checkout=2022-01-15;dest_id=-3103288;dest_type=city;dist=0;group_adults=2;group_children=0;hapos=1;highlighted_blocks=106166001_239707956_0_1_0;hpos=1;matching_block_id=106166001_239707956_0_1_0;no_rooms=1;req_adults=2;req_children=0;room1=A%2CA;sb_price_type=total;sr_order=popularity;sr_pri_blocks=106166001_239707956_0_1_0__11000;srepoch=1641673158;srpvid=7a628ee2437502ef;type=total;ucfs=1&#hotelTmpl";
  launch(ul);
}

void open2() {
  String ul =
      "https://www.booking.com/hotel/iq/ramada-sulaymaniyah.en-gb.html?aid=356938;label=metagha-link-LUIQ-hotel-580848_dev-desktop_los-1_bw-25_dow-Wednesday_defdate-1_room-0_gstadt-2_rateid-0_aud-0_gacid-6623578704_mcid-10_ppa-0_clrid-0_ad-1_gstkid-0_checkin-20220202_lp-2368_r-610143406445810217;sid=d4c60b05d599a09ad2d4cc69f16ed3f3;all_sr_blocks=58084808_335393152_2_1_0;checkin=2022-02-02;checkout=2022-02-03;dest_id=-3103288;dest_type=city;dist=0;group_adults=2;group_children=0;hapos=1;highlighted_blocks=58084808_335393152_2_1_0;hpos=1;matching_block_id=58084808_335393152_2_1_0;no_rooms=1;req_adults=2;req_children=0;room1=A%2CA;sb_price_type=total;sr_order=popularity;sr_pri_blocks=58084808_335393152_2_1_0__13500;srepoch=1641671550;srpvid=7ca08bbeaedd045a;type=total;ucfs=1&#hotelTmpl";
  launch(ul);
}
