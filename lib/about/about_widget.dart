import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutWidget extends StatefulWidget {
  const AboutWidget({Key key}) : super(key: key);

  @override
  _AboutWidgetState createState() => _AboutWidgetState();
}

class _AboutWidgetState extends State<AboutWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 0, 100, 0),
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
                      Text(
                        'Ajustes',
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Titillium Web',
                              color: Color(0xFF6D7278),
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(100, 0, 10, 0),
                        child: Container(
                          width: 40,
                          height: 40,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                            'assets/images/foto-cv.jpg',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(19, 28, 19, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Sobre Nosotros',
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Titillium Web',
                              color: Color(0xFF0E254D),
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(19, 16, 19, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Radio 7 Estrellas de David es el camino ideal para que uses la tecnología para conectarte con Jehová de los ejércitos a través de predicas y alabanzas.',
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
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(19, 39, 19, 14),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Una Misión de lo Alto',
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Titillium Web',
                              color: Color(0xFF0E254D),
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(19, 0, 19, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Llevar la palabra de Dios a través de diferentes medios, para cumplir con la gran comisión que dejó nuestro padre celestial, de predicar su palabra en cada rincón del mundo; de esta manera colaborar con la construcción de una sociedad más justa, con valores cristianos, amor y respeto hacia el prójimo en Nicaragua y todas las naciones de la tierra.',
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
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(19, 39, 19, 14),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Visión Celestial',
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Titillium Web',
                              color: Color(0xFF0E254D),
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(19, 0, 19, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 42),
                        child: Text(
                          '1. Ser una nueva opción en el dial cibernético para conectarte a través de alabanzas y predicas bíblicas con Jehová de los Ejércitos.\n\n2. Posesionar Radio 7 Estrellas de David como la Número Uno en radios con contenido cristiano en el Ciberespacio.',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Titillium Web',
                                    color: Color(0xFF8A94A6),
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Nuestra Alianza con el Ministerio\nTorre de Oración  e Intercesión\nProfética Mundíal',
                            textAlign: TextAlign.start,
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Titillium Web',
                                      color: Color(0xFF0E254D),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 28, 0, 0),
                        child: Text(
                          'Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero\'s De Finibus Bonorum et Malorum for use in a type specimen book. It usually begins.\n\nLorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. ',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Titillium Web',
                                    color: Color(0xFF8A94A6),
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
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
      ),
    );
  }
}
