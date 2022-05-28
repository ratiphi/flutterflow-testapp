import '../flutter_flow/flutter_flow_pdf_viewer.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class TravelInfoWidget extends StatefulWidget {
  const TravelInfoWidget({Key key}) : super(key: key);

  @override
  _TravelInfoWidgetState createState() => _TravelInfoWidgetState();
}

class _TravelInfoWidgetState extends State<TravelInfoWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).background,
        automaticallyImplyLeading: false,
        title: Text(
          'Travel Info.',
          style: FlutterFlowTheme.of(context).title1,
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
            child: Image.asset(
              'assets/images/rise-air-banner-520x100-1-300x58.webp',
              width: 160,
              height: 40,
              fit: BoxFit.fitWidth,
            ),
          ),
        ],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.of(context).background,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: DefaultTabController(
                length: 4,
                initialIndex: 0,
                child: Column(
                  children: [
                    TabBar(
                      labelColor: FlutterFlowTheme.of(context).primaryColor,
                      labelStyle: FlutterFlowTheme.of(context).bodyText1,
                      indicatorColor:
                          FlutterFlowTheme.of(context).secondaryColor,
                      tabs: [
                        Tab(
                          text: 'COVID',
                        ),
                        Tab(
                          text: 'Check-in',
                        ),
                        Tab(
                          text: 'Tarriff',
                        ),
                        Tab(
                          text: 'Sched.',
                        ),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          FlutterFlowPdfViewer(
                            assetPath: 'assets/pdfs/COVID-19.pdf',
                            height: 300,
                            horizontalScroll: false,
                          ),
                          FlutterFlowPdfViewer(
                            assetPath: 'assets/pdfs/Notice_to_Passengers.pdf',
                            height: 300,
                            horizontalScroll: false,
                          ),
                          FlutterFlowPdfViewer(
                            assetPath:
                                'assets/pdfs/Scheduled-Domestic-Tariff-Transwest-Air-LP-Revision-5.pdf',
                            height: 300,
                            horizontalScroll: false,
                          ),
                          FlutterFlowPdfViewer(
                            assetPath:
                                'assets/pdfs/RiseAir_Summer_2022_Schedule.pdf',
                            height: 300,
                            horizontalScroll: false,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
