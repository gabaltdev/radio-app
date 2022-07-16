import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../verificacion/verificacion_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ResetPasswordWidget extends StatefulWidget {
  const ResetPasswordWidget({Key key}) : super(key: key);

  @override
  _ResetPasswordWidgetState createState() => _ResetPasswordWidgetState();
}

class _ResetPasswordWidgetState extends State<ResetPasswordWidget> {
  TextEditingController emailAddressController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailAddressController = TextEditingController();
  }

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
                padding: EdgeInsetsDirectional.fromSTEB(114, 65, 114, 48),
                child: Container(
                  width: 150,
                  height: 150,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/images/logo_radio_borde_copy.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(34, 0, 34, 0),
                child: Text(
                  'Restablecer Contraseña',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Titillium Web',
                        color: Color(0xFF0E254D),
                        fontSize: 28,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(41, 24, 41, 48),
                child: Text(
                  'Se enviará un correo electrónico a la dirección de correo electrónico proporcionada a continuación.',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Titillium Web',
                        color: Color(0xFF8A94A6),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 41),
                  child: TextFormField(
                    controller: emailAddressController,
                    onFieldSubmitted: (_) async {
                      if (emailAddressController.text.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Email required!',
                            ),
                          ),
                        );
                        return;
                      }
                      await resetPassword(
                        email: emailAddressController.text,
                        context: context,
                      );
                    },
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Correo Electrónico',
                      hintText: 'Ingrese su correo...',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFDEDEDE),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFDEDEDE),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      filled: true,
                      fillColor: Color(0xFFF1F7FF),
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(20, 24, 20, 24),
                    ),
                    style: GoogleFonts.getFont(
                      'Titillium Web',
                      color: Color(0xFF4C4C4C),
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
              FFButtonWidget(
                onPressed: () async {
                  await sendEmailVerification();
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VerificacionWidget(),
                    ),
                  );
                },
                text: 'Restablecer Contraseña',
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
