import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../reset_password/reset_password_widget.dart';
import '../welcome/welcome_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class VerificacionWidget extends StatefulWidget {
  const VerificacionWidget({Key key}) : super(key: key);

  @override
  _VerificacionWidgetState createState() => _VerificacionWidgetState();
}

class _VerificacionWidgetState extends State<VerificacionWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF1F7FF),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(146, 132, 146, 0),
              child: Image.asset(
                'assets/images/email_2.png',
                width: 85,
                height: 85,
                fit: BoxFit.cover,
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(53, 56, 53, 18),
                  child: Text(
                    'Correo de Verificación\nenviado',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Titillium Web',
                          color: Color(0xFF0E254D),
                          fontSize: 28,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(35, 0, 35, 0),
                  child: Text(
                    'Se ha enviado un correo electrónico de verificación a example@email.com. Por favor, haga clic en el enlace de ese correo electrónico para continuar.',
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
                  padding: EdgeInsetsDirectional.fromSTEB(82, 50, 82, 15),
                  child: Text(
                    '¿No ha llegado el correo electrónico? ',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Titillium Web',
                          color: Color(0xFFA2A2A2),
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(82, 0, 82, 0),
                  child: InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ResetPasswordWidget(),
                        ),
                      );
                    },
                    child: Text(
                      'Reenviar correo electrónico',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Titillium Web',
                            color: Color(0xFF1DA1F2),
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 35, 0, 0),
              child: FFButtonWidget(
                onPressed: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WelcomeWidget(),
                    ),
                  );
                },
                text: 'Ir a la Página Inicio',
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
            ),
          ],
        ),
      ),
    );
  }
}
