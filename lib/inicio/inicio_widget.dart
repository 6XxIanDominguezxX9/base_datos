import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../home_page/home_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class InicioWidget extends StatefulWidget {
  const InicioWidget({Key key}) : super(key: key);

  @override
  _InicioWidgetState createState() => _InicioWidgetState();
}

class _InicioWidgetState extends State<InicioWidget> {
  PageController pageViewController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFFF6B13),
        iconTheme: IconThemeData(color: Colors.black),
        automaticallyImplyLeading: true,
        title: Text(
          'Bienvenido a Soriana',
          style: FlutterFlowTheme.of(context).title1.override(
                fontFamily: 'Poppins',
                color: Colors.black,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                height: 300,
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: PageView(
                        controller: pageViewController ??=
                            PageController(initialPage: 0),
                        scrollDirection: Axis.horizontal,
                        children: [
                          Image.network(
                            'https://static3.abc.es/media/bienestar/2021/09/27/tipos-de-carne-1-kWj--620x349@abc.jpg',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                          Image.network(
                            'https://www.sabervivirtv.com/medio/2022/02/14/frutas-y-verduras-no-solo-importa-la-cantidad-tambien-la-variedad_34c75822_1280x720.jpg',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                          Image.network(
                            'https://www.todoaseo.com/wp-content/uploads/2019/09/MONTAJE-PRODUCTOS-DE-ASEO-300x300.jpg',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                          Image.network(
                            'https://mejorconsalud.as.com/fitness/wp-content/uploads/2018/06/los-productos-de-farmacia.jpg',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                          Image.network(
                            'https://cdn2.cocinadelirante.com/sites/default/files/styles/gallerie/public/images/2021/11/electrodomesticos-que-vale-la-pena-comprar.jpg',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                          Image.network(
                            'https://cronicaglobal.elespanol.com/uploads/s1/29/63/43/juguetes-genero.jpg',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 1),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                        child: SmoothPageIndicator(
                          controller: pageViewController ??=
                              PageController(initialPage: 0),
                          count: 6,
                          axisDirection: Axis.horizontal,
                          onDotClicked: (i) {
                            pageViewController.animateToPage(
                              i,
                              duration: Duration(milliseconds: 500),
                              curve: Curves.ease,
                            );
                          },
                          effect: ExpandingDotsEffect(
                            expansionFactor: 2,
                            spacing: 8,
                            radius: 16,
                            dotWidth: 16,
                            dotHeight: 16,
                            dotColor:
                                FlutterFlowTheme.of(context).primaryBtnText,
                            activeDotColor: Color(0xFFFF7000),
                            paintStyle: PaintingStyle.fill,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                child: Image.network(
                  'https://media.giphy.com/media/COnkrCRREj5XkNmGZX/giphy.gif',
                  width: 360,
                  height: 230,
                  fit: BoxFit.cover,
                ),
              ),
              FFButtonWidget(
                onPressed: () async {
                  await signOut();
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePageWidget(),
                    ),
                  );
                },
                text: 'Cerrar secion',
                options: FFButtonOptions(
                  width: 150,
                  height: 50,
                  color: FlutterFlowTheme.of(context).alternate,
                  textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Lexend Deca',
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                  elevation: 2,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: 40,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
