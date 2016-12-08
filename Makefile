#############################################################################
# Makefile for building: ServerClient
# Generated by qmake (3.0) (Qt 5.7.0)
# Project:  ServerClient.pro
# Template: app
# Command: H:\Qt\Qt5.7.0\5.7\msvc2015\bin\qmake.exe -spec win32-msvc2015 "CONFIG+=debug" "CONFIG+=qml_debug" -o Makefile ServerClient.pro
#############################################################################

MAKEFILE      = Makefile

first: debug
install: debug-install
uninstall: debug-uninstall
QMAKE         = H:\Qt\Qt5.7.0\5.7\msvc2015\bin\qmake.exe
DEL_FILE      = del
CHK_DIR_EXISTS= if not exist
MKDIR         = mkdir
COPY          = copy /y
COPY_FILE     = copy /y
COPY_DIR      = xcopy /s /q /y /i
INSTALL_FILE  = copy /y
INSTALL_PROGRAM = copy /y
INSTALL_DIR   = xcopy /s /q /y /i
DEL_FILE      = del
SYMLINK       = $(QMAKE) -install ln -f -s
DEL_DIR       = rmdir
MOVE          = move
SUBTARGETS    =  \
		debug \
		release


debug: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Debug
debug-make_first: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Debug 
debug-all: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Debug all
debug-clean: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Debug clean
debug-distclean: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Debug distclean
debug-install: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Debug install
debug-uninstall: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Debug uninstall
release: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Release
release-make_first: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Release 
release-all: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Release all
release-clean: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Release clean
release-distclean: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Release distclean
release-install: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Release install
release-uninstall: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Release uninstall

Makefile: ServerClient.pro H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\win32-msvc2015\qmake.conf H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\features\spec_pre.prf \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\common\angle.conf \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\common\msvc-base.conf \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\common\msvc-desktop.conf \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\qconfig.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_3dcore.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_3dcore_private.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_3dextras.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_3dextras_private.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_3dinput.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_3dinput_private.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_3dlogic.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_3dlogic_private.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_3dquick.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_3dquick_private.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_3dquickextras.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_3dquickextras_private.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_3dquickinput.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_3dquickinput_private.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_3dquickrender.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_3dquickrender_private.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_3drender.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_3drender_private.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_axbase.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_axbase_private.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_axcontainer.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_axcontainer_private.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_axserver.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_axserver_private.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_bluetooth.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_bluetooth_private.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_bootstrap_private.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_clucene_private.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_concurrent.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_concurrent_private.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_core.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_core_private.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_dbus.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_dbus_private.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_designer.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_designer_private.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_designercomponents_private.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_gamepad.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_gamepad_private.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_gui.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_gui_private.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_help.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_help_private.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_location.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_location_private.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_multimedia.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_multimedia_private.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_multimediawidgets.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_multimediawidgets_private.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_network.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_network_private.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_nfc.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_nfc_private.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_opengl.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_opengl_private.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_openglextensions.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_openglextensions_private.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_packetprotocol_private.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_platformsupport_private.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_positioning.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_positioning_private.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_printsupport.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_printsupport_private.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_purchasing.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_purchasing_private.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_qml.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_qml_private.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_qmldebug_private.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_qmldevtools_private.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_qmltest.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_qmltest_private.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_qtmultimediaquicktools_private.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_quick.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_quick_private.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_quickcontrols2.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_quickcontrols2_private.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_quickparticles_private.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_quicktemplates2_private.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_quickwidgets.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_quickwidgets_private.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_script.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_script_private.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_scripttools.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_scripttools_private.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_scxml.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_scxml_private.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_sensors.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_sensors_private.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_serialbus.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_serialbus_private.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_serialport.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_serialport_private.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_sql.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_sql_private.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_svg.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_svg_private.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_testlib.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_testlib_private.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_uiplugin.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_uitools.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_uitools_private.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_webchannel.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_webchannel_private.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_webengine.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_webengine_private.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_webenginecore.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_webenginecore_private.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_webenginecoreheaders_private.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_webenginewidgets.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_webenginewidgets_private.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_websockets.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_websockets_private.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_webview.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_webview_private.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_widgets.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_widgets_private.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_winextras.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_winextras_private.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_xml.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_xml_private.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_xmlpatterns.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_xmlpatterns_private.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_zlib_private.pri \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\features\qt_functions.prf \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\features\qt_config.prf \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\features\win32\qt_config.prf \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\win32-msvc2015\qmake.conf \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\features\spec_post.prf \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\features\exclusive_builds.prf \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\features\default_pre.prf \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\features\win32\default_pre.prf \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\features\resolve_config.prf \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\features\exclusive_builds_post.prf \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\features\default_post.prf \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\features\qml_debug.prf \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\features\win32\rtti.prf \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\features\precompile_header.prf \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\features\warn_on.prf \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\features\qt.prf \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\features\resources.prf \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\features\moc.prf \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\features\win32\opengl.prf \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\features\uic.prf \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\features\file_copies.prf \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\features\win32\windows.prf \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\features\testcase_targets.prf \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\features\exceptions.prf \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\features\yacc.prf \
		H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\features\lex.prf \
		ServerClient.pro \
		H:\Qt\Qt5.7.0\5.7\msvc2015\lib\qtmaind.prl \
		H:\Qt\Qt5.7.0\5.7\msvc2015\lib\Qt5Widgets.prl \
		H:\Qt\Qt5.7.0\5.7\msvc2015\lib\Qt5Gui.prl \
		H:\Qt\Qt5.7.0\5.7\msvc2015\lib\Qt5Sql.prl \
		H:\Qt\Qt5.7.0\5.7\msvc2015\lib\Qt5Network.prl \
		H:\Qt\Qt5.7.0\5.7\msvc2015\lib\Qt5Core.prl
	$(QMAKE) -spec win32-msvc2015 "CONFIG+=debug" "CONFIG+=qml_debug" -o Makefile ServerClient.pro
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\features\spec_pre.prf:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\common\angle.conf:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\common\msvc-base.conf:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\common\msvc-desktop.conf:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\qconfig.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_3dcore.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_3dcore_private.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_3dextras.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_3dextras_private.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_3dinput.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_3dinput_private.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_3dlogic.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_3dlogic_private.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_3dquick.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_3dquick_private.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_3dquickextras.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_3dquickextras_private.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_3dquickinput.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_3dquickinput_private.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_3dquickrender.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_3dquickrender_private.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_3drender.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_3drender_private.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_axbase.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_axbase_private.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_axcontainer.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_axcontainer_private.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_axserver.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_axserver_private.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_bluetooth.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_bluetooth_private.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_bootstrap_private.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_clucene_private.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_concurrent.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_concurrent_private.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_core.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_core_private.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_dbus.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_dbus_private.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_designer.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_designer_private.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_designercomponents_private.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_gamepad.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_gamepad_private.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_gui.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_gui_private.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_help.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_help_private.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_location.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_location_private.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_multimedia.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_multimedia_private.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_multimediawidgets.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_multimediawidgets_private.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_network.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_network_private.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_nfc.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_nfc_private.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_opengl.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_opengl_private.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_openglextensions.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_openglextensions_private.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_packetprotocol_private.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_platformsupport_private.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_positioning.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_positioning_private.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_printsupport.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_printsupport_private.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_purchasing.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_purchasing_private.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_qml.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_qml_private.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_qmldebug_private.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_qmldevtools_private.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_qmltest.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_qmltest_private.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_qtmultimediaquicktools_private.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_quick.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_quick_private.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_quickcontrols2.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_quickcontrols2_private.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_quickparticles_private.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_quicktemplates2_private.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_quickwidgets.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_quickwidgets_private.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_script.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_script_private.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_scripttools.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_scripttools_private.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_scxml.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_scxml_private.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_sensors.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_sensors_private.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_serialbus.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_serialbus_private.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_serialport.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_serialport_private.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_sql.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_sql_private.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_svg.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_svg_private.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_testlib.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_testlib_private.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_uiplugin.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_uitools.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_uitools_private.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_webchannel.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_webchannel_private.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_webengine.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_webengine_private.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_webenginecore.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_webenginecore_private.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_webenginecoreheaders_private.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_webenginewidgets.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_webenginewidgets_private.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_websockets.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_websockets_private.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_webview.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_webview_private.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_widgets.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_widgets_private.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_winextras.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_winextras_private.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_xml.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_xml_private.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_xmlpatterns.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_xmlpatterns_private.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\modules\qt_lib_zlib_private.pri:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\features\qt_functions.prf:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\features\qt_config.prf:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\features\win32\qt_config.prf:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\win32-msvc2015\qmake.conf:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\features\spec_post.prf:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\features\exclusive_builds.prf:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\features\default_pre.prf:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\features\win32\default_pre.prf:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\features\resolve_config.prf:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\features\exclusive_builds_post.prf:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\features\default_post.prf:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\features\qml_debug.prf:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\features\win32\rtti.prf:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\features\precompile_header.prf:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\features\warn_on.prf:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\features\qt.prf:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\features\resources.prf:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\features\moc.prf:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\features\win32\opengl.prf:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\features\uic.prf:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\features\file_copies.prf:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\features\win32\windows.prf:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\features\testcase_targets.prf:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\features\exceptions.prf:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\features\yacc.prf:
H:\Qt\Qt5.7.0\5.7\msvc2015\mkspecs\features\lex.prf:
ServerClient.pro:
H:\Qt\Qt5.7.0\5.7\msvc2015\lib\qtmaind.prl:
H:\Qt\Qt5.7.0\5.7\msvc2015\lib\Qt5Widgets.prl:
H:\Qt\Qt5.7.0\5.7\msvc2015\lib\Qt5Gui.prl:
H:\Qt\Qt5.7.0\5.7\msvc2015\lib\Qt5Sql.prl:
H:\Qt\Qt5.7.0\5.7\msvc2015\lib\Qt5Network.prl:
H:\Qt\Qt5.7.0\5.7\msvc2015\lib\Qt5Core.prl:
qmake: FORCE
	@$(QMAKE) -spec win32-msvc2015 "CONFIG+=debug" "CONFIG+=qml_debug" -o Makefile ServerClient.pro

qmake_all: FORCE

make_first: debug-make_first release-make_first  FORCE
all: debug-all release-all  FORCE
clean: debug-clean release-clean  FORCE
	-$(DEL_FILE) ServerClient.exp
	-$(DEL_FILE) ServerClient.ilk
	-$(DEL_FILE) ServerClient.idb
distclean: debug-distclean release-distclean  FORCE
	-$(DEL_FILE) Makefile
	-$(DEL_FILE) ServerClient.lib ServerClient.pdb

debug-mocclean:
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Debug mocclean
release-mocclean:
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Release mocclean
mocclean: debug-mocclean release-mocclean

debug-mocables:
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Debug mocables
release-mocables:
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Release mocables
mocables: debug-mocables release-mocables

check: first

benchmark: first
FORCE:

$(MAKEFILE).Debug: Makefile
$(MAKEFILE).Release: Makefile