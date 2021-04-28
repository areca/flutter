import 'package:aircenter8_poc_mobile/util/constants.dart';
import 'package:flutter/material.dart';
import 'package:giffy_dialog/giffy_dialog.dart';
import 'createDrawerHeader.dart';
import 'createDrawerBodyItem.dart';
import 'pageRoutes.dart';

class navigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          createDrawerHeader(),
          createDrawerBodyItem(
            icon: Icons.dashboard,
            text: 'Dashboard',
            onTap: () =>
                Navigator.pushReplacementNamed(context, pageRoutes.dashboard),
          ),
          createDrawerBodyItem(
            icon: Icons.verified_user,
            text: 'User Management',
            onTap: () => Navigator.pushReplacementNamed(context, pageRoutes.um),
          ),
          createDrawerBodyItem(
            icon: Icons.settings_applications_rounded,
            text: 'Config Service',
            onTap: () =>
                Navigator.pushReplacementNamed(context, pageRoutes.config),
          ),
          const Divider(
            height: 7,
            thickness: 3,
            indent: 20,
            endIndent: 20,
          ),
          createDrawerBodyItem(
            icon: Icons.flight,
            text: 'Flights Schedule',
            onTap: () =>
                Navigator.pushReplacementNamed(context, pageRoutes.flights),
          ),
          createDrawerBodyItem(
            icon: Icons.subtitles,
            text: 'Passenger Name List',
            onTap: () =>
                Navigator.pushReplacementNamed(context, pageRoutes.pnl),
          ),
          const Divider(
            height: 7,
            thickness: 3,
            indent: 20,
            endIndent: 20,
          ),
          createDrawerBodyItem(
            icon: Icons.hotel_outlined,
            text: 'Hotels',
            onTap: () =>
                Navigator.pushReplacementNamed(context, pageRoutes.hotels),
          ),
          createDrawerBodyItem(
            icon: Icons.sports,
            text: 'Specials',
            onTap: () =>
                Navigator.pushReplacementNamed(context, pageRoutes.specials),
          ),
          createDrawerBodyItem(
            icon: Icons.party_mode,
            text: 'Packages',
            onTap: () =>
                Navigator.pushReplacementNamed(context, pageRoutes.packages),
          ),
          /*createDrawerBodyItem(
            icon: Icons.contact_phone,
            text: 'Contact Info',
            onTap: () =>
                Navigator.pushReplacementNamed(context, pageRoutes.contact),
          ),*/
          const Divider(
            height: 7,
            thickness: 3,
            indent: 20,
            endIndent: 20,
          ),
          ListTile(
            title: Text('About'),
            onTap: () {
              showDialog(
                  context: context,
                  builder: (_) => FlareGiffyDialog(
                        flarePath: 'assets/space_demo.flr',
                        flareAnimation: 'loading',
                        title: Text(
                          'About',
                          style: TextStyle(
                              fontSize: 22.0, fontWeight: FontWeight.w600),
                        ),
                        description: Text(
                          'Here comes some text with description of the app',
                          textAlign: TextAlign.center,
                          style: TextStyle(),
                        ),
                        entryAnimation: EntryAnimation.DEFAULT,
                        onlyCancelButton: true,
                        buttonCancelColor: kPrimary,
                        buttonCancelText: Text('Ok'),
                      ));
            },
          ),
        ],
      ),
    );
  }
}
