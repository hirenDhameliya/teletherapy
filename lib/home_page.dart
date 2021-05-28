import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Image(
                    image: Svg(
                      "assets/image/menu.svg",
                      size: Size.fromRadius(16),
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: CountryListPick(
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
                                      color: Colors.black,
                                      fontWeight: FontWeight.w300),
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
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600),
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
                ),
                Expanded(
                  flex: 2,
                  child: Image.asset(
                    'assets/image/profile.png',
                    height: 37,
                    width: 37,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Flexible(
              fit: FlexFit.loose,
              child: FloatingSearchBar(
                hint: 'Search for a therapist',
                scrollPadding: const EdgeInsets.only(top: 16, bottom: 56),
                transitionDuration: const Duration(milliseconds: 800),
                transitionCurve: Curves.bounceInOut,
                physics: const BouncingScrollPhysics(),
                axisAlignment: isPortrait ? 0.0 : 0.0,
                openAxisAlignment: 0.0,
                width: isPortrait ? 500 : 650,
                debounceDelay: const Duration(milliseconds: 500),
                onQueryChanged: (query) {
                  // Call your model, bloc, controller here.
                },
                transition: CircularFloatingSearchBarTransition(),
                actions: [
                  // FloatingSearchBarAction(
                  //   showIfOpened: false,
                  //   child: CircularButton(
                  //     icon: const Icon(Icons.place),
                  //     onPressed: () {},
                  //   ),
                  // ),
                  FloatingSearchBarAction.searchToClear(
                    showIfClosed: false,
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
                          return Container(height:80,color: Colors.black12,);
                        }).toList(),
                      ),
                    ),
                  );
                },
              ),
            ),
            Divider(
              height: 5,
              color: Colors.black,
              thickness: 5,
            ),
          ],
        ),
      ),
    );
  }
}
