#############################################################################
# Makefile for building: sigviewer
# Generated by qmake (2.01a) (Qt 4.3.4) on: Do Apr 17 10:08:35 2008
# Project:  sigviewer.pro
# Template: subdirs
# Command: /usr/bin/qmake -spec /usr/local/Qt4.3/mkspecs/macx-g++ -macx -o Makefile sigviewer.pro
#############################################################################

first: make_default
MAKEFILE      = Makefile
QMAKE         = /usr/bin/qmake
DEL_FILE      = rm -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p
COPY          = cp -f
COPY_FILE     = cp -f
COPY_DIR      = cp -f -R
INSTALL_FILE  = $(COPY_FILE)
INSTALL_PROGRAM = $(COPY_FILE)
INSTALL_DIR   = $(COPY_DIR)
DEL_FILE      = rm -f
SYMLINK       = ln -sf
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p
SUBTARGETS    =  \
		sub-src

src//$(MAKEFILE): 
	@$(CHK_DIR_EXISTS) src/ || $(MKDIR) src/ 
	cd src/ && $(QMAKE) src.pro -spec /usr/local/Qt4.3/mkspecs/macx-g++ -macx -o $(MAKEFILE)
sub-src-qmake_all:  FORCE
	@$(CHK_DIR_EXISTS) src/ || $(MKDIR) src/ 
	cd src/ && $(QMAKE) src.pro -spec /usr/local/Qt4.3/mkspecs/macx-g++ -macx -o $(MAKEFILE)
sub-src: src//$(MAKEFILE) FORCE
	cd src/ && $(MAKE) -f $(MAKEFILE)
sub-src-make_default: src//$(MAKEFILE) FORCE
	cd src/ && $(MAKE) -f $(MAKEFILE) 
sub-src-make_first: src//$(MAKEFILE) FORCE
	cd src/ && $(MAKE) -f $(MAKEFILE) first
sub-src-all: src//$(MAKEFILE) FORCE
	cd src/ && $(MAKE) -f $(MAKEFILE) all
sub-src-clean: src//$(MAKEFILE) FORCE
	cd src/ && $(MAKE) -f $(MAKEFILE) clean
sub-src-distclean: src//$(MAKEFILE) FORCE
	cd src/ && $(MAKE) -f $(MAKEFILE) distclean
sub-src-install_subtargets: src//$(MAKEFILE) FORCE
	cd src/ && $(MAKE) -f $(MAKEFILE) install
sub-src-uninstall_subtargets: src//$(MAKEFILE) FORCE
	cd src/ && $(MAKE) -f $(MAKEFILE) uninstall

Makefile: sigviewer.pro  /usr/local/Qt4.3/mkspecs/macx-g++/qmake.conf /usr/local/Qt4.3/mkspecs/common/unix.conf \
		/usr/local/Qt4.3/mkspecs/common/mac.conf \
		/usr/local/Qt4.3/mkspecs/common/mac-g++.conf \
		/usr/local/Qt4.3/mkspecs/qconfig.pri \
		/usr/local/Qt4.3/mkspecs/features/qt_functions.prf \
		/usr/local/Qt4.3/mkspecs/features/qt_config.prf \
		/usr/local/Qt4.3/mkspecs/features/exclusive_builds.prf \
		/usr/local/Qt4.3/mkspecs/features/default_pre.prf \
		/usr/local/Qt4.3/mkspecs/features/mac/default_pre.prf \
		/usr/local/Qt4.3/mkspecs/features/debug.prf \
		/usr/local/Qt4.3/mkspecs/features/default_post.prf \
		/usr/local/Qt4.3/mkspecs/features/mac/default_post.prf \
		/usr/local/Qt4.3/mkspecs/features/mac/objective_c.prf \
		/usr/local/Qt4.3/mkspecs/features/warn_on.prf \
		/usr/local/Qt4.3/mkspecs/features/qt.prf \
		/usr/local/Qt4.3/mkspecs/features/unix/thread.prf \
		/usr/local/Qt4.3/mkspecs/features/moc.prf \
		/usr/local/Qt4.3/mkspecs/features/mac/rez.prf \
		/usr/local/Qt4.3/mkspecs/features/mac/sdk.prf \
		/usr/local/Qt4.3/mkspecs/features/resources.prf \
		/usr/local/Qt4.3/mkspecs/features/uic.prf \
		/usr/local/Qt4.3/mkspecs/features/yacc.prf \
		/usr/local/Qt4.3/mkspecs/features/lex.prf
	$(QMAKE) -spec /usr/local/Qt4.3/mkspecs/macx-g++ -macx -o Makefile sigviewer.pro
/usr/local/Qt4.3/mkspecs/common/unix.conf:
/usr/local/Qt4.3/mkspecs/common/mac.conf:
/usr/local/Qt4.3/mkspecs/common/mac-g++.conf:
/usr/local/Qt4.3/mkspecs/qconfig.pri:
/usr/local/Qt4.3/mkspecs/features/qt_functions.prf:
/usr/local/Qt4.3/mkspecs/features/qt_config.prf:
/usr/local/Qt4.3/mkspecs/features/exclusive_builds.prf:
/usr/local/Qt4.3/mkspecs/features/default_pre.prf:
/usr/local/Qt4.3/mkspecs/features/mac/default_pre.prf:
/usr/local/Qt4.3/mkspecs/features/debug.prf:
/usr/local/Qt4.3/mkspecs/features/default_post.prf:
/usr/local/Qt4.3/mkspecs/features/mac/default_post.prf:
/usr/local/Qt4.3/mkspecs/features/mac/objective_c.prf:
/usr/local/Qt4.3/mkspecs/features/warn_on.prf:
/usr/local/Qt4.3/mkspecs/features/qt.prf:
/usr/local/Qt4.3/mkspecs/features/unix/thread.prf:
/usr/local/Qt4.3/mkspecs/features/moc.prf:
/usr/local/Qt4.3/mkspecs/features/mac/rez.prf:
/usr/local/Qt4.3/mkspecs/features/mac/sdk.prf:
/usr/local/Qt4.3/mkspecs/features/resources.prf:
/usr/local/Qt4.3/mkspecs/features/uic.prf:
/usr/local/Qt4.3/mkspecs/features/yacc.prf:
/usr/local/Qt4.3/mkspecs/features/lex.prf:
qmake: qmake_all FORCE
	@$(QMAKE) -spec /usr/local/Qt4.3/mkspecs/macx-g++ -macx -o Makefile sigviewer.pro

qmake_all: sub-src-qmake_all FORCE

make_default: sub-src-make_default FORCE
make_first: sub-src-make_first FORCE
all: sub-src-all FORCE
clean: sub-src-clean FORCE
distclean: sub-src-distclean FORCE
	-$(DEL_FILE) Makefile
install_subtargets: sub-src-install_subtargets FORCE
uninstall_subtargets: sub-src-uninstall_subtargets FORCE

mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all
install: install_subtargets  FORCE

uninstall:  uninstall_subtargets FORCE

FORCE:

