import '../core/flutter_flow/flutter_flow_theme.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController? textController;
  double? ratingBarValue1;
  double? ratingBarValue2;
  double? ratingBarValue3;
  double? ratingBarValue4;
  double? ratingBarValue5;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  void dispose() {
    textController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        automaticallyImplyLeading: true,
        centerTitle: true,
        elevation: 6,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 16, 0, 20),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Align(
                      alignment: const AlignmentDirectional(0.55, 0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                        child: TextFormField(
                          controller: textController,
                          onChanged: (_) => EasyDebounce.debounce(
                            'textController',
                            const Duration(milliseconds: 2000),
                            () => setState(() {}),
                          ),
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: 'yaxvhan2',
                            hintStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Libre Baskerville',
                                      color: const Color(0xFFC4C6C8),
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold,
                                    ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            errorBorder: UnderlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            focusedErrorBorder: UnderlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            filled: true,
                            fillColor:
                                FlutterFlowTheme.of(context).primaryBtnText,
                            prefixIcon: const Icon(
                              Icons.search,
                              color: Colors.black,
                              size: 30,
                            ),
                            suffixIcon: textController!.text.isNotEmpty
                                ? InkWell(
                                    onTap: () async {
                                      textController?.clear();
                                      setState(() {});
                                    },
                                    child: const Icon(
                                      Icons.clear,
                                      color: Colors.black,
                                      size: 30,
                                    ),
                                  )
                                : null,
                          ),
                          style:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Libre Baskerville',
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w100,
                                  ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(50, 0, 50, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'cwqq07kk',
                    style: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Libre Baskerville',
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),
                  ),
                  Text(
                    '4paa388l',
                    style: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Libre Baskerville',
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16, 12, 16, 8),
              child: Container(
                width: double.infinity,
                height: 600,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBtnText,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                    topLeft: Radius.circular(18),
                    topRight: Radius.circular(16),
                  ),
                ),
                child: ListView(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(14, 20, 14, 0),
                      child: Container(
                        width: 100,
                        height: 160,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 4,
                              color: Color(0x33000000),
                              offset: Offset(0, 2),
                            )
                          ],
                        ),
                        child: InkWell(
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Container(), // Change
                              ),
                            );
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16, 16, 8, 0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(16),
                                  child: Image.asset(
                                    'assets/images/photo_2022-10-19_20-42-53.jpg',
                                    width: 130,
                                    height: 140,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0, 30, 0, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0, 0, 0, 2),
                                      child: Text(
                                        'z5ak1yd9',
                                        style: FlutterFlowTheme.of(context)
                                            .subtitle2
                                            .override(
                                              fontFamily: 'Libre Baskerville',
                                              color: Colors.black,
                                              fontSize: 18,
                                            ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0, 0, 0, 2),
                                      child: Text(
                                        '3s1c65uw',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Libre Baskerville',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0, 0, 5, 0),
                                      child: RatingBar.builder(
                                        onRatingUpdate: (newValue) => setState(
                                            () => ratingBarValue1 = newValue),
                                        itemBuilder: (context, index) =>
                                            const Icon(
                                          Icons.star_rounded,
                                          color: Color(0xFFFFDF00),
                                        ),
                                        direction: Axis.horizontal,
                                        initialRating: ratingBarValue1 ??= 3,
                                        unratedColor:
                                            FlutterFlowTheme.of(context)
                                                .lineColor,
                                        itemCount: 5,
                                        itemSize: 30,
                                        glowColor: const Color(0xFFFFDF00),
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
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(14, 20, 14, 0),
                      child: Container(
                        width: 100,
                        height: 160,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 4,
                              color: Color(0x33000000),
                              offset: Offset(0, 2),
                            )
                          ],
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16, 16, 8, 0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: Image.asset(
                                  'assets/images/photo_2022-10-19_20-42-53.jpg',
                                  width: 130,
                                  height: 140,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0, 30, 0, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 2),
                                    child: Text(
                                      'y161kxcp',
                                      style: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                            fontFamily: 'Libre Baskerville',
                                            color: Colors.black,
                                            fontSize: 18,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 2),
                                    child: Text(
                                      'lqii9gqv' /* Fantasy */,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Libre Baskerville',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 5, 0),
                                    child: RatingBar.builder(
                                      onRatingUpdate: (newValue) => setState(
                                          () => ratingBarValue2 = newValue),
                                      itemBuilder: (context, index) =>
                                          const Icon(
                                        Icons.star_rounded,
                                        color: Color(0xFFFFDF00),
                                      ),
                                      direction: Axis.horizontal,
                                      initialRating: ratingBarValue2 ??= 3,
                                      unratedColor: FlutterFlowTheme.of(context)
                                          .lineColor,
                                      itemCount: 5,
                                      itemSize: 30,
                                      glowColor: const Color(0xFFFFDF00),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(14, 20, 14, 0),
                      child: Container(
                        width: 100,
                        height: 160,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 4,
                              color: Color(0x33000000),
                              offset: Offset(0, 2),
                            )
                          ],
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16, 16, 8, 0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: Image.asset(
                                  'assets/images/photo_2022-10-19_20-42-53.jpg',
                                  width: 130,
                                  height: 140,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0, 30, 0, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 2),
                                    child: Text(
                                      'puxn5ktp' /* Harry Potter */,
                                      style: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                            fontFamily: 'Libre Baskerville',
                                            color: Colors.black,
                                            fontSize: 18,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 2),
                                    child: Text(
                                      'hvcr5jb3' /* Fantasy */,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Libre Baskerville',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 5, 0),
                                    child: RatingBar.builder(
                                      onRatingUpdate: (newValue) => setState(
                                          () => ratingBarValue3 = newValue),
                                      itemBuilder: (context, index) =>
                                          const Icon(
                                        Icons.star_rounded,
                                        color: Color(0xFFFFDF00),
                                      ),
                                      direction: Axis.horizontal,
                                      initialRating: ratingBarValue3 ??= 3,
                                      unratedColor: FlutterFlowTheme.of(context)
                                          .lineColor,
                                      itemCount: 5,
                                      itemSize: 30,
                                      glowColor: const Color(0xFFFFDF00),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(14, 20, 14, 0),
                      child: Container(
                        width: 100,
                        height: 160,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 4,
                              color: Color(0x33000000),
                              offset: Offset(0, 2),
                            )
                          ],
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16, 16, 8, 0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: Image.asset(
                                  'assets/images/photo_2022-10-19_20-42-53.jpg',
                                  width: 130,
                                  height: 140,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0, 30, 0, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 2),
                                    child: Text(
                                      'j4c676j8' /* Harry Potter */,
                                      style: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                            fontFamily: 'Libre Baskerville',
                                            color: Colors.black,
                                            fontSize: 18,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 2),
                                    child: Text(
                                      'q764xyok' /* Fantasy */,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Libre Baskerville',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 5, 0),
                                    child: RatingBar.builder(
                                      onRatingUpdate: (newValue) => setState(
                                          () => ratingBarValue4 = newValue),
                                      itemBuilder: (context, index) =>
                                          const Icon(
                                        Icons.star_rounded,
                                        color: Color(0xFFFFDF00),
                                      ),
                                      direction: Axis.horizontal,
                                      initialRating: ratingBarValue4 ??= 3,
                                      unratedColor: FlutterFlowTheme.of(context)
                                          .lineColor,
                                      itemCount: 5,
                                      itemSize: 30,
                                      glowColor: const Color(0xFFFFDF00),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(14, 20, 14, 0),
                      child: Container(
                        width: 100,
                        height: 160,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 4,
                              color: Color(0x33000000),
                              offset: Offset(0, 2),
                            )
                          ],
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16, 16, 8, 0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: Image.asset(
                                  'assets/images/photo_2022-10-19_20-42-53.jpg',
                                  width: 130,
                                  height: 140,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0, 30, 0, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 2),
                                    child: Text(
                                      '2tdg9vdg' /* Harry Potter */,
                                      style: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                            fontFamily: 'Libre Baskerville',
                                            color: Colors.black,
                                            fontSize: 18,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 2),
                                    child: Text(
                                      'pqaqv7w7' /* Fantasy */,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Libre Baskerville',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 5, 0),
                                    child: RatingBar.builder(
                                      onRatingUpdate: (newValue) => setState(
                                          () => ratingBarValue5 = newValue),
                                      itemBuilder: (context, index) =>
                                          const Icon(
                                        Icons.star_rounded,
                                        color: Color(0xFFFFDF00),
                                      ),
                                      direction: Axis.horizontal,
                                      initialRating: ratingBarValue5 ??= 3,
                                      unratedColor: FlutterFlowTheme.of(context)
                                          .lineColor,
                                      itemCount: 5,
                                      itemSize: 30,
                                      glowColor: const Color(0xFFFFDF00),
                                    ),
                                  ),
                                ],
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
          ],
        ),
      ),
    );
  }
}
