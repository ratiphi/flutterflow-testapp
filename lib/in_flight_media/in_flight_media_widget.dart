import '../flutter_flow/flutter_flow_audio_player.dart';
import '../flutter_flow/flutter_flow_expanded_image_view.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_video_player.dart';
import '../flutter_flow/flutter_flow_youtube_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class InFlightMediaWidget extends StatefulWidget {
  const InFlightMediaWidget({Key key}) : super(key: key);

  @override
  _InFlightMediaWidgetState createState() => _InFlightMediaWidgetState();
}

class _InFlightMediaWidgetState extends State<InFlightMediaWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).background,
        automaticallyImplyLeading: false,
        title: Text(
          'In-Flight',
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
                    text: 'Video',
                  ),
                  Tab(
                    text: 'Audio',
                  ),
                  Tab(
                    text: 'Photo',
                  ),
                  Tab(
                    text: 'Map',
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    ListView(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.vertical,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(40, 0, 40, 40),
                          child: FlutterFlowYoutubePlayer(
                            url: 'https://www.youtube.com/watch?v=C30hQ0ZSFoM',
                            autoPlay: false,
                            looping: true,
                            mute: false,
                            showControls: true,
                            showFullScreen: true,
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(40, 0, 40, 40),
                          child: FlutterFlowYoutubePlayer(
                            url: 'https://www.youtube.com/watch?v=cit9cvREyF8',
                            autoPlay: false,
                            looping: true,
                            mute: false,
                            showControls: true,
                            showFullScreen: true,
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(40, 0, 40, 40),
                          child: FlutterFlowYoutubePlayer(
                            url: 'https://www.youtube.com/watch?v=yyTxdqPWwUI',
                            autoPlay: false,
                            looping: true,
                            mute: false,
                            showControls: true,
                            showFullScreen: true,
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(40, 0, 40, 40),
                          child: FlutterFlowYoutubePlayer(
                            url: 'https://www.youtube.com/watch?v=7nuQK3-pJI0',
                            autoPlay: false,
                            looping: true,
                            mute: false,
                            showControls: true,
                            showFullScreen: true,
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(40, 0, 40, 40),
                          child: FlutterFlowVideoPlayer(
                            path:
                                'https://assets.mixkit.co/videos/preview/mixkit-forest-stream-in-the-sunlight-529-large.mp4',
                            videoType: VideoType.network,
                            autoPlay: false,
                            looping: true,
                            showControls: true,
                            allowFullScreen: true,
                            allowPlaybackSpeedMenu: true,
                          ),
                        ),
                      ],
                    ),
                    ListView(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.vertical,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(40, 0, 40, 40),
                          child: FlutterFlowAudioPlayer(
                            audio: Audio.network(
                              '',
                              metas: Metas(
                                id: 'df3hg_-90imd873',
                                title: 'Top 40 Music',
                              ),
                            ),
                            titleTextStyle:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                    ),
                            playbackDurationTextStyle:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF9D9D9D),
                                      fontSize: 12,
                                    ),
                            fillColor: Color(0xFFEEEEEE),
                            playbackButtonColor:
                                FlutterFlowTheme.of(context).primaryColor,
                            activeTrackColor: Color(0xFF57636C),
                            elevation: 4,
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(40, 0, 40, 40),
                          child: FlutterFlowAudioPlayer(
                            audio: Audio.network(
                              '',
                              metas: Metas(
                                id: 'df3hg_-be42a0jj',
                                title: 'Meditation Sounds',
                              ),
                            ),
                            titleTextStyle:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                    ),
                            playbackDurationTextStyle:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF9D9D9D),
                                      fontSize: 12,
                                    ),
                            fillColor: Color(0xFFEEEEEE),
                            playbackButtonColor:
                                FlutterFlowTheme.of(context).primaryColor,
                            activeTrackColor: Color(0xFF57636C),
                            elevation: 4,
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(40, 0, 40, 40),
                          child: FlutterFlowAudioPlayer(
                            audio: Audio.network(
                              '',
                              metas: Metas(
                                id: 'df3hg_-z380qi7e',
                                title: 'Children\'s Books',
                              ),
                            ),
                            titleTextStyle:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                    ),
                            playbackDurationTextStyle:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF9D9D9D),
                                      fontSize: 12,
                                    ),
                            fillColor: Color(0xFFEEEEEE),
                            playbackButtonColor:
                                FlutterFlowTheme.of(context).primaryColor,
                            activeTrackColor: Color(0xFF57636C),
                            elevation: 4,
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(40, 0, 40, 40),
                          child: FlutterFlowAudioPlayer(
                            audio: Audio.network(
                              '',
                              metas: Metas(
                                id: 'df3hg_-dfmnlqdv',
                                title: 'Canadian News',
                              ),
                            ),
                            titleTextStyle:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                    ),
                            playbackDurationTextStyle:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF9D9D9D),
                                      fontSize: 12,
                                    ),
                            fillColor: Color(0xFFEEEEEE),
                            playbackButtonColor:
                                FlutterFlowTheme.of(context).primaryColor,
                            activeTrackColor: Color(0xFF57636C),
                            elevation: 4,
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(40, 0, 40, 40),
                          child: FlutterFlowAudioPlayer(
                            audio: Audio.network(
                              '',
                              metas: Metas(
                                id: 'df3hg_-tpeq7950',
                                title: 'RiseAir Podcast',
                              ),
                            ),
                            titleTextStyle:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                    ),
                            playbackDurationTextStyle:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF9D9D9D),
                                      fontSize: 12,
                                    ),
                            fillColor: Color(0xFFEEEEEE),
                            playbackButtonColor:
                                FlutterFlowTheme.of(context).primaryColor,
                            activeTrackColor: Color(0xFF57636C),
                            elevation: 4,
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(40, 0, 40, 40),
                          child: FlutterFlowAudioPlayer(
                            audio: Audio.network(
                              '',
                              metas: Metas(
                                id: 'df3hg_-0vnewlmj',
                                title: 'Local Weather',
                              ),
                            ),
                            titleTextStyle:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                    ),
                            playbackDurationTextStyle:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF9D9D9D),
                                      fontSize: 12,
                                    ),
                            fillColor: Color(0xFFEEEEEE),
                            playbackButtonColor:
                                FlutterFlowTheme.of(context).primaryColor,
                            activeTrackColor: Color(0xFF57636C),
                            elevation: 4,
                          ),
                        ),
                      ],
                    ),
                    ListView(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.vertical,
                      children: [
                        InkWell(
                          onTap: () async {
                            await Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.fade,
                                child: FlutterFlowExpandedImageView(
                                  image: Image.network(
                                    'https://picsum.photos/seed/988/600',
                                    fit: BoxFit.contain,
                                  ),
                                  allowRotation: false,
                                  tag: 'imageTag2',
                                  useHeroAnimation: true,
                                ),
                              ),
                            );
                          },
                          child: Hero(
                            tag: 'imageTag2',
                            transitionOnUserGestures: true,
                            child: Image.network(
                              'https://picsum.photos/seed/988/600',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () async {
                            await Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.fade,
                                child: FlutterFlowExpandedImageView(
                                  image: Image.network(
                                    'https://picsum.photos/seed/258/600',
                                    fit: BoxFit.contain,
                                  ),
                                  allowRotation: false,
                                  tag: 'imageTag3',
                                  useHeroAnimation: true,
                                ),
                              ),
                            );
                          },
                          child: Hero(
                            tag: 'imageTag3',
                            transitionOnUserGestures: true,
                            child: Image.network(
                              'https://picsum.photos/seed/258/600',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () async {
                            await Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.fade,
                                child: FlutterFlowExpandedImageView(
                                  image: Image.network(
                                    'https://picsum.photos/seed/994/600',
                                    fit: BoxFit.contain,
                                  ),
                                  allowRotation: false,
                                  tag: 'imageTag4',
                                  useHeroAnimation: true,
                                ),
                              ),
                            );
                          },
                          child: Hero(
                            tag: 'imageTag4',
                            transitionOnUserGestures: true,
                            child: Image.network(
                              'https://picsum.photos/seed/994/600',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () async {
                            await Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.fade,
                                child: FlutterFlowExpandedImageView(
                                  image: Image.network(
                                    'https://picsum.photos/seed/108/600',
                                    fit: BoxFit.contain,
                                  ),
                                  allowRotation: false,
                                  tag: 'imageTag5',
                                  useHeroAnimation: true,
                                ),
                              ),
                            );
                          },
                          child: Hero(
                            tag: 'imageTag5',
                            transitionOnUserGestures: true,
                            child: Image.network(
                              'https://picsum.photos/seed/108/600',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () async {
                            await Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.fade,
                                child: FlutterFlowExpandedImageView(
                                  image: Image.network(
                                    'https://picsum.photos/seed/434/600',
                                    fit: BoxFit.contain,
                                  ),
                                  allowRotation: false,
                                  tag: 'imageTag6',
                                  useHeroAnimation: true,
                                ),
                              ),
                            );
                          },
                          child: Hero(
                            tag: 'imageTag6',
                            transitionOnUserGestures: true,
                            child: Image.network(
                              'https://picsum.photos/seed/434/600',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () async {
                            await Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.fade,
                                child: FlutterFlowExpandedImageView(
                                  image: Image.network(
                                    'https://picsum.photos/seed/11/600',
                                    fit: BoxFit.contain,
                                  ),
                                  allowRotation: false,
                                  tag: 'imageTag7',
                                  useHeroAnimation: true,
                                ),
                              ),
                            );
                          },
                          child: Hero(
                            tag: 'imageTag7',
                            transitionOnUserGestures: true,
                            child: Image.network(
                              'https://picsum.photos/seed/11/600',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () async {
                            await Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.fade,
                                child: FlutterFlowExpandedImageView(
                                  image: Image.network(
                                    'https://picsum.photos/seed/693/600',
                                    fit: BoxFit.contain,
                                  ),
                                  allowRotation: false,
                                  tag: 'imageTag8',
                                  useHeroAnimation: true,
                                ),
                              ),
                            );
                          },
                          child: Hero(
                            tag: 'imageTag8',
                            transitionOnUserGestures: true,
                            child: Image.network(
                              'https://picsum.photos/seed/693/600',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () async {
                            await Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.fade,
                                child: FlutterFlowExpandedImageView(
                                  image: Image.network(
                                    'https://picsum.photos/seed/106/600',
                                    fit: BoxFit.contain,
                                  ),
                                  allowRotation: false,
                                  tag: 'imageTag9',
                                  useHeroAnimation: true,
                                ),
                              ),
                            );
                          },
                          child: Hero(
                            tag: 'imageTag9',
                            transitionOnUserGestures: true,
                            child: Image.network(
                              'https://picsum.photos/seed/106/600',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () async {
                            await Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.fade,
                                child: FlutterFlowExpandedImageView(
                                  image: Image.network(
                                    'https://picsum.photos/seed/497/600',
                                    fit: BoxFit.contain,
                                  ),
                                  allowRotation: false,
                                  tag: 'imageTag10',
                                  useHeroAnimation: true,
                                ),
                              ),
                            );
                          },
                          child: Hero(
                            tag: 'imageTag10',
                            transitionOnUserGestures: true,
                            child: Image.network(
                              'https://picsum.photos/seed/497/600',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            child: FlutterFlowExpandedImageView(
                              image: Image.asset(
                                'assets/images/RiseAir_Map_2.png',
                                fit: BoxFit.contain,
                              ),
                              allowRotation: false,
                              tag: 'imageTag11',
                              useHeroAnimation: true,
                            ),
                          ),
                        );
                      },
                      child: Hero(
                        tag: 'imageTag11',
                        transitionOnUserGestures: true,
                        child: Image.asset(
                          'assets/images/RiseAir_Map_2.png',
                          width: 100,
                          height: 100,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
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
