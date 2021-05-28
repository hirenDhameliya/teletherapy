import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:teletherapy/common_widget.dart';
import 'package:teletherapy/model.dart';
import 'package:teletherapy/list_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Detail> categorieslistdata1 = [];
  List<Detail> categorieslistdata2 = [];

  @override
  void initState() {
    super.initState();
    setState(() {
      categorieslistdata1 = categories1;
      categorieslistdata2 = categories2;
    });
  }

  @override
  Widget build(BuildContext context) {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Image(
          image: Svg(
            "assets/image/menu.svg",
            size: Size.fromRadius(16),
          ),
        ),
        centerTitle: true,
        title: CountryListPick(
          pickerBuilder: (context, CountryCode countryCode) {
            return Container(
              width: double.infinity,
              height: 50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Location',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w300),
                      ),
                      Icon(
                        Icons.arrow_drop_down_sharp,
                        color: Colors.black54,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Text(countryCode.dialCode),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Text(
                          countryCode.name,
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
          theme: CountryTheme(
            isShowTitle: true,
          ),
          onChanged: (CountryCode code) {
            print(code.name);
          },
          useUiOverlay: true,
          useSafeArea: true,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 13),
            child: Image.asset(
              'assets/image/profile.png',
              height: 37,
              width: 37,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: FloatingSearchBar(
            elevation: 0.0,
            border: BorderSide(
              style: BorderStyle.solid,
              width: 1,
              color: Colors.black26,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
            backgroundColor: Colors.grey.shade100,
            hint: 'Search for a therapist',
            automaticallyImplyBackButton: false,
            scrollPadding: const EdgeInsets.only(top: 16, bottom: 56),
            transitionDuration: const Duration(milliseconds: 800),
            transitionCurve: Curves.ease,
            physics: const BouncingScrollPhysics(),
            axisAlignment: isPortrait ? 0.0 : 0.0,
            openAxisAlignment: 0.0,
            width: MediaQuery.of(context).size.width,
            debounceDelay: const Duration(milliseconds: 500),
            onQueryChanged: (query) {
              // Call your model, bloc, controller here.
            },
            transition: CircularFloatingSearchBarTransition(),
            actions: [
              FloatingSearchBarAction.searchToClear(
                showIfClosed: false,
                color: Colors.black,
                size: 25,
              ),
            ],
            builder: (context, transition) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Material(
                  color: Colors.white,
                  elevation: 4.0,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: Colors.accents.map((color) {
                      return Container(
                        height: 80,
                        color: Colors.black12,
                      );
                    }).toList(),
                  ),
                ),
              );
            },
            body: Padding(
              padding: const EdgeInsets.only(top: 65),
              child: Container(
                child: Column(
                  children: [
                    Divider(
                      height: 3,
                      color: Colors.grey.shade200,
                      thickness: 3,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      child: Row(
                        children: [
                          Text(
                            'Categories',
                            style: TextStyle(
                              fontSize: 22,
                            ),
                          ),
                          Spacer(),
                          Text(
                            'See More',
                            style: TextStyle(
                                fontSize: 16, color: Colors.deepPurple),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Container(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: categorieslistdata1
                                  .map((Detail categorieslist) {
                                return CommonWidget.categories(
                                  categorieslist: categorieslist,
                                );
                              }).toList(),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: categorieslistdata2
                                  .map((Detail categorieslist) {
                                return CommonWidget.categories(
                                  categorieslist: categorieslist,
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      child: Row(
                        children: [
                          Text(
                            'Top therapists',
                            style: TextStyle(
                              fontSize: 22,
                            ),
                          ),
                          Spacer(),
                          Text(
                            'See More',
                            style: TextStyle(
                                fontSize: 16, color: Colors.deepPurple),
                          ),
                        ],
                      ),
                    ),


                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
