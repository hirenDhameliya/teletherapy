import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:teletherapy/appoinment_page.dart';
import 'package:teletherapy/common_widget.dart';
import 'package:teletherapy/confirm_Appoinment.dart';

class DateTimePage extends StatefulWidget {
  const DateTimePage({Key key}) : super(key: key);

  @override
  _DateTimePageState createState() => _DateTimePageState();
}

class _DateTimePageState extends State<DateTimePage> {
  String _selectedDate = '';
  String _dateCount = '';
  String _range = '';
  String _rangeCount = '';

  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    setState(() {
      if (args.value is PickerDateRange) {
        _range =
            DateFormat('dd/MM/yyyy').format(args.value.startDate).toString() +
                ' - ' +
                DateFormat('dd/MM/yyyy')
                    .format(args.value.endDate ?? args.value.startDate)
                    .toString();
      } else if (args.value is DateTime) {
        _selectedDate = args.value.toString();
      } else if (args.value is List<DateTime>) {
        _dateCount = args.value.length.toString();
      } else {
        _rangeCount = args.value.length.toString();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 13),
          child: Padding(
            padding: const EdgeInsets.all(2.7),
            child: InkWell(
              onTap: (){
                Navigator.pop(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>AppoinmentPage(),
                  ),
                );
              },
              child: Image.asset(
                'assets/image/back.png',
              ),
            ),
          ),
        ),
        centerTitle: true,
        title: Text(
          'Time And Date',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(
            thickness: 3,
            color: Colors.grey.shade300,
          ),
          SfDateRangePicker(
            onSelectionChanged: _onSelectionChanged,
            selectionMode: DateRangePickerSelectionMode.range,
            initialSelectedRange: PickerDateRange(
              DateTime.now().subtract(const Duration(days: 4)),
              DateTime.now().add(
                const Duration(days: 3),
              ),
            ),
          ),
          Divider(
            thickness: 3,
            color: Colors.grey.shade300,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15,top:15),
            child: Text(
              'Morning',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
               CommonWidget.Appoinmentslot('9:00 AM'),
               CommonWidget.Appoinmentslot('10:00 AM'),
               CommonWidget.Appoinmentslot('11:00 AM'),
               CommonWidget.Appoinmentslot('12:00 PM'),
               CommonWidget.Appoinmentslot('1:00 PM'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15,top: 15),
            child: Text(
              'Evening',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CommonWidget.Appoinmentslot('4:30 PM'),
                CommonWidget.Appoinmentslot('5:30 PM'),
                CommonWidget.Appoinmentslot('6:30 PM'),
                CommonWidget.Appoinmentslot('7:30 PM'),
                CommonWidget.Appoinmentslot('8:30 PM'),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>ConfirmPage(),
                ),
              );
            },
            child: Container(
              height: 45,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                color: Color(0xffBE5FF9),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Text(
                  'Continue',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  DateFormat(String s) {}
}
