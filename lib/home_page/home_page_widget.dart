import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/book_appointment_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<UsersRecord>(
      stream: UsersRecord.getDocument(currentUserReference),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 40,
              height: 40,
              child: SpinKitRing(
                color: FlutterFlowTheme.of(context).primaryColor,
                size: 40,
              ),
            ),
          );
        }
        final homePageUsersRecord = snapshot.data;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).background,
          body: SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 16, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: FlutterFlowTheme.of(context).primaryColor,
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                          child: Container(
                            width: 60,
                            height: 60,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              'assets/images/UI_avatar_2@3x.png',
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                        child: Image.asset(
                          'assets/images/rise-air-banner-520x100-1-300x58.webp',
                          width: 160,
                          height: 40,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                        child: Text(
                          'Good Morning',
                          style: FlutterFlowTheme.of(context).title1,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                        child: Text(
                          homePageUsersRecord.displayName,
                          style: FlutterFlowTheme.of(context).title2.override(
                                fontFamily: 'Lexend Deca',
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                        child: Image.asset(
                          'assets/images/waving-hand-sign_emoji-modifier-fitzpatrick-type-5_1f44b_1f3fe.png',
                          width: 36,
                          height: 36,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                        child: Text(
                          'Your next flight',
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 16, 20, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/noUpcomingAppointments.png',
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: 56,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 16, 20, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Material(
                            color: Colors.transparent,
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              height: 100,
                              decoration: BoxDecoration(
                                color:
                                    FlutterFlowTheme.of(context).tertiaryColor,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: InkWell(
                                onTap: () async {
                                  await showModalBottomSheet(
                                    isScrollControlled: true,
                                    context: context,
                                    builder: (context) {
                                      return Padding(
                                        padding:
                                            MediaQuery.of(context).viewInsets,
                                        child: Container(
                                          height: 720,
                                          child: BookAppointmentWidget(),
                                        ),
                                      );
                                    },
                                  );
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20, 0, 0, 0),
                                      child: Image.asset(
                                        'assets/images/iconCalendar.png',
                                        width: 60,
                                        height: 60,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12, 20, 12, 0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Book Flight',
                                              textAlign: TextAlign.start,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .title3,
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 0, 8),
                                                child: AutoSizeText(
                                                  'Schedule a flight with our reservations team.',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText2
                                                      .override(
                                                        fontFamily:
                                                            'Lexend Deca',
                                                        color:
                                                            Color(0xB4FFFFFF),
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                            child: InkWell(
                              onTap: () async {
                                await launchURL('tel:1234567890');
                              },
                              child: Material(
                                color: Colors.transparent,
                                elevation: 3,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.9,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 0, 0, 0),
                                        child: Image.asset(
                                          'assets/images/iconPhone.png',
                                          width: 60,
                                          height: 60,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12, 20, 12, 0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Call for Reservations',
                                                textAlign: TextAlign.start,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .title3,
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 0, 8),
                                                  child: AutoSizeText(
                                                    'Give us a call in order to schedule your next flight.',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText2
                                                        .override(
                                                          fontFamily:
                                                              'Lexend Deca',
                                                          color:
                                                              Color(0xB4FFFFFF),
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                            child: InkWell(
                              onTap: () async {
                                await launchURL('mailto:kberg@riseair.ca');
                              },
                              child: Material(
                                color: Colors.transparent,
                                elevation: 3,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.9,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryColor,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 0, 0, 0),
                                        child: Image.asset(
                                          'assets/images/iconEmail.png',
                                          width: 60,
                                          height: 60,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12, 20, 12, 0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Email Us',
                                                textAlign: TextAlign.start,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .title3,
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 0, 8),
                                                  child: AutoSizeText(
                                                    'Send us an email and we will get back to you within 2 days.',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText2
                                                        .override(
                                                          fontFamily:
                                                              'Lexend Deca',
                                                          color:
                                                              Color(0xB4FFFFFF),
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
