import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:teletherapy/common_widget.dart';
import 'package:teletherapy/doctor_info.dart';
import 'package:teletherapy/model.dart';
import 'package:teletherapy/list_page.dart';
import 'package:teletherapy/country_picker.dart';
import 'common_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Detail> categorieslistdata1 = [];
  List<Detail> categorieslistdata2 = [];
  List<Detail> therapistlist = [];

  @override
  void initState() {
    super.initState();
    setState(() {
      categorieslistdata1 = categories1;
      categorieslistdata2 = categories2;
      therapistlist = doctorinfo;
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
        title: CountryPicker(),
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
            height: 50,
            width: MediaQuery.of(context).size.width,
            debounceDelay: const Duration(milliseconds: 500),
            onQueryChanged: (query) {
              // Call your model, bloc, controller here.
              Detail();
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
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: categorieslistdata1
                                    .map((Detail categorieslist) {
                                  return CommonWidget.categories(
                                    categorieslist: categorieslist,
                                  );
                                }).toList(),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
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
                      Column(
                        children: therapistlist.map((Detail therapist) {
                          return CommonWidget.therapist(
                            therapist: therapist,
                            context: context,
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
