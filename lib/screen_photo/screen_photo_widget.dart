import '../backend/firebase_storage/storage.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenPhotoWidget extends StatefulWidget {
  const ScreenPhotoWidget({Key key}) : super(key: key);

  @override
  _ScreenPhotoWidgetState createState() => _ScreenPhotoWidgetState();
}

class _ScreenPhotoWidgetState extends State<ScreenPhotoWidget> {
  String uploadedFileUrl = '';
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(116, 149, 116, 73),
            child: Text(
              'Añadir foto de Perfil',
              style: GoogleFonts.getFont(
                'Titillium Web',
                color: Color(0xFF8A94A6),
                fontWeight: FontWeight.w500,
                fontSize: 17,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(32, 0, 32, 0),
            child: Container(
              width: 311,
              height: 311,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: Image.asset(
                    'assets/images/rectangle_5.png',
                  ).image,
                ),
                borderRadius: BorderRadius.circular(14),
                shape: BoxShape.rectangle,
              ),
              child: Container(
                width: 34,
                height: 34,
                decoration: BoxDecoration(),
                child: InkWell(
                  onTap: () async {
                    final selectedMedia =
                        await selectMediaWithSourceBottomSheet(
                      context: context,
                      allowPhoto: true,
                    );
                    if (selectedMedia != null &&
                        selectedMedia.every((m) =>
                            validateFileFormat(m.storagePath, context))) {
                      showUploadMessage(
                        context,
                        'Uploading file...',
                        showLoading: true,
                      );
                      final downloadUrls = (await Future.wait(selectedMedia.map(
                              (m) async =>
                                  await uploadData(m.storagePath, m.bytes))))
                          .where((u) => u != null)
                          .toList();
                      ScaffoldMessenger.of(context).hideCurrentSnackBar();
                      if (downloadUrls != null &&
                          downloadUrls.length == selectedMedia.length) {
                        setState(() => uploadedFileUrl = downloadUrls.first);
                        showUploadMessage(
                          context,
                          'Success!',
                        );
                      } else {
                        showUploadMessage(
                          context,
                          'Failed to upload media',
                        );
                        return;
                      }
                    }
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Image.asset(
                            'assets/images/iconly_bulk_image_3.png',
                            width: 34,
                            height: 34,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Image.asset(
                              'assets/images/seleccione_una_foto.png',
                              width: 160,
                              height: 56,
                              fit: BoxFit.contain,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0, 0.05),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 87, 16, 0),
              child: FFButtonWidget(
                onPressed: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NavBarPage(initialPage: 'HomePage'),
                    ),
                  );
                },
                text: 'Confirmar',
                options: FFButtonOptions(
                  width: 343,
                  height: 58,
                  color: Color(0xFF1DA1F2),
                  textStyle: GoogleFonts.getFont(
                    'Titillium Web',
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                  ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                  borderRadius: BorderRadius.circular(29),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
