import 'package:flutter/material.dart';
import 'package:country_list_pick/country_list_pick.dart';

class CountryPicker extends StatefulWidget {
  const CountryPicker({Key key}) : super(key: key);

  @override
  _CountryListPickerState createState() => _CountryListPickerState();
}

class _CountryListPickerState extends State<CountryPicker> {
  @override
  Widget build(BuildContext context) {
    return CountryListPick(
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
    );
  }
}
