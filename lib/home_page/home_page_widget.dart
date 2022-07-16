import '../ajustes/ajustes_widget.dart';
import '../auth/auth_util.dart';
import '../cargando/cargando_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_plus/share_plus.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      drawer: Container(
        width: 285,
        child: Drawer(
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                AuthUserStreamWidget(
                  child: Container(
                    width: 120,
                    height: 120,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.network(
                      valueOrDefault<String>(
                        currentUserPhoto,
                        'https://2mingenieria.com.ve/wp-content/uploads/2018/10/kisspng-avatar-user-medicine-surgery-patient-avatar-5acc9f7a7cb983.0104600115233596105109.jpg',
                      ),
                    ),
                  ),
                ),
                AuthUserStreamWidget(
                  child: Text(
                    currentUserDisplayName,
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Titillium Web',
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
                Text(
                  currentUserEmail,
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Titillium Web',
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                  child: InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AjustesWidget(),
                        ),
                      );
                    },
                    child: ListTile(
                      title: Text(
                        'Ajustes',
                        style: FlutterFlowTheme.of(context).title3.override(
                              fontFamily: 'Titillium Web',
                              color: Color(0xFF090F13),
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFF303030),
                        size: 20,
                      ),
                      tileColor: Colors.white,
                      dense: false,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      FFButtonWidget(
                        onPressed: () async {
                          await signOut();
                          await Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CargandoWidget(),
                            ),
                            (r) => false,
                          );
                        },
                        text: 'Cerrar Sesion',
                        options: FFButtonOptions(
                          width: 343,
                          height: 58,
                          color: Color(0xFF1DA1F2),
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle1.override(
                                    fontFamily: 'Titillium Web',
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600,
                                  ),
                          elevation: 3,
                          borderSide: BorderSide(
                            color: Color(0x00595959),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(29),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 21),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(25, 0, 0, 0),
                    child: InkWell(
                      onTap: () async {
                        scaffoldKey.currentState.openDrawer();
                      },
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Color(0xFFEEEEEE),
                        ),
                        child: SvgPicture.asset(
                          'assets/images/filters.svg',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(250, 0, 0, 0),
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                      ),
                      child: InkWell(
                        onTap: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  NavBarPage(initialPage: 'Notificaciones'),
                            ),
                          );
                        },
                        child: Container(
                          width: 120,
                          height: 120,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: SvgPicture.asset(
                            'assets/images/bell.svg',
                            fit: BoxFit.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                      ),
                      child: AuthUserStreamWidget(
                        child: InkWell(
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AjustesWidget(),
                              ),
                            );
                          },
                          child: Container(
                            width: 120,
                            height: 120,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.network(
                              currentUserPhoto,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                      child: Text(
                        ' 👋 ¡Hola!, ',
                        style: FlutterFlowTheme.of(context).title1.override(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                    AuthUserStreamWidget(
                      child: Text(
                        currentUserDisplayName,
                        style: FlutterFlowTheme.of(context).title1.override(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(21, 11, 21, 86),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Tienes ',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Titillium Web',
                              color: Color(0xFF8A94A6),
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      Text(
                        '',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Titillium Web',
                              color: Color(0xFF1DA1F2),
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      Text(
                        ' notificaciones.',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Titillium Web',
                              color: Color(0xFF8A94A6),
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 250,
                  height: 250,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/images/logo_radio_borde_copy.png',
                  ),
                ),
              ],
            ),
            Container(
              width: 380,
              height: 235,
              decoration: BoxDecoration(
                color: Color(0xFFF1F7FF),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 75, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(120, 0, 10, 0),
                          child: InkWell(
                            onTap: () async {
                              await Share.share('');
                            },
                            child: Icon(
                              Icons.share_outlined,
                              color: Color(0x614C4C4C),
                              size: 22,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 22, 15, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Barak',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Titillium Web',
                                    color: Color(0xFF77838F),
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                        Text(
                          'LIVE',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Titillium Web',
                                    color: Color(0xFF77838F),
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Html(
                      data:
                          '<audio src=\"https://cp.usastreams.com/pr2g/APPlayerRadioHTML5.aspx?stream=https://whmsonic.playerfullhd.com/9638/stream&fondo=05&formato=mpeg&color=3&titulo=1&autoStart=1&vol=10&tipo=200&nombre=Radio+7+Estrellas+de+David&imagen=https://cp.usastreams.com/playerHTML5/img/cover.png&server=https://whmsonic.playerfullhd.com/status.xslCHUMILLASmount=/9638/status.xslCHUMILLASmount=/stream\" controls=\"controls\" type=\"audio/mpeg\" preload=\"preload\">\n</audio>',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
