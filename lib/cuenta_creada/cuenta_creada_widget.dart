import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../welcome/welcome_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class CuentaCreadaWidget extends StatefulWidget {
  const CuentaCreadaWidget({Key key}) : super(key: key);

  @override
  _CuentaCreadaWidgetState createState() => _CuentaCreadaWidgetState();
}

class _CuentaCreadaWidgetState extends State<CuentaCreadaWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF1F7FF),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 123, 0, 0),
                child: Container(
                  width: 86,
                  height: 86,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/images/correcto.png',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(60, 67, 60, 38),
                child: Text(
                  'La cuenta fue creada',
                  style: GoogleFonts.getFont(
                    'Titillium Web',
                    color: Color(0xFF0E254D),
                    fontWeight: FontWeight.w600,
                    fontSize: 28,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(35, 0, 35, 0),
                child: Text(
                  'Así que, hermanos míos amados, estad firmes y constantes, creciendo en la obra del Señor siempre, sabiendo que vuestro trabajo en el Señor no es en vano.',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Titillium Web',
                        color: Color(0xFF8A94A6),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(35, 25, 35, 67),
                child: Text(
                  '- Corintios 15:58',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Titillium Web',
                        color: Color(0xFF8A94A6),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              FFButtonWidget(
                onPressed: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WelcomeWidget(),
                    ),
                  );
                },
                text: 'Continuar',
                options: FFButtonOptions(
                  width: 343,
                  height: 58,
                  color: Color(0xFF1DA1F2),
                  textStyle: FlutterFlowTheme.of(context).subtitle1.override(
                        fontFamily: 'Titillium Web',
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                  elevation: 3,
                  borderSide: BorderSide(
                    color: Color(0x00595959),
                  ),
                  borderRadius: BorderRadius.circular(29),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
