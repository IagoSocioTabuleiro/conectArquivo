import '/components/footer_widget.dart';
import '/components/header_widget.dart';
import '/components/search_list_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_pdf_viewer.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget>
    with TickerProviderStateMixin {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setDarkModeSetting(context, ThemeMode.light);
    });

    animationsMap.addAll({
      'cardOnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(1.0, 1.0),
            end: const Offset(1.2, 1.2),
          ),
        ],
      ),
      'cardOnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(1.0, 1.0),
            end: const Offset(1.2, 1.2),
          ),
        ],
      ),
      'cardOnActionTriggerAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(1.0, 1.0),
            end: const Offset(1.2, 1.2),
          ),
        ],
      ),
      'cardOnActionTriggerAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(1.0, 1.0),
            end: const Offset(1.2, 1.2),
          ),
        ],
      ),
      'cardOnActionTriggerAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(1.0, 1.0),
            end: const Offset(1.2, 1.2),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              wrapWithModel(
                model: _model.headerModel,
                updateCallback: () => setState(() {}),
                child: HeaderWidget(
                  parameter1: _model.nightTheme,
                ),
              ),
              Container(
                width: () {
                  if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                    return 400.0;
                  } else if (MediaQuery.sizeOf(context).width <
                      kBreakpointMedium) {
                    return 600.0;
                  } else if (MediaQuery.sizeOf(context).width <
                      kBreakpointLarge) {
                    return 1200.0;
                  } else {
                    return 1440.0;
                  }
                }(),
                height: () {
                  if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                    return 300.0;
                  } else if (MediaQuery.sizeOf(context).width <
                      kBreakpointMedium) {
                    return 400.0;
                  } else if (MediaQuery.sizeOf(context).width <
                      kBreakpointLarge) {
                    return 650.0;
                  } else {
                    return 1080.0;
                  }
                }(),
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Stack(
                  children: [
                    Opacity(
                      opacity: 0.3,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/bg_00.jpeg',
                          width: double.infinity,
                          height: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Opacity(
                            opacity: 0.7,
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: Container(
                                width: double.infinity,
                                height: 40.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).accent4,
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: AutoSizeText(
                                        'Recomendações do dia',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 32.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ),
                                    ToggleIcon(
                                      onPressed: () async {
                                        setState(() =>
                                            _model.recomendacoesVisible =
                                                !_model.recomendacoesVisible);
                                      },
                                      value: _model.recomendacoesVisible,
                                      onIcon: Icon(
                                        Icons.visibility,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 25.0,
                                      ),
                                      offIcon: Icon(
                                        Icons.visibility_off,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 25.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          if (_model.recomendacoesVisible)
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  MouseRegion(
                                    opaque: false,
                                    cursor:
                                        MouseCursor.defer ?? MouseCursor.defer,
                                    onEnter: ((event) async {
                                      setState(() =>
                                          _model.mouseRegionHovered1 = true);
                                      if (animationsMap[
                                              'cardOnActionTriggerAnimation1'] !=
                                          null) {
                                        await animationsMap[
                                                'cardOnActionTriggerAnimation1']!
                                            .controller
                                            .forward(from: 0.0);
                                      }
                                    }),
                                    onExit: ((event) async {
                                      setState(() =>
                                          _model.mouseRegionHovered1 = false);
                                      if (animationsMap[
                                              'cardOnActionTriggerAnimation1'] !=
                                          null) {
                                        await animationsMap[
                                                'cardOnActionTriggerAnimation1']!
                                            .controller
                                            .reverse();
                                      }
                                    }),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 16.0, 0.0, 16.0),
                                      child: Card(
                                        clipBehavior:
                                            Clip.antiAliasWithSaveLayer,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        elevation: 4.0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        child: Container(
                                          width: 200.0,
                                          height: 150.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          child: const FlutterFlowPdfViewer(
                                            networkPath:
                                                'http://www.pdf995.com/samples/pdf.pdf',
                                            height: 300.0,
                                            horizontalScroll: false,
                                          ),
                                        ),
                                      ).animateOnActionTrigger(
                                        animationsMap[
                                            'cardOnActionTriggerAnimation1']!,
                                      ),
                                    ),
                                  ),
                                  MouseRegion(
                                    opaque: false,
                                    cursor:
                                        MouseCursor.defer ?? MouseCursor.defer,
                                    onEnter: ((event) async {
                                      setState(() =>
                                          _model.mouseRegionHovered2 = true);
                                      if (animationsMap[
                                              'cardOnActionTriggerAnimation2'] !=
                                          null) {
                                        await animationsMap[
                                                'cardOnActionTriggerAnimation2']!
                                            .controller
                                            .forward(from: 0.0);
                                      }
                                    }),
                                    onExit: ((event) async {
                                      setState(() =>
                                          _model.mouseRegionHovered2 = false);
                                      if (animationsMap[
                                              'cardOnActionTriggerAnimation2'] !=
                                          null) {
                                        await animationsMap[
                                                'cardOnActionTriggerAnimation2']!
                                            .controller
                                            .reverse();
                                      }
                                    }),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 16.0, 0.0, 16.0),
                                      child: Card(
                                        clipBehavior:
                                            Clip.antiAliasWithSaveLayer,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        elevation: 4.0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        child: Container(
                                          width: 200.0,
                                          height: 150.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          child: const FlutterFlowPdfViewer(
                                            networkPath:
                                                'http://www.pdf995.com/samples/pdf.pdf',
                                            height: 300.0,
                                            horizontalScroll: false,
                                          ),
                                        ),
                                      ).animateOnActionTrigger(
                                        animationsMap[
                                            'cardOnActionTriggerAnimation2']!,
                                      ),
                                    ),
                                  ),
                                  MouseRegion(
                                    opaque: false,
                                    cursor:
                                        MouseCursor.defer ?? MouseCursor.defer,
                                    onEnter: ((event) async {
                                      setState(() =>
                                          _model.mouseRegionHovered3 = true);
                                      if (animationsMap[
                                              'cardOnActionTriggerAnimation3'] !=
                                          null) {
                                        await animationsMap[
                                                'cardOnActionTriggerAnimation3']!
                                            .controller
                                            .forward(from: 0.0);
                                      }
                                    }),
                                    onExit: ((event) async {
                                      setState(() =>
                                          _model.mouseRegionHovered3 = false);
                                      if (animationsMap[
                                              'cardOnActionTriggerAnimation3'] !=
                                          null) {
                                        await animationsMap[
                                                'cardOnActionTriggerAnimation3']!
                                            .controller
                                            .reverse();
                                      }
                                    }),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 16.0, 0.0, 16.0),
                                      child: Card(
                                        clipBehavior:
                                            Clip.antiAliasWithSaveLayer,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        elevation: 4.0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        child: Container(
                                          width: 200.0,
                                          height: 150.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          child: const FlutterFlowPdfViewer(
                                            networkPath:
                                                'http://www.pdf995.com/samples/pdf.pdf',
                                            height: 300.0,
                                            horizontalScroll: false,
                                          ),
                                        ),
                                      ).animateOnActionTrigger(
                                        animationsMap[
                                            'cardOnActionTriggerAnimation3']!,
                                      ),
                                    ),
                                  ),
                                  MouseRegion(
                                    opaque: false,
                                    cursor:
                                        MouseCursor.defer ?? MouseCursor.defer,
                                    onEnter: ((event) async {
                                      setState(() =>
                                          _model.mouseRegionHovered4 = true);
                                      if (animationsMap[
                                              'cardOnActionTriggerAnimation4'] !=
                                          null) {
                                        await animationsMap[
                                                'cardOnActionTriggerAnimation4']!
                                            .controller
                                            .forward(from: 0.0);
                                      }
                                    }),
                                    onExit: ((event) async {
                                      setState(() =>
                                          _model.mouseRegionHovered4 = false);
                                      if (animationsMap[
                                              'cardOnActionTriggerAnimation4'] !=
                                          null) {
                                        await animationsMap[
                                                'cardOnActionTriggerAnimation4']!
                                            .controller
                                            .reverse();
                                      }
                                    }),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 16.0, 0.0, 16.0),
                                      child: Card(
                                        clipBehavior:
                                            Clip.antiAliasWithSaveLayer,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        elevation: 4.0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        child: Container(
                                          width: 200.0,
                                          height: 150.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          child: const FlutterFlowPdfViewer(
                                            networkPath:
                                                'http://www.pdf995.com/samples/pdf.pdf',
                                            height: 300.0,
                                            horizontalScroll: false,
                                          ),
                                        ),
                                      ).animateOnActionTrigger(
                                        animationsMap[
                                            'cardOnActionTriggerAnimation4']!,
                                      ),
                                    ),
                                  ),
                                  MouseRegion(
                                    opaque: false,
                                    cursor:
                                        MouseCursor.defer ?? MouseCursor.defer,
                                    onEnter: ((event) async {
                                      setState(() =>
                                          _model.mouseRegionHovered5 = true);
                                      if (animationsMap[
                                              'cardOnActionTriggerAnimation5'] !=
                                          null) {
                                        await animationsMap[
                                                'cardOnActionTriggerAnimation5']!
                                            .controller
                                            .forward(from: 0.0);
                                      }
                                    }),
                                    onExit: ((event) async {
                                      setState(() =>
                                          _model.mouseRegionHovered5 = false);
                                      if (animationsMap[
                                              'cardOnActionTriggerAnimation5'] !=
                                          null) {
                                        await animationsMap[
                                                'cardOnActionTriggerAnimation5']!
                                            .controller
                                            .reverse();
                                      }
                                    }),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 16.0, 0.0, 16.0),
                                      child: Card(
                                        clipBehavior:
                                            Clip.antiAliasWithSaveLayer,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        elevation: 4.0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        child: Container(
                                          width: 200.0,
                                          height: 150.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          child: const FlutterFlowPdfViewer(
                                            networkPath:
                                                'http://www.pdf995.com/samples/pdf.pdf',
                                            height: 300.0,
                                            horizontalScroll: false,
                                          ),
                                        ),
                                      ).animateOnActionTrigger(
                                        animationsMap[
                                            'cardOnActionTriggerAnimation5']!,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          Expanded(
                            child: wrapWithModel(
                              model: _model.searchListModel,
                              updateCallback: () => setState(() {}),
                              child: const SearchListWidget(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                child: wrapWithModel(
                  model: _model.footerModel,
                  updateCallback: () => setState(() {}),
                  child: const FooterWidget(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
