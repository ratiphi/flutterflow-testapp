import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class DEVWebsitesWidget extends StatefulWidget {
  const DEVWebsitesWidget({Key key}) : super(key: key);

  @override
  _DEVWebsitesWidgetState createState() => _DEVWebsitesWidgetState();
}

class _DEVWebsitesWidgetState extends State<DEVWebsitesWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).background,
      body: SafeArea(
        child: DefaultTabController(
          length: 4,
          initialIndex: 0,
          child: Column(
            children: [
              TabBar(
                labelColor: FlutterFlowTheme.of(context).primaryColor,
                labelStyle: FlutterFlowTheme.of(context).bodyText1,
                indicatorColor: FlutterFlowTheme.of(context).secondaryColor,
                tabs: [
                  Tab(
                    text: 'Website',
                  ),
                  Tab(
                    text: 'Booking',
                  ),
                  Tab(
                    text: 'FIDS',
                  ),
                  Tab(
                    text: 'Mines',
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    FlutterFlowWebView(
                      url: 'https://riseair.ca',
                      bypass: false,
                      height: 705,
                      verticalScroll: false,
                      horizontalScroll: false,
                    ),
                    FlutterFlowWebView(
                      url: 'https://book.riseair.ca',
                      bypass: false,
                      height: 705,
                      verticalScroll: false,
                      horizontalScroll: false,
                    ),
                    FlutterFlowWebView(
                      url: 'https://transwestflights.com',
                      bypass: false,
                      height: 705,
                      verticalScroll: false,
                      horizontalScroll: false,
                    ),
                    FlutterFlowWebView(
                      url: 'https://schedule.transwestflights.com/',
                      bypass: false,
                      height: 705,
                      verticalScroll: false,
                      horizontalScroll: false,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
