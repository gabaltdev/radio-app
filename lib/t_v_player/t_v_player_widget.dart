import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class TVPlayerWidget extends StatefulWidget {
  const TVPlayerWidget({Key key}) : super(key: key);

  @override
  _TVPlayerWidgetState createState() => _TVPlayerWidgetState();
}

class _TVPlayerWidgetState extends State<TVPlayerWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                      child: InkWell(
                        onTap: () async {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                          size: 24,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Text(
                        'Radio y TV 7 Estrellas de David',
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Titillium Web',
                              color: Color(0xFF1DA1F2),
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              FlutterFlowVideoPlayer(
                path:
                    'https://panel.streamingtv-mediacp.online:2000/VideoPlayer/8158',
                videoType: VideoType.network,
                autoPlay: false,
                looping: true,
                showControls: true,
                allowFullScreen: true,
                allowPlaybackSpeedMenu: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
