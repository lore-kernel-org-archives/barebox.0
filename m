Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo4.mail-out.ovh.net ([91.121.62.11]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UDAjo-0000Yl-BP
 for barebox@lists.infradead.org; Wed, 06 Mar 2013 09:36:18 +0000
Received: from mail413.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 16E66104E793
 for <barebox@lists.infradead.org>; Wed,  6 Mar 2013 10:45:19 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Subject: [PATCH 13/20] app: curses: add pdcurses
Date: Wed,  6 Mar 2013 10:29:42 +0100
Message-Id: <1362562189-17783-13-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1362562189-17783-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130306092643.GF4401@game.jcrosoft.org>
 <1362562189-17783-1-git-send-email-plagnioj@jcrosoft.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
To: barebox@lists.infradead.org

backend inspided by coreboot core but with ansi support

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 apps/lib/curses/Kconfig                      |    7 +
 apps/lib/curses/Makefile                     |    1 +
 apps/lib/curses/Makefile.include             |    1 +
 apps/lib/curses/pdcurses/Makefile            |   89 ++
 apps/lib/curses/pdcurses/Makefile.include    |    1 +
 apps/lib/curses/pdcurses/backend/Makefile    |    6 +
 apps/lib/curses/pdcurses/backend/barebox.h   |   21 +
 apps/lib/curses/pdcurses/backend/config.h    |  136 +++
 apps/lib/curses/pdcurses/backend/pdcdisp.c   |  107 ++
 apps/lib/curses/pdcurses/backend/pdcgetsc.c  |   47 +
 apps/lib/curses/pdcurses/backend/pdckbd.c    |  161 +++
 apps/lib/curses/pdcurses/backend/pdcscrn.c   |  162 +++
 apps/lib/curses/pdcurses/backend/pdcsetsc.c  |   35 +
 apps/lib/curses/pdcurses/backend/pdcutil.c   |   26 +
 apps/lib/curses/pdcurses/include/curses.h    | 1378 ++++++++++++++++++++++++++
 apps/lib/curses/pdcurses/include/panel.h     |   58 ++
 apps/lib/curses/pdcurses/pdcurses/Makefile   |   39 +
 apps/lib/curses/pdcurses/pdcurses/README     |   25 +
 apps/lib/curses/pdcurses/pdcurses/addch.c    |  408 ++++++++
 apps/lib/curses/pdcurses/pdcurses/addchstr.c |  242 +++++
 apps/lib/curses/pdcurses/pdcurses/addstr.c   |  237 +++++
 apps/lib/curses/pdcurses/pdcurses/attr.c     |  349 +++++++
 apps/lib/curses/pdcurses/pdcurses/beep.c     |   65 ++
 apps/lib/curses/pdcurses/pdcurses/bkgd.c     |  220 ++++
 apps/lib/curses/pdcurses/pdcurses/border.c   |  408 ++++++++
 apps/lib/curses/pdcurses/pdcurses/clear.c    |  154 +++
 apps/lib/curses/pdcurses/pdcurses/color.c    |  295 ++++++
 apps/lib/curses/pdcurses/pdcurses/curspriv.h |  146 +++
 apps/lib/curses/pdcurses/pdcurses/debug.c    |   81 ++
 apps/lib/curses/pdcurses/pdcurses/delch.c    |   93 ++
 apps/lib/curses/pdcurses/pdcurses/deleteln.c |  208 ++++
 apps/lib/curses/pdcurses/pdcurses/deprec.c   |   29 +
 apps/lib/curses/pdcurses/pdcurses/getch.c    |  410 ++++++++
 apps/lib/curses/pdcurses/pdcurses/getstr.c   |  471 +++++++++
 apps/lib/curses/pdcurses/pdcurses/getyx.c    |  143 +++
 apps/lib/curses/pdcurses/pdcurses/inch.c     |  125 +++
 apps/lib/curses/pdcurses/pdcurses/inchstr.c  |  211 ++++
 apps/lib/curses/pdcurses/pdcurses/initscr.c  |  339 +++++++
 apps/lib/curses/pdcurses/pdcurses/inopts.c   |  321 ++++++
 apps/lib/curses/pdcurses/pdcurses/insch.c    |  268 +++++
 apps/lib/curses/pdcurses/pdcurses/insstr.c   |  261 +++++
 apps/lib/curses/pdcurses/pdcurses/instr.c    |  243 +++++
 apps/lib/curses/pdcurses/pdcurses/kernel.c   |  256 +++++
 apps/lib/curses/pdcurses/pdcurses/keyname.c  |  125 +++
 apps/lib/curses/pdcurses/pdcurses/mouse.c    |  429 ++++++++
 apps/lib/curses/pdcurses/pdcurses/move.c     |   54 +
 apps/lib/curses/pdcurses/pdcurses/outopts.c  |  156 +++
 apps/lib/curses/pdcurses/pdcurses/overlay.c  |  256 +++++
 apps/lib/curses/pdcurses/pdcurses/pad.c      |  259 +++++
 apps/lib/curses/pdcurses/pdcurses/panel.c    |  630 ++++++++++++
 apps/lib/curses/pdcurses/pdcurses/printw.c   |  123 +++
 apps/lib/curses/pdcurses/pdcurses/refresh.c  |  276 ++++++
 apps/lib/curses/pdcurses/pdcurses/scanw.c    |  575 +++++++++++
 apps/lib/curses/pdcurses/pdcurses/scr_dump.c |  210 ++++
 apps/lib/curses/pdcurses/pdcurses/scroll.c   |   98 ++
 apps/lib/curses/pdcurses/pdcurses/slk.c      |  643 ++++++++++++
 apps/lib/curses/pdcurses/pdcurses/term.h     |   57 ++
 apps/lib/curses/pdcurses/pdcurses/termattr.c |  176 ++++
 apps/lib/curses/pdcurses/pdcurses/terminfo.c |  215 ++++
 apps/lib/curses/pdcurses/pdcurses/touch.c    |  160 +++
 apps/lib/curses/pdcurses/pdcurses/util.c     |  309 ++++++
 apps/lib/curses/pdcurses/pdcurses/window.c   |  562 +++++++++++
 62 files changed, 13596 insertions(+)
 create mode 100644 apps/lib/curses/pdcurses/Makefile
 create mode 100644 apps/lib/curses/pdcurses/Makefile.include
 create mode 100644 apps/lib/curses/pdcurses/backend/Makefile
 create mode 100644 apps/lib/curses/pdcurses/backend/barebox.h
 create mode 100644 apps/lib/curses/pdcurses/backend/config.h
 create mode 100644 apps/lib/curses/pdcurses/backend/pdcdisp.c
 create mode 100644 apps/lib/curses/pdcurses/backend/pdcgetsc.c
 create mode 100644 apps/lib/curses/pdcurses/backend/pdckbd.c
 create mode 100644 apps/lib/curses/pdcurses/backend/pdcscrn.c
 create mode 100644 apps/lib/curses/pdcurses/backend/pdcsetsc.c
 create mode 100644 apps/lib/curses/pdcurses/backend/pdcutil.c
 create mode 100644 apps/lib/curses/pdcurses/include/curses.h
 create mode 100644 apps/lib/curses/pdcurses/include/panel.h
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/Makefile
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/README
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/addch.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/addchstr.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/addstr.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/attr.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/beep.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/bkgd.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/border.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/clear.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/color.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/curspriv.h
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/debug.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/delch.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/deleteln.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/deprec.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/getch.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/getstr.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/getyx.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/inch.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/inchstr.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/initscr.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/inopts.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/insch.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/insstr.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/instr.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/kernel.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/keyname.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/mouse.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/move.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/outopts.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/overlay.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/pad.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/panel.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/printw.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/refresh.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/scanw.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/scr_dump.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/scroll.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/slk.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/term.h
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/termattr.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/terminfo.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/touch.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/util.c
 create mode 100644 apps/lib/curses/pdcurses/pdcurses/window.c

diff --git a/apps/lib/curses/Kconfig b/apps/lib/curses/Kconfig
index c6bc573..7852afb 100644
--- a/apps/lib/curses/Kconfig
+++ b/apps/lib/curses/Kconfig
@@ -6,9 +6,16 @@ if APP_LIB_CURSES
 choice
 	prompt "curses implementation"
 
+config APP_LIB_PDCURSES
+	bool "pdcurses"
+
 config APP_LIB_TINYCURSES
 	bool "tiny"
 
 endchoice
 
+config APP_LIB_PANEL
+	bool "panel"
+	depends on APP_LIB_PDCURSES
+
 endif
diff --git a/apps/lib/curses/Makefile b/apps/lib/curses/Makefile
index aeebdd5..ca094a0 100644
--- a/apps/lib/curses/Makefile
+++ b/apps/lib/curses/Makefile
@@ -1 +1,2 @@
 obj-$(CONFIG_APP_LIB_TINYCURSES) += tinycurses/
+obj-$(CONFIG_APP_LIB_PDCURSES) += pdcurses/
diff --git a/apps/lib/curses/Makefile.include b/apps/lib/curses/Makefile.include
index 8cf9d52..a694fe1 100644
--- a/apps/lib/curses/Makefile.include
+++ b/apps/lib/curses/Makefile.include
@@ -1,3 +1,4 @@
+inc-$(CONFIG_APP_LIB_PDCURSES) += $(srctree)/apps/lib/curses/pdcurses/Makefile.include
 inc-$(CONFIG_APP_LIB_TINYCURSES) += $(srctree)/apps/lib/curses/tinycurses/Makefile.include
 
 include $(inc-y)
diff --git a/apps/lib/curses/pdcurses/Makefile b/apps/lib/curses/pdcurses/Makefile
new file mode 100644
index 0000000..3707947
--- /dev/null
+++ b/apps/lib/curses/pdcurses/Makefile
@@ -0,0 +1,89 @@
+#ifeq (y,y)
+#INCLUDES += -D_LP64=0 -Icurses/PDCurses-3.4 -Icurses/pdcurses-backend -Icurses/menu -Icurses/form
+#endif
+
+
+obj-y += pdcurses/
+obj-y += backend/
+
+includes-y += pdcurses-backend/nc_alloc.h
+includes-y += pdcurses-backend/ncurses_cfg.h
+includes-y += PDCurses-3.4/curses.h
+includes-y += PDCurses-3.4/term.h
+includes-y += PDCurses-3.4/panel.h
+includes-y += menu/eti.h
+includes-y += menu/menu.h
+includes-y += menu/mf_common.h
+includes-y += form/form.h
+
+libpanel-y += PDCurses-3.4/pdcurses/panel.o
+
+libmenu-y += menu/m_req_name.o
+libmenu-y += menu/m_item_nam.o
+libmenu-y += menu/m_pad.o
+libmenu-y += menu/m_cursor.o
+libmenu-y += menu/m_item_new.o
+libmenu-y += menu/m_attribs.o
+libmenu-y += menu/m_item_opt.o
+libmenu-y += menu/m_format.o
+libmenu-y += menu/m_post.o
+libmenu-y += menu/m_userptr.o
+libmenu-y += menu/m_item_cur.o
+libmenu-y += menu/m_driver.o
+libmenu-y += menu/m_sub.o
+libmenu-y += menu/m_win.o
+libmenu-y += menu/m_global.o
+libmenu-y += menu/m_item_vis.o
+libmenu-y += menu/m_new.o
+libmenu-y += menu/m_scale.o
+libmenu-y += menu/m_spacing.o
+libmenu-y += menu/m_opts.o
+libmenu-y += menu/m_pattern.o
+libmenu-y += menu/m_item_val.o
+libmenu-y += menu/m_hook.o
+libmenu-y += menu/m_item_use.o
+libmenu-y += menu/m_items.o
+libmenu-y += menu/m_item_top.o
+libform-y += form/frm_page.o
+libform-y += form/frm_opts.o
+libform-y += form/frm_def.o
+libform-y += form/frm_req_name.o
+libform-y += form/fty_alpha.o
+libform-y += form/frm_driver.o
+libform-y += form/fld_user.o
+libform-y += form/frm_win.o
+libform-y += form/fld_newftyp.o
+#libform-y += form/fty_regex.o
+libform-y += form/fld_stat.o
+libform-y += form/fld_pad.o
+libform-y += form/fld_current.o
+libform-y += form/frm_post.o
+#libform-y += form/f_trace.o
+libform-y += form/fty_generic.o
+libform-y += form/fld_page.o
+libform-y += form/frm_hook.o
+libform-y += form/frm_scale.o
+libform-y += form/fty_int.o
+libform-y += form/fty_alnum.o
+libform-y += form/frm_cursor.o
+#libform-y += form/fty_ipv4.o
+libform-y += form/fld_link.o
+libform-y += form/fld_arg.o
+libform-y += form/fld_move.o
+libform-y += form/fld_def.o
+libform-y += form/fld_type.o
+libform-y += form/fld_max.o
+libform-y += form/fld_ftlink.o
+libform-y += form/fld_ftchoice.o
+libform-y += form/fld_info.o
+libform-y += form/frm_user.o
+#libform-y += form/fty_num.o
+libform-y += form/frm_sub.o
+libform-y += form/fty_enum.o
+libform-y += form/frm_data.o
+libform-y += form/fld_opts.o
+libform-y += form/fld_attr.o
+libform-y += form/fld_dup.o
+libform-y += form/fld_just.o
+
+app-y += $(curses-y)
diff --git a/apps/lib/curses/pdcurses/Makefile.include b/apps/lib/curses/pdcurses/Makefile.include
new file mode 100644
index 0000000..822f12f
--- /dev/null
+++ b/apps/lib/curses/pdcurses/Makefile.include
@@ -0,0 +1 @@
+APP_CPPFLAGS-y += -I$(srctree)/apps/lib/curses/pdcurses/include/ -D_LP64=0
diff --git a/apps/lib/curses/pdcurses/backend/Makefile b/apps/lib/curses/pdcurses/backend/Makefile
new file mode 100644
index 0000000..cf6eb3f
--- /dev/null
+++ b/apps/lib/curses/pdcurses/backend/Makefile
@@ -0,0 +1,6 @@
+app-y += pdcdisp.o
+app-y += pdcgetsc.o
+app-y += pdckbd.o
+app-y += pdcscrn.o
+app-y += pdcsetsc.o
+app-y += pdcutil.o
diff --git a/apps/lib/curses/pdcurses/backend/barebox.h b/apps/lib/curses/pdcurses/backend/barebox.h
new file mode 100644
index 0000000..2a16c7e
--- /dev/null
+++ b/apps/lib/curses/pdcurses/backend/barebox.h
@@ -0,0 +1,21 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under BSD
+ */
+
+#include <curses.h>
+#include <stdlib.h>
+#include <ctype.h>
+#include <unistd.h>
+#include <string.h>
+#include "../pdcurses/curspriv.h"
+
+extern unsigned char *pdc_atrtab;
+extern short curstoreal[16], realtocurs[16];
+
+#ifdef DEBUG
+#define debug(fmt, arg...) printf(fmt, ## arg)
+#else
+#define debug(fmt, arg...)
+#endif
diff --git a/apps/lib/curses/pdcurses/backend/config.h b/apps/lib/curses/pdcurses/backend/config.h
new file mode 100644
index 0000000..e08c710
--- /dev/null
+++ b/apps/lib/curses/pdcurses/backend/config.h
@@ -0,0 +1,136 @@
+/* config.h.  Generated from config.h.in by configure.  */
+/* config.h.in.  Generated from configure.ac by autoheader.  */
+
+#define PDC_RGB
+
+/* Define if you have the <DECkeySym.h> header file */
+/* #undef HAVE_DECKEYSYM_H */
+
+/* Define to 1 if you have the <dlfcn.h> header file. */
+/* #undef HAVE_DLFCN_H */
+
+/* Define to 1 if you have the <dl.h> header file. */
+/* #undef HAVE_DL_H */
+
+/* Define to 1 if you have the <fcntl.h> header file. */
+/* #undef HAVE_FCNTL_H */
+
+/* Define to 1 if you have the <inttypes.h> header file. */
+/* #undef HAVE_INTTYPES_H */
+
+/* Define to 1 if you have the <memory.h> header file. */
+/* #undef HAVE_MEMORY_H */
+
+/* Define to 1 if you have the `poll' function. */
+/* #undef HAVE_POLL */
+
+/* Define to 1 if you have the <stdint.h> header file. */
+#define HAVE_STDINT_H 1
+
+/* Define to 1 if you have the <stdlib.h> header file. */
+#define HAVE_STDLIB_H 1
+
+/* Define to 1 if you have the <strings.h> header file. */
+/* #undef HAVE_STRINGS_H */
+
+/* Define to 1 if you have the <string.h> header file. */
+#define HAVE_STRING_H 1
+
+/* Define if you have the <Sunkeysym.h> header file */
+/* #undef HAVE_SUNKEYSYM_H */
+
+/* Define to 1 if you have the <sys/select.h> header file. */
+/* #undef HAVE_SYS_SELECT_H */
+
+/* Define to 1 if you have the <sys/stat.h> header file. */
+/* #undef HAVE_SYS_STAT_H */
+
+/* Define to 1 if you have the <sys/time.h> header file. */
+/* #undef HAVE_SYS_TIME_H */
+
+/* Define to 1 if you have the <sys/types.h> header file. */
+#define HAVE_SYS_TYPES_H 1
+
+/* Define to 1 if you have the <unistd.h> header file. */
+#define HAVE_UNISTD_H 1
+
+/* Define to 1 if you have the `usleep' function. */
+#define HAVE_USLEEP 1
+
+/* Define to 1 if you have the `vsnprintf' function. */
+#define HAVE_VSNPRINTF 1
+
+/* Define to 1 if you have the `vsscanf' function. */
+/* #undef HAVE_VSSCANF */
+
+/* Define if you have this defined in <keysym.h> */
+/* #undef HAVE_XK_KP_BEGIN */
+
+/* Define if you have this defined in <keysym.h> */
+/* #undef HAVE_XK_KP_DELETE */
+
+/* Define if you have this defined in <keysym.h> */
+/* #undef HAVE_XK_KP_DOWN */
+
+/* Define if you have this defined in <keysym.h> */
+/* #undef HAVE_XK_KP_END */
+
+/* Define if you have this defined in <keysym.h> */
+/* #undef HAVE_XK_KP_HOME */
+
+/* Define if you have this defined in <keysym.h> */
+/* #undef HAVE_XK_KP_INSERT */
+
+/* Define if you have this defined in <keysym.h> */
+/* #undef HAVE_XK_KP_LEFT */
+
+/* Define if you have this defined in <keysym.h> */
+/* #undef HAVE_XK_KP_NEXT */
+
+/* Define if you have this defined in <keysym.h> */
+/* #undef HAVE_XK_KP_PRIOR */
+
+/* Define if you have this defined in <keysym.h> */
+/* #undef HAVE_XK_KP_RIGHT */
+
+/* Define if you have this defined in <keysym.h> */
+/* #undef HAVE_XK_KP_UP */
+
+/* Define if you have the <xpm.h> header file */
+/* #undef HAVE_XPM_H */
+
+/* Define to the address where bug reports for this package should be sent. */
+#define PACKAGE_BUGREPORT "barebox@@lists.infradead.org"
+
+/* Define to the full name of this package. */
+#define PACKAGE_NAME "PDCurses"
+
+/* Define to the full name and version of this package. */
+#define PACKAGE_STRING "PDCurses 3.4"
+
+/* Define to the one symbol short name of this package. */
+#define PACKAGE_TARNAME "PDCurses"
+
+/* Define to the version of this package. */
+#define PACKAGE_VERSION "3.4"
+
+/* Define as the system defined limit for number of signals */
+#define PDC_MAX_SIGNALS NSIG
+
+/* Define as the return type of signal handlers (`int' or `void'). */
+#define RETSIGTYPE void
+
+/* Define to 1 if you have the ANSI C header files. */
+#define STDC_HEADERS 1
+
+/* Define to 1 if you can safely include both <sys/time.h> and <time.h>. */
+//#define TIME_WITH_SYS_TIME 1
+
+/* Define if you want to use neXtaw library */
+/* #undef USE_NEXTAW */
+
+/* Define if you want to use Xaw3d library */
+/* #undef USE_XAW3D */
+
+/* Define XPointer is typedefed in X11/Xlib.h */
+/* #undef XPOINTER_TYPEDEFED */
diff --git a/apps/lib/curses/pdcurses/backend/pdcdisp.c b/apps/lib/curses/pdcurses/backend/pdcdisp.c
new file mode 100644
index 0000000..9d629d0
--- /dev/null
+++ b/apps/lib/curses/pdcurses/backend/pdcdisp.c
@@ -0,0 +1,107 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under BSD
+ */
+
+#include "barebox.h"
+#include <utils/ansi.h>
+
+chtype acs_map[128] =
+	{
+	' ',	' ',	' ',	' ',	' ',	' ',	' ',	' ',
+	' ',	' ',	' ',	' ',	' ',	' ',	' ',	' ',
+	' ',	' ',	' ',	' ',	' ',	' ',	' ',	' ',
+	' ',	' ',	' ',	' ',	' ',	' ',	' ',	' ',
+	' ',	' ',	' ',	' ',	' ',	' ',	' ',	' ',
+	' ',	' ',	' ',	'>',	'<',	'^',	'v',	' ',
+	'#',	' ',	' ',	' ',	' ',	' ',	' ',	' ',
+	' ',	' ',	' ',	' ',	' ',	' ',	' ',	' ',
+	' ',	' ',	' ',	' ',	' ',	' ',	' ',	' ',
+	' ',	' ',	' ',	' ',	' ',	' ',	' ',	' ',
+	' ',	' ',	' ',	' ',	' ',	' ',	' ',	' ',
+	' ',	' ',	' ',	' ',	' ',	' ',	' ',	' ',
+	'+',	':',	' ',	' ',	' ',	' ',	'\\',   '#',
+	'#',	'#',	'+',	'+',	'+',	'+',	'+',	'~',
+	'-',	'-',	'-',	'_',	'+',	'+',	'+',	'+',
+	'|',	'<',	'>',	'*',	'!',	'f',	'o',	' ',
+	};
+
+/* position hardware cursor at (y, x) */
+void PDC_gotoyx(int row, int col)
+{
+	PDC_LOG(("PDC_gotoyx() - called: row %d col %d\n", row, col));
+
+	ansi_set_cursor(row, col);
+}
+
+struct ansi_set {
+	bool is_bold;
+	bool is_blink;
+	short cur_pair;
+};
+
+static void set_attr(chtype attr, struct ansi_set *s)
+{
+	short fg;
+	short bg;
+	short cur_pair = PAIR_NUMBER(attr);
+	bool is_bold = attr & A_BOLD;
+	bool is_reverse = FALSE;
+	bool is_blink = attr & A_BLINK;
+
+	if (s->cur_pair != cur_pair) {
+		PDC_pair_content(cur_pair, &fg, &bg );
+		ansi_set_color(fg + 30, bg + 40);
+		s->cur_pair = cur_pair;
+	}
+
+	/* Reverse flag = highlighted selection XOR A_REVERSE set */
+	is_reverse ^= !!(attr & A_REVERSE);
+
+	if (s->is_bold != is_bold) {
+		ansi_bold(is_bold);
+		s->is_bold = is_bold;
+	}
+
+	if (s->is_blink != is_blink) {
+		ansi_blink(is_blink);
+		s->is_blink = is_blink;
+	}
+
+	/* always set it ansi issue with bold */
+	ansi_reverse(is_reverse);
+}
+/* update the given physical line to look like the corresponding line in
+   curscr */
+
+void PDC_transform_line(int lineno, int x, int len, const chtype *srcp)
+{
+	int j, ch;
+	chtype attr = srcp[0] & A_ATTRIBUTES;
+	chtype prev_attr = attr;
+	struct ansi_set s;
+
+	/* ensure different */
+	s.cur_pair = PAIR_NUMBER(attr) + 1;
+
+	PDC_LOG(("PDC_transform_line() - called: line %d, len %d\n", lineno, len));
+
+	ansi_set_cursor(lineno, x);
+	set_attr(attr, &s);
+
+	for (j = 0; j < len; j++) {
+		ch = srcp[j];
+		attr = ch & A_ATTRIBUTES;
+
+		if (attr != prev_attr) {
+			set_attr(attr, &s);
+			prev_attr = attr;
+		}
+
+		if (ch & A_ALTCHARSET && !(ch & 0xff80))
+			ch = acs_map[ch & 0x7f];
+
+		putchar(ch & A_CHARTEXT);
+	}
+}
diff --git a/apps/lib/curses/pdcurses/backend/pdcgetsc.c b/apps/lib/curses/pdcurses/backend/pdcgetsc.c
new file mode 100644
index 0000000..e09a268
--- /dev/null
+++ b/apps/lib/curses/pdcurses/backend/pdcgetsc.c
@@ -0,0 +1,47 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under BSD
+ */
+
+#include "barebox.h"
+#include <utils/termcap.h>
+
+/* return width of screen/viewport */
+int PDC_get_columns(void)
+{
+	int cols = 80;
+	int rows;
+
+	PDC_LOG(("PDC_get_columns() - called\n"));
+
+	term_get_size(&rows, &cols);
+
+	PDC_LOG(("PDC_get_columns() - returned: cols %d\n", cols));
+
+	return cols;
+}
+
+/* get the cursor size/shape */
+int PDC_get_cursor_mode(void)
+{
+	PDC_LOG(("PDC_get_cursor_mode() - called\n"));
+
+	/* only have one cursor type */
+	return SP->visibility;
+}
+
+/* return number of screen rows */
+int PDC_get_rows(void)
+{
+	int cols;
+	int rows = 25;
+
+	PDC_LOG(("PDC_get_rows() - called\n"));
+
+	term_get_size(&rows, &cols);
+
+	PDC_LOG(("PDC_get_rows() - returned: rows %d\n", rows));
+
+	return rows;
+}
diff --git a/apps/lib/curses/pdcurses/backend/pdckbd.c b/apps/lib/curses/pdcurses/backend/pdckbd.c
new file mode 100644
index 0000000..b9030a2
--- /dev/null
+++ b/apps/lib/curses/pdcurses/backend/pdckbd.c
@@ -0,0 +1,161 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under BSD
+ */
+
+#include "barebox.h"
+#include <utils/getchar.h>
+
+unsigned long pdc_key_modifiers = 0L;
+
+static struct {
+	const char *seq;
+	int val;
+} escape_codes[] = {
+	{ "OA", KEY_UP },
+	{ "OB", KEY_DOWN },
+	{ "OC", KEY_RIGHT },
+	{ "OD", KEY_LEFT },
+	{ "[A", KEY_UP },
+	{ "[B", KEY_DOWN },
+	{ "[C", KEY_RIGHT },
+	{ "[D", KEY_LEFT },
+	{ "[F", KEY_END },
+	{ "[H", KEY_HOME },
+	{ "[1~", KEY_HOME },
+	{ "[2~", KEY_IC },
+	{ "[3~", KEY_DC },
+	{ "[5~", KEY_PPAGE },
+	{ "[6~", KEY_NPAGE },
+	{ "OP", KEY_F(1) },
+	{ "OQ", KEY_F(2) },
+	{ "OR", KEY_F(3) },
+	{ "OS", KEY_F(4) },
+	{ "[15~", KEY_F(5) },
+	{ "[17~", KEY_F(6) },
+	{ "[18~", KEY_F(7) },
+	{ "[19~", KEY_F(8) },
+	{ "[20~", KEY_F(9) },
+	{ "[21~", KEY_F(10) },
+	{ "[23~", KEY_F(11) },
+	{ "[24~", KEY_F(12) },
+	{ NULL },
+};
+
+#define ARRAY_SIZE(arr)                (sizeof(arr) / sizeof((arr)[0]))
+
+static int read_escape(void)
+{
+	char buf[6];
+	int i = 0;
+
+	buf[i++] = getchar_timeout(10);
+	buf[i++] = getchar_timeout(10);
+
+	if (isdigit(buf[1])) {
+		for (; i < ARRAY_SIZE(buf); i++) {
+			buf[i] = getchar_timeout(10);
+			if (buf[i] < 0)
+				break;
+		}
+
+		if (i == ARRAY_SIZE(buf))
+			goto err;
+	}
+
+	buf[i] = 0;
+	debug("buf = ");
+	for (i = 0; i < ARRAY_SIZE(buf); i++)
+		debug("%02x", buf[i]);
+	debug("\n");
+
+	for (i = 0; i < ARRAY_SIZE(escape_codes); i++) {
+		if (!strcmp(buf, escape_codes[i].seq)) {
+			debug("found 0x%x\n", escape_codes[i].val);
+			return escape_codes[i].val;
+		}
+	}
+
+err:
+	debug("buf = ");
+	for (i = 0; i < ARRAY_SIZE(buf); i++)
+		debug("%02x ", buf[i]);
+	debug("\n");
+
+	return 0;
+}
+
+static int readkey(void)
+{
+	int ch = getchar();
+
+	debug("buf = %x\n", ch);
+	switch(ch) {
+	case '\r':
+		return KEY_ENTER;
+	case '\n':
+		return KEY_ENTER;
+	case 8:
+		return KEY_BACKSPACE;
+	case 27:
+		return read_escape();
+
+	default:
+		return ch;
+	}
+}
+
+void PDC_set_keyboard_binary(bool on)
+{
+	PDC_LOG(("PDC_set_keyboard_binary() - called\n"));
+}
+
+/* check if a key event is waiting */
+
+bool PDC_check_key(void)
+{
+	if (tstc())
+		return TRUE;
+
+	return FALSE;
+}
+
+/* return the next available key event */
+
+int PDC_get_key(void)
+{
+	int c = 0;
+
+	if (tstc())
+		c = readkey();
+
+	if (c == 0)
+		c = ERR;
+
+	SP->key_code = c >= KEY_MIN;
+
+	debug("key buf = 0x%x\n", c);
+
+	return c;
+}
+
+/* discard any pending keyboard input -- this is the core
+   routine for flushinp() */
+
+void PDC_flushinp(void)
+{
+	PDC_LOG(("PDC_flushinp() - called\n"));
+
+	while (PDC_check_key()) PDC_get_key();
+}
+
+int PDC_mouse_set(void)
+{
+	return ERR;
+}
+
+int PDC_modifiers_set(void)
+{
+	return OK;
+}
diff --git a/apps/lib/curses/pdcurses/backend/pdcscrn.c b/apps/lib/curses/pdcurses/backend/pdcscrn.c
new file mode 100644
index 0000000..904d573
--- /dev/null
+++ b/apps/lib/curses/pdcurses/backend/pdcscrn.c
@@ -0,0 +1,162 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under BSD
+ */
+
+#include <utils/termcap.h>
+#include <utils/ansi.h>
+#include "barebox.h"
+
+#ifdef CHTYPE_LONG
+# define PDC_OFFSET 32
+#else
+# define PDC_OFFSET  8
+#endif
+
+/* COLOR_PAIR to attribute encoding table. */
+
+unsigned char *pdc_atrtab = (unsigned char *)NULL;
+
+short curstoreal[16], realtocurs[16] =
+{
+    COLOR_BLACK, COLOR_BLUE, COLOR_GREEN, COLOR_CYAN, COLOR_RED,
+    COLOR_MAGENTA, COLOR_YELLOW, COLOR_WHITE, COLOR_BLACK + 8,
+    COLOR_BLUE + 8, COLOR_GREEN + 8, COLOR_CYAN + 8, COLOR_RED + 8,
+    COLOR_MAGENTA + 8, COLOR_YELLOW + 8, COLOR_WHITE + 8
+};
+
+/* close the physical screen -- may restore the screen to its state
+   before PDC_scr_open(); miscellaneous cleanup */
+
+void PDC_scr_close(void)
+{
+	PDC_LOG(("PDC_scr_close() - called\n"));
+
+	reset_shell_mode();
+
+	if (SP->visibility != 1)
+		curs_set(1);
+
+	ansi_set_cursor(0, 0);
+	ansi_set_color(39, 49);
+	ansi_clear();
+}
+
+void PDC_scr_free(void)
+{
+	free(SP);
+	free(pdc_atrtab);
+	pdc_atrtab = (unsigned char *)NULL;
+}
+
+/* open the physical screen -- allocate SP, miscellaneous intialization,
+   and may save the existing screen for later restoration */
+
+int PDC_scr_open(int argc, char **argv)
+{
+	int i;
+	int cols = 80;
+	int rows = 25;
+
+	PDC_LOG(("PDC_scr_open() - called\n"));
+
+
+	SP = calloc(1, sizeof(SCREEN));
+	pdc_atrtab = calloc(PDC_COLOR_PAIRS * PDC_OFFSET, 1);
+
+	if (!SP || !pdc_atrtab)
+	return ERR;
+
+	for (i = 0; i < 16; i++)
+		curstoreal[realtocurs[i]] = i;
+
+	SP->orig_attr = FALSE;
+
+	term_get_size(&rows, &cols);
+	SP->lines = rows;
+	SP->cols = cols;
+
+	ansi_clear();
+
+	return OK;
+}
+
+/* the core of resize_term() */
+
+int PDC_resize_screen(int nlines, int ncols)
+{
+	PDC_LOG(("PDC_resize_screen() - called. Lines: %d Cols: %d\n",
+	     nlines, ncols));
+
+	return ERR;
+}
+
+void PDC_reset_prog_mode(void)
+{
+        PDC_LOG(("PDC_reset_prog_mode() - called.\n"));
+}
+
+void PDC_reset_shell_mode(void)
+{
+        PDC_LOG(("PDC_reset_shell_mode() - called.\n"));
+}
+
+void PDC_restore_screen_mode(int i)
+{
+}
+
+void PDC_save_screen_mode(int i)
+{
+}
+
+void PDC_init_pair(short pair, short fg, short bg)
+{
+	unsigned char att, temp_bg;
+	chtype i;
+
+	fg = curstoreal[fg];
+	bg = curstoreal[bg];
+
+	for (i = 0; i < PDC_OFFSET; i++) {
+		att = fg | (bg << 4);
+
+		if (i & (A_REVERSE >> PDC_ATTR_SHIFT))
+			att = bg | (fg << 4);
+		if (i & (A_UNDERLINE >> PDC_ATTR_SHIFT))
+			att = 1;
+		if (i & (A_INVIS >> PDC_ATTR_SHIFT)) {
+			temp_bg = att >> 4;
+			att = temp_bg << 4 | temp_bg;
+		}
+		if (i & (A_BOLD >> PDC_ATTR_SHIFT))
+			att |= 8;
+		if (i & (A_BLINK >> PDC_ATTR_SHIFT))
+			att |= 128;
+
+		pdc_atrtab[pair * PDC_OFFSET + i] = att;
+	}
+}
+
+int PDC_pair_content(short pair, short *fg, short *bg)
+{
+	*fg = realtocurs[pdc_atrtab[pair * PDC_OFFSET] & 0x0F];
+	*bg = realtocurs[(pdc_atrtab[pair * PDC_OFFSET] & 0xF0) >> 4];
+
+	return OK;
+}
+
+bool PDC_can_change_color(void)
+{
+	return FALSE;
+}
+
+int PDC_color_content(short color, short *red, short *green, short *blue)
+{
+	return ERR;
+}
+
+int PDC_init_color(short color, short red, short green, short blue)
+{
+	return ERR;
+}
diff --git a/apps/lib/curses/pdcurses/backend/pdcsetsc.c b/apps/lib/curses/pdcurses/backend/pdcsetsc.c
new file mode 100644
index 0000000..79db8fb
--- /dev/null
+++ b/apps/lib/curses/pdcurses/backend/pdcsetsc.c
@@ -0,0 +1,35 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under BSD
+ */
+
+#include <utils/ansi.h>
+#include "barebox.h"
+
+int PDC_curs_set(int visibility)
+{
+	int ret_vis;
+
+	PDC_LOG(("PDC_curs_set() - called: visibility=%d\n", visibility));
+
+	ret_vis = SP->visibility;
+	SP->visibility = visibility;
+
+	ansi_cursor_enable(visibility);
+
+	return ret_vis;
+}
+
+int PDC_set_blink(bool blinkon)
+{
+	if (pdc_color_started)
+		COLORS = 16;
+
+	return ERR;
+}
+
+void PDC_set_title(const char *title)
+{
+	  printf("\033]0;%s", title);
+}
diff --git a/apps/lib/curses/pdcurses/backend/pdcutil.c b/apps/lib/curses/pdcurses/backend/pdcutil.c
new file mode 100644
index 0000000..d171c01
--- /dev/null
+++ b/apps/lib/curses/pdcurses/backend/pdcutil.c
@@ -0,0 +1,26 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under BSD
+ */
+
+#include "barebox.h"
+
+void PDC_beep(void)
+{
+	PDC_LOG(("PDC_beep() - called\n"));
+
+	printf("\a");
+}
+
+void PDC_napms(int ms)
+{
+	PDC_LOG(("PDC_napms() - called: ms=%d\n", ms));
+
+	usleep(ms * 1000);
+}
+
+const char *PDC_sysname(void)
+{
+	return "barebox";
+}
diff --git a/apps/lib/curses/pdcurses/include/curses.h b/apps/lib/curses/pdcurses/include/curses.h
new file mode 100644
index 0000000..234c5fe
--- /dev/null
+++ b/apps/lib/curses/pdcurses/include/curses.h
@@ -0,0 +1,1378 @@
+/* Public Domain Curses */
+
+/* $Id: curses.h,v 1.295 2008/07/15 17:13:25 wmcbrine Exp $ */
+
+/*----------------------------------------------------------------------*
+ *                              PDCurses                                *
+ *----------------------------------------------------------------------*/
+
+#ifndef __PDCURSES__
+#define __PDCURSES__ 1
+
+/*man-start**************************************************************
+
+PDCurses definitions list:  (Only define those needed)
+
+    XCURSES         True if compiling for X11.
+    PDC_RGB         True if you want to use RGB color definitions
+                    (Red = 1, Green = 2, Blue = 4) instead of BGR.
+    PDC_WIDE        True if building wide-character support.
+    PDC_DLL_BUILD   True if building a Win32 DLL.
+    NCURSES_MOUSE_VERSION   Use the ncurses mouse API instead
+                            of PDCurses' traditional mouse API.
+
+PDCurses portable platform definitions list:
+
+    PDC_BUILD       Defines API build version.
+    PDCURSES        Enables access to PDCurses-only routines.
+    XOPEN           Always true.
+    SYSVcurses      True if you are compiling for SYSV portability.
+    BSDcurses       True if you are compiling for BSD portability.
+
+**man-end****************************************************************/
+
+#define PDC_BUILD 3401
+#define PDCURSES        1      /* PDCurses-only routines */
+#define XOPEN           1      /* X/Open Curses routines */
+#define SYSVcurses      1      /* System V Curses routines */
+#define BSDcurses       1      /* BSD Curses routines */
+#define CHTYPE_LONG     1      /* size of chtype; long */
+#define PDC_RGB			/* RGB mode ansi terminal */
+
+/*----------------------------------------------------------------------*/
+
+#include <stdarg.h>
+#include <stddef.h>
+#include <stdio.h>             /* Required by X/Open usage below */
+
+#ifdef PDC_WIDE
+# include <wchar.h>
+#endif
+
+#if defined(__cplusplus) || defined(__cplusplus__) || defined(__CPLUSPLUS)
+extern "C"
+{
+# define bool _bool
+#endif
+
+/*----------------------------------------------------------------------
+ *
+ *  PDCurses Manifest Constants
+ *
+ */
+
+#ifndef FALSE
+# define FALSE 0
+#endif
+#ifndef TRUE
+# define TRUE 1
+#endif
+#ifndef NULL
+# define NULL (void *)0
+#endif
+#ifndef ERR
+# define ERR (-1)
+#endif
+#ifndef OK
+# define OK 0
+#endif
+
+/*----------------------------------------------------------------------
+ *
+ *  PDCurses Type Declarations
+ *
+ */
+
+//typedef unsigned char bool;    /* PDCurses Boolean type */
+
+#ifdef CHTYPE_LONG
+# if _LP64
+typedef unsigned int chtype;
+# else
+typedef unsigned long chtype;  /* 16-bit attr + 16-bit char */
+# endif
+#else
+typedef unsigned short chtype; /* 8-bit attr + 8-bit char */
+#endif
+
+#ifdef PDC_WIDE
+typedef chtype cchar_t;
+#endif
+
+typedef chtype attr_t;
+
+/*----------------------------------------------------------------------
+ *
+ *  PDCurses Mouse Interface -- SYSVR4, with extensions
+ *
+ */
+
+typedef struct
+{
+    int x;           /* absolute column, 0 based, measured in characters */
+    int y;           /* absolute row, 0 based, measured in characters */
+    short button[3]; /* state of each button */
+    int changes;     /* flags indicating what has changed with the mouse */
+} MOUSE_STATUS;
+
+#define BUTTON_RELEASED         0x0000
+#define BUTTON_PRESSED          0x0001
+#define BUTTON_CLICKED          0x0002
+#define BUTTON_DOUBLE_CLICKED   0x0003
+#define BUTTON_TRIPLE_CLICKED   0x0004
+#define BUTTON_MOVED            0x0005  /* PDCurses */
+#define WHEEL_SCROLLED          0x0006  /* PDCurses */
+#define BUTTON_ACTION_MASK      0x0007  /* PDCurses */
+
+#define PDC_BUTTON_SHIFT        0x0008  /* PDCurses */
+#define PDC_BUTTON_CONTROL      0x0010  /* PDCurses */
+#define PDC_BUTTON_ALT          0x0020  /* PDCurses */
+#define BUTTON_MODIFIER_MASK    0x0038  /* PDCurses */
+
+#define MOUSE_X_POS             (Mouse_status.x)
+#define MOUSE_Y_POS             (Mouse_status.y)
+
+/*
+ * Bits associated with the .changes field:
+ *   3         2         1         0
+ * 210987654321098765432109876543210
+ *                                 1 <- button 1 has changed
+ *                                10 <- button 2 has changed
+ *                               100 <- button 3 has changed
+ *                              1000 <- mouse has moved
+ *                             10000 <- mouse position report
+ *                            100000 <- mouse wheel up
+ *                           1000000 <- mouse wheel down
+ */
+
+#define PDC_MOUSE_MOVED         0x0008
+#define PDC_MOUSE_POSITION      0x0010
+#define PDC_MOUSE_WHEEL_UP      0x0020
+#define PDC_MOUSE_WHEEL_DOWN    0x0040
+
+#define A_BUTTON_CHANGED        (Mouse_status.changes & 7)
+#define MOUSE_MOVED             (Mouse_status.changes & PDC_MOUSE_MOVED)
+#define MOUSE_POS_REPORT        (Mouse_status.changes & PDC_MOUSE_POSITION)
+#define BUTTON_CHANGED(x)       (Mouse_status.changes & (1 << ((x) - 1)))
+#define BUTTON_STATUS(x)        (Mouse_status.button[(x) - 1])
+#define MOUSE_WHEEL_UP          (Mouse_status.changes & PDC_MOUSE_WHEEL_UP)
+#define MOUSE_WHEEL_DOWN        (Mouse_status.changes & PDC_MOUSE_WHEEL_DOWN)
+
+/* mouse bit-masks */
+
+#define BUTTON1_RELEASED        0x00000001L
+#define BUTTON1_PRESSED         0x00000002L
+#define BUTTON1_CLICKED         0x00000004L
+#define BUTTON1_DOUBLE_CLICKED  0x00000008L
+#define BUTTON1_TRIPLE_CLICKED  0x00000010L
+#define BUTTON1_MOVED           0x00000010L /* PDCurses */
+
+#define BUTTON2_RELEASED        0x00000020L
+#define BUTTON2_PRESSED         0x00000040L
+#define BUTTON2_CLICKED         0x00000080L
+#define BUTTON2_DOUBLE_CLICKED  0x00000100L
+#define BUTTON2_TRIPLE_CLICKED  0x00000200L
+#define BUTTON2_MOVED           0x00000200L /* PDCurses */
+
+#define BUTTON3_RELEASED        0x00000400L
+#define BUTTON3_PRESSED         0x00000800L
+#define BUTTON3_CLICKED         0x00001000L
+#define BUTTON3_DOUBLE_CLICKED  0x00002000L
+#define BUTTON3_TRIPLE_CLICKED  0x00004000L
+#define BUTTON3_MOVED           0x00004000L /* PDCurses */
+
+/* For the ncurses-compatible functions only, BUTTON4_PRESSED and 
+   BUTTON5_PRESSED are returned for mouse scroll wheel up and down; 
+   otherwise PDCurses doesn't support buttons 4 and 5 */
+
+#define BUTTON4_RELEASED        0x00008000L
+#define BUTTON4_PRESSED         0x00010000L
+#define BUTTON4_CLICKED         0x00020000L
+#define BUTTON4_DOUBLE_CLICKED  0x00040000L
+#define BUTTON4_TRIPLE_CLICKED  0x00080000L
+
+#define BUTTON5_RELEASED        0x00100000L
+#define BUTTON5_PRESSED         0x00200000L
+#define BUTTON5_CLICKED         0x00400000L
+#define BUTTON5_DOUBLE_CLICKED  0x00800000L
+#define BUTTON5_TRIPLE_CLICKED  0x01000000L
+
+#define MOUSE_WHEEL_SCROLL      0x02000000L /* PDCurses */
+#define BUTTON_MODIFIER_SHIFT   0x04000000L /* PDCurses */
+#define BUTTON_MODIFIER_CONTROL 0x08000000L /* PDCurses */
+#define BUTTON_MODIFIER_ALT     0x10000000L /* PDCurses */
+
+#define ALL_MOUSE_EVENTS        0x1fffffffL
+#define REPORT_MOUSE_POSITION   0x20000000L
+
+/* ncurses mouse interface */
+
+typedef unsigned long mmask_t;
+
+typedef struct
+{
+        short id;       /* unused, always 0 */
+        int x, y, z;    /* x, y same as MOUSE_STATUS; z unused */
+        mmask_t bstate; /* equivalent to changes + button[], but
+                           in the same format as used for mousemask() */
+} MEVENT;
+
+#ifdef NCURSES_MOUSE_VERSION
+# define BUTTON_SHIFT   BUTTON_MODIFIER_SHIFT
+# define BUTTON_CONTROL BUTTON_MODIFIER_CONTROL
+# define BUTTON_CTRL    BUTTON_MODIFIER_CONTROL
+# define BUTTON_ALT     BUTTON_MODIFIER_ALT
+#else
+# define BUTTON_SHIFT   PDC_BUTTON_SHIFT
+# define BUTTON_CONTROL PDC_BUTTON_CONTROL
+# define BUTTON_ALT     PDC_BUTTON_ALT
+#endif
+
+/*----------------------------------------------------------------------
+ *
+ *  PDCurses Structure Definitions
+ *
+ */
+
+typedef struct _win       /* definition of a window */
+{
+    int   _cury;          /* current pseudo-cursor */
+    int   _curx;
+    int   _maxy;          /* max window coordinates */
+    int   _maxx;
+    int   _begy;          /* origin on screen */
+    int   _begx;
+    int   _flags;         /* window properties */
+    chtype _attrs;        /* standard attributes and colors */
+    chtype _bkgd;         /* background, normally blank */
+    bool  _clear;         /* causes clear at next refresh */
+    bool  _leaveit;       /* leaves cursor where it is */
+    bool  _scroll;        /* allows window scrolling */
+    bool  _nodelay;       /* input character wait flag */
+    bool  _immed;         /* immediate update flag */
+    bool  _sync;          /* synchronise window ancestors */
+    bool  _use_keypad;    /* flags keypad key mode active */
+    chtype **_y;          /* pointer to line pointer array */
+    int   *_firstch;      /* first changed character in line */
+    int   *_lastch;       /* last changed character in line */
+    int   _tmarg;         /* top of scrolling region */
+    int   _bmarg;         /* bottom of scrolling region */
+    int   _delayms;       /* milliseconds of delay for getch() */
+    int   _parx, _pary;   /* coords relative to parent (0,0) */
+    struct _win *_parent; /* subwin's pointer to parent win */
+} WINDOW;
+
+/* Avoid using the SCREEN struct directly -- use the corresponding 
+   functions if possible. This struct may eventually be made private. */
+
+typedef struct
+{
+    bool  alive;          /* if initscr() called, and not endwin() */
+    bool  autocr;         /* if cr -> lf */
+    bool  cbreak;         /* if terminal unbuffered */
+    bool  echo;           /* if terminal echo */
+    bool  raw_inp;        /* raw input mode (v. cooked input) */
+    bool  raw_out;        /* raw output mode (7 v. 8 bits) */
+    bool  audible;        /* FALSE if the bell is visual */
+    bool  mono;           /* TRUE if current screen is mono */
+    bool  resized;        /* TRUE if TERM has been resized */
+    bool  orig_attr;      /* TRUE if we have the original colors */
+    short orig_fore;      /* original screen foreground color */
+    short orig_back;      /* original screen foreground color */
+    int   cursrow;        /* position of physical cursor */
+    int   curscol;        /* position of physical cursor */
+    int   visibility;     /* visibility of cursor */
+    int   orig_cursor;    /* original cursor size */
+    int   lines;          /* new value for LINES */
+    int   cols;           /* new value for COLS */
+    unsigned long _trap_mbe;       /* trap these mouse button events */
+    unsigned long _map_mbe_to_key; /* map mouse buttons to slk */
+    int   mouse_wait;              /* time to wait (in ms) for a
+                                      button release after a press, in 
+                                      order to count it as a click */
+    int   slklines;                /* lines in use by slk_init() */
+    WINDOW *slk_winptr;            /* window for slk */
+    int   linesrippedoff;          /* lines ripped off via ripoffline() */
+    int   linesrippedoffontop;     /* lines ripped off on 
+                                      top via ripoffline() */
+    int   delaytenths;             /* 1/10ths second to wait block
+                                      getch() for */
+    bool  _preserve;               /* TRUE if screen background
+                                      to be preserved */
+    int   _restore;                /* specifies if screen background
+                                      to be restored, and how */
+    bool  save_key_modifiers;      /* TRUE if each key modifiers saved
+                                      with each key press */
+    bool  return_key_modifiers;    /* TRUE if modifier keys are
+                                      returned as "real" keys */
+    bool  key_code;                /* TRUE if last key is a special key;
+                                      used internally by get_wch() */
+#ifdef XCURSES
+    int   XcurscrSize;    /* size of Xcurscr shared memory block */
+    bool  sb_on;
+    int   sb_viewport_y;
+    int   sb_viewport_x;
+    int   sb_total_y;
+    int   sb_total_x;
+    int   sb_cur_y;
+    int   sb_cur_x;
+#endif
+    short line_color;     /* color of line attributes - default -1 */
+} SCREEN;
+
+/*----------------------------------------------------------------------
+ *
+ *  PDCurses External Variables
+ *
+ */
+
+#ifdef PDC_DLL_BUILD
+# ifdef CURSES_LIBRARY
+#  define PDCEX __declspec(dllexport) extern
+# else
+#  define PDCEX __declspec(dllimport)
+# endif
+#else
+# define PDCEX extern
+#endif
+
+PDCEX  int          LINES;        /* terminal height */
+PDCEX  int          COLS;         /* terminal width */
+PDCEX  WINDOW       *stdscr;      /* the default screen window */
+PDCEX  WINDOW       *curscr;      /* the current screen image */
+PDCEX  SCREEN       *SP;          /* curses variables */
+PDCEX  MOUSE_STATUS Mouse_status;
+PDCEX  int          COLORS;
+PDCEX  int          COLOR_PAIRS;
+PDCEX  int          TABSIZE;
+PDCEX  chtype       acs_map[];    /* alternate character set map */
+PDCEX  char         ttytype[];    /* terminal name/description */
+
+/*man-start**************************************************************
+
+PDCurses Text Attributes
+========================
+
+Originally, PDCurses used a short (16 bits) for its chtype. To include 
+color, a number of things had to be sacrificed from the strict Unix and 
+System V support. The main problem was fitting all character attributes 
+and color into an unsigned char (all 8 bits!).
+
+Today, PDCurses by default uses a long (32 bits) for its chtype, as in 
+System V. The short chtype is still available, by undefining CHTYPE_LONG 
+and rebuilding the library.
+
+The following is the structure of a win->_attrs chtype:
+
+short form:
+
+-------------------------------------------------
+|15|14|13|12|11|10| 9| 8| 7| 6| 5| 4| 3| 2| 1| 0|
+-------------------------------------------------
+  color number |  attrs |   character eg 'a'
+
+The available non-color attributes are bold, reverse and blink. Others 
+have no effect. The high order char is an index into an array of 
+physical colors (defined in color.c) -- 32 foreground/background color 
+pairs (5 bits) plus 3 bits for other attributes.
+
+long form:
+
+----------------------------------------------------------------------------
+|31|30|29|28|27|26|25|24|23|22|21|20|19|18|17|16|15|14|13|12|..| 3| 2| 1| 0|
+----------------------------------------------------------------------------
+      color number      |     modifiers         |      character eg 'a'
+
+The available non-color attributes are bold, underline, invisible, 
+right-line, left-line, protect, reverse and blink. 256 color pairs (8 
+bits), 8 bits for other attributes, and 16 bits for character data.
+
+**man-end****************************************************************/
+
+/*** Video attribute macros ***/
+
+#define A_NORMAL      (chtype)0
+
+#ifdef CHTYPE_LONG
+# define A_ALTCHARSET (chtype)0x00010000
+# define A_RIGHTLINE  (chtype)0x00020000
+# define A_LEFTLINE   (chtype)0x00040000
+# define A_INVIS      (chtype)0x00080000
+# define A_UNDERLINE  (chtype)0x00100000
+# define A_REVERSE    (chtype)0x00200000
+# define A_BLINK      (chtype)0x00400000
+# define A_BOLD       (chtype)0x00800000
+
+# define A_ATTRIBUTES (chtype)0xffff0000
+# define A_CHARTEXT   (chtype)0x0000ffff
+# define A_COLOR      (chtype)0xff000000
+
+# define A_ITALIC     A_INVIS
+# define A_PROTECT    (A_UNDERLINE | A_LEFTLINE | A_RIGHTLINE)
+
+# define PDC_ATTR_SHIFT  19
+# define PDC_COLOR_SHIFT 24
+#else
+# define A_BOLD       (chtype)0x0100  /* X/Open */
+# define A_REVERSE    (chtype)0x0200  /* X/Open */
+# define A_BLINK      (chtype)0x0400  /* X/Open */
+
+# define A_ATTRIBUTES (chtype)0xff00  /* X/Open */
+# define A_CHARTEXT   (chtype)0x00ff  /* X/Open */
+# define A_COLOR      (chtype)0xf800  /* System V */
+
+# define A_ALTCHARSET A_NORMAL        /* X/Open */
+# define A_PROTECT    A_NORMAL        /* X/Open */
+# define A_UNDERLINE  A_NORMAL        /* X/Open */
+
+# define A_LEFTLINE   A_NORMAL
+# define A_RIGHTLINE  A_NORMAL
+# define A_ITALIC     A_NORMAL
+# define A_INVIS      A_NORMAL
+
+# define PDC_ATTR_SHIFT   8
+# define PDC_COLOR_SHIFT 11
+#endif
+
+#define A_STANDOUT    (A_REVERSE | A_BOLD) /* X/Open */
+#define A_DIM         A_NORMAL
+
+#define CHR_MSK       A_CHARTEXT           /* Obsolete */
+#define ATR_MSK       A_ATTRIBUTES         /* Obsolete */
+#define ATR_NRM       A_NORMAL             /* Obsolete */
+
+/* For use with attr_t -- X/Open says, "these shall be distinct", so 
+   this is a non-conforming implementation. */
+
+#define WA_ALTCHARSET A_ALTCHARSET
+#define WA_BLINK      A_BLINK
+#define WA_BOLD       A_BOLD
+#define WA_DIM        A_DIM
+#define WA_INVIS      A_INVIS
+#define WA_LEFT       A_LEFTLINE
+#define WA_PROTECT    A_PROTECT
+#define WA_REVERSE    A_REVERSE
+#define WA_RIGHT      A_RIGHTLINE
+#define WA_STANDOUT   A_STANDOUT
+#define WA_UNDERLINE  A_UNDERLINE
+
+#define WA_HORIZONTAL A_NORMAL
+#define WA_LOW        A_NORMAL
+#define WA_TOP        A_NORMAL
+#define WA_VERTICAL   A_NORMAL
+
+/*** Alternate character set macros ***/
+
+/* 'w' = 32-bit chtype; acs_map[] index | A_ALTCHARSET
+   'n' = 16-bit chtype; it gets the fallback set because no bit is 
+         available for A_ALTCHARSET */
+
+#ifdef CHTYPE_LONG
+# define ACS_PICK(w, n) ((chtype)w | A_ALTCHARSET)
+#else
+# define ACS_PICK(w, n) ((chtype)n)
+#endif
+
+/* VT100-compatible symbols -- box chars */
+
+#define ACS_ULCORNER  ACS_PICK('l', '+')
+#define ACS_LLCORNER  ACS_PICK('m', '+')
+#define ACS_URCORNER  ACS_PICK('k', '+')
+#define ACS_LRCORNER  ACS_PICK('j', '+')
+#define ACS_RTEE      ACS_PICK('u', '+')
+#define ACS_LTEE      ACS_PICK('t', '+')
+#define ACS_BTEE      ACS_PICK('v', '+')
+#define ACS_TTEE      ACS_PICK('w', '+')
+#define ACS_HLINE     ACS_PICK('q', '-')
+#define ACS_VLINE     ACS_PICK('x', '|')
+#define ACS_PLUS      ACS_PICK('n', '+')
+
+/* VT100-compatible symbols -- other */
+
+#define ACS_S1        ACS_PICK('o', '-')
+#define ACS_S9        ACS_PICK('s', '_')
+#define ACS_DIAMOND   ACS_PICK('`', '+')
+#define ACS_CKBOARD   ACS_PICK('a', ':')
+#define ACS_DEGREE    ACS_PICK('f', '\'')
+#define ACS_PLMINUS   ACS_PICK('g', '#')
+#define ACS_BULLET    ACS_PICK('~', 'o')
+
+/* Teletype 5410v1 symbols -- these are defined in SysV curses, but
+   are not well-supported by most terminals. Stick to VT100 characters
+   for optimum portability. */
+
+#define ACS_LARROW    ACS_PICK(',', '<')
+#define ACS_RARROW    ACS_PICK('+', '>')
+#define ACS_DARROW    ACS_PICK('.', 'v')
+#define ACS_UARROW    ACS_PICK('-', '^')
+#define ACS_BOARD     ACS_PICK('h', '#')
+#define ACS_LANTERN   ACS_PICK('i', '*')
+#define ACS_BLOCK     ACS_PICK('0', '#')
+
+/* That goes double for these -- undocumented SysV symbols. Don't use
+   them. */
+
+#define ACS_S3        ACS_PICK('p', '-')
+#define ACS_S7        ACS_PICK('r', '-')
+#define ACS_LEQUAL    ACS_PICK('y', '<')
+#define ACS_GEQUAL    ACS_PICK('z', '>')
+#define ACS_PI        ACS_PICK('{', 'n')
+#define ACS_NEQUAL    ACS_PICK('|', '+')
+#define ACS_STERLING  ACS_PICK('}', 'L')
+
+/* Box char aliases */
+
+#define ACS_BSSB      ACS_ULCORNER
+#define ACS_SSBB      ACS_LLCORNER
+#define ACS_BBSS      ACS_URCORNER
+#define ACS_SBBS      ACS_LRCORNER
+#define ACS_SBSS      ACS_RTEE
+#define ACS_SSSB      ACS_LTEE
+#define ACS_SSBS      ACS_BTEE
+#define ACS_BSSS      ACS_TTEE
+#define ACS_BSBS      ACS_HLINE
+#define ACS_SBSB      ACS_VLINE
+#define ACS_SSSS      ACS_PLUS
+
+/* cchar_t aliases */
+
+#ifdef PDC_WIDE
+# define WACS_ULCORNER (&(acs_map['l']))
+# define WACS_LLCORNER (&(acs_map['m']))
+# define WACS_URCORNER (&(acs_map['k']))
+# define WACS_LRCORNER (&(acs_map['j']))
+# define WACS_RTEE     (&(acs_map['u']))
+# define WACS_LTEE     (&(acs_map['t']))
+# define WACS_BTEE     (&(acs_map['v']))
+# define WACS_TTEE     (&(acs_map['w']))
+# define WACS_HLINE    (&(acs_map['q']))
+# define WACS_VLINE    (&(acs_map['x']))
+# define WACS_PLUS     (&(acs_map['n']))
+
+# define WACS_S1       (&(acs_map['o']))
+# define WACS_S9       (&(acs_map['s']))
+# define WACS_DIAMOND  (&(acs_map['`']))
+# define WACS_CKBOARD  (&(acs_map['a']))
+# define WACS_DEGREE   (&(acs_map['f']))
+# define WACS_PLMINUS  (&(acs_map['g']))
+# define WACS_BULLET   (&(acs_map['~']))
+
+# define WACS_LARROW   (&(acs_map[',']))
+# define WACS_RARROW   (&(acs_map['+']))
+# define WACS_DARROW   (&(acs_map['.']))
+# define WACS_UARROW   (&(acs_map['-']))
+# define WACS_BOARD    (&(acs_map['h']))
+# define WACS_LANTERN  (&(acs_map['i']))
+# define WACS_BLOCK    (&(acs_map['0']))
+
+# define WACS_S3       (&(acs_map['p']))
+# define WACS_S7       (&(acs_map['r']))
+# define WACS_LEQUAL   (&(acs_map['y']))
+# define WACS_GEQUAL   (&(acs_map['z']))
+# define WACS_PI       (&(acs_map['{']))
+# define WACS_NEQUAL   (&(acs_map['|']))
+# define WACS_STERLING (&(acs_map['}']))
+
+# define WACS_BSSB     WACS_ULCORNER
+# define WACS_SSBB     WACS_LLCORNER
+# define WACS_BBSS     WACS_URCORNER
+# define WACS_SBBS     WACS_LRCORNER
+# define WACS_SBSS     WACS_RTEE
+# define WACS_SSSB     WACS_LTEE
+# define WACS_SSBS     WACS_BTEE
+# define WACS_BSSS     WACS_TTEE
+# define WACS_BSBS     WACS_HLINE
+# define WACS_SBSB     WACS_VLINE
+# define WACS_SSSS     WACS_PLUS
+#endif
+
+/*** Color macros ***/
+
+#define COLOR_BLACK   0
+
+#ifdef PDC_RGB        /* RGB */
+# define COLOR_RED    1
+# define COLOR_GREEN  2
+# define COLOR_BLUE   4
+#else                 /* BGR */
+# define COLOR_BLUE   1
+# define COLOR_GREEN  2
+# define COLOR_RED    4
+#endif
+
+#define COLOR_CYAN    (COLOR_BLUE | COLOR_GREEN)
+#define COLOR_MAGENTA (COLOR_RED | COLOR_BLUE)
+#define COLOR_YELLOW  (COLOR_RED | COLOR_GREEN)
+
+#define COLOR_WHITE   7
+
+/*----------------------------------------------------------------------
+ *
+ *  Function and Keypad Key Definitions.
+ *  Many are just for compatibility.
+ *
+ */
+
+#define KEY_CODE_YES  0x100  /* If get_wch() gives a key code */
+
+#define KEY_BREAK     0x101  /* Not on PC KBD */
+#define KEY_DOWN      0x102  /* Down arrow key */
+#define KEY_UP        0x103  /* Up arrow key */
+#define KEY_LEFT      0x104  /* Left arrow key */
+#define KEY_RIGHT     0x105  /* Right arrow key */
+#define KEY_HOME      0x106  /* home key */
+#define KEY_BACKSPACE 0x107  /* not on pc */
+#define KEY_F0        0x108  /* function keys; 64 reserved */
+
+#define KEY_DL        0x148  /* delete line */
+#define KEY_IL        0x149  /* insert line */
+#define KEY_DC        0x14a  /* delete character */
+#define KEY_IC        0x14b  /* insert char or enter ins mode */
+#define KEY_EIC       0x14c  /* exit insert char mode */
+#define KEY_CLEAR     0x14d  /* clear screen */
+#define KEY_EOS       0x14e  /* clear to end of screen */
+#define KEY_EOL       0x14f  /* clear to end of line */
+#define KEY_SF        0x150  /* scroll 1 line forward */
+#define KEY_SR        0x151  /* scroll 1 line back (reverse) */
+#define KEY_NPAGE     0x152  /* next page */
+#define KEY_PPAGE     0x153  /* previous page */
+#define KEY_STAB      0x154  /* set tab */
+#define KEY_CTAB      0x155  /* clear tab */
+#define KEY_CATAB     0x156  /* clear all tabs */
+#define KEY_ENTER     0x157  /* enter or send (unreliable) */
+#define KEY_SRESET    0x158  /* soft/reset (partial/unreliable) */
+#define KEY_RESET     0x159  /* reset/hard reset (unreliable) */
+#define KEY_PRINT     0x15a  /* print/copy */
+#define KEY_LL        0x15b  /* home down/bottom (lower left) */
+#define KEY_ABORT     0x15c  /* abort/terminate key (any) */
+#define KEY_SHELP     0x15d  /* short help */
+#define KEY_LHELP     0x15e  /* long help */
+#define KEY_BTAB      0x15f  /* Back tab key */
+#define KEY_BEG       0x160  /* beg(inning) key */
+#define KEY_CANCEL    0x161  /* cancel key */
+#define KEY_CLOSE     0x162  /* close key */
+#define KEY_COMMAND   0x163  /* cmd (command) key */
+#define KEY_COPY      0x164  /* copy key */
+#define KEY_CREATE    0x165  /* create key */
+#define KEY_END       0x166  /* end key */
+#define KEY_EXIT      0x167  /* exit key */
+#define KEY_FIND      0x168  /* find key */
+#define KEY_HELP      0x169  /* help key */
+#define KEY_MARK      0x16a  /* mark key */
+#define KEY_MESSAGE   0x16b  /* message key */
+#define KEY_MOVE      0x16c  /* move key */
+#define KEY_NEXT      0x16d  /* next object key */
+#define KEY_OPEN      0x16e  /* open key */
+#define KEY_OPTIONS   0x16f  /* options key */
+#define KEY_PREVIOUS  0x170  /* previous object key */
+#define KEY_REDO      0x171  /* redo key */
+#define KEY_REFERENCE 0x172  /* ref(erence) key */
+#define KEY_REFRESH   0x173  /* refresh key */
+#define KEY_REPLACE   0x174  /* replace key */
+#define KEY_RESTART   0x175  /* restart key */
+#define KEY_RESUME    0x176  /* resume key */
+#define KEY_SAVE      0x177  /* save key */
+#define KEY_SBEG      0x178  /* shifted beginning key */
+#define KEY_SCANCEL   0x179  /* shifted cancel key */
+#define KEY_SCOMMAND  0x17a  /* shifted command key */
+#define KEY_SCOPY     0x17b  /* shifted copy key */
+#define KEY_SCREATE   0x17c  /* shifted create key */
+#define KEY_SDC       0x17d  /* shifted delete char key */
+#define KEY_SDL       0x17e  /* shifted delete line key */
+#define KEY_SELECT    0x17f  /* select key */
+#define KEY_SEND      0x180  /* shifted end key */
+#define KEY_SEOL      0x181  /* shifted clear line key */
+#define KEY_SEXIT     0x182  /* shifted exit key */
+#define KEY_SFIND     0x183  /* shifted find key */
+#define KEY_SHOME     0x184  /* shifted home key */
+#define KEY_SIC       0x185  /* shifted input key */
+
+#define KEY_SLEFT     0x187  /* shifted left arrow key */
+#define KEY_SMESSAGE  0x188  /* shifted message key */
+#define KEY_SMOVE     0x189  /* shifted move key */
+#define KEY_SNEXT     0x18a  /* shifted next key */
+#define KEY_SOPTIONS  0x18b  /* shifted options key */
+#define KEY_SPREVIOUS 0x18c  /* shifted prev key */
+#define KEY_SPRINT    0x18d  /* shifted print key */
+#define KEY_SREDO     0x18e  /* shifted redo key */
+#define KEY_SREPLACE  0x18f  /* shifted replace key */
+#define KEY_SRIGHT    0x190  /* shifted right arrow */
+#define KEY_SRSUME    0x191  /* shifted resume key */
+#define KEY_SSAVE     0x192  /* shifted save key */
+#define KEY_SSUSPEND  0x193  /* shifted suspend key */
+#define KEY_SUNDO     0x194  /* shifted undo key */
+#define KEY_SUSPEND   0x195  /* suspend key */
+#define KEY_UNDO      0x196  /* undo key */
+
+/* PDCurses-specific key definitions -- PC only */
+
+#define ALT_0         0x197
+#define ALT_1         0x198
+#define ALT_2         0x199
+#define ALT_3         0x19a
+#define ALT_4         0x19b
+#define ALT_5         0x19c
+#define ALT_6         0x19d
+#define ALT_7         0x19e
+#define ALT_8         0x19f
+#define ALT_9         0x1a0
+#define ALT_A         0x1a1
+#define ALT_B         0x1a2
+#define ALT_C         0x1a3
+#define ALT_D         0x1a4
+#define ALT_E         0x1a5
+#define ALT_F         0x1a6
+#define ALT_G         0x1a7
+#define ALT_H         0x1a8
+#define ALT_I         0x1a9
+#define ALT_J         0x1aa
+#define ALT_K         0x1ab
+#define ALT_L         0x1ac
+#define ALT_M         0x1ad
+#define ALT_N         0x1ae
+#define ALT_O         0x1af
+#define ALT_P         0x1b0
+#define ALT_Q         0x1b1
+#define ALT_R         0x1b2
+#define ALT_S         0x1b3
+#define ALT_T         0x1b4
+#define ALT_U         0x1b5
+#define ALT_V         0x1b6
+#define ALT_W         0x1b7
+#define ALT_X         0x1b8
+#define ALT_Y         0x1b9
+#define ALT_Z         0x1ba
+
+#define CTL_LEFT      0x1bb  /* Control-Left-Arrow */
+#define CTL_RIGHT     0x1bc
+#define CTL_PGUP      0x1bd
+#define CTL_PGDN      0x1be
+#define CTL_HOME      0x1bf
+#define CTL_END       0x1c0
+
+#define KEY_A1        0x1c1  /* upper left on Virtual keypad */
+#define KEY_A2        0x1c2  /* upper middle on Virt. keypad */
+#define KEY_A3        0x1c3  /* upper right on Vir. keypad */
+#define KEY_B1        0x1c4  /* middle left on Virt. keypad */
+#define KEY_B2        0x1c5  /* center on Virt. keypad */
+#define KEY_B3        0x1c6  /* middle right on Vir. keypad */
+#define KEY_C1        0x1c7  /* lower left on Virt. keypad */
+#define KEY_C2        0x1c8  /* lower middle on Virt. keypad */
+#define KEY_C3        0x1c9  /* lower right on Vir. keypad */
+
+#define PADSLASH      0x1ca  /* slash on keypad */
+#define PADENTER      0x1cb  /* enter on keypad */
+#define CTL_PADENTER  0x1cc  /* ctl-enter on keypad */
+#define ALT_PADENTER  0x1cd  /* alt-enter on keypad */
+#define PADSTOP       0x1ce  /* stop on keypad */
+#define PADSTAR       0x1cf  /* star on keypad */
+#define PADMINUS      0x1d0  /* minus on keypad */
+#define PADPLUS       0x1d1  /* plus on keypad */
+#define CTL_PADSTOP   0x1d2  /* ctl-stop on keypad */
+#define CTL_PADCENTER 0x1d3  /* ctl-enter on keypad */
+#define CTL_PADPLUS   0x1d4  /* ctl-plus on keypad */
+#define CTL_PADMINUS  0x1d5  /* ctl-minus on keypad */
+#define CTL_PADSLASH  0x1d6  /* ctl-slash on keypad */
+#define CTL_PADSTAR   0x1d7  /* ctl-star on keypad */
+#define ALT_PADPLUS   0x1d8  /* alt-plus on keypad */
+#define ALT_PADMINUS  0x1d9  /* alt-minus on keypad */
+#define ALT_PADSLASH  0x1da  /* alt-slash on keypad */
+#define ALT_PADSTAR   0x1db  /* alt-star on keypad */
+#define ALT_PADSTOP   0x1dc  /* alt-stop on keypad */
+#define CTL_INS       0x1dd  /* ctl-insert */
+#define ALT_DEL       0x1de  /* alt-delete */
+#define ALT_INS       0x1df  /* alt-insert */
+#define CTL_UP        0x1e0  /* ctl-up arrow */
+#define CTL_DOWN      0x1e1  /* ctl-down arrow */
+#define CTL_TAB       0x1e2  /* ctl-tab */
+#define ALT_TAB       0x1e3
+#define ALT_MINUS     0x1e4
+#define ALT_EQUAL     0x1e5
+#define ALT_HOME      0x1e6
+#define ALT_PGUP      0x1e7
+#define ALT_PGDN      0x1e8
+#define ALT_END       0x1e9
+#define ALT_UP        0x1ea  /* alt-up arrow */
+#define ALT_DOWN      0x1eb  /* alt-down arrow */
+#define ALT_RIGHT     0x1ec  /* alt-right arrow */
+#define ALT_LEFT      0x1ed  /* alt-left arrow */
+#define ALT_ENTER     0x1ee  /* alt-enter */
+#define ALT_ESC       0x1ef  /* alt-escape */
+#define ALT_BQUOTE    0x1f0  /* alt-back quote */
+#define ALT_LBRACKET  0x1f1  /* alt-left bracket */
+#define ALT_RBRACKET  0x1f2  /* alt-right bracket */
+#define ALT_SEMICOLON 0x1f3  /* alt-semi-colon */
+#define ALT_FQUOTE    0x1f4  /* alt-forward quote */
+#define ALT_COMMA     0x1f5  /* alt-comma */
+#define ALT_STOP      0x1f6  /* alt-stop */
+#define ALT_FSLASH    0x1f7  /* alt-forward slash */
+#define ALT_BKSP      0x1f8  /* alt-backspace */
+#define CTL_BKSP      0x1f9  /* ctl-backspace */
+#define PAD0          0x1fa  /* keypad 0 */
+
+#define CTL_PAD0      0x1fb  /* ctl-keypad 0 */
+#define CTL_PAD1      0x1fc
+#define CTL_PAD2      0x1fd
+#define CTL_PAD3      0x1fe
+#define CTL_PAD4      0x1ff
+#define CTL_PAD5      0x200
+#define CTL_PAD6      0x201
+#define CTL_PAD7      0x202
+#define CTL_PAD8      0x203
+#define CTL_PAD9      0x204
+
+#define ALT_PAD0      0x205  /* alt-keypad 0 */
+#define ALT_PAD1      0x206
+#define ALT_PAD2      0x207
+#define ALT_PAD3      0x208
+#define ALT_PAD4      0x209
+#define ALT_PAD5      0x20a
+#define ALT_PAD6      0x20b
+#define ALT_PAD7      0x20c
+#define ALT_PAD8      0x20d
+#define ALT_PAD9      0x20e
+
+#define CTL_DEL       0x20f  /* clt-delete */
+#define ALT_BSLASH    0x210  /* alt-back slash */
+#define CTL_ENTER     0x211  /* ctl-enter */
+
+#define SHF_PADENTER  0x212  /* shift-enter on keypad */
+#define SHF_PADSLASH  0x213  /* shift-slash on keypad */
+#define SHF_PADSTAR   0x214  /* shift-star  on keypad */
+#define SHF_PADPLUS   0x215  /* shift-plus  on keypad */
+#define SHF_PADMINUS  0x216  /* shift-minus on keypad */
+#define SHF_UP        0x217  /* shift-up on keypad */
+#define SHF_DOWN      0x218  /* shift-down on keypad */
+#define SHF_IC        0x219  /* shift-insert on keypad */
+#define SHF_DC        0x21a  /* shift-delete on keypad */
+
+#define KEY_MOUSE     0x21b  /* "mouse" key */
+#define KEY_SHIFT_L   0x21c  /* Left-shift */
+#define KEY_SHIFT_R   0x21d  /* Right-shift */
+#define KEY_CONTROL_L 0x21e  /* Left-control */
+#define KEY_CONTROL_R 0x21f  /* Right-control */
+#define KEY_ALT_L     0x220  /* Left-alt */
+#define KEY_ALT_R     0x221  /* Right-alt */
+#define KEY_RESIZE    0x222  /* Window resize */
+#define KEY_SUP       0x223  /* Shifted up arrow */
+#define KEY_SDOWN     0x224  /* Shifted down arrow */
+
+#define KEY_MIN       KEY_BREAK      /* Minimum curses key value */
+#define KEY_MAX       KEY_SDOWN      /* Maximum curses key */
+
+#define KEY_F(n)      (KEY_F0 + (n))
+
+/*----------------------------------------------------------------------
+ *
+ *  PDCurses Function Declarations
+ *
+ */
+
+/* Standard */
+
+int     addch(const chtype);
+int     addchnstr(const chtype *, int);
+int     addchstr(const chtype *);
+int     addnstr(const char *, int);
+int     addstr(const char *);
+int     attroff(chtype);
+int     attron(chtype);
+int     attrset(chtype);
+int     attr_get(attr_t *, short *, void *);
+int     attr_off(attr_t, void *);
+int     attr_on(attr_t, void *);
+int     attr_set(attr_t, short, void *);
+int     baudrate(void);
+int     beep(void);
+int     bkgd(chtype);
+void    bkgdset(chtype);
+int     border(chtype, chtype, chtype, chtype, chtype, chtype, chtype, chtype);
+int     box(WINDOW *, chtype, chtype);
+bool    can_change_color(void);
+int     cbreak(void); 
+int     chgat(int, attr_t, short, const void *);
+int     clearok(WINDOW *, bool);
+int     clear(void);
+int     clrtobot(void);
+int     clrtoeol(void);
+int     color_content(short, short *, short *, short *);
+int     color_set(short, void *);
+int     copywin(const WINDOW *, WINDOW *, int, int, int, int, int, int, int);
+int     curs_set(int);
+int     def_prog_mode(void);
+int     def_shell_mode(void);
+int     delay_output(int);
+int     delch(void);
+int     deleteln(void);
+void    delscreen(SCREEN *); 
+int     delwin(WINDOW *);
+WINDOW *derwin(WINDOW *, int, int, int, int);
+int     doupdate(void);
+WINDOW *dupwin(WINDOW *);
+int     echochar(const chtype);
+int     echo(void);
+int     endwin(void);
+char    erasechar(void);
+int     erase(void);
+void    filter(void);
+int     flash(void);
+int     flushinp(void);
+chtype  getbkgd(WINDOW *);
+int     getnstr(char *, int);
+int     getstr(char *);
+WINDOW *getwin(FILE *);
+int     halfdelay(int);
+bool    has_colors(void);
+bool    has_ic(void);
+bool    has_il(void);
+int     hline(chtype, int);
+void    idcok(WINDOW *, bool);
+int     idlok(WINDOW *, bool);
+void    immedok(WINDOW *, bool);
+int     inchnstr(chtype *, int);
+int     inchstr(chtype *);
+chtype  inch(void);
+int     init_color(short, short, short, short);
+int     init_pair(short, short, short);
+WINDOW *initscr(void);
+int     innstr(char *, int);
+int     insch(chtype);
+int     insdelln(int);
+int     insertln(void);
+int     insnstr(const char *, int);
+int     insstr(const char *);
+int     instr(char *);
+int     intrflush(WINDOW *, bool);
+bool    isendwin(void);
+bool    is_linetouched(WINDOW *, int);
+bool    is_wintouched(WINDOW *);
+char   *keyname(int);
+int     keypad(WINDOW *, bool);
+char    killchar(void);
+int     leaveok(WINDOW *, bool);
+char   *longname(void);
+int     meta(WINDOW *, bool);
+int     move(int, int);
+int     mvaddch(int, int, const chtype);
+int     mvaddchnstr(int, int, const chtype *, int);
+int     mvaddchstr(int, int, const chtype *);
+int     mvaddnstr(int, int, const char *, int);
+int     mvaddstr(int, int, const char *);
+int     mvchgat(int, int, int, attr_t, short, const void *);
+int     mvcur(int, int, int, int);
+int     mvdelch(int, int);
+int     mvderwin(WINDOW *, int, int);
+int     mvgetch(int, int);
+int     mvgetnstr(int, int, char *, int);
+int     mvgetstr(int, int, char *);
+int     mvhline(int, int, chtype, int);
+chtype  mvinch(int, int);
+int     mvinchnstr(int, int, chtype *, int);
+int     mvinchstr(int, int, chtype *);
+int     mvinnstr(int, int, char *, int);
+int     mvinsch(int, int, chtype);
+int     mvinsnstr(int, int, const char *, int);
+int     mvinsstr(int, int, const char *);
+int     mvinstr(int, int, char *);
+int     mvprintw(int, int, const char *, ...);
+int     mvscanw(int, int, const char *, ...);
+int     mvvline(int, int, chtype, int);
+int     mvwaddchnstr(WINDOW *, int, int, const chtype *, int);
+int     mvwaddchstr(WINDOW *, int, int, const chtype *);
+int     mvwaddch(WINDOW *, int, int, const chtype);
+int     mvwaddnstr(WINDOW *, int, int, const char *, int);
+int     mvwaddstr(WINDOW *, int, int, const char *);
+int     mvwchgat(WINDOW *, int, int, int, attr_t, short, const void *);
+int     mvwdelch(WINDOW *, int, int);
+int     mvwgetch(WINDOW *, int, int);
+int     mvwgetnstr(WINDOW *, int, int, char *, int);
+int     mvwgetstr(WINDOW *, int, int, char *);
+int     mvwhline(WINDOW *, int, int, chtype, int);
+int     mvwinchnstr(WINDOW *, int, int, chtype *, int);
+int     mvwinchstr(WINDOW *, int, int, chtype *);
+chtype  mvwinch(WINDOW *, int, int);
+int     mvwinnstr(WINDOW *, int, int, char *, int);
+int     mvwinsch(WINDOW *, int, int, chtype);
+int     mvwinsnstr(WINDOW *, int, int, const char *, int);
+int     mvwinsstr(WINDOW *, int, int, const char *);
+int     mvwinstr(WINDOW *, int, int, char *);
+int     mvwin(WINDOW *, int, int);
+int     mvwprintw(WINDOW *, int, int, const char *, ...);
+int     mvwscanw(WINDOW *, int, int, const char *, ...);
+int     mvwvline(WINDOW *, int, int, chtype, int);
+int     napms(int);
+WINDOW *newpad(int, int);
+SCREEN *newterm(const char *, FILE *, FILE *);
+WINDOW *newwin(int, int, int, int);
+int     nl(void);
+int     nocbreak(void);
+int     nodelay(WINDOW *, bool);
+int     noecho(void);
+int     nonl(void);
+void    noqiflush(void);
+int     noraw(void);
+int     notimeout(WINDOW *, bool);
+int     overlay(const WINDOW *, WINDOW *);
+int     overwrite(const WINDOW *, WINDOW *);
+int     pair_content(short, short *, short *);
+int     pechochar(WINDOW *, chtype);
+int     pnoutrefresh(WINDOW *, int, int, int, int, int, int);
+int     prefresh(WINDOW *, int, int, int, int, int, int);
+int     printw(const char *, ...);
+int     putwin(WINDOW *, FILE *);
+void    qiflush(void);
+int     raw(void);
+int     redrawwin(WINDOW *);
+int     refresh(void);
+int     reset_prog_mode(void);
+int     reset_shell_mode(void);
+int     resetty(void);
+int     ripoffline(int, int (*)(WINDOW *, int));
+int     savetty(void);
+int     scanw(const char *, ...);
+int     scr_dump(const char *);
+int     scr_init(const char *);
+int     scr_restore(const char *);
+int     scr_set(const char *);
+int     scrl(int);
+int     scroll(WINDOW *);
+int     scrollok(WINDOW *, bool);
+SCREEN *set_term(SCREEN *);
+int     setscrreg(int, int);
+int     slk_attroff(const chtype);
+int     slk_attr_off(const attr_t, void *);
+int     slk_attron(const chtype);
+int     slk_attr_on(const attr_t, void *);
+int     slk_attrset(const chtype);
+int     slk_attr_set(const attr_t, short, void *);
+int     slk_clear(void);
+int     slk_color(short);
+int     slk_init(int);
+char   *slk_label(int);
+int     slk_noutrefresh(void);
+int     slk_refresh(void);
+int     slk_restore(void);
+int     slk_set(int, const char *, int);
+int     slk_touch(void);
+int     standend(void);
+int     standout(void);
+int     start_color(void);
+WINDOW *subpad(WINDOW *, int, int, int, int);
+WINDOW *subwin(WINDOW *, int, int, int, int);
+int     syncok(WINDOW *, bool);
+chtype  termattrs(void);
+attr_t  term_attrs(void);
+char   *termname(void);
+void    timeout(int);
+int     touchline(WINDOW *, int, int);
+int     touchwin(WINDOW *);
+int     typeahead(int);
+int     untouchwin(WINDOW *);
+void    use_env(bool);
+int     vidattr(chtype);
+int     vid_attr(attr_t, short, void *);
+int     vidputs(chtype, int (*)(int));
+int     vid_puts(attr_t, short, void *, int (*)(int));
+int     vline(chtype, int);
+int     vw_printw(WINDOW *, const char *, va_list);
+int     vwprintw(WINDOW *, const char *, va_list);
+int     vw_scanw(WINDOW *, const char *, va_list);
+int     vwscanw(WINDOW *, const char *, va_list);
+int     waddchnstr(WINDOW *, const chtype *, int);
+int     waddchstr(WINDOW *, const chtype *);
+int     waddch(WINDOW *, const chtype);
+int     waddnstr(WINDOW *, const char *, int);
+int     waddstr(WINDOW *, const char *);
+int     wattroff(WINDOW *, chtype);
+int     wattron(WINDOW *, chtype);
+int     wattrset(WINDOW *, chtype);
+int     wattr_get(WINDOW *, attr_t *, short *, void *);
+int     wattr_off(WINDOW *, attr_t, void *);
+int     wattr_on(WINDOW *, attr_t, void *);
+int     wattr_set(WINDOW *, attr_t, short, void *);
+void    wbkgdset(WINDOW *, chtype);
+int     wbkgd(WINDOW *, chtype);
+int     wborder(WINDOW *, chtype, chtype, chtype, chtype,
+                chtype, chtype, chtype, chtype);
+int     wchgat(WINDOW *, int, attr_t, short, const void *);
+int     wclear(WINDOW *);
+int     wclrtobot(WINDOW *);
+int     wclrtoeol(WINDOW *);
+int     wcolor_set(WINDOW *, short, void *);
+void    wcursyncup(WINDOW *);
+int     wdelch(WINDOW *);
+int     wdeleteln(WINDOW *);
+int     wechochar(WINDOW *, const chtype);
+int     werase(WINDOW *);
+int     wgetch(WINDOW *);
+int     wgetnstr(WINDOW *, char *, int);
+int     wgetstr(WINDOW *, char *);
+int     whline(WINDOW *, chtype, int);
+int     winchnstr(WINDOW *, chtype *, int);
+int     winchstr(WINDOW *, chtype *);
+chtype  winch(WINDOW *);
+int     winnstr(WINDOW *, char *, int);
+int     winsch(WINDOW *, chtype);
+int     winsdelln(WINDOW *, int);
+int     winsertln(WINDOW *);
+int     winsnstr(WINDOW *, const char *, int);
+int     winsstr(WINDOW *, const char *);
+int     winstr(WINDOW *, char *);
+int     wmove(WINDOW *, int, int);
+int     wnoutrefresh(WINDOW *);
+int     wprintw(WINDOW *, const char *, ...);
+int     wredrawln(WINDOW *, int, int);
+int     wrefresh(WINDOW *);
+int     wscanw(WINDOW *, const char *, ...);
+int     wscrl(WINDOW *, int);
+int     wsetscrreg(WINDOW *, int, int);
+int     wstandend(WINDOW *);
+int     wstandout(WINDOW *);
+void    wsyncdown(WINDOW *);
+void    wsyncup(WINDOW *);
+void    wtimeout(WINDOW *, int);
+int     wtouchln(WINDOW *, int, int, int);
+int     wvline(WINDOW *, chtype, int);
+
+/* Wide-character functions */
+
+#ifdef PDC_WIDE
+int     addnwstr(const wchar_t *, int);
+int     addwstr(const wchar_t *);
+int     add_wch(const cchar_t *);
+int     add_wchnstr(const cchar_t *, int);
+int     add_wchstr(const cchar_t *);
+int     border_set(const cchar_t *, const cchar_t *, const cchar_t *, 
+                   const cchar_t *, const cchar_t *, const cchar_t *, 
+                   const cchar_t *, const cchar_t *);
+int     box_set(WINDOW *, const cchar_t *, const cchar_t *);
+int     echo_wchar(const cchar_t *);
+int     erasewchar(wchar_t *);
+int     getbkgrnd(cchar_t *);
+int     getcchar(const cchar_t *, wchar_t *, attr_t *, short *, void *);
+int     getn_wstr(wint_t *, int);
+int     get_wch(wint_t *);
+int     get_wstr(wint_t *);
+int     hline_set(const cchar_t *, int);
+int     innwstr(wchar_t *, int);
+int     ins_nwstr(const wchar_t *, int);
+int     ins_wch(const cchar_t *);
+int     ins_wstr(const wchar_t *);
+int     inwstr(wchar_t *);
+int     in_wch(cchar_t *);
+int     in_wchnstr(cchar_t *, int);
+int     in_wchstr(cchar_t *);
+char   *key_name(wchar_t);
+int     killwchar(wchar_t *);
+int     mvaddnwstr(int, int, const wchar_t *, int);
+int     mvaddwstr(int, int, const wchar_t *);
+int     mvadd_wch(int, int, const cchar_t *);
+int     mvadd_wchnstr(int, int, const cchar_t *, int);
+int     mvadd_wchstr(int, int, const cchar_t *);
+int     mvgetn_wstr(int, int, wint_t *, int);
+int     mvget_wch(int, int, wint_t *);
+int     mvget_wstr(int, int, wint_t *);
+int     mvhline_set(int, int, const cchar_t *, int);
+int     mvinnwstr(int, int, wchar_t *, int);
+int     mvins_nwstr(int, int, const wchar_t *, int);
+int     mvins_wch(int, int, const cchar_t *);
+int     mvins_wstr(int, int, const wchar_t *);
+int     mvinwstr(int, int, wchar_t *);
+int     mvin_wch(int, int, cchar_t *);
+int     mvin_wchnstr(int, int, cchar_t *, int);
+int     mvin_wchstr(int, int, cchar_t *);
+int     mvvline_set(int, int, const cchar_t *, int);
+int     mvwaddnwstr(WINDOW *, int, int, const wchar_t *, int);
+int     mvwaddwstr(WINDOW *, int, int, const wchar_t *);
+int     mvwadd_wch(WINDOW *, int, int, const cchar_t *);
+int     mvwadd_wchnstr(WINDOW *, int, int, const cchar_t *, int);
+int     mvwadd_wchstr(WINDOW *, int, int, const cchar_t *);
+int     mvwgetn_wstr(WINDOW *, int, int, wint_t *, int);
+int     mvwget_wch(WINDOW *, int, int, wint_t *);
+int     mvwget_wstr(WINDOW *, int, int, wint_t *);
+int     mvwhline_set(WINDOW *, int, int, const cchar_t *, int);
+int     mvwinnwstr(WINDOW *, int, int, wchar_t *, int);
+int     mvwins_nwstr(WINDOW *, int, int, const wchar_t *, int);
+int     mvwins_wch(WINDOW *, int, int, const cchar_t *);
+int     mvwins_wstr(WINDOW *, int, int, const wchar_t *);
+int     mvwin_wch(WINDOW *, int, int, cchar_t *);
+int     mvwin_wchnstr(WINDOW *, int, int, cchar_t *, int);
+int     mvwin_wchstr(WINDOW *, int, int, cchar_t *);
+int     mvwinwstr(WINDOW *, int, int, wchar_t *);
+int     mvwvline_set(WINDOW *, int, int, const cchar_t *, int);
+int     pecho_wchar(WINDOW *, const cchar_t*);
+int     setcchar(cchar_t*, const wchar_t*, const attr_t, short, const void*);
+int     slk_wset(int, const wchar_t *, int);
+int     unget_wch(const wchar_t);
+int     vline_set(const cchar_t *, int);
+int     waddnwstr(WINDOW *, const wchar_t *, int);
+int     waddwstr(WINDOW *, const wchar_t *);
+int     wadd_wch(WINDOW *, const cchar_t *);
+int     wadd_wchnstr(WINDOW *, const cchar_t *, int);
+int     wadd_wchstr(WINDOW *, const cchar_t *);
+int     wbkgrnd(WINDOW *, const cchar_t *);
+void    wbkgrndset(WINDOW *, const cchar_t *);
+int     wborder_set(WINDOW *, const cchar_t *, const cchar_t *,
+                    const cchar_t *, const cchar_t *, const cchar_t *, 
+                    const cchar_t *, const cchar_t *, const cchar_t *);
+int     wecho_wchar(WINDOW *, const cchar_t *);
+int     wgetbkgrnd(WINDOW *, cchar_t *);
+int     wgetn_wstr(WINDOW *, wint_t *, int);
+int     wget_wch(WINDOW *, wint_t *);
+int     wget_wstr(WINDOW *, wint_t *);
+int     whline_set(WINDOW *, const cchar_t *, int);
+int     winnwstr(WINDOW *, wchar_t *, int);
+int     wins_nwstr(WINDOW *, const wchar_t *, int);
+int     wins_wch(WINDOW *, const cchar_t *);
+int     wins_wstr(WINDOW *, const wchar_t *);
+int     winwstr(WINDOW *, wchar_t *);
+int     win_wch(WINDOW *, cchar_t *);
+int     win_wchnstr(WINDOW *, cchar_t *, int);
+int     win_wchstr(WINDOW *, cchar_t *);
+wchar_t *wunctrl(cchar_t *);
+int     wvline_set(WINDOW *, const cchar_t *, int);
+#endif
+
+/* Quasi-standard */
+
+chtype  getattrs(WINDOW *);
+int     getbegx(WINDOW *);
+int     getbegy(WINDOW *);
+int     getmaxx(WINDOW *);
+int     getmaxy(WINDOW *);
+int     getparx(WINDOW *);
+int     getpary(WINDOW *);
+int     getcurx(WINDOW *);
+int     getcury(WINDOW *);
+void    traceoff(void);
+void    traceon(void);
+char   *unctrl(chtype);
+
+int     crmode(void);
+int     nocrmode(void);
+int     draino(int);
+int     resetterm(void);
+int     fixterm(void);
+int     saveterm(void);
+int     setsyx(int, int);
+
+int     mouse_set(unsigned long);
+int     mouse_on(unsigned long);
+int     mouse_off(unsigned long);
+int     request_mouse_pos(void);
+int     map_button(unsigned long);
+void    wmouse_position(WINDOW *, int *, int *);
+unsigned long getmouse(void);
+unsigned long getbmap(void);
+
+/* ncurses */
+
+int     assume_default_colors(int, int);
+const char *curses_version(void);
+bool    has_key(int);
+int     use_default_colors(void);
+int     wresize(WINDOW *, int, int);
+
+int     mouseinterval(int);
+mmask_t mousemask(mmask_t, mmask_t *);
+bool    mouse_trafo(int *, int *, bool);
+int     nc_getmouse(MEVENT *);
+int     ungetmouse(MEVENT *);
+bool    wenclose(const WINDOW *, int, int);
+bool    wmouse_trafo(const WINDOW *, int *, int *, bool);
+
+/* PDCurses */
+
+int     addrawch(chtype);
+int     insrawch(chtype);
+bool    is_termresized(void);
+int     mvaddrawch(int, int, chtype);
+int     mvdeleteln(int, int);
+int     mvinsertln(int, int);
+int     mvinsrawch(int, int, chtype);
+int     mvwaddrawch(WINDOW *, int, int, chtype);
+int     mvwdeleteln(WINDOW *, int, int);
+int     mvwinsertln(WINDOW *, int, int);
+int     mvwinsrawch(WINDOW *, int, int, chtype);
+int     raw_output(bool);
+int     resize_term(int, int);
+WINDOW *resize_window(WINDOW *, int, int);
+int     waddrawch(WINDOW *, chtype);
+int     winsrawch(WINDOW *, chtype);
+char    wordchar(void);
+
+#ifdef PDC_WIDE
+wchar_t *slk_wlabel(int);
+#endif
+
+void    PDC_debug(const char *, ...);
+int     PDC_ungetch(int);
+int     PDC_set_blink(bool);
+int     PDC_set_line_color(short);
+void    PDC_set_title(const char *);
+
+int     PDC_clearclipboard(void);
+int     PDC_freeclipboard(char *);
+int     PDC_getclipboard(char **, long *);
+int     PDC_setclipboard(const char *, long);
+
+unsigned long PDC_get_input_fd(void);
+unsigned long PDC_get_key_modifiers(void);
+int     PDC_return_key_modifiers(bool);
+int     PDC_save_key_modifiers(bool);
+
+#ifdef XCURSES
+WINDOW *Xinitscr(int, char **);
+void    XCursesExit(void);
+int     sb_init(void);
+int     sb_set_horz(int, int, int);
+int     sb_set_vert(int, int, int);
+int     sb_get_horz(int *, int *, int *);
+int     sb_get_vert(int *, int *, int *);
+int     sb_refresh(void);
+#endif
+
+/*** Functions defined as macros ***/
+
+/* getch() and ungetch() conflict with some DOS libraries */
+
+#define getch()            wgetch(stdscr)
+#define ungetch(ch)        PDC_ungetch(ch)
+
+#define COLOR_PAIR(n)      (((chtype)(n) << PDC_COLOR_SHIFT) & A_COLOR)
+#define PAIR_NUMBER(n)     (((n) & A_COLOR) >> PDC_COLOR_SHIFT)
+
+/* These will _only_ work as macros */
+
+#define getbegyx(w, y, x)  (y = getbegy(w), x = getbegx(w))
+#define getmaxyx(w, y, x)  (y = getmaxy(w), x = getmaxx(w))
+#define getparyx(w, y, x)  (y = getpary(w), x = getparx(w))
+#define getyx(w, y, x)     (y = getcury(w), x = getcurx(w))
+
+#define getsyx(y, x)       { if (curscr->_leaveit) (y)=(x)=-1; \
+                             else getyx(curscr,(y),(x)); }
+
+#ifdef NCURSES_MOUSE_VERSION
+# define getmouse(x) nc_getmouse(x)
+#endif
+
+/* return codes from PDC_getclipboard() and PDC_setclipboard() calls */
+
+#define PDC_CLIP_SUCCESS         0
+#define PDC_CLIP_ACCESS_ERROR    1
+#define PDC_CLIP_EMPTY           2
+#define PDC_CLIP_MEMORY_ERROR    3
+
+/* PDCurses key modifier masks */
+
+#define PDC_KEY_MODIFIER_SHIFT   1
+#define PDC_KEY_MODIFIER_CONTROL 2
+#define PDC_KEY_MODIFIER_ALT     4
+#define PDC_KEY_MODIFIER_NUMLOCK 8
+
+#if defined(__cplusplus) || defined(__cplusplus__) || defined(__CPLUSPLUS)
+# undef bool
+}
+#endif
+
+#endif  /* __PDCURSES__ */
diff --git a/apps/lib/curses/pdcurses/include/panel.h b/apps/lib/curses/pdcurses/include/panel.h
new file mode 100644
index 0000000..1d7cace
--- /dev/null
+++ b/apps/lib/curses/pdcurses/include/panel.h
@@ -0,0 +1,58 @@
+/* Public Domain Curses */
+
+/* $Id: panel.h,v 1.19 2008/07/13 16:08:16 wmcbrine Exp $ */
+
+/*----------------------------------------------------------------------*
+ *                         Panels for PDCurses                          *
+ *----------------------------------------------------------------------*/
+
+#ifndef __PDCURSES_PANEL_H__
+#define __PDCURSES_PANEL_H__ 1
+
+#include <curses.h>
+
+#if defined(__cplusplus) || defined(__cplusplus__) || defined(__CPLUSPLUS)
+extern "C"
+{
+#endif
+
+typedef struct panelobs
+{
+    struct panelobs *above;
+    struct panel *pan;
+} PANELOBS;
+
+typedef struct panel
+{
+    WINDOW *win;
+    int wstarty;
+    int wendy;
+    int wstartx;
+    int wendx;
+    struct panel *below;
+    struct panel *above;
+    const void *user;
+    struct panelobs *obscure;
+} PANEL;
+
+int     bottom_panel(PANEL *pan);
+int     del_panel(PANEL *pan);
+int     hide_panel(PANEL *pan);
+int     move_panel(PANEL *pan, int starty, int startx);
+PANEL  *new_panel(WINDOW *win);
+PANEL  *panel_above(const PANEL *pan);
+PANEL  *panel_below(const PANEL *pan);
+int     panel_hidden(const PANEL *pan);
+const void *panel_userptr(const PANEL *pan);
+WINDOW *panel_window(const PANEL *pan);
+int     replace_panel(PANEL *pan, WINDOW *win);
+int     set_panel_userptr(PANEL *pan, const void *uptr);
+int     show_panel(PANEL *pan);
+int     top_panel(PANEL *pan);
+void    update_panels(void);
+
+#if defined(__cplusplus) || defined(__cplusplus__) || defined(__CPLUSPLUS)
+}
+#endif
+
+#endif /* __PDCURSES_PANEL_H__ */
diff --git a/apps/lib/curses/pdcurses/pdcurses/Makefile b/apps/lib/curses/pdcurses/pdcurses/Makefile
new file mode 100644
index 0000000..5bae5c6
--- /dev/null
+++ b/apps/lib/curses/pdcurses/pdcurses/Makefile
@@ -0,0 +1,39 @@
+app-$(CONFIG_APP_LIB_PANEL) += panel.o
+app-y += addch.o
+app-y += move.o
+app-y += overlay.o
+app-y += refresh.o
+app-y += terminfo.o
+app-y += window.o
+app-y += util.o
+app-y += inopts.o
+app-y += addstr.o
+app-y += keyname.o
+app-y += instr.o
+app-y += clear.o
+app-y += addchstr.o
+app-y += kernel.o
+app-y += pad.o
+app-y += insstr.o
+app-y += border.o
+app-y += getyx.o
+app-y += getstr.o
+app-y += getch.o
+app-y += termattr.o
+app-y += outopts.o
+app-y += color.o
+app-y += deleteln.o
+app-y += initscr.o
+app-y += slk.o
+app-y += delch.o
+app-y += touch.o
+app-y += mouse.o
+app-y += scanw.o
+app-y += scroll.o
+app-y += printw.o
+app-y += bkgd.o
+app-y += inch.o
+app-y += attr.o
+app-y += insch.o
+app-y += inchstr.o
+app-y += beep.o
diff --git a/apps/lib/curses/pdcurses/pdcurses/README b/apps/lib/curses/pdcurses/pdcurses/README
new file mode 100644
index 0000000..bef1c4c
--- /dev/null
+++ b/apps/lib/curses/pdcurses/pdcurses/README
@@ -0,0 +1,25 @@
+PDCurses Portable Core
+======================
+
+This directory contains core PDCurses source code files common to all 
+platforms.
+
+
+Building
+--------
+
+These modules are built by the platform-specific makefiles, in the 
+platform directories.
+
+
+Distribution Status
+-------------------
+
+The files in this directory are released to the Public Domain.
+
+
+Acknowledgements
+----------------
+
+The panel library was originally provided by
+Warren Tucker <wht@n4hgf.mt-park.ga.us>
diff --git a/apps/lib/curses/pdcurses/pdcurses/addch.c b/apps/lib/curses/pdcurses/pdcurses/addch.c
new file mode 100644
index 0000000..586d1a7
--- /dev/null
+++ b/apps/lib/curses/pdcurses/pdcurses/addch.c
@@ -0,0 +1,408 @@
+/* Public Domain Curses */
+
+#include <curspriv.h>
+
+RCSID("$Id: addch.c,v 1.54 2008/07/13 16:08:17 wmcbrine Exp $")
+
+/*man-start**************************************************************
+
+  Name:                                                         addch
+
+  Synopsis:
+        int addch(const chtype ch);
+        int waddch(WINDOW *win, const chtype ch);
+        int mvaddch(int y, int x, const chtype ch);
+        int mvwaddch(WINDOW *win, int y, int x, const chtype ch);
+        int echochar(const chtype ch);
+        int wechochar(WINDOW *win, const chtype ch);
+
+        int addrawch(chtype ch);
+        int waddrawch(WINDOW *win, chtype ch);
+        int mvaddrawch(int y, int x, chtype ch);
+        int mvwaddrawch(WINDOW *win, int y, int x, chtype ch);
+
+        int add_wch(const cchar_t *wch);
+        int wadd_wch(WINDOW *win, const cchar_t *wch);
+        int mvadd_wch(int y, int x, const cchar_t *wch);
+        int mvwadd_wch(WINDOW *win, int y, int x, const cchar_t *wch);
+        int echo_wchar(const cchar_t *wch);
+        int wecho_wchar(WINDOW *win, const cchar_t *wch);
+
+  Description:
+        addch() adds the chtype ch to the default window (stdscr) at the
+        current cursor position, and advances the cursor. Note that
+        chtypes can convey both text (a single character) and
+        attributes, including a color pair. add_wch() is the wide-
+        character version of this function, taking a pointer to a
+        cchar_t instead of a chtype.
+
+        waddch() is like addch(), but also lets you specify the window.
+        (This is in fact the core output routine.) wadd_wch() is the
+        wide version.
+
+        mvaddch() moves the cursor to the specified (y, x) position, and
+        adds ch to stdscr. mvadd_wch() is the wide version.
+
+        mvwaddch() moves the cursor to the specified position and adds 
+        ch to the specified window. mvwadd_wch() is the wide version.
+
+        echochar() adds ch to stdscr at the current cursor position and 
+        calls refresh(). echo_wchar() is the wide version.
+
+        wechochar() adds ch to the specified window and calls 
+        wrefresh(). wecho_wchar() is the wide version.
+
+        addrawch(), waddrawch(), mvaddrawch() and mvwaddrawch() are
+        PDCurses-specific wrappers for addch() etc. that disable the 
+        translation of control characters.
+
+        The following applies to all these functions:
+
+        If the cursor moves on to the right margin, an automatic newline 
+        is performed.  If scrollok is enabled, and a character is added 
+        to the bottom right corner of the window, the scrolling region 
+        will be scrolled up one line.  If scrolling is not allowed, ERR 
+        will be returned.
+
+        If ch is a tab, newline, or backspace, the cursor will be moved 
+        appropriately within the window.  If ch is a newline, the 
+        clrtoeol routine is called before the cursor is moved to the 
+        beginning of the next line.  If newline mapping is off, the 
+        cursor will be moved to the next line, but the x coordinate will 
+        be unchanged.  If ch is a tab the cursor is moved to the next 
+        tab position within the window.  If ch is another control 
+        character, it will be drawn in the ^X notation.  Calling the 
+        inch() routine after adding a control character returns the 
+        representation of the control character, not the control 
+        character.
+
+        Video attributes can be combined with a character by ORing them 
+        into the parameter. Text, including attributes, can be copied 
+        from one place to another by using inch() and addch().
+
+        Note that in PDCurses, for now, a cchar_t and a chtype are the
+        same. The text field is 16 bits wide, and is treated as Unicode
+        (UCS-2) when PDCurses is built with wide-character support
+        (define PDC_WIDE). So, in functions that take a chtype, like
+        addch(), both the wide and narrow versions will handle Unicode.
+        But for portability, you should use the wide functions.
+
+  Return Value:
+        All functions return OK on success and ERR on error.
+
+  Portability                                X/Open    BSD    SYS V
+        addch                                   Y       Y       Y
+        waddch                                  Y       Y       Y
+        mvaddch                                 Y       Y       Y
+        mvwaddch                                Y       Y       Y
+        echochar                                Y       -      3.0
+        wechochar                               Y       -      3.0
+        addrawch                                -       -       -
+        waddrawch                               -       -       -
+        mvaddrawch                              -       -       -
+        mvwaddrawch                             -       -       -
+        add_wch                                 Y
+        wadd_wch                                Y
+        mvadd_wch                               Y
+        mvwadd_wch                              Y
+        echo_wchar                              Y
+        wecho_wchar                             Y
+
+**man-end****************************************************************/
+
+int waddch(WINDOW *win, const chtype ch)
+{
+    int x, y;
+    chtype text, attr;
+    bool xlat;
+
+    PDC_LOG(("waddch() - called: win=%p ch=%x (text=%c attr=0x%x)\n",
+             win, ch, ch & A_CHARTEXT, ch & A_ATTRIBUTES));
+
+    if (!win)
+        return ERR;
+
+    x = win->_curx;
+    y = win->_cury;
+
+    if (y > win->_maxy || x > win->_maxx || y < 0 || x < 0)
+        return ERR;
+
+    xlat = !SP->raw_out && !(ch & A_ALTCHARSET);
+    text = ch & A_CHARTEXT;
+    attr = ch & A_ATTRIBUTES;
+
+    if (xlat && (text < ' ' || text == 0x7f))
+    {
+        int x2;
+
+        switch (text)
+        {
+        case '\t':
+            for (x2 = ((x / TABSIZE) + 1) * TABSIZE; x < x2; x++)
+            {
+                if (waddch(win, attr | ' ') == ERR)
+                    return ERR;
+
+                /* if tab to next line, exit the loop */
+
+                if (!win->_curx)
+                    break;
+            }
+            return OK;
+
+        case '\n':
+            /* if lf -> crlf */
+
+            if (!SP->raw_out)
+                x = 0;
+
+            wclrtoeol(win);
+
+            if (++y > win->_bmarg)
+            {
+                y--;
+
+                if (wscrl(win, 1) == ERR)
+                    return ERR;
+            }
+
+            break;
+
+        case '\b':
+            /* don't back over left margin */
+
+            if (--x < 0)
+        case '\r':
+                x = 0;
+
+            break;
+
+        case 0x7f:
+            if (waddch(win, attr | '^') == ERR)
+                return ERR;
+
+            return waddch(win, attr | '?');
+
+        default:
+            /* handle control chars */
+
+            if (waddch(win, attr | '^') == ERR)
+                return ERR;
+
+            return waddch(win, ch + '@');
+        }
+    }
+    else
+    {
+        /* If the incoming character doesn't have its own attribute,
+           then use the current attributes for the window. If it has
+           attributes but not a color component, OR the attributes to
+           the current attributes for the window. If it has a color
+           component, use the attributes solely from the incoming
+           character. */
+
+        if (!(attr & A_COLOR))
+            attr |= win->_attrs;
+
+        /* wrs (4/10/93): Apply the same sort of logic for the window 
+           background, in that it only takes precedence if other color 
+           attributes are not there and that the background character 
+           will only print if the printing character is blank. */
+
+        if (!(attr & A_COLOR))
+            attr |= win->_bkgd & A_ATTRIBUTES;
+        else
+            attr |= win->_bkgd & (A_ATTRIBUTES ^ A_COLOR);
+
+        if (text == ' ')
+            text = win->_bkgd & A_CHARTEXT;
+
+        /* Add the attribute back into the character. */
+
+        text |= attr;
+
+        /* Only change _firstch/_lastch if the character to be added is
+           different from the character/attribute that is already in
+           that position in the window. */
+
+        if (win->_y[y][x] != text)
+        {
+            if (win->_firstch[y] == _NO_CHANGE)
+                win->_firstch[y] = win->_lastch[y] = x;
+            else
+                if (x < win->_firstch[y])
+                    win->_firstch[y] = x;
+                else
+                    if (x > win->_lastch[y])
+                        win->_lastch[y] = x;
+
+            win->_y[y][x] = text;
+        }
+
+        if (++x >= win->_maxx)
+        {
+            /* wrap around test */
+
+            x = 0;
+
+            if (++y > win->_bmarg)
+            {
+                y--;
+
+                if (wscrl(win, 1) == ERR)
+                {
+                    PDC_sync(win);
+                    return ERR;
+                }
+            }
+        }
+    }
+
+    win->_curx = x;
+    win->_cury = y;
+
+    if (win->_immed)
+        wrefresh(win);
+    if (win->_sync)
+        wsyncup(win);
+
+    return OK;
+}
+
+int addch(const chtype ch)
+{
+    PDC_LOG(("addch() - called: ch=%x\n", ch));
+
+    return waddch(stdscr, ch);
+}
+
+int mvaddch(int y, int x, const chtype ch)
+{
+    PDC_LOG(("mvaddch() - called: y=%d x=%d ch=%x\n", y, x, ch));
+
+    if (move(y,x) == ERR)
+        return ERR;
+
+    return waddch(stdscr, ch);
+}
+
+int mvwaddch(WINDOW *win, int y, int x, const chtype ch)
+{
+    PDC_LOG(("mvwaddch() - called: win=%p y=%d x=%d ch=%d\n", win, y, x, ch));
+
+    if (wmove(win, y, x) == ERR)
+        return ERR;
+
+    return waddch(win, ch);
+}
+
+int echochar(const chtype ch)
+{
+    PDC_LOG(("echochar() - called: ch=%x\n", ch));
+
+    return wechochar(stdscr, ch);
+}
+
+int wechochar(WINDOW *win, const chtype ch)
+{
+    PDC_LOG(("wechochar() - called: win=%p ch=%x\n", win, ch));
+
+    if (waddch(win, ch) == ERR)
+        return ERR;
+
+    return wrefresh(win);
+}
+
+int waddrawch(WINDOW *win, chtype ch)
+{
+    PDC_LOG(("waddrawch() - called: win=%p ch=%x (text=%c attr=0x%x)\n",
+             win, ch, ch & A_CHARTEXT, ch & A_ATTRIBUTES));
+
+    if ((ch & A_CHARTEXT) < ' ' || (ch & A_CHARTEXT) == 0x7f)
+        ch |= A_ALTCHARSET;
+
+    return waddch(win, ch);
+}
+
+int addrawch(chtype ch)
+{
+    PDC_LOG(("addrawch() - called: ch=%x\n", ch));
+
+    return waddrawch(stdscr, ch);
+}
+
+int mvaddrawch(int y, int x, chtype ch)
+{
+    PDC_LOG(("mvaddrawch() - called: y=%d x=%d ch=%d\n", y, x, ch));
+
+    if (move(y, x) == ERR)
+        return ERR;
+
+    return waddrawch(stdscr, ch);
+}
+
+int mvwaddrawch(WINDOW *win, int y, int x, chtype ch)
+{
+    PDC_LOG(("mvwaddrawch() - called: win=%p y=%d x=%d ch=%d\n",
+             win, y, x, ch));
+
+    if (wmove(win, y, x) == ERR)
+        return ERR;
+
+    return waddrawch(win, ch);
+}
+
+#ifdef PDC_WIDE
+int wadd_wch(WINDOW *win, const cchar_t *wch)
+{
+    PDC_LOG(("wadd_wch() - called: win=%p wch=%x\n", win, *wch));
+
+    return wch ? waddch(win, *wch) : ERR;
+}
+
+int add_wch(const cchar_t *wch)
+{
+    PDC_LOG(("add_wch() - called: wch=%x\n", *wch));
+
+    return wadd_wch(stdscr, wch);
+}
+
+int mvadd_wch(int y, int x, const cchar_t *wch)
+{
+    PDC_LOG(("mvaddch() - called: y=%d x=%d wch=%x\n", y, x, *wch));
+
+    if (move(y,x) == ERR)
+        return ERR;
+
+    return wadd_wch(stdscr, wch);
+}
+
+int mvwadd_wch(WINDOW *win, int y, int x, const cchar_t *wch)
+{
+    PDC_LOG(("mvwaddch() - called: win=%p y=%d x=%d wch=%d\n",
+             win, y, x, *wch));
+
+    if (wmove(win, y, x) == ERR)
+        return ERR;
+
+    return wadd_wch(win, wch);
+}
+
+int echo_wchar(const cchar_t *wch)
+{
+    PDC_LOG(("echo_wchar() - called: wch=%x\n", *wch));
+
+    return wecho_wchar(stdscr, wch);
+}
+
+int wecho_wchar(WINDOW *win, const cchar_t *wch)
+{
+    PDC_LOG(("wecho_wchar() - called: win=%p wch=%x\n", win, *wch));
+
+    if (!wch || (wadd_wch(win, wch) == ERR))
+        return ERR;
+
+    return wrefresh(win);
+}
+#endif
diff --git a/apps/lib/curses/pdcurses/pdcurses/addchstr.c b/apps/lib/curses/pdcurses/pdcurses/addchstr.c
new file mode 100644
index 0000000..0eea85a
--- /dev/null
+++ b/apps/lib/curses/pdcurses/pdcurses/addchstr.c
@@ -0,0 +1,242 @@
+/* Public Domain Curses */
+
+#include <curspriv.h>
+
+RCSID("$Id: addchstr.c,v 1.43 2008/07/13 16:08:17 wmcbrine Exp $")
+
+/*man-start**************************************************************
+
+  Name:                                                         addchstr
+
+  Synopsis:
+        int addchstr(const chtype *ch);
+        int addchnstr(const chtype *ch, int n);
+        int waddchstr(WINDOW *win, const chtype *ch);
+        int waddchnstr(WINDOW *win, const chtype *ch, int n);
+        int mvaddchstr(int y, int x, const chtype *ch);
+        int mvaddchnstr(int y, int x, const chtype *ch, int n);
+        int mvwaddchstr(WINDOW *, int y, int x, const chtype *ch);
+        int mvwaddchnstr(WINDOW *, int y, int x, const chtype *ch, int n);
+
+        int add_wchstr(const cchar_t *wch);
+        int add_wchnstr(const cchar_t *wch, int n);
+        int wadd_wchstr(WINDOW *win, const cchar_t *wch);
+        int wadd_wchnstr(WINDOW *win, const cchar_t *wch, int n);
+        int mvadd_wchstr(int y, int x, const cchar_t *wch);
+        int mvadd_wchnstr(int y, int x, const cchar_t *wch, int n);
+        int mvwadd_wchstr(WINDOW *win, int y, int x, const cchar_t *wch);
+        int mvwadd_wchnstr(WINDOW *win, int y, int x, const cchar_t *wch,
+                int n);
+
+  Description:
+        These routines write a chtype or cchar_t string directly into 
+        the window structure, starting at the current or specified 
+        position. The four routines with n as the last argument copy at 
+        most n elements, but no more than will fit on the line. If n = 
+        -1 then the whole string is copied, up to the maximum number 
+        that will fit on the line.
+
+        The cursor position is not advanced. These routines do not check 
+        for newline or other special characters, nor does any line 
+        wrapping occur.
+
+  Return Value:
+        All functions return OK or ERR.
+
+  Portability                                X/Open    BSD    SYS V
+        addchstr                                Y       -      4.0
+        waddchstr                               Y       -      4.0
+        mvaddchstr                              Y       -      4.0
+        mvwaddchstr                             Y       -      4.0
+        addchnstr                               Y       -      4.0
+        waddchnstr                              Y       -      4.0
+        mvaddchnstr                             Y       -      4.0
+        mvwaddchnstr                            Y       -      4.0
+        add_wchstr                              Y
+        wadd_wchstr                             Y
+        mvadd_wchstr                            Y
+        mvwadd_wchstr                           Y
+        add_wchnstr                             Y
+        wadd_wchnstr                            Y
+        mvadd_wchnstr                           Y
+        mvwadd_wchnstr                          Y
+
+**man-end****************************************************************/
+
+#include <string.h>
+
+int waddchnstr(WINDOW *win, const chtype *ch, int n)
+{
+    int y, x, maxx, minx;
+    chtype *ptr;
+
+    PDC_LOG(("waddchnstr() - called: win=%p n=%d\n", win, n));
+
+    if (!win || !ch || !n || n < -1)
+        return ERR;
+
+    x = win->_curx;
+    y = win->_cury;
+    ptr = &(win->_y[y][x]);
+
+    if (n == -1 || n > win->_maxx - x)
+        n = win->_maxx - x;
+
+    minx = win->_firstch[y];
+    maxx = win->_lastch[y];
+
+    for (; n && *ch; n--, x++, ptr++, ch++)
+    {
+        if (*ptr != *ch)
+        {
+            if (x < minx || minx == _NO_CHANGE)
+                minx = x;
+
+            if (x > maxx)
+                maxx = x;
+
+            PDC_LOG(("y %d x %d minx %d maxx %d *ptr %x *ch"
+                     " %x firstch: %d lastch: %d\n",
+                     y, x, minx, maxx, *ptr, *ch, 
+                     win->_firstch[y], win->_lastch[y]));
+
+            *ptr = *ch;
+        }
+    }
+
+    win->_firstch[y] = minx;
+    win->_lastch[y] = maxx;
+
+    return OK;
+}
+
+int addchstr(const chtype *ch)
+{
+    PDC_LOG(("addchstr() - called\n"));
+
+    return waddchnstr(stdscr, ch, -1);
+}
+
+int addchnstr(const chtype *ch, int n)
+{
+    PDC_LOG(("addchnstr() - called\n"));
+
+    return waddchnstr(stdscr, ch, n);
+}
+
+int waddchstr(WINDOW *win, const chtype *ch)
+{
+    PDC_LOG(("waddchstr() - called: win=%p\n", win));
+
+    return waddchnstr(win, ch, -1);
+}
+
+int mvaddchstr(int y, int x, const chtype *ch)
+{
+    PDC_LOG(("mvaddchstr() - called: y %d x %d\n", y, x));
+
+    if (move(y, x) == ERR)
+        return ERR;
+
+    return waddchnstr(stdscr, ch, -1);
+}
+
+int mvaddchnstr(int y, int x, const chtype *ch, int n)
+{
+    PDC_LOG(("mvaddchnstr() - called: y %d x %d n %d\n", y, x, n));
+
+    if (move(y, x) == ERR)
+        return ERR;
+
+    return waddchnstr(stdscr, ch, n);
+}
+
+int mvwaddchstr(WINDOW *win, int y, int x, const chtype *ch)
+{
+    PDC_LOG(("mvwaddchstr() - called:\n"));
+
+    if (wmove(win, y, x) == ERR)
+        return ERR;
+
+    return waddchnstr(win, ch, -1);
+}
+
+int mvwaddchnstr(WINDOW *win, int y, int x, const chtype *ch, int n)
+{
+    PDC_LOG(("mvwaddchnstr() - called: y %d x %d n %d \n", y, x, n));
+
+    if (wmove(win, y, x) == ERR)
+        return ERR;
+
+    return waddchnstr(win, ch, n);
+}
+
+#ifdef PDC_WIDE
+int wadd_wchnstr(WINDOW *win, const cchar_t *wch, int n)
+{
+    PDC_LOG(("wadd_wchnstr() - called: win=%p n=%d\n", win, n));
+
+    return waddchnstr(win, wch, n);
+}
+
+int add_wchstr(const cchar_t *wch)
+{
+    PDC_LOG(("add_wchstr() - called\n"));
+
+    return wadd_wchnstr(stdscr, wch, -1);
+}
+
+int add_wchnstr(const cchar_t *wch, int n)
+{
+    PDC_LOG(("add_wchnstr() - called\n"));
+
+    return wadd_wchnstr(stdscr, wch, n);
+}
+
+int wadd_wchstr(WINDOW *win, const cchar_t *wch)
+{
+    PDC_LOG(("wadd_wchstr() - called: win=%p\n", win));
+
+    return wadd_wchnstr(win, wch, -1);
+}
+
+int mvadd_wchstr(int y, int x, const cchar_t *wch)
+{
+    PDC_LOG(("mvadd_wchstr() - called: y %d x %d\n", y, x));
+
+    if (move(y, x) == ERR)
+        return ERR;
+
+    return wadd_wchnstr(stdscr, wch, -1);
+}
+
+int mvadd_wchnstr(int y, int x, const cchar_t *wch, int n)
+{
+    PDC_LOG(("mvadd_wchnstr() - called: y %d x %d n %d\n", y, x, n));
+
+    if (move(y, x) == ERR)
+        return ERR;
+
+    return wadd_wchnstr(stdscr, wch, n);
+}
+
+int mvwadd_wchstr(WINDOW *win, int y, int x, const cchar_t *wch)
+{
+    PDC_LOG(("mvwadd_wchstr() - called:\n"));
+
+    if (wmove(win, y, x) == ERR)
+        return ERR;
+
+    return wadd_wchnstr(win, wch, -1);
+}
+
+int mvwadd_wchnstr(WINDOW *win, int y, int x, const cchar_t *wch, int n)
+{
+    PDC_LOG(("mvwadd_wchnstr() - called: y %d x %d n %d \n", y, x, n));
+
+    if (wmove(win, y, x) == ERR)
+        return ERR;
+
+    return wadd_wchnstr(win, wch, n);
+}
+#endif
diff --git a/apps/lib/curses/pdcurses/pdcurses/addstr.c b/apps/lib/curses/pdcurses/pdcurses/addstr.c
new file mode 100644
index 0000000..ca19fd0
--- /dev/null
+++ b/apps/lib/curses/pdcurses/pdcurses/addstr.c
@@ -0,0 +1,237 @@
+/* Public Domain Curses */
+
+#include <curspriv.h>
+
+RCSID("$Id: addstr.c,v 1.44 2008/07/13 16:08:17 wmcbrine Exp $")
+
+/*man-start**************************************************************
+
+  Name:                                                         addstr
+
+  Synopsis:
+        int addstr(const char *str);
+        int addnstr(const char *str, int n);
+        int waddstr(WINDOW *win, const char *str);
+        int waddnstr(WINDOW *win, const char *str, int n);
+        int mvaddstr(int y, int x, const char *str);
+        int mvaddnstr(int y, int x, const char *str, int n);
+        int mvwaddstr(WINDOW *win, int y, int x, const char *str);
+        int mvwaddnstr(WINDOW *win, int y, int x, const char *str, int n);
+
+        int addwstr(const wchar_t *wstr);
+        int addnwstr(const wchar_t *wstr, int n);
+        int waddwstr(WINDOW *win, const wchar_t *wstr);
+        int waddnwstr(WINDOW *win, const wchar_t *wstr, int n);
+        int mvaddwstr(int y, int x, const wchar_t *wstr);
+        int mvaddnwstr(int y, int x, const wchar_t *wstr, int n);
+        int mvwaddwstr(WINDOW *win, int y, int x, const wchar_t *wstr);
+        int mvwaddnwstr(WINDOW *win, int y, int x, const wchar_t *wstr, int n);
+
+  Description:
+        These routines write all the characters of the null-terminated
+        string str or wide-character string wstr to the given window.
+        The functionality is similar to calling waddch() once for each
+        character in the string; except that, when PDCurses is built
+        with wide-character support enabled, the narrow-character
+        functions treat the string as a multibyte string in the current
+        locale, and convert it. The routines with n as the last
+        argument write at most n characters; if n is negative, then the
+        entire string will be added.
+
+  Return Value:
+        All functions return OK or ERR.
+
+  Portability                                X/Open    BSD    SYS V
+        addstr                                  Y       Y       Y
+        waddstr                                 Y       Y       Y
+        mvaddstr                                Y       Y       Y
+        mvwaddstr                               Y       Y       Y
+        addnstr                                 Y       -      4.0
+        waddnstr                                Y       -      4.0
+        mvaddnstr                               Y       -      4.0
+        mvwaddnstr                              Y       -      4.0
+        addwstr                                 Y
+        waddwstr                                Y
+        mvaddwstr                               Y
+        mvwaddwstr                              Y
+        addnwstr                                Y
+        waddnwstr                               Y
+        mvaddnwstr                              Y
+        mvwaddnwstr                             Y
+
+**man-end****************************************************************/
+
+int waddnstr(WINDOW *win, const char *str, int n)
+{
+    int i = 0;
+
+    PDC_LOG(("waddnstr() - called: string=\"%s\" n %d \n", str, n));
+
+    if (!win || !str)
+        return ERR;
+
+    while (str[i] && (i < n || n < 0))
+    {
+#ifdef PDC_WIDE
+        wchar_t wch;
+        int retval = PDC_mbtowc(&wch, str + i, n >= 0 ? n - i : 6);
+
+        if (retval <= 0)
+            return OK;
+
+        i += retval;
+#else
+        chtype wch = (unsigned char)(str[i++]);
+#endif
+        if (waddch(win, wch) == ERR)
+            return ERR;
+    }
+
+    return OK;
+}
+
+int addstr(const char *str)
+{
+    PDC_LOG(("addstr() - called: string=\"%s\"\n", str));
+
+    return waddnstr(stdscr, str, -1);
+}
+
+int addnstr(const char *str, int n)
+{
+    PDC_LOG(("addnstr() - called: string=\"%s\" n %d \n", str, n));
+
+    return waddnstr(stdscr, str, n);
+}
+
+int waddstr(WINDOW *win, const char *str)
+{
+    PDC_LOG(("waddstr() - called: string=\"%s\"\n", str));
+
+    return waddnstr(win, str, -1);
+}
+
+int mvaddstr(int y, int x, const char *str)
+{
+    PDC_LOG(("mvaddstr() - called: y %d x %d string=\"%s\"\n", y, x, str));
+
+    if (move(y, x) == ERR)
+        return ERR;
+
+    return waddnstr(stdscr, str, -1);
+}
+
+int mvaddnstr(int y, int x, const char *str, int n)
+{
+    PDC_LOG(("mvaddnstr() - called: y %d x %d string=\"%s\" n %d \n",
+             y, x, str, n));
+
+    if (move(y, x) == ERR)
+        return ERR;
+
+    return waddnstr(stdscr, str, n);
+}
+
+int mvwaddstr(WINDOW *win, int y, int x, const char *str)
+{
+    PDC_LOG(("mvwaddstr() - called: string=\"%s\"\n", str));
+
+    if (wmove(win, y, x) == ERR)
+        return ERR;
+
+    return waddnstr(win, str, -1);
+}
+
+int mvwaddnstr(WINDOW *win, int y, int x, const char *str, int n)
+{
+    PDC_LOG(("mvwaddnstr() - called: y %d x %d string=\"%s\" n %d \n",
+             y, x, str, n));
+
+    if (wmove(win, y, x) == ERR)
+        return ERR;
+
+    return waddnstr(win, str, n);
+}
+
+#ifdef PDC_WIDE
+int waddnwstr(WINDOW *win, const wchar_t *wstr, int n)
+{
+    int i = 0;
+
+    PDC_LOG(("waddnwstr() - called\n"));
+
+    if (!win || !wstr)
+        return ERR;
+
+    while (wstr[i] && (i < n || n < 0))
+    {
+        chtype wch = wstr[i++];
+
+        if (waddch(win, wch) == ERR)
+            return ERR;
+    }
+
+    return OK;
+}
+
+int addwstr(const wchar_t *wstr)
+{
+    PDC_LOG(("addwstr() - called\n"));
+
+    return waddnwstr(stdscr, wstr, -1);
+}
+
+int addnwstr(const wchar_t *wstr, int n)
+{
+    PDC_LOG(("addnwstr() - called\n"));
+
+    return waddnwstr(stdscr, wstr, n);
+}
+
+int waddwstr(WINDOW *win, const wchar_t *wstr)
+{
+    PDC_LOG(("waddwstr() - called\n"));
+
+    return waddnwstr(win, wstr, -1);
+}
+
+int mvaddwstr(int y, int x, const wchar_t *wstr)
+{
+    PDC_LOG(("mvaddstr() - called\n"));
+
+    if (move(y, x) == ERR)
+        return ERR;
+
+    return waddnwstr(stdscr, wstr, -1);
+}
+
+int mvaddnwstr(int y, int x, const wchar_t *wstr, int n)
+{
+    PDC_LOG(("mvaddnstr() - called\n"));
+
+    if (move(y, x) == ERR)
+        return ERR;
+
+    return waddnwstr(stdscr, wstr, n);
+}
+
+int mvwaddwstr(WINDOW *win, int y, int x, const wchar_t *wstr)
+{
+    PDC_LOG(("mvwaddstr() - called\n"));
+
+    if (wmove(win, y, x) == ERR)
+        return ERR;
+
+    return waddnwstr(win, wstr, -1);
+}
+
+int mvwaddnwstr(WINDOW *win, int y, int x, const wchar_t *wstr, int n)
+{
+    PDC_LOG(("mvwaddnstr() - called\n"));
+
+    if (wmove(win, y, x) == ERR)
+        return ERR;
+
+    return waddnwstr(win, wstr, n);
+}
+#endif
diff --git a/apps/lib/curses/pdcurses/pdcurses/attr.c b/apps/lib/curses/pdcurses/pdcurses/attr.c
new file mode 100644
index 0000000..532384b
--- /dev/null
+++ b/apps/lib/curses/pdcurses/pdcurses/attr.c
@@ -0,0 +1,349 @@
+/* Public Domain Curses */
+
+#include <curspriv.h>
+
+RCSID("$Id: attr.c,v 1.41 2008/07/13 16:08:17 wmcbrine Exp $")
+
+/*man-start**************************************************************
+
+  Name:                                                         attr
+
+  Synopsis:
+        int attroff(chtype attrs);
+        int wattroff(WINDOW *win, chtype attrs);
+        int attron(chtype attrs);
+        int wattron(WINDOW *win, chtype attrs);
+        int attrset(chtype attrs);
+        int wattrset(WINDOW *win, chtype attrs);
+        int standend(void);
+        int wstandend(WINDOW *win);
+        int standout(void);
+        int wstandout(WINDOW *win);
+
+        int color_set(short color_pair, void *opts);
+        int wcolor_set(WINDOW *win, short color_pair, void *opts);
+
+        int attr_get(attr_t *attrs, short *color_pair, void *opts);
+        int attr_off(attr_t attrs, void *opts);
+        int attr_on(attr_t attrs, void *opts);
+        int attr_set(attr_t attrs, short color_pair, void *opts);
+        int wattr_get(WINDOW *win, attr_t *attrs, short *color_pair,
+                void *opts);
+        int wattr_off(WINDOW *win, attr_t attrs, void *opts);
+        int wattr_on(WINDOW *win, attr_t attrs, void *opts);
+        int wattr_set(WINDOW *win, attr_t attrs, short color_pair,
+                void *opts);
+
+        int chgat(int n, attr_t attr, short color, const void *opts);
+        int mvchgat(int y, int x, int n, attr_t attr, short color,
+                const void *opts);
+        int mvwchgat(WINDOW *win, int y, int x, int n, attr_t attr,
+                short color, const void *opts);
+        int wchgat(WINDOW *win, int n, attr_t attr, short color,
+                const void *opts);
+
+        chtype getattrs(WINDOW *win);
+
+  Description:
+        These functions manipulate the current attributes and/or colors 
+        of the named window.  These attributes can be any combination 
+        of A_STANDOUT, A_REVERSE, A_BOLD, A_DIM, A_BLINK, A_UNDERLINE.
+
+        These constants are defined in <curses.h> and can be combined
+        with the bitwise-OR operator (|).
+
+        The current attributes of a window are applied to all chtypes 
+        that are written into the window with waddch(). Attributes are 
+        a property of the chtype, and move with the character through 
+        any scrolling or insert/delete operations.
+
+        attrset() sets the current attributes of the given window to 
+        attrs. attroff() turns off the named attributes without 
+        affecting any other attributes; attron() turns them on. 
+        color_set() sets the window color to the value of color_pair.
+
+        standout() is the same as attron(A_STANDOUT). standend() is the 
+        same as attrset(A_NORMAL); that is, it turns off all attributes.
+
+  Return Value:
+        All functions return OK on success and ERR on error.
+
+  Portability                                X/Open    BSD    SYS V
+        attroff                                 Y       Y       Y
+        wattroff                                Y       Y       Y
+        attron                                  Y       Y       Y
+        wattron                                 Y       Y       Y
+        attrset                                 Y       Y       Y
+        wattrset                                Y       Y       Y
+        standend                                Y       Y       Y
+        wstandend                               Y       Y       Y
+        standout                                Y       Y       Y
+        wstandout                               Y       Y       Y
+        color_set                               Y
+        wcolor_set                              Y
+        attr_get                                Y
+        wattr_get                               Y
+        attr_on                                 Y
+        wattr_on                                Y
+        attr_off                                Y
+        wattr_off                               Y
+        attr_set                                Y
+        wattr_set                               Y
+        chgat                                   Y
+        wchgat                                  Y
+        mvchgat                                 Y
+        mvwchgat                                Y
+        getattrs                                -
+
+**man-end****************************************************************/
+
+int wattroff(WINDOW *win, chtype attrs)
+{
+    PDC_LOG(("wattroff() - called\n"));
+
+    if (!win)
+        return ERR;
+
+    win->_attrs &= (~attrs & A_ATTRIBUTES);
+
+    return OK;
+}
+
+int attroff(chtype attrs)
+{
+    PDC_LOG(("attroff() - called\n"));
+
+    return wattroff(stdscr, attrs);
+}
+
+int wattron(WINDOW *win, chtype attrs)
+{
+    chtype newcolr, oldcolr, newattr, oldattr;
+
+    PDC_LOG(("wattron() - called\n"));
+
+    if (!win)
+        return ERR;
+
+    if ((win->_attrs & A_COLOR) && (attrs & A_COLOR)) 
+    {
+        oldcolr = win->_attrs & A_COLOR;
+        oldattr = win->_attrs ^ oldcolr;
+        newcolr = attrs & A_COLOR;
+        newattr = (attrs & A_ATTRIBUTES) ^ newcolr;
+        newattr |= oldattr;
+        win->_attrs = newattr | newcolr;
+    }
+    else
+        win->_attrs |= (attrs & A_ATTRIBUTES);
+
+    return OK;
+}
+
+int attron(chtype attrs)
+{
+    PDC_LOG(("attron() - called\n"));
+
+    return wattron(stdscr, attrs);
+}
+
+int wattrset(WINDOW *win, chtype attrs)
+{
+    PDC_LOG(("wattrset() - called\n"));
+
+    if (!win)
+        return ERR;
+
+    win->_attrs = attrs & A_ATTRIBUTES;
+
+    return OK;
+}
+
+int attrset(chtype attrs)
+{
+    PDC_LOG(("attrset() - called\n"));
+
+    return wattrset(stdscr, attrs);
+}
+
+int standend(void)
+{
+    PDC_LOG(("standend() - called\n"));
+
+    return wattrset(stdscr, A_NORMAL);
+}
+
+int standout(void)
+{
+    PDC_LOG(("standout() - called\n"));
+
+    return wattrset(stdscr, A_STANDOUT);
+}
+
+int wstandend(WINDOW *win)
+{
+    PDC_LOG(("wstandend() - called\n"));
+
+    return wattrset(win, A_NORMAL);
+}
+
+int wstandout(WINDOW *win)
+{
+    PDC_LOG(("wstandout() - called\n"));
+
+    return wattrset(win, A_STANDOUT);
+}
+
+chtype getattrs(WINDOW *win)
+{
+    return win ? win->_attrs : 0;
+}
+
+int wcolor_set(WINDOW *win, short color_pair, void *opts)
+{
+    PDC_LOG(("wcolor_set() - called\n"));
+
+    if (!win)
+        return ERR;
+
+    win->_attrs = (win->_attrs & ~A_COLOR) | COLOR_PAIR(color_pair);
+
+    return OK;
+}
+
+int color_set(short color_pair, void *opts)
+{
+    PDC_LOG(("color_set() - called\n"));
+
+    return wcolor_set(stdscr, color_pair, opts);
+}
+
+int wattr_get(WINDOW *win, attr_t *attrs, short *color_pair, void *opts)
+{
+    PDC_LOG(("wattr_get() - called\n"));
+
+    if (!win)
+        return ERR;
+
+    if (attrs)
+        *attrs = win->_attrs & (A_ATTRIBUTES & ~A_COLOR);
+
+    if (color_pair)
+        *color_pair = PAIR_NUMBER(win->_attrs);
+
+    return OK;
+}
+
+int attr_get(attr_t *attrs, short *color_pair, void *opts)
+{
+    PDC_LOG(("attr_get() - called\n"));
+
+    return wattr_get(stdscr, attrs, color_pair, opts);
+}
+
+int wattr_off(WINDOW *win, attr_t attrs, void *opts)
+{
+    PDC_LOG(("wattr_off() - called\n"));
+
+    return wattroff(win, attrs);
+}
+
+int attr_off(attr_t attrs, void *opts)
+{
+    PDC_LOG(("attr_off() - called\n"));
+
+    return wattroff(stdscr, attrs);
+}
+
+int wattr_on(WINDOW *win, attr_t attrs, void *opts)
+{
+    PDC_LOG(("wattr_off() - called\n"));
+
+    return wattron(win, attrs);
+}
+
+int attr_on(attr_t attrs, void *opts)
+{
+    PDC_LOG(("attr_on() - called\n"));
+
+    return wattron(stdscr, attrs);
+}
+
+int wattr_set(WINDOW *win, attr_t attrs, short color_pair, void *opts)
+{
+    PDC_LOG(("wattr_set() - called\n"));
+
+    if (!win)
+        return ERR;
+
+    win->_attrs = (attrs & (A_ATTRIBUTES & ~A_COLOR)) | COLOR_PAIR(color_pair);
+
+    return OK;
+}
+
+int attr_set(attr_t attrs, short color_pair, void *opts)
+{
+    PDC_LOG(("attr_get() - called\n"));
+
+    return wattr_set(stdscr, attrs, color_pair, opts);
+}
+
+int wchgat(WINDOW *win, int n, attr_t attr, short color, const void *opts)
+{
+    chtype *dest, newattr;
+    int startpos, endpos;
+
+    PDC_LOG(("wchgat() - called\n"));
+
+    if (!win)
+        return ERR;
+
+    newattr = (attr & A_ATTRIBUTES) | COLOR_PAIR(color);
+
+    startpos = win->_curx;
+    endpos = ((n < 0) ? win->_maxx : min(startpos + n, win->_maxx)) - 1;
+    dest = win->_y[win->_cury];
+
+    for (n = startpos; n <= endpos; n++)
+        dest[n] = (dest[n] & A_CHARTEXT) | newattr;
+
+    n = win->_cury;
+
+    if (startpos < win->_firstch[n] || win->_firstch[n] == _NO_CHANGE)
+        win->_firstch[n] = startpos;
+
+    if (endpos > win->_lastch[n])
+        win->_lastch[n] = endpos;
+
+    PDC_sync(win);
+
+    return OK;
+}
+
+int chgat(int n, attr_t attr, short color, const void *opts)
+{
+    PDC_LOG(("chgat() - called\n"));
+
+    return wchgat(stdscr, n, attr, color, opts);
+}
+
+int mvchgat(int y, int x, int n, attr_t attr, short color, const void *opts)
+{
+    PDC_LOG(("mvchgat() - called\n"));
+
+    if (move(y, x) == ERR)
+        return ERR;
+
+    return wchgat(stdscr, n, attr, color, opts);
+}
+
+int mvwchgat(WINDOW *win, int y, int x, int n, attr_t attr, short color,
+             const void *opts)
+{
+    PDC_LOG(("mvwchgat() - called\n"));
+
+    if (wmove(win, y, x) == ERR)
+        return ERR;
+
+    return wchgat(win, n, attr, color, opts);
+}
diff --git a/apps/lib/curses/pdcurses/pdcurses/beep.c b/apps/lib/curses/pdcurses/pdcurses/beep.c
new file mode 100644
index 0000000..9e92f45
--- /dev/null
+++ b/apps/lib/curses/pdcurses/pdcurses/beep.c
@@ -0,0 +1,65 @@
+/* Public Domain Curses */
+
+#include <curspriv.h>
+
+RCSID("$Id: beep.c,v 1.34 2008/07/13 16:08:17 wmcbrine Exp $")
+
+/*man-start**************************************************************
+
+  Name:                                                         beep
+
+  Synopsis:
+        int beep(void);
+        int flash(void);
+
+  Description:
+        beep() sounds the audible bell on the terminal, if possible;
+        if not, it calls flash().
+
+        flash() "flashes" the screen, by inverting the foreground and
+        background of every cell, pausing, and then restoring the
+        original attributes.
+
+  Return Value:
+        These functions return OK.
+
+  Portability                                X/Open    BSD    SYS V
+        beep                                    Y       Y       Y
+        flash                                   Y       Y       Y
+
+**man-end****************************************************************/
+
+int beep(void)
+{
+    PDC_LOG(("beep() - called\n"));
+
+    if (SP->audible)
+        PDC_beep();
+    else
+        flash();
+
+    return OK;
+}
+
+int flash(void)
+{
+    int z, y, x;
+
+    PDC_LOG(("flash() - called\n"));
+
+    /* Reverse each cell; wait; restore the screen */
+
+    for (z = 0; z < 2; z++)
+    {
+        for (y = 0; y < LINES; y++)
+            for (x = 0; x < COLS; x++)
+                curscr->_y[y][x] ^= A_REVERSE;
+
+        wrefresh(curscr);
+
+        if (!z)
+            napms(50);
+    }
+
+    return OK;
+}
diff --git a/apps/lib/curses/pdcurses/pdcurses/bkgd.c b/apps/lib/curses/pdcurses/pdcurses/bkgd.c
new file mode 100644
index 0000000..083239e
--- /dev/null
+++ b/apps/lib/curses/pdcurses/pdcurses/bkgd.c
@@ -0,0 +1,220 @@
+/* Public Domain Curses */
+
+#include <curspriv.h>
+
+RCSID("$Id: bkgd.c,v 1.39 2008/07/13 16:08:18 wmcbrine Exp $")
+
+/*man-start**************************************************************
+
+  Name:                                                         bkgd
+
+  Synopsis:
+        int bkgd(chtype ch);
+        void bkgdset(chtype ch);
+        chtype getbkgd(WINDOW *win);
+        int wbkgd(WINDOW *win, chtype ch);
+        void wbkgdset(WINDOW *win, chtype ch);
+
+        int bkgrnd(const cchar_t *wch);
+        void bkgrndset(const cchar_t *wch);
+        int getbkgrnd(cchar_t *wch);
+        int wbkgrnd(WINDOW *win, const cchar_t *wch);
+        void wbkgrndset(WINDOW *win, const cchar_t *wch);
+        int wgetbkgrnd(WINDOW *win, cchar_t *wch);
+
+  Description:
+        bkgdset() and wbkgdset() manipulate the background of a window.
+        The background is a chtype consisting of any combination of
+        attributes and a character; it is combined with each chtype
+        added or inserted to the window by waddch() or winsch(). Only
+        the attribute part is used to set the background of non-blank
+        characters, while both character and attributes are used for
+        blank positions.
+
+        bkgd() and wbkgd() not only change the background, but apply it
+        immediately to every cell in the window.
+
+        The attributes that are defined with the attrset()/attron() set
+        of functions take precedence over the background attributes if
+        there is a conflict (e.g., different color pairs).
+
+  Return Value:
+        bkgd() and wbkgd() return OK, unless the window is NULL, in 
+        which case they return ERR.
+
+  Portability                                X/Open    BSD    SYS V
+        bkgd                                    Y       -      4.0
+        bkgdset                                 Y       -      4.0
+        getbkgd                                 Y
+        wbkgd                                   Y       -      4.0
+        wbkgdset                                Y       -      4.0
+        bkgrnd                                  Y
+        bkgrndset                               Y
+        getbkgrnd                               Y
+        wbkgrnd                                 Y
+        wbkgrndset                              Y
+        wgetbkgrnd                              Y
+
+**man-end****************************************************************/
+
+int wbkgd(WINDOW *win, chtype ch)
+{
+    int x, y;
+    chtype oldcolr, oldch, newcolr, newch, colr, attr;
+    chtype oldattr = 0, newattr = 0;
+    chtype *winptr;
+
+    PDC_LOG(("wbkgd() - called\n"));
+
+    if (!win)
+        return ERR;
+
+    if (win->_bkgd == ch)
+        return OK;
+
+    oldcolr = win->_bkgd & A_COLOR;
+    if (oldcolr)
+        oldattr = (win->_bkgd & A_ATTRIBUTES) ^ oldcolr;
+
+    oldch = win->_bkgd & A_CHARTEXT;
+
+    wbkgdset(win, ch);
+
+    newcolr = win->_bkgd & A_COLOR;
+    if (newcolr)
+        newattr = (win->_bkgd & A_ATTRIBUTES) ^ newcolr;
+
+    newch = win->_bkgd & A_CHARTEXT;
+
+    /* what follows is what seems to occur in the System V 
+       implementation of this routine */
+
+    for (y = 0; y < win->_maxy; y++)
+    {
+        for (x = 0; x < win->_maxx; x++)
+        {
+            winptr = win->_y[y] + x;
+
+            ch = *winptr;
+
+            /* determine the colors and attributes of the character read 
+               from the window */
+
+            colr = ch & A_COLOR;
+            attr = ch & (A_ATTRIBUTES ^ A_COLOR);
+
+            /* if the color is the same as the old background color, 
+               then make it the new background color, otherwise leave it */
+
+            if (colr == oldcolr)
+                colr = newcolr;
+
+            /* remove any attributes (non color) from the character that 
+               were part of the old background, then combine the 
+               remaining ones with the new background */
+
+            attr ^= oldattr;
+            attr |= newattr;
+
+            /* change character if it is there because it was the old 
+               background character */
+
+            ch &= A_CHARTEXT;
+            if (ch == oldch)
+                ch = newch;
+
+            ch |= (attr | colr);
+
+            *winptr = ch;
+
+        }
+    }
+
+    touchwin(win);
+    PDC_sync(win);
+    return OK;
+}
+
+int bkgd(chtype ch)
+{
+    PDC_LOG(("bkgd() - called\n"));
+
+    return wbkgd(stdscr, ch);
+}
+
+void wbkgdset(WINDOW *win, chtype ch)
+{
+    PDC_LOG(("wbkgdset() - called\n"));
+
+    if (win)
+    {
+        if (!(ch & A_CHARTEXT))
+            ch |= ' ';
+
+        win->_bkgd = ch;
+    }
+}
+
+void bkgdset(chtype ch)
+{
+    PDC_LOG(("bkgdset() - called\n"));
+
+    wbkgdset(stdscr, ch);
+}
+
+chtype getbkgd(WINDOW *win)
+{
+    PDC_LOG(("getbkgd() - called\n"));
+
+    return win ? win->_bkgd : (chtype)ERR;
+}
+
+#ifdef PDC_WIDE
+int wbkgrnd(WINDOW *win, const cchar_t *wch)
+{
+    PDC_LOG(("wbkgrnd() - called\n"));
+
+    return wch ? wbkgd(win, *wch) : ERR;
+}
+
+int bkgrnd(const cchar_t *wch)
+{
+    PDC_LOG(("bkgrnd() - called\n"));
+
+    return wbkgrnd(stdscr, wch);
+}
+
+void wbkgrndset(WINDOW *win, const cchar_t *wch)
+{
+    PDC_LOG(("wbkgdset() - called\n"));
+
+    if (wch)
+        wbkgdset(win, *wch);
+}
+
+void bkgrndset(const cchar_t *wch)
+{
+    PDC_LOG(("bkgrndset() - called\n"));
+
+    wbkgrndset(stdscr, wch);
+}
+
+int wgetbkgrnd(WINDOW *win, cchar_t *wch)
+{
+    PDC_LOG(("wgetbkgrnd() - called\n"));
+
+    if (!win || !wch)
+        return ERR;
+
+    *wch = win->_bkgd;
+
+    return OK;
+}
+
+int getbkgrnd(cchar_t *wch)
+{
+    PDC_LOG(("getbkgrnd() - called\n"));
+
+    return wgetbkgrnd(stdscr, wch);
+}
+#endif
diff --git a/apps/lib/curses/pdcurses/pdcurses/border.c b/apps/lib/curses/pdcurses/pdcurses/border.c
new file mode 100644
index 0000000..ec86aaf
--- /dev/null
+++ b/apps/lib/curses/pdcurses/pdcurses/border.c
@@ -0,0 +1,408 @@
+/* Public Domain Curses */
+
+#include <curspriv.h>
+
+RCSID("$Id: border.c,v 1.53 2008/07/13 16:08:18 wmcbrine Exp $")
+
+/*man-start**************************************************************
+
+  Name:                                                         border
+
+  Synopsis:
+        int border(chtype ls, chtype rs, chtype ts, chtype bs, chtype tl, 
+                   chtype tr, chtype bl, chtype br);
+        int wborder(WINDOW *win, chtype ls, chtype rs, chtype ts, 
+                    chtype bs, chtype tl, chtype tr, chtype bl, chtype br);
+        int box(WINDOW *win, chtype verch, chtype horch);
+        int hline(chtype ch, int n);
+        int vline(chtype ch, int n);
+        int whline(WINDOW *win, chtype ch, int n);
+        int wvline(WINDOW *win, chtype ch, int n);
+        int mvhline(int y, int x, chtype ch, int n);
+        int mvvline(int y, int x, chtype ch, int n);
+        int mvwhline(WINDOW *win, int y, int x, chtype ch, int n);
+        int mvwvline(WINDOW *win, int y, int x, chtype ch, int n);
+
+        int border_set(const cchar_t *ls, const cchar_t *rs,
+                       const cchar_t *ts, const cchar_t *bs,
+                       const cchar_t *tl, const cchar_t *tr,
+                       const cchar_t *bl, const cchar_t *br);
+        int wborder_set(WINDOW *win, const cchar_t *ls, const cchar_t *rs,
+                        const cchar_t *ts, const cchar_t *bs,
+                        const cchar_t *tl, const cchar_t *tr,
+                        const cchar_t *bl, const cchar_t *br);
+        int box_set(WINDOW *win, const cchar_t *verch, const cchar_t *horch);
+        int hline_set(const cchar_t *wch, int n);
+        int vline_set(const cchar_t *wch, int n);
+        int whline_set(WINDOW *win, const cchar_t *wch, int n);
+        int wvline_set(WINDOW *win, const cchar_t *wch, int n);
+        int mvhline_set(int y, int x, const cchar_t *wch, int n);
+        int mvvline_set(int y, int x, const cchar_t *wch, int n);
+        int mvwhline_set(WINDOW *win, int y, int x, const cchar_t *wch, int n);
+        int mvwvline_set(WINDOW *win, int y, int x, const cchar_t *wch, int n);
+
+  Description:
+        border(), wborder(), and box() draw a border around the edge of 
+        the window. If any argument is zero, an appropriate default is 
+        used:
+
+                ls      left side of border             ACS_VLINE
+                rs      right side of border            ACS_VLINE
+                ts      top side of border              ACS_HLINE
+                bs      bottom side of border           ACS_HLINE
+                tl      top left corner of border       ACS_ULCORNER
+                tr      top right corner of border      ACS_URCORNER
+                bl      bottom left corner of border    ACS_LLCORNER
+                br      bottom right corner of border   ACS_LRCORNER
+
+        hline() and whline() draw a horizontal line, using ch, starting 
+        from the current cursor position. The cursor position does not 
+        change. The line is at most n characters long, or as many as 
+        will fit in the window.
+
+        vline() and wvline() draw a vertical line, using ch, starting 
+        from the current cursor position. The cursor position does not 
+        change. The line is at most n characters long, or as many as 
+        will fit in the window.
+
+  Return Value:
+        These functions return OK on success and ERR on error.
+
+  Portability                                X/Open    BSD    SYS V
+        border                                  Y       -      4.0
+        wborder                                 Y       -      4.0
+        box                                     Y       Y       Y
+        hline                                   Y       -      4.0
+        vline                                   Y       -      4.0
+        whline                                  Y       -      4.0
+        wvline                                  Y       -      4.0
+        mvhline                                 Y
+        mvvline                                 Y
+        mvwhline                                Y
+        mvwvline                                Y
+        border_set                              Y
+        wborder_set                             Y
+        box_set                                 Y
+        hline_set                               Y
+        vline_set                               Y
+        whline_set                              Y
+        wvline_set                              Y
+        mvhline_set                             Y
+        mvvline_set                             Y
+        mvwhline_set                            Y
+        mvwvline_set                            Y
+
+**man-end****************************************************************/
+
+/* _attr_passthru() -- Takes a single chtype 'ch' and checks if the 
+   current attribute of window 'win', as set by wattrset(), and/or the 
+   current background of win, as set by wbkgd(), should by combined with 
+   it. Attributes set explicitly in ch take precedence. */
+
+static chtype _attr_passthru(WINDOW *win, chtype ch)
+{
+    chtype attr;
+
+    /* If the incoming character doesn't have its own attribute, then 
+       use the current attributes for the window. If the incoming 
+       character has attributes, but not a color component, OR the 
+       attributes to the current attributes for the window. If the 
+       incoming character has a color component, use only the attributes 
+       from the incoming character. */
+
+    attr = ch & A_ATTRIBUTES;
+    if (!(attr & A_COLOR))
+        attr |= win->_attrs;
+
+    /* wrs (4/10/93) -- Apply the same sort of logic for the window 
+       background, in that it only takes precedence if other color 
+       attributes are not there. */
+
+    if (!(attr & A_COLOR))
+        attr |= win->_bkgd & A_ATTRIBUTES;
+    else
+        attr |= win->_bkgd & (A_ATTRIBUTES ^ A_COLOR);
+
+    ch = (ch & A_CHARTEXT) | attr;
+
+    return ch;
+}
+
+int wborder(WINDOW *win, chtype ls, chtype rs, chtype ts, chtype bs, 
+            chtype tl, chtype tr, chtype bl, chtype br)
+{
+    int i, ymax, xmax;
+
+    PDC_LOG(("wborder() - called\n"));
+
+    if (!win)
+        return ERR;
+
+    ymax = win->_maxy - 1;
+    xmax = win->_maxx - 1;
+
+    ls = _attr_passthru(win, ls ? ls : ACS_VLINE);
+    rs = _attr_passthru(win, rs ? rs : ACS_VLINE);
+    ts = _attr_passthru(win, ts ? ts : ACS_HLINE);
+    bs = _attr_passthru(win, bs ? bs : ACS_HLINE);
+    tl = _attr_passthru(win, tl ? tl : ACS_ULCORNER);
+    tr = _attr_passthru(win, tr ? tr : ACS_URCORNER);
+    bl = _attr_passthru(win, bl ? bl : ACS_LLCORNER);
+    br = _attr_passthru(win, br ? br : ACS_LRCORNER);
+
+    for (i = 1; i < xmax; i++)
+    {
+        win->_y[0][i] = ts;
+        win->_y[ymax][i] = bs;
+    }
+
+    for (i = 1; i < ymax; i++)
+    {
+        win->_y[i][0] = ls;
+        win->_y[i][xmax] = rs;
+    }
+
+    win->_y[0][0] = tl;
+    win->_y[0][xmax] = tr;
+    win->_y[ymax][0] = bl;
+    win->_y[ymax][xmax] = br;
+
+    for (i = 0; i <= ymax; i++)
+    {
+        win->_firstch[i] = 0;
+        win->_lastch[i] = xmax;
+    }
+
+    PDC_sync(win);
+
+    return OK;
+}
+
+int border(chtype ls, chtype rs, chtype ts, chtype bs, chtype tl,
+           chtype tr, chtype bl, chtype br)
+{
+    PDC_LOG(("border() - called\n"));
+
+    return wborder(stdscr, ls, rs, ts, bs, tl, tr, bl, br);
+}
+
+int box(WINDOW *win, chtype verch, chtype horch)
+{
+    PDC_LOG(("box() - called\n"));
+
+    return wborder(win, verch, verch, horch, horch, 0, 0, 0, 0);
+}
+
+int whline(WINDOW *win, chtype ch, int n)
+{
+    chtype *dest;
+    int startpos, endpos;
+
+    PDC_LOG(("whline() - called\n"));
+
+    if (!win || n < 1)
+        return ERR;
+
+    startpos = win->_curx;
+    endpos = min(startpos + n, win->_maxx) - 1;
+    dest = win->_y[win->_cury];
+    ch = _attr_passthru(win, ch ? ch : ACS_HLINE);
+
+    for (n = startpos; n <= endpos; n++)
+        dest[n] = ch;
+
+    n = win->_cury;
+
+    if (startpos < win->_firstch[n] || win->_firstch[n] == _NO_CHANGE)
+        win->_firstch[n] = startpos;
+
+    if (endpos > win->_lastch[n])
+        win->_lastch[n] = endpos;
+
+    PDC_sync(win);
+
+    return OK;
+}
+
+int hline(chtype ch, int n)
+{
+    PDC_LOG(("hline() - called\n"));
+
+    return whline(stdscr, ch, n);
+}
+
+int mvhline(int y, int x, chtype ch, int n)
+{
+    PDC_LOG(("mvhline() - called\n"));
+
+    if (move(y, x) == ERR)
+        return ERR;
+
+    return whline(stdscr, ch, n);
+}
+
+int mvwhline(WINDOW *win, int y, int x, chtype ch, int n)
+{
+    PDC_LOG(("mvwhline() - called\n"));
+
+    if (wmove(win, y, x) == ERR)
+        return ERR;
+
+    return whline(win, ch, n);
+}
+
+int wvline(WINDOW *win, chtype ch, int n)
+{
+    int endpos, x;
+
+    PDC_LOG(("wvline() - called\n"));
+
+    if (!win || n < 1)
+        return ERR;
+
+    endpos = min(win->_cury + n, win->_maxy);
+    x = win->_curx;
+
+    ch = _attr_passthru(win, ch ? ch : ACS_VLINE);
+
+    for (n = win->_cury; n < endpos; n++)
+    {
+        win->_y[n][x] = ch;
+
+        if (x < win->_firstch[n] || win->_firstch[n] == _NO_CHANGE)
+            win->_firstch[n] = x;
+
+        if (x > win->_lastch[n])
+            win->_lastch[n] = x;
+    }
+
+    PDC_sync(win);
+
+    return OK;
+}
+
+int vline(chtype ch, int n)
+{
+    PDC_LOG(("vline() - called\n"));
+
+    return wvline(stdscr, ch, n);
+}
+
+int mvvline(int y, int x, chtype ch, int n)
+{
+    PDC_LOG(("mvvline() - called\n"));
+
+    if (move(y, x) == ERR)
+        return ERR;
+
+    return wvline(stdscr, ch, n);
+}
+
+int mvwvline(WINDOW *win, int y, int x, chtype ch, int n)
+{
+    PDC_LOG(("mvwvline() - called\n"));
+
+    if (wmove(win, y, x) == ERR)
+        return ERR;
+
+    return wvline(win, ch, n);
+}
+
+#ifdef PDC_WIDE
+int wborder_set(WINDOW *win, const cchar_t *ls, const cchar_t *rs,
+                const cchar_t *ts, const cchar_t *bs, const cchar_t *tl,
+                const cchar_t *tr, const cchar_t *bl, const cchar_t *br)
+{
+    PDC_LOG(("wborder_set() - called\n"));
+
+    return wborder(win, ls ? *ls : 0, rs ? *rs : 0, ts ? *ts : 0,
+                        bs ? *bs : 0, tl ? *tl : 0, tr ? *tr : 0,
+                        bl ? *bl : 0, br ? *br : 0);
+}
+
+int border_set(const cchar_t *ls, const cchar_t *rs, const cchar_t *ts,
+               const cchar_t *bs, const cchar_t *tl, const cchar_t *tr,
+               const cchar_t *bl, const cchar_t *br)
+{
+    PDC_LOG(("border_set() - called\n"));
+
+    return wborder_set(stdscr, ls, rs, ts, bs, tl, tr, bl, br);
+}
+
+int box_set(WINDOW *win, const cchar_t *verch, const cchar_t *horch)
+{
+    PDC_LOG(("box_set() - called\n"));
+
+    return wborder_set(win, verch, verch, horch, horch,
+                       (const cchar_t *)NULL, (const cchar_t *)NULL,
+                       (const cchar_t *)NULL, (const cchar_t *)NULL);
+}
+
+int whline_set(WINDOW *win, const cchar_t *wch, int n)
+{
+    PDC_LOG(("whline_set() - called\n"));
+
+    return wch ? whline(win, *wch, n) : ERR;
+}
+
+int hline_set(const cchar_t *wch, int n)
+{
+    PDC_LOG(("hline_set() - called\n"));
+
+    return whline_set(stdscr, wch, n);
+}
+
+int mvhline_set(int y, int x, const cchar_t *wch, int n)
+{
+    PDC_LOG(("mvhline_set() - called\n"));
+
+    if (move(y, x) == ERR)
+        return ERR;
+
+    return whline_set(stdscr, wch, n);
+}
+
+int mvwhline_set(WINDOW *win, int y, int x, const cchar_t *wch, int n)
+{
+    PDC_LOG(("mvwhline_set() - called\n"));
+
+    if (wmove(win, y, x) == ERR)
+        return ERR;
+
+    return whline_set(win, wch, n);
+}
+
+int wvline_set(WINDOW *win, const cchar_t *wch, int n)
+{
+    PDC_LOG(("wvline_set() - called\n"));
+
+    return wch ? wvline(win, *wch, n) : ERR;
+}
+
+int vline_set(const cchar_t *wch, int n)
+{
+    PDC_LOG(("vline_set() - called\n"));
+
+    return wvline_set(stdscr, wch, n);
+}
+
+int mvvline_set(int y, int x, const cchar_t *wch, int n)
+{
+    PDC_LOG(("mvvline_set() - called\n"));
+
+    if (move(y, x) == ERR)
+        return ERR;
+
+    return wvline_set(stdscr, wch, n);
+}
+
+int mvwvline_set(WINDOW *win, int y, int x, const cchar_t *wch, int n)
+{
+    PDC_LOG(("mvwvline_set() - called\n"));
+
+    if (wmove(win, y, x) == ERR)
+        return ERR;
+
+    return wvline_set(win, wch, n);
+}
+#endif
diff --git a/apps/lib/curses/pdcurses/pdcurses/clear.c b/apps/lib/curses/pdcurses/pdcurses/clear.c
new file mode 100644
index 0000000..eda3385
--- /dev/null
+++ b/apps/lib/curses/pdcurses/pdcurses/clear.c
@@ -0,0 +1,154 @@
+/* Public Domain Curses */
+
+#include <curspriv.h>
+
+RCSID("$Id: clear.c,v 1.35 2008/07/13 16:08:18 wmcbrine Exp $")
+
+/*man-start**************************************************************
+
+  Name:                                                         clear
+
+  Synopsis:
+        int clear(void);
+        int wclear(WINDOW *win);
+        int erase(void);
+        int werase(WINDOW *win);
+        int clrtobot(void);
+        int wclrtobot(WINDOW *win);
+        int clrtoeol(void);
+        int wclrtoeol(WINDOW *win);
+
+  Description:
+        erase() and werase() copy blanks (i.e. the background chtype) to 
+        every cell of the window.
+
+        clear() and wclear() are similar to erase() and werase(), but
+        they also call clearok() to ensure that the the window is 
+        cleared on the next wrefresh().
+
+        clrtobot() and wclrtobot() clear the window from the current 
+        cursor position to the end of the window.
+
+        clrtoeol() and wclrtoeol() clear the window from the current
+        cursor position to the end of the current line.
+
+  Return Value:
+        All functions return OK on success and ERR on error.
+
+  Portability                                X/Open    BSD    SYS V
+        clear                                   Y       Y       Y
+        wclear                                  Y       Y       Y
+        erase                                   Y       Y       Y
+        werase                                  Y       Y       Y
+        clrtobot                                Y       Y       Y
+        wclrtobot                               Y       Y       Y
+        clrtoeol                                Y       Y       Y
+        wclrtoeol                               Y       Y       Y
+
+**man-end****************************************************************/
+
+int wclrtoeol(WINDOW *win)
+{
+    int x, y, minx;
+    chtype blank, *ptr;
+
+    PDC_LOG(("wclrtoeol() - called: Row: %d Col: %d\n",
+             win->_cury, win->_curx));
+
+    if (!win)
+        return ERR;
+
+    y = win->_cury;
+    x = win->_curx;
+
+    /* wrs (4/10/93) account for window background */
+
+    blank = win->_bkgd;
+
+    for (minx = x, ptr = &win->_y[y][x]; minx < win->_maxx; minx++, ptr++)
+        *ptr = blank;
+
+    if (x < win->_firstch[y] || win->_firstch[y] == _NO_CHANGE)
+        win->_firstch[y] = x;
+
+    win->_lastch[y] = win->_maxx - 1;
+
+    PDC_sync(win);
+    return OK;
+}
+
+int clrtoeol(void)
+{
+    PDC_LOG(("clrtoeol() - called\n"));
+
+    return wclrtoeol(stdscr);
+}
+
+int wclrtobot(WINDOW *win)
+{
+    int savey = win->_cury;
+    int savex = win->_curx;
+
+    PDC_LOG(("wclrtobot() - called\n"));
+
+    if (!win)
+        return ERR;
+
+    /* should this involve scrolling region somehow ? */
+
+    if (win->_cury + 1 < win->_maxy)
+    {
+        win->_curx = 0;
+        win->_cury++;
+        for (; win->_maxy > win->_cury; win->_cury++)
+            wclrtoeol(win);
+        win->_cury = savey;
+        win->_curx = savex;
+    }
+    wclrtoeol(win);
+
+    PDC_sync(win);
+    return OK;
+}
+
+int clrtobot(void)
+{
+    PDC_LOG(("clrtobot() - called\n"));
+
+    return wclrtobot(stdscr);
+}
+
+int werase(WINDOW *win)
+{
+    PDC_LOG(("werase() - called\n"));
+
+    if (wmove(win, 0, 0) == ERR)
+        return ERR;
+
+    return wclrtobot(win);
+}
+
+int erase(void)
+{
+    PDC_LOG(("erase() - called\n"));
+
+    return werase(stdscr);
+}
+
+int wclear(WINDOW *win)
+{
+    PDC_LOG(("wclear() - called\n"));
+
+    if (!win)
+        return ERR;
+
+    win->_clear = TRUE;
+    return werase(win);
+}
+
+int clear(void)
+{
+    PDC_LOG(("clear() - called\n"));
+
+    return wclear(stdscr);
+}
diff --git a/apps/lib/curses/pdcurses/pdcurses/color.c b/apps/lib/curses/pdcurses/pdcurses/color.c
new file mode 100644
index 0000000..038f760
--- /dev/null
+++ b/apps/lib/curses/pdcurses/pdcurses/color.c
@@ -0,0 +1,295 @@
+/* Public Domain Curses */
+
+#include <curspriv.h>
+
+RCSID("$Id: color.c,v 1.83 2008/07/13 16:08:18 wmcbrine Exp $")
+
+/*man-start**************************************************************
+
+  Name:                                                         color
+
+  Synopsis:
+        int start_color(void);
+        int init_pair(short pair, short fg, short bg);
+        int init_color(short color, short red, short green, short blue);
+        bool has_colors(void);
+        bool can_change_color(void);
+        int color_content(short color, short *red, short *green, short *blue);
+        int pair_content(short pair, short *fg, short *bg);
+
+        int assume_default_colors(int f, int b);
+        int use_default_colors(void);
+
+        int PDC_set_line_color(short color);
+
+  Description:
+        To use these routines, start_color() must be called, usually
+        immediately after initscr(). Colors are always used in pairs, 
+        referred to as color-pairs. A color-pair consists of a 
+        foreground color and a background color. A color-pair is 
+        initialized via init_pair(). After initialization, COLOR_PAIR(n) 
+        can be used like any other video attribute.
+
+        start_color() initializes eight basic colors (black, red, green,
+        yellow, blue, magenta, cyan, and white), and two global
+        variables; COLORS and COLOR_PAIRS (respectively defining the
+        maximum number of colors and color-pairs the terminal is capable
+        of displaying).
+
+        init_pair() changes the definition of a color-pair. It takes 
+        three arguments: the number of the color-pair to be redefined, 
+        and the new values of the foreground and background colors. The 
+        pair number must be between 0 and COLOR_PAIRS - 1, inclusive. 
+        The foreground and background must be between 0 and COLORS - 1, 
+        inclusive. If the color pair was previously initialized, the 
+        screen is refreshed, and all occurrences of that color-pair are 
+        changed to the new definition.
+
+        has_colors() indicates if the terminal supports, and can 
+        maniplulate color. It returns TRUE or FALSE.
+
+        can_change_color() indicates if the terminal has the capability
+        to change the definition of its colors.
+
+        pair_content() is used to determine what the colors of a given
+        color-pair consist of.
+
+        assume_default_colors() and use_default_colors() emulate the
+        ncurses extensions of the same names. assume_default_colors(f,
+        b) is essentially the same as init_pair(0, f, b) (which isn't
+        allowed); it redefines the default colors. use_default_colors()
+        allows the use of -1 as a foreground or background color with
+        init_pair(), and calls assume_default_colors(-1, -1); -1
+        represents the foreground or background color that the terminal
+        had at startup. If the environment variable PDC_ORIGINAL_COLORS
+        is set at the time start_color() is called, that's equivalent to
+        calling use_default_colors().
+
+        PDC_set_line_color() is used to set the color, globally, for
+        the color of the lines drawn for the attributes: A_UNDERLINE,
+        A_OVERLINE, A_LEFTLINE and A_RIGHTLINE. A value of -1 (the
+        default) indicates that the current foreground color should be
+        used.
+
+        NOTE: COLOR_PAIR() and PAIR_NUMBER() are implemented as macros.
+
+  Return Value:
+        All functions return OK on success and ERR on error, except for
+        has_colors() and can_change_colors(), which return TRUE or FALSE.
+
+  Portability                                X/Open    BSD    SYS V
+        start_color                             Y       -      3.2
+        init_pair                               Y       -      3.2
+        init_color                              Y       -      3.2
+        has_colors                              Y       -      3.2
+        can_change_color                        Y       -      3.2
+        color_content                           Y       -      3.2
+        pair_content                            Y       -      3.2
+        assume_default_colors                   -       -       -
+        use_default_colors                      -       -       -
+        PDC_set_line_color                      -       -       -
+
+**man-end****************************************************************/
+
+#include <stdlib.h>
+#include <string.h>
+
+int COLORS = 0;
+int COLOR_PAIRS = PDC_COLOR_PAIRS;
+
+bool pdc_color_started = FALSE;
+
+/* pair_set[] tracks whether a pair has been set via init_pair() */
+
+static bool pair_set[PDC_COLOR_PAIRS];
+static bool default_colors = FALSE;
+static short first_col = 0;
+
+int start_color(void)
+{
+    PDC_LOG(("start_color() - called\n"));
+
+    if (SP->mono)
+        return ERR;
+
+    pdc_color_started = TRUE;
+
+    PDC_set_blink(FALSE);   /* Also sets COLORS, to 8 or 16 */
+
+    if (!default_colors && SP->orig_attr && getenv("PDC_ORIGINAL_COLORS"))
+        default_colors = TRUE;
+
+    PDC_init_atrtab();
+
+    memset(pair_set, 0, PDC_COLOR_PAIRS);
+
+    return OK;
+}
+
+static void _normalize(short *fg, short *bg)
+{
+    if (*fg == -1)
+        *fg = SP->orig_attr ? SP->orig_fore : COLOR_WHITE;
+
+    if (*bg == -1)
+        *bg = SP->orig_attr ? SP->orig_back : COLOR_BLACK;
+}
+
+int init_pair(short pair, short fg, short bg)
+{
+    PDC_LOG(("init_pair() - called: pair %d fg %d bg %d\n", pair, fg, bg));
+
+    if (!pdc_color_started || pair < 1 || pair >= COLOR_PAIRS ||
+        fg < first_col || fg >= COLORS || bg < first_col || bg >= COLORS)
+        return ERR;
+
+    _normalize(&fg, &bg);
+
+    /* To allow the PDC_PRESERVE_SCREEN option to work, we only reset 
+       curscr if this call to init_pair() alters a color pair created by 
+       the user. */
+
+    if (pair_set[pair])
+    {
+        short oldfg, oldbg;
+
+        PDC_pair_content(pair, &oldfg, &oldbg);
+
+        if (oldfg != fg || oldbg != bg)
+            curscr->_clear = TRUE;
+    }
+
+    PDC_init_pair(pair, fg, bg);
+
+    pair_set[pair] = TRUE;
+
+    return OK;
+}
+
+bool has_colors(void)
+{
+    PDC_LOG(("has_colors() - called\n"));
+
+    return !(SP->mono);
+}
+
+int init_color(short color, short red, short green, short blue)
+{
+    PDC_LOG(("init_color() - called\n"));
+
+    if (color < 0 || color >= COLORS || !PDC_can_change_color() ||
+        red < 0 || red > 1000 || green < 0 || green > 1000 ||
+        blue < 0 || blue > 1000)
+        return ERR;
+
+    return PDC_init_color(color, red, green, blue);
+}
+
+int color_content(short color, short *red, short *green, short *blue)
+{
+    PDC_LOG(("color_content() - called\n"));
+
+    if (color < 0 || color >= COLORS || !red || !green || !blue)
+        return ERR;
+
+    if (PDC_can_change_color())
+        return PDC_color_content(color, red, green, blue);
+    else
+    {
+        /* Simulated values for platforms that don't support palette 
+           changing */
+
+        short maxval = (color & 8) ? 1000 : 680;
+
+        *red = (color & COLOR_RED) ? maxval : 0;
+        *green = (color & COLOR_GREEN) ? maxval : 0;
+        *blue = (color & COLOR_BLUE) ? maxval : 0;
+
+        return OK;
+    }
+}
+
+bool can_change_color(void)
+{
+    PDC_LOG(("can_change_color() - called\n"));
+
+    return PDC_can_change_color();
+}
+
+int pair_content(short pair, short *fg, short *bg)
+{
+    PDC_LOG(("pair_content() - called\n"));
+
+    if (pair < 0 || pair >= COLOR_PAIRS || !fg || !bg)
+        return ERR;
+
+    return PDC_pair_content(pair, fg, bg);
+}
+
+int assume_default_colors(int f, int b)
+{
+    PDC_LOG(("assume_default_colors() - called: f %d b %d\n", f, b));
+
+    if (f < -1 || f >= COLORS || b < -1 || b >= COLORS)
+        return ERR;
+
+    if (pdc_color_started)
+    {
+        short fg, bg, oldfg, oldbg;
+
+        fg = f;
+        bg = b;
+
+        _normalize(&fg, &bg);
+
+        PDC_pair_content(0, &oldfg, &oldbg);
+
+        if (oldfg != fg || oldbg != bg)
+            curscr->_clear = TRUE;
+
+        PDC_init_pair(0, fg, bg);
+    }
+
+    return OK;
+}
+
+int use_default_colors(void)
+{
+    PDC_LOG(("use_default_colors() - called\n"));
+
+    default_colors = TRUE;
+    first_col = -1;
+
+    return assume_default_colors(-1, -1);
+}
+
+int PDC_set_line_color(short color)
+{
+    PDC_LOG(("PDC_set_line_color() - called: %d\n", color));
+
+    if (color < -1 || color >= COLORS)
+        return ERR;
+
+    SP->line_color = color;
+
+    return OK;
+}
+
+void PDC_init_atrtab(void)
+{
+    int i;
+    short fg, bg;
+
+    if (pdc_color_started && !default_colors)
+    {
+        fg = COLOR_WHITE;
+        bg = COLOR_BLACK;
+    }
+    else
+        fg = bg = -1;
+
+    _normalize(&fg, &bg);
+
+    for (i = 0; i < PDC_COLOR_PAIRS; i++)
+        PDC_init_pair(i, fg, bg);
+}
diff --git a/apps/lib/curses/pdcurses/pdcurses/curspriv.h b/apps/lib/curses/pdcurses/pdcurses/curspriv.h
new file mode 100644
index 0000000..734400b
--- /dev/null
+++ b/apps/lib/curses/pdcurses/pdcurses/curspriv.h
@@ -0,0 +1,146 @@
+/* Public Domain Curses */
+
+/* $Id: curspriv.h,v 1.158 2008/07/13 16:08:16 wmcbrine Exp $ */
+
+/* Private definitions and declarations for use within PDCurses.
+   These should generally not be referenced by applications. */
+
+#ifndef __CURSES_INTERNALS__
+#define __CURSES_INTERNALS__ 1
+
+#define HAVE_CONFIG_H
+#ifdef HAVE_CONFIG_H
+# include "../backend/config.h"
+#endif
+
+#include <stdlib.h>
+#include <malloc.h>
+
+#define CURSES_LIBRARY
+#include <curses.h>
+
+#if defined(__TURBOC__) || defined(__EMX__) || defined(__DJGPP__) || \
+    defined(__CYGWIN32__) || defined(__MINGW32__) || \
+    defined(__WATCOMC__) || defined(__PACIFIC__)
+# ifndef HAVE_VSSCANF
+#  define HAVE_VSSCANF       /* have vsscanf() */
+# endif
+#endif
+
+#if defined(__CYGWIN32__) || defined(__MINGW32__) || \
+    defined(__LCC__) || defined(__WATCOMC__)
+# ifndef HAVE_VSNPRINTF
+#  define HAVE_VSNPRINTF     /* have vsnprintf() */
+# endif
+#endif
+
+#if defined(_MSC_VER) && defined(_WIN32) && !defined(_CRT_SECURE_NO_DEPRECATE)
+# define _CRT_SECURE_NO_DEPRECATE 1   /* kill nonsense warnings */
+#endif
+
+/*----------------------------------------------------------------------*/
+
+typedef struct           /* structure for ripped off lines */
+{
+    int line;
+    int (*init)(WINDOW *, int);
+} RIPPEDOFFLINE;
+
+/* Window properties */
+
+#define _SUBWIN    0x01  /* window is a subwindow */
+#define _PAD       0x10  /* X/Open Pad. */
+#define _SUBPAD    0x20  /* X/Open subpad. */
+
+/* Miscellaneous */
+
+#define _NO_CHANGE -1    /* flags line edge unchanged */
+
+#define _ECHAR     0x08  /* Erase char       (^H) */
+#define _DWCHAR    0x17  /* Delete Word char (^W) */
+#define _DLCHAR    0x15  /* Delete Line char (^U) */
+
+extern WINDOW *pdc_lastscr;
+extern bool pdc_trace_on;   /* tracing flag */
+extern bool pdc_color_started;
+extern unsigned long pdc_key_modifiers;
+extern MOUSE_STATUS pdc_mouse_status;
+
+/*----------------------------------------------------------------------*/
+
+/* Platform implementation functions */
+
+void    PDC_beep(void);
+bool    PDC_can_change_color(void);
+int     PDC_color_content(short, short *, short *, short *);
+bool    PDC_check_key(void);
+int     PDC_curs_set(int);
+void    PDC_flushinp(void);
+int     PDC_get_columns(void);
+int     PDC_get_cursor_mode(void);
+int     PDC_get_key(void);
+int     PDC_get_rows(void);
+void    PDC_gotoyx(int, int);
+int     PDC_init_color(short, short, short, short);
+void    PDC_init_pair(short, short, short);
+int     PDC_modifiers_set(void);
+int     PDC_mouse_set(void);
+void    PDC_napms(int);
+int     PDC_pair_content(short, short *, short *);
+void    PDC_reset_prog_mode(void);
+void    PDC_reset_shell_mode(void);
+int     PDC_resize_screen(int, int);
+void    PDC_restore_screen_mode(int);
+void    PDC_save_screen_mode(int);
+void    PDC_scr_close(void);
+void    PDC_scr_free(void);
+int     PDC_scr_open(int, char **);
+void    PDC_set_keyboard_binary(bool);
+void    PDC_transform_line(int, int, int, const chtype *);
+const char *PDC_sysname(void);
+
+/* Internal cross-module functions */
+
+void    PDC_init_atrtab(void);
+WINDOW *PDC_makelines(WINDOW *);
+WINDOW *PDC_makenew(int, int, int, int);
+int     PDC_mouse_in_slk(int, int);
+void    PDC_slk_free(void);
+void    PDC_slk_initialize(void);
+void    PDC_sync(WINDOW *);
+
+#ifdef PDC_WIDE
+int     PDC_mbtowc(wchar_t *, const char *, size_t);
+size_t  PDC_mbstowcs(wchar_t *, const char *, size_t);
+size_t  PDC_wcstombs(char *, const wchar_t *, size_t);
+#endif
+
+#ifdef PDCDEBUG
+# define PDC_LOG(x) if (pdc_trace_on) PDC_debug x
+# define RCSID(x) static const char *rcsid = x;
+#else
+# define PDC_LOG(x)
+# define RCSID(x)
+#endif
+
+/* Internal macros for attributes */
+
+#ifdef CHTYPE_LONG
+# define PDC_COLOR_PAIRS 256
+#else
+# define PDC_COLOR_PAIRS  32
+#endif
+
+#ifndef max
+# define max(a,b) (((a) > (b)) ? (a) : (b))
+#endif
+#ifndef min
+# define min(a,b) (((a) < (b)) ? (a) : (b))
+#endif
+
+#define DIVROUND(num, divisor) ((num) + ((divisor) >> 1)) / (divisor)
+
+#define PDC_CLICK_PERIOD 150  /* time to wait for a click, if
+                                 not set by mouseinterval() */
+
+#endif /* __CURSES_INTERNALS__*/
diff --git a/apps/lib/curses/pdcurses/pdcurses/debug.c b/apps/lib/curses/pdcurses/pdcurses/debug.c
new file mode 100644
index 0000000..5fd9dcc
--- /dev/null
+++ b/apps/lib/curses/pdcurses/pdcurses/debug.c
@@ -0,0 +1,81 @@
+/* Public Domain Curses */
+
+#include <curspriv.h>
+
+RCSID("$Id: debug.c,v 1.7 2008/07/13 16:08:18 wmcbrine Exp $")
+
+/*man-start**************************************************************
+
+  Name:                                                         debug
+
+  Synopsis:
+        void traceon(void);
+        void traceoff(void);
+        void PDC_debug(const char *, ...);
+
+  Description:
+        traceon() and traceoff() toggle the recording of debugging 
+        information to the file "trace". Although not standard, similar 
+        functions are in some other curses implementations.
+
+        PDC_debug() is the function that writes to the file, based on 
+        whether traceon() has been called. It's used from the PDC_LOG() 
+        macro.
+
+  Portability                                X/Open    BSD    SYS V
+        traceon                                 -       -       -
+        traceoff                                -       -       -
+        PDC_debug                               -       -       -
+
+**man-end****************************************************************/
+
+#include <string.h>
+#include <sys/types.h>
+#include <time.h>
+
+bool pdc_trace_on = TRUE;
+
+void PDC_debug(const char *fmt, ...)
+{
+    va_list args;
+    FILE *dbfp;
+    char hms[9];
+    time_t now;
+
+    if (!pdc_trace_on)
+        return; 
+
+    /* open debug log file append */
+
+    dbfp = fopen("trace", "a");
+    if (!dbfp)
+    {
+        fprintf(stderr,
+            "PDC_debug(): Unable to open debug log file\n");
+        return;
+    }
+
+//    time(&now);
+//    strftime(hms, 9, "%H:%M:%S", localtime(&now));
+//    fprintf(dbfp, "At: %8.8ld - %s ", (long) clock(), hms);
+
+    va_start(args, fmt);
+    vfprintf(dbfp, fmt, args);
+    va_end(args);
+
+    fclose(dbfp);
+}
+
+void traceon(void)
+{
+    PDC_LOG(("traceon() - called\n"));
+
+    pdc_trace_on = TRUE;
+}
+
+void traceoff(void)
+{
+    PDC_LOG(("traceoff() - called\n"));
+
+    pdc_trace_on = FALSE;
+}
diff --git a/apps/lib/curses/pdcurses/pdcurses/delch.c b/apps/lib/curses/pdcurses/pdcurses/delch.c
new file mode 100644
index 0000000..9c2416e
--- /dev/null
+++ b/apps/lib/curses/pdcurses/pdcurses/delch.c
@@ -0,0 +1,93 @@
+/* Public Domain Curses */
+
+#include <curspriv.h>
+
+RCSID("$Id: delch.c,v 1.33 2008/07/13 16:08:18 wmcbrine Exp $")
+
+/*man-start**************************************************************
+
+  Name:                                                         delch
+
+  Synopsis:
+        int delch(void);
+        int wdelch(WINDOW *win);
+        int mvdelch(int y, int x);
+        int mvwdelch(WINDOW *win, int y, int x);
+
+  Description:
+        The character under the cursor in the window is deleted.  All
+        characters to the right on the same line are moved to the left
+        one position and the last character on the line is filled with
+        a blank.  The cursor position does not change (after moving to
+        y, x if coordinates are specified).
+
+  Return Value:
+        All functions return OK on success and ERR on error.
+
+  Portability                                X/Open    BSD    SYS V
+        delch                                   Y       Y       Y
+        wdelch                                  Y       Y       Y
+        mvdelch                                 Y       Y       Y
+        mvwdelch                                Y       Y       Y
+
+**man-end****************************************************************/
+
+#include <string.h>
+
+int wdelch(WINDOW *win)
+{
+    int y, x, maxx;
+    chtype *temp1;
+
+    PDC_LOG(("wdelch() - called\n"));
+
+    if (!win)
+        return ERR;
+
+    y = win->_cury;
+    x = win->_curx;
+    maxx = win->_maxx - 1;
+    temp1 = &win->_y[y][x];
+
+    memmove(temp1, temp1 + 1, (maxx - x) * sizeof(chtype));
+
+    /* wrs (4/10/93) account for window background */
+
+    win->_y[y][maxx] = win->_bkgd;
+
+    win->_lastch[y] = maxx;
+
+    if ((win->_firstch[y] == _NO_CHANGE) || (win->_firstch[y] > x))
+        win->_firstch[y] = x;
+
+    PDC_sync(win);
+
+    return OK;
+}
+
+int delch(void)
+{
+    PDC_LOG(("delch() - called\n"));
+
+    return wdelch(stdscr);
+}
+
+int mvdelch(int y, int x)
+{
+    PDC_LOG(("mvdelch() - called\n"));
+
+    if (move(y, x) == ERR)
+        return ERR;
+
+    return wdelch(stdscr);
+}
+
+int mvwdelch(WINDOW *win, int y, int x)
+{
+    PDC_LOG(("mvwdelch() - called\n"));
+
+    if (wmove(win, y, x) == ERR)
+        return ERR;
+
+    return wdelch(win);
+}
diff --git a/apps/lib/curses/pdcurses/pdcurses/deleteln.c b/apps/lib/curses/pdcurses/pdcurses/deleteln.c
new file mode 100644
index 0000000..c856e90
--- /dev/null
+++ b/apps/lib/curses/pdcurses/pdcurses/deleteln.c
@@ -0,0 +1,208 @@
+/* Public Domain Curses */
+
+#include <curspriv.h>
+
+RCSID("$Id: deleteln.c,v 1.35 2008/07/13 16:08:18 wmcbrine Exp $")
+
+/*man-start**************************************************************
+
+  Name:                                                         deleteln
+
+  Synopsis:
+        int deleteln(void);
+        int wdeleteln(WINDOW *win);
+        int insdelln(int n);
+        int winsdelln(WINDOW *win, int n);
+        int insertln(void);
+        int winsertln(WINDOW *win);
+
+        int mvdeleteln(int y, int x);
+        int mvwdeleteln(WINDOW *win, int y, int x);
+        int mvinsertln(int y, int x);
+        int mvwinsertln(WINDOW *win, int y, int x);
+
+  Description:
+        With the deleteln() and wdeleteln() functions, the line under
+        the cursor in the window is deleted.  All lines below the
+        current line are moved up one line.  The bottom line of the
+        window is cleared.  The cursor position does not change.
+
+        With the insertln() and winsertn() functions, a blank line is 
+        inserted above the current line and the bottom line is lost.
+
+        mvdeleteln(), mvwdeleteln(), mvinsertln() and mvwinsertln() 
+        allow moving the cursor and inserting/deleting in one call.
+
+  Return Value:
+        All functions return OK on success and ERR on error.
+
+  Portability                                X/Open    BSD    SYS V
+        deleteln                                Y       Y       Y
+        wdeleteln                               Y       Y       Y
+        mvdeleteln                              -       -       -
+        mvwdeleteln                             -       -       -
+        insdelln                                Y       -      4.0
+        winsdelln                               Y       -      4.0
+        insertln                                Y       Y       Y
+        winsertln                               Y       Y       Y
+        mvinsertln                              -       -       -
+        mvwinsertln                             -       -       -
+
+**man-end****************************************************************/
+
+int wdeleteln(WINDOW *win)
+{
+    chtype blank, *temp, *ptr;
+    int y;
+
+    PDC_LOG(("wdeleteln() - called\n"));
+
+    if (!win)
+        return ERR;
+
+    /* wrs (4/10/93) account for window background */
+
+    blank = win->_bkgd;
+
+    temp = win->_y[win->_cury];
+
+    for (y = win->_cury; y < win->_bmarg; y++)
+    {
+        win->_y[y] = win->_y[y + 1];
+        win->_firstch[y] = 0;
+        win->_lastch[y] = win->_maxx - 1;
+    }
+
+    for (ptr = temp; (ptr - temp < win->_maxx); ptr++)
+        *ptr = blank;           /* make a blank line */
+
+    if (win->_cury <= win->_bmarg) 
+    {
+        win->_firstch[win->_bmarg] = 0;
+        win->_lastch[win->_bmarg] = win->_maxx - 1;
+        win->_y[win->_bmarg] = temp;
+    }
+
+    return OK;
+}
+
+int deleteln(void)
+{
+    PDC_LOG(("deleteln() - called\n"));
+
+    return wdeleteln(stdscr);
+}
+
+int mvdeleteln(int y, int x)
+{
+    PDC_LOG(("mvdeleteln() - called\n"));
+
+    if (move(y, x) == ERR)
+        return ERR;
+
+    return wdeleteln(stdscr);
+}
+
+int mvwdeleteln(WINDOW *win, int y, int x)
+{
+    PDC_LOG(("mvwdeleteln() - called\n"));
+
+    if (wmove(win, y, x) == ERR)
+        return ERR;
+
+    return wdeleteln(win);
+}
+
+int winsdelln(WINDOW *win, int n)
+{
+    int i;
+
+    PDC_LOG(("winsdelln() - called\n"));
+
+    if (!win)
+        return ERR;
+
+    if (n > 0)
+    {
+        for (i = 0; i < n; i++)
+            if (winsertln(win) == ERR)
+                return ERR;
+    }
+    else if (n < 0)
+    {
+        n = -n;
+        for (i = 0; i < n; i++)
+            if (wdeleteln(win) == ERR)
+                return ERR;
+    }
+
+    return OK;
+}
+
+int insdelln(int n)
+{
+    PDC_LOG(("insdelln() - called\n"));
+
+    return winsdelln(stdscr, n);
+}
+
+int winsertln(WINDOW *win)
+{
+    chtype blank, *temp, *end;
+    int y;
+
+    PDC_LOG(("winsertln() - called\n"));
+
+    if (!win)
+        return ERR;
+
+    /* wrs (4/10/93) account for window background */
+
+    blank = win->_bkgd;
+
+    temp = win->_y[win->_maxy - 1];
+
+    for (y = win->_maxy - 1; y > win->_cury; y--)
+    {
+        win->_y[y] = win->_y[y - 1];
+        win->_firstch[y] = 0;
+        win->_lastch[y] = win->_maxx - 1;
+    }
+
+    win->_y[win->_cury] = temp;
+
+    for (end = &temp[win->_maxx - 1]; temp <= end; temp++)
+        *temp = blank;
+
+    win->_firstch[win->_cury] = 0;
+    win->_lastch[win->_cury] = win->_maxx - 1;
+
+    return OK;
+}
+
+int insertln(void)
+{
+    PDC_LOG(("insertln() - called\n"));
+
+    return winsertln(stdscr);
+}
+
+int mvinsertln(int y, int x)
+{
+    PDC_LOG(("mvinsertln() - called\n"));
+
+    if (move(y, x) == ERR)
+        return ERR;
+
+    return winsertln(stdscr);
+}
+
+int mvwinsertln(WINDOW *win, int y, int x)
+{
+    PDC_LOG(("mvwinsertln() - called\n"));
+
+    if (wmove(win, y, x) == ERR)
+        return ERR;
+
+    return winsertln(win);
+}
diff --git a/apps/lib/curses/pdcurses/pdcurses/deprec.c b/apps/lib/curses/pdcurses/pdcurses/deprec.c
new file mode 100644
index 0000000..83e6131
--- /dev/null
+++ b/apps/lib/curses/pdcurses/pdcurses/deprec.c
@@ -0,0 +1,29 @@
+/* Public Domain Curses */
+
+#include <curspriv.h>
+
+RCSID("$Id: deprec.c,v 1.6 2008/07/13 16:08:18 wmcbrine Exp $")
+
+/* Deprecated functions. These should not be used, and will eventually 
+   be removed. They're here solely for the benefit of applications that 
+   linked to them in older versions of PDCurses. */
+
+bool PDC_check_bios_key(void)
+{
+    return PDC_check_key();
+}
+
+int PDC_get_bios_key(void)
+{
+    return PDC_get_key();
+}
+
+bool PDC_get_ctrl_break(void)
+{
+    return !SP->raw_inp;
+}
+
+int PDC_set_ctrl_break(bool setting)
+{
+    return setting ? noraw() : raw();
+}
diff --git a/apps/lib/curses/pdcurses/pdcurses/getch.c b/apps/lib/curses/pdcurses/pdcurses/getch.c
new file mode 100644
index 0000000..87677ba
--- /dev/null
+++ b/apps/lib/curses/pdcurses/pdcurses/getch.c
@@ -0,0 +1,410 @@
+/* Public Domain Curses */
+
+#include <curspriv.h>
+
+RCSID("$Id: getch.c,v 1.72 2008/07/13 16:08:18 wmcbrine Exp $")
+
+/*man-start**************************************************************
+
+  Name:                                                         getch
+
+  Synopsis:
+        int getch(void);
+        int wgetch(WINDOW *win);
+        int mvgetch(int y, int x);
+        int mvwgetch(WINDOW *win, int y, int x);
+        int ungetch(int ch);
+        int flushinp(void);
+
+        int get_wch(wint_t *wch);
+        int wget_wch(WINDOW *win, wint_t *wch);
+        int mvget_wch(int y, int x, wint_t *wch);
+        int mvwget_wch(WINDOW *win, int y, int x, wint_t *wch);
+        int unget_wch(const wchar_t wch);
+
+        unsigned long PDC_get_key_modifiers(void);
+        int PDC_save_key_modifiers(bool flag);
+        int PDC_return_key_modifiers(bool flag);
+
+  Description:
+        With the getch(), wgetch(), mvgetch(), and mvwgetch() functions, 
+        a character is read from the terminal associated with the window. 
+        In nodelay mode, if there is no input waiting, the value ERR is 
+        returned. In delay mode, the program will hang until the system 
+        passes text through to the program. Depending on the setting of 
+        cbreak(), this will be after one character or after the first 
+        newline.  Unless noecho() has been set, the character will also 
+        be echoed into the designated window.
+
+        If keypad() is TRUE, and a function key is pressed, the token for
+        that function key will be returned instead of the raw characters.
+        Possible function keys are defined in <curses.h> with integers
+        beginning with 0401, whose names begin with KEY_.
+
+        If nodelay(win, TRUE) has been called on the window and no input
+        is waiting, the value ERR is returned.
+
+        ungetch() places ch back onto the input queue to be returned by 
+        the next call to wgetch().
+
+        flushinp() throws away any type-ahead that has been typed by the 
+        user and has not yet been read by the program.
+
+        PDC_get_key_modifiers() returns the keyboard modifiers (shift, 
+        control, alt, numlock) effective at the time of the last getch() 
+        call, if PDC_save_key_modifiers(TRUE) has been called before the 
+        getch(). Use the macros PDC_KEY_MODIFIER_* to determine which 
+        modifier(s) were set. PDC_return_key_modifiers() tells getch() 
+        to return modifier keys pressed alone as keystrokes (KEY_ALT_L, 
+        etc.). These may not work on all platforms.
+
+        NOTE: getch() and ungetch() are implemented as macros, to avoid 
+        conflict with many DOS compiler's runtime libraries.
+
+  Return Value:
+        These functions return ERR or the value of the character, meta 
+        character or function key token.
+
+  Portability                                X/Open    BSD    SYS V
+        getch                                   Y       Y       Y
+        wgetch                                  Y       Y       Y
+        mvgetch                                 Y       Y       Y
+        mvwgetch                                Y       Y       Y
+        ungetch                                 Y       Y       Y
+        flushinp                                Y       Y       Y
+        get_wch                                 Y
+        wget_wch                                Y
+        mvget_wch                               Y
+        mvwget_wch                              Y
+        unget_wch                               Y
+        PDC_get_key_modifiers                   -       -       -
+
+**man-end****************************************************************/
+
+#define _INBUFSIZ   512 /* size of terminal input buffer */
+#define NUNGETCH    256 /* max # chars to ungetch() */
+
+static int c_pindex = 0;    /* putter index */
+static int c_gindex = 1;    /* getter index */
+static int c_ungind = 0;    /* ungetch() push index */
+static int c_ungch[NUNGETCH];   /* array of ungotten chars */
+
+static int _mouse_key(WINDOW *win)
+{
+    int i, key = KEY_MOUSE;
+    unsigned long mbe = SP->_trap_mbe;
+
+    /* Filter unwanted mouse events */
+
+    for (i = 0; i < 3; i++)
+    {
+        if (pdc_mouse_status.changes & (1 << i))
+        {
+            int shf = i * 5;
+            short button = pdc_mouse_status.button[i] & BUTTON_ACTION_MASK;
+
+            if (   (!(mbe & (BUTTON1_PRESSED << shf)) &&
+                    (button == BUTTON_PRESSED))
+
+                || (!(mbe & (BUTTON1_CLICKED << shf)) &&
+                    (button == BUTTON_CLICKED))
+
+                || (!(mbe & (BUTTON1_DOUBLE_CLICKED << shf)) &&
+                    (button == BUTTON_DOUBLE_CLICKED))
+
+                || (!(mbe & (BUTTON1_MOVED << shf)) &&
+                    (button == BUTTON_MOVED))
+
+                || (!(mbe & (BUTTON1_RELEASED << shf)) &&
+                    (button == BUTTON_RELEASED))
+            )
+                pdc_mouse_status.changes ^= (1 << i);
+        }
+    }
+
+    if (pdc_mouse_status.changes & PDC_MOUSE_MOVED)
+    {
+        if (!(mbe & (BUTTON1_MOVED|BUTTON2_MOVED|BUTTON3_MOVED)))
+            pdc_mouse_status.changes ^= PDC_MOUSE_MOVED;
+    }
+
+    if (pdc_mouse_status.changes &
+        (PDC_MOUSE_WHEEL_UP|PDC_MOUSE_WHEEL_DOWN))
+    {
+        if (!(mbe & MOUSE_WHEEL_SCROLL))
+            pdc_mouse_status.changes &=
+                ~(PDC_MOUSE_WHEEL_UP|PDC_MOUSE_WHEEL_DOWN);
+    }
+
+    if (!pdc_mouse_status.changes)
+        return -1;
+
+    /* Check for click in slk area */
+
+    i = PDC_mouse_in_slk(pdc_mouse_status.y, pdc_mouse_status.x);
+
+    if (i)
+    {
+        if (pdc_mouse_status.button[0] & (BUTTON_PRESSED|BUTTON_CLICKED))
+            key = KEY_F(i);
+        else
+            key = -1;
+    }
+
+    return key;
+}
+
+int wgetch(WINDOW *win)
+{
+    static int buffer[_INBUFSIZ];   /* character buffer */
+    int key, waitcount;
+
+    PDC_LOG(("wgetch() - called\n"));
+
+    if (!win)
+        return ERR;
+
+    waitcount = 0;
+
+     /* set the number of 1/20th second napms() calls */
+
+    if (SP->delaytenths)
+        waitcount = 2 * SP->delaytenths;
+    else
+        if (win->_delayms)
+        {
+            /* Can't really do millisecond intervals, so delay in 
+               1/20ths of a second (50ms) */
+
+            waitcount = win->_delayms / 50;
+            if (!waitcount)
+                waitcount = 1;
+        }
+
+    /* refresh window when wgetch is called if there have been changes 
+       to it and it is not a pad */
+
+    if (!(win->_flags & _PAD) && ((!win->_leaveit &&
+         (win->_begx + win->_curx != SP->curscol ||
+          win->_begy + win->_cury != SP->cursrow)) || is_wintouched(win)))
+        wrefresh(win);
+
+    /* if ungotten char exists, remove and return it */
+
+    if (c_ungind)
+        return c_ungch[--c_ungind];
+
+    /* if normal and data in buffer */
+
+    if ((!SP->raw_inp && !SP->cbreak) && (c_gindex < c_pindex))
+        return buffer[c_gindex++];
+
+    /* prepare to buffer data */
+
+    c_pindex = 0;
+    c_gindex = 0;
+
+    /* to get here, no keys are buffered. go and get one. */
+
+    for (;;)            /* loop for any buffering */
+    {
+        /* is there a keystroke ready? */
+
+        if (!PDC_check_key())
+        {
+            /* if not, handle timeout() and halfdelay() */
+
+            if (SP->delaytenths || win->_delayms)
+            {
+                if (!waitcount)
+                    return ERR;
+
+                waitcount--;
+            }
+            else
+                if (win->_nodelay)
+                    return ERR;
+
+            napms(50);  /* sleep for 1/20th second */
+            continue;   /* then check again */
+        }
+
+        /* if there is, fetch it */
+
+        key = PDC_get_key();
+
+        if (SP->key_code)
+        {
+            /* filter special keys if not in keypad mode */
+
+            if (!win->_use_keypad)
+                key = -1;
+
+            /* filter mouse events; translate mouse clicks in the slk 
+               area to function keys */
+
+            else if (key == KEY_MOUSE)
+                key = _mouse_key(win);
+        }
+
+        /* unwanted key? loop back */
+
+        if (key == -1)
+            continue;
+
+        /* translate CR */
+
+        if (key == '\r' && SP->autocr && !SP->raw_inp)
+            key = '\n';
+
+        /* if echo is enabled */
+
+        if (SP->echo && !SP->key_code)
+        {
+            waddch(win, key);
+            wrefresh(win);
+        }
+
+        /* if no buffering */
+
+        if (SP->raw_inp || SP->cbreak)
+            return key;
+
+        /* if no overflow, put data in buffer */
+
+        if (key == '\b')
+        {
+            if (c_pindex > c_gindex)
+                c_pindex--;
+        }
+        else
+            if (c_pindex < _INBUFSIZ - 2)
+                buffer[c_pindex++] = key;
+
+        /* if we got a line */
+
+        if (key == '\n' || key == '\r')
+            return buffer[c_gindex++];
+    }
+}
+
+int mvgetch(int y, int x)
+{
+    PDC_LOG(("mvgetch() - called\n"));
+
+    if (move(y, x) == ERR)
+        return ERR;
+
+    return wgetch(stdscr);
+}
+
+int mvwgetch(WINDOW *win, int y, int x)
+{
+    PDC_LOG(("mvwgetch() - called\n"));
+
+    if (wmove(win, y, x) == ERR)
+        return ERR;
+
+    return wgetch(win);
+}
+
+int PDC_ungetch(int ch)
+{
+    PDC_LOG(("ungetch() - called\n"));
+
+    if (c_ungind >= NUNGETCH)   /* pushback stack full */
+        return ERR;
+
+    c_ungch[c_ungind++] = ch;
+
+    return OK;
+}
+
+int flushinp(void)
+{
+    PDC_LOG(("flushinp() - called\n"));
+
+    PDC_flushinp();
+
+    c_gindex = 1;           /* set indices to kill buffer */
+    c_pindex = 0;
+    c_ungind = 0;           /* clear c_ungch array */
+
+    return OK;
+}
+
+unsigned long PDC_get_key_modifiers(void)
+{
+    PDC_LOG(("PDC_get_key_modifiers() - called\n"));
+
+    return pdc_key_modifiers;
+}
+
+int PDC_save_key_modifiers(bool flag)
+{
+    PDC_LOG(("PDC_save_key_modifiers() - called\n"));
+
+    SP->save_key_modifiers = flag;
+    return OK;
+}
+
+int PDC_return_key_modifiers(bool flag)
+{
+    PDC_LOG(("PDC_return_key_modifiers() - called\n"));
+
+    SP->return_key_modifiers = flag;
+    return PDC_modifiers_set();
+}
+
+#ifdef PDC_WIDE
+int wget_wch(WINDOW *win, wint_t *wch)
+{
+    int key;
+
+    PDC_LOG(("wget_wch() - called\n"));
+
+    if (!wch)
+        return ERR;
+
+    key = wgetch(win);
+
+    if (key == ERR)
+        return ERR;
+
+    *wch = key;
+
+    return SP->key_code ? KEY_CODE_YES : OK;
+}
+
+int get_wch(wint_t *wch)
+{
+    PDC_LOG(("get_wch() - called\n"));
+
+    return wget_wch(stdscr, wch);
+}
+
+int mvget_wch(int y, int x, wint_t *wch)
+{
+    PDC_LOG(("mvget_wch() - called\n"));
+
+    if (move(y, x) == ERR)
+        return ERR;
+
+    return wget_wch(stdscr, wch);
+}
+
+int mvwget_wch(WINDOW *win, int y, int x, wint_t *wch)
+{
+    PDC_LOG(("mvwget_wch() - called\n"));
+
+    if (wmove(win, y, x) == ERR)
+        return ERR;
+
+    return wget_wch(win, wch);
+}
+
+int unget_wch(const wchar_t wch)
+{
+    return PDC_ungetch(wch);
+}
+#endif
diff --git a/apps/lib/curses/pdcurses/pdcurses/getstr.c b/apps/lib/curses/pdcurses/pdcurses/getstr.c
new file mode 100644
index 0000000..c6386d3
--- /dev/null
+++ b/apps/lib/curses/pdcurses/pdcurses/getstr.c
@@ -0,0 +1,471 @@
+/* Public Domain Curses */
+
+#include <curspriv.h>
+
+RCSID("$Id: getstr.c,v 1.51 2008/07/14 04:24:51 wmcbrine Exp $")
+
+/*man-start**************************************************************
+
+  Name:                                                         getstr
+
+  Synopsis:
+        int getstr(char *str);
+        int wgetstr(WINDOW *win, char *str);
+        int mvgetstr(int y, int x, char *str);
+        int mvwgetstr(WINDOW *win, int y, int x, char *str);
+        int getnstr(char *str, int n);
+        int wgetnstr(WINDOW *win, char *str, int n);
+        int mvgetnstr(int y, int x, char *str, int n);
+        int mvwgetnstr(WINDOW *win, int y, int x, char *str, int n);
+
+        int get_wstr(wint_t *wstr);
+        int wget_wstr(WINDOW *win, wint_t *wstr);
+        int mvget_wstr(int y, int x, wint_t *wstr);
+        int mvwget_wstr(WINDOW *win, int, int, wint_t *wstr);
+        int getn_wstr(wint_t *wstr, int n);
+        int wgetn_wstr(WINDOW *win, wint_t *wstr, int n);
+        int mvgetn_wstr(int y, int x, wint_t *wstr, int n);
+        int mvwgetn_wstr(WINDOW *win, int y, int x, wint_t *wstr, int n);
+
+  Description:
+        These routines call wgetch() repeatedly to build a string, 
+        interpreting erase and kill characters along the way, until a 
+        newline or carriage return is received. When PDCurses is built 
+        with wide-character support enabled, the narrow-character 
+        functions convert the wgetch()'d values into a multibyte string 
+        in the current locale before returning it. The resulting string 
+        is placed in the area pointed to by *str. The routines with n as 
+        the last argument read at most n characters.
+
+        Note that there's no way to know how long the buffer passed to 
+        wgetstr() is, so use wgetnstr() to avoid buffer overflows.
+
+  Return Value:
+        This functions return ERR on failure or any other value on 
+        success.
+
+  Portability                                X/Open    BSD    SYS V
+        getstr                                  Y       Y       Y
+        wgetstr                                 Y       Y       Y
+        mvgetstr                                Y       Y       Y
+        mvwgetstr                               Y       Y       Y
+        getnstr                                 Y       -      4.0
+        wgetnstr                                Y       -      4.0
+        mvgetnstr                               Y       -       -
+        mvwgetnstr                              Y       -       -
+        get_wstr                                Y
+        wget_wstr                               Y
+        mvget_wstr                              Y
+        mvwget_wstr                             Y
+        getn_wstr                               Y
+        wgetn_wstr                              Y
+        mvgetn_wstr                             Y
+        mvwgetn_wstr                            Y
+
+**man-end****************************************************************/
+
+#define MAXLINE 255
+
+int wgetnstr(WINDOW *win, char *str, int n)
+{
+#ifdef PDC_WIDE
+    wchar_t wstr[MAXLINE + 1];
+
+    if (n < 0 || n > MAXLINE)
+        n = MAXLINE;
+
+    if (wgetn_wstr(win, (wint_t *)wstr, n) == ERR)
+        return ERR;
+
+    return PDC_wcstombs(str, wstr, n);
+#else
+    int ch, i, num, x, chars;
+    char *p;
+    bool stop, oldecho, oldcbreak, oldnodelay;
+
+    PDC_LOG(("wgetnstr() - called\n"));
+
+    if (!win || !str)
+        return ERR;
+
+    chars = 0;
+    p = str;
+    stop = FALSE;
+
+    x = win->_curx;
+
+    oldcbreak = SP->cbreak; /* remember states */
+    oldecho = SP->echo;
+    oldnodelay = win->_nodelay;
+
+    SP->echo = FALSE;       /* we do echo ourselves */
+    cbreak();               /* ensure each key is returned immediately */
+    win->_nodelay = FALSE;  /* don't return -1 */
+
+    wrefresh(win);
+
+    while (!stop)
+    {
+        ch = wgetch(win);
+
+        switch (ch)
+        {
+
+        case '\t':
+            ch = ' ';
+            num = TABSIZE - (win->_curx - x) % TABSIZE;
+            for (i = 0; i < num; i++)
+            {
+                if (chars < n)
+                {
+                    if (oldecho) 
+                        waddch(win, ch);
+                    *p++ = ch;
+                    ++chars;
+                }
+                else
+                    beep();
+            }
+            break;
+
+        case _ECHAR:        /* CTRL-H -- Delete character */
+            if (p > str)
+            {
+                if (oldecho) 
+                    waddstr(win, "\b \b");
+                ch = (unsigned char)(*--p);
+                if ((ch < ' ') && (oldecho))
+                    waddstr(win, "\b \b");
+                chars--;
+            }
+            break;
+
+        case _DLCHAR:       /* CTRL-U -- Delete line */
+            while (p > str)
+            {
+                if (oldecho) 
+                    waddstr(win, "\b \b");
+                ch = (unsigned char)(*--p);
+                if ((ch < ' ') && (oldecho))
+                    waddstr(win, "\b \b");
+            }
+            chars = 0;
+            break;
+
+        case _DWCHAR:       /* CTRL-W -- Delete word */
+
+            while ((p > str) && (*(p - 1) == ' '))
+            {
+                if (oldecho) 
+                    waddstr(win, "\b \b");
+
+                --p;        /* remove space */
+                chars--;
+            }
+            while ((p > str) && (*(p - 1) != ' '))
+            {
+                if (oldecho) 
+                    waddstr(win, "\b \b");
+
+                ch = (unsigned char)(*--p);
+                if ((ch < ' ') && (oldecho))
+                    waddstr(win, "\b \b");
+                chars--;
+            }
+            break;
+
+        case '\n':
+        case '\r':
+            stop = TRUE;
+            if (oldecho) 
+                waddch(win, '\n');
+            break;
+
+        default:
+            if (chars < n)
+            {
+                if (!SP->key_code && ch < 0x100)
+                {
+                    *p++ = ch;
+                    if (oldecho) 
+                        waddch(win, ch);
+                    chars++;
+                }
+            }
+            else
+                beep();
+
+            break;
+      
+        }
+
+        wrefresh(win);
+    }
+
+    *p = '\0';
+
+    SP->echo = oldecho;     /* restore old settings */
+    SP->cbreak = oldcbreak;
+    win->_nodelay = oldnodelay;
+
+    return OK;
+#endif
+}
+
+int getstr(char *str)
+{
+    PDC_LOG(("getstr() - called\n"));
+
+    return wgetnstr(stdscr, str, MAXLINE);
+}
+
+int wgetstr(WINDOW *win, char *str)
+{
+    PDC_LOG(("wgetstr() - called\n"));
+
+    return wgetnstr(win, str, MAXLINE);
+}
+
+int mvgetstr(int y, int x, char *str)
+{
+    PDC_LOG(("mvgetstr() - called\n"));
+
+    if (move(y, x) == ERR)
+        return ERR;
+
+    return wgetnstr(stdscr, str, MAXLINE);
+}
+
+int mvwgetstr(WINDOW *win, int y, int x, char *str)
+{
+    PDC_LOG(("mvwgetstr() - called\n"));
+
+    if (wmove(win, y, x) == ERR)
+        return ERR;
+
+    return wgetnstr(win, str, MAXLINE);
+}
+
+int getnstr(char *str, int n)
+{
+    PDC_LOG(("getnstr() - called\n"));
+
+    return wgetnstr(stdscr, str, n);
+}
+
+int mvgetnstr(int y, int x, char *str, int n)
+{
+    PDC_LOG(("mvgetnstr() - called\n"));
+
+    if (move(y, x) == ERR)
+        return ERR;
+
+    return wgetnstr(stdscr, str, n);
+}
+
+int mvwgetnstr(WINDOW *win, int y, int x, char *str, int n)
+{
+    PDC_LOG(("mvwgetnstr() - called\n"));
+
+    if (wmove(win, y, x) == ERR)
+        return ERR;
+
+    return wgetnstr(win, str, n);
+}
+
+#ifdef PDC_WIDE
+int wgetn_wstr(WINDOW *win, wint_t *wstr, int n)
+{
+    int ch, i, num, x, chars;
+    wint_t *p;
+    bool stop, oldecho, oldcbreak, oldnodelay;
+
+    PDC_LOG(("wgetn_wstr() - called\n"));
+
+    if (!win || !wstr)
+        return ERR;
+
+    chars = 0;
+    p = wstr;
+    stop = FALSE;
+
+    x = win->_curx;
+
+    oldcbreak = SP->cbreak; /* remember states */
+    oldecho = SP->echo;
+    oldnodelay = win->_nodelay;
+
+    SP->echo = FALSE;       /* we do echo ourselves */
+    cbreak();               /* ensure each key is returned immediately */
+    win->_nodelay = FALSE;  /* don't return -1 */
+
+    wrefresh(win);
+
+    while (!stop)
+    {
+        ch = wgetch(win);
+
+        switch (ch)
+        {
+
+        case '\t':
+            ch = ' ';
+            num = TABSIZE - (win->_curx - x) % TABSIZE;
+            for (i = 0; i < num; i++)
+            {
+                if (chars < n)
+                {
+                    if (oldecho) 
+                        waddch(win, ch);
+                    *p++ = ch;
+                    ++chars;
+                }
+                else
+                    beep();
+            }
+            break;
+
+        case _ECHAR:        /* CTRL-H -- Delete character */
+            if (p > wstr)
+            {
+                if (oldecho) 
+                    waddstr(win, "\b \b");
+                ch = *--p;
+                if ((ch < ' ') && (oldecho))
+                    waddstr(win, "\b \b");
+                chars--;
+            }
+            break;
+
+        case _DLCHAR:       /* CTRL-U -- Delete line */
+            while (p > wstr)
+            {
+                if (oldecho) 
+                    waddstr(win, "\b \b");
+                ch = *--p;
+                if ((ch < ' ') && (oldecho))
+                    waddstr(win, "\b \b");
+            }
+            chars = 0;
+            break;
+
+        case _DWCHAR:       /* CTRL-W -- Delete word */
+
+            while ((p > wstr) && (*(p - 1) == ' '))
+            {
+                if (oldecho) 
+                    waddstr(win, "\b \b");
+
+                --p;        /* remove space */
+                chars--;
+            }
+            while ((p > wstr) && (*(p - 1) != ' '))
+            {
+                if (oldecho) 
+                    waddstr(win, "\b \b");
+
+                ch = *--p;
+                if ((ch < ' ') && (oldecho))
+                    waddstr(win, "\b \b");
+                chars--;
+            }
+            break;
+
+        case '\n':
+        case '\r':
+            stop = TRUE;
+            if (oldecho) 
+                waddch(win, '\n');
+            break;
+
+        default:
+            if (chars < n)
+            {
+                if (!SP->key_code)
+                {
+                    *p++ = ch;
+                    if (oldecho)
+                        waddch(win, ch);
+                    chars++;
+                }
+            }
+            else
+                beep();
+
+            break;
+      
+        }
+
+        wrefresh(win);
+    }
+
+    *p = '\0';
+
+    SP->echo = oldecho;     /* restore old settings */
+    SP->cbreak = oldcbreak;
+    win->_nodelay = oldnodelay;
+
+    return OK;
+}
+
+int get_wstr(wint_t *wstr)
+{
+    PDC_LOG(("get_wstr() - called\n"));
+
+    return wgetn_wstr(stdscr, wstr, MAXLINE);
+}
+
+int wget_wstr(WINDOW *win, wint_t *wstr)
+{
+    PDC_LOG(("wget_wstr() - called\n"));
+
+    return wgetn_wstr(win, wstr, MAXLINE);
+}
+
+int mvget_wstr(int y, int x, wint_t *wstr)
+{
+    PDC_LOG(("mvget_wstr() - called\n"));
+
+    if (move(y, x) == ERR)
+        return ERR;
+
+    return wgetn_wstr(stdscr, wstr, MAXLINE);
+}
+
+int mvwget_wstr(WINDOW *win, int y, int x, wint_t *wstr)
+{
+    PDC_LOG(("mvwget_wstr() - called\n"));
+
+    if (wmove(win, y, x) == ERR)
+        return ERR;
+
+    return wgetn_wstr(win, wstr, MAXLINE);
+}
+
+int getn_wstr(wint_t *wstr, int n)
+{
+    PDC_LOG(("getn_wstr() - called\n"));
+
+    return wgetn_wstr(stdscr, wstr, n);
+}
+
+int mvgetn_wstr(int y, int x, wint_t *wstr, int n)
+{
+    PDC_LOG(("mvgetn_wstr() - called\n"));
+
+    if (move(y, x) == ERR)
+        return ERR;
+
+    return wgetn_wstr(stdscr, wstr, n);
+}
+
+int mvwgetn_wstr(WINDOW *win, int y, int x, wint_t *wstr, int n)
+{
+    PDC_LOG(("mvwgetn_wstr() - called\n"));
+
+    if (wmove(win, y, x) == ERR)
+        return ERR;
+
+    return wgetn_wstr(win, wstr, n);
+}
+#endif
diff --git a/apps/lib/curses/pdcurses/pdcurses/getyx.c b/apps/lib/curses/pdcurses/pdcurses/getyx.c
new file mode 100644
index 0000000..fd0564d
--- /dev/null
+++ b/apps/lib/curses/pdcurses/pdcurses/getyx.c
@@ -0,0 +1,143 @@
+/* Public Domain Curses */
+
+#include <curspriv.h>
+
+RCSID("$Id: getyx.c,v 1.29 2008/07/15 17:13:26 wmcbrine Exp $")
+
+/*man-start**************************************************************
+
+  Name:                                                         getyx
+
+  Synopsis:
+        void getyx(WINDOW *win, int y, int x);
+        void getparyx(WINDOW *win, int y, int x);
+        void getbegyx(WINDOW *win, int y, int x);
+        void getmaxyx(WINDOW *win, int y, int x);
+
+        void getsyx(int y, int x);
+        int setsyx(int y, int x);
+
+        int getbegy(WINDOW *win);
+        int getbegx(WINDOW *win);
+        int getcury(WINDOW *win);
+        int getcurx(WINDOW *win);
+        int getpary(WINDOW *win);
+        int getparx(WINDOW *win);
+        int getmaxy(WINDOW *win);
+        int getmaxx(WINDOW *win);
+
+  Description:
+        The getyx() macro (defined in curses.h -- the prototypes here 
+        are merely illustrative) puts the current cursor position of the 
+        specified window into y and x. getbegyx() and getmaxyx() return 
+        the starting coordinates and size of the specified window, 
+        respectively. getparyx() returns the starting coordinates of the 
+        parent's window, if the specified window is a subwindow; 
+        otherwise it sets y and x to -1. These are all macros.
+
+        getsyx() gets the coordinates of the virtual screen cursor, and
+        stores them in y and x. If leaveok() is TRUE, it returns -1, -1.
+        If lines have been removed with ripoffline(), then getsyx()
+        includes these lines in its count; so, the returned y and x
+        values should only be used with setsyx().
+
+        setsyx() sets the virtual screen cursor to the y, x coordinates.
+        If y, x are -1, -1, leaveok() is set TRUE.
+
+        getsyx() and setsyx() are meant to be used by a library routine
+        that manipulates curses windows without altering the position of
+        the cursor. Note that getsyx() is defined only as a macro.
+
+        getbegy(), getbegx(), getcurx(), getcury(), getmaxy(),
+        getmaxx(), getpary(), and getparx() return the appropriate
+        coordinate or size values, or ERR in the case of a NULL window.
+
+  Portability                                X/Open    BSD    SYS V
+        getyx                                   Y       Y       Y
+        getparyx                                -       -      4.0
+        getbegyx                                -       -      3.0
+        getmaxyx                                -       -      3.0
+        getsyx                                  -       -      3.0
+        setsyx                                  -       -      3.0
+        getbegy                                 -       -       -
+        getbegx                                 -       -       -
+        getcury                                 -       -       -
+        getcurx                                 -       -       -
+        getpary                                 -       -       -
+        getparx                                 -       -       -
+        getmaxy                                 -       -       -
+        getmaxx                                 -       -       -
+
+**man-end****************************************************************/
+
+int getbegy(WINDOW *win)
+{
+    PDC_LOG(("getbegy() - called\n"));
+
+    return win ? win->_begy : ERR;
+}
+
+int getbegx(WINDOW *win)
+{
+    PDC_LOG(("getbegx() - called\n"));
+
+    return win ? win->_begx : ERR;
+}
+
+int getcury(WINDOW *win)
+{
+    PDC_LOG(("getcury() - called\n"));
+
+    return win ? win->_cury : ERR;
+}
+
+int getcurx(WINDOW *win)
+{
+    PDC_LOG(("getcurx() - called\n"));
+
+    return win ? win->_curx : ERR;
+}
+
+int getpary(WINDOW *win)
+{
+    PDC_LOG(("getpary() - called\n"));
+
+    return win ? win->_pary : ERR;
+}
+
+int getparx(WINDOW *win)
+{
+    PDC_LOG(("getparx() - called\n"));
+
+    return win ? win->_parx : ERR;
+}
+
+int getmaxy(WINDOW *win)
+{
+    PDC_LOG(("getmaxy() - called\n"));
+
+    return win ? win->_maxy : ERR;
+}
+
+int getmaxx(WINDOW *win)
+{
+    PDC_LOG(("getmaxx() - called\n"));
+
+    return win ? win->_maxx : ERR;
+}
+
+int setsyx(int y, int x)
+{
+    PDC_LOG(("setsyx() - called\n"));
+
+    if(y == -1 && x == -1)
+    {
+        curscr->_leaveit = TRUE;
+        return OK;
+    }
+    else
+    {
+        curscr->_leaveit = FALSE;
+        return wmove(curscr, y, x);
+    }
+}
diff --git a/apps/lib/curses/pdcurses/pdcurses/inch.c b/apps/lib/curses/pdcurses/pdcurses/inch.c
new file mode 100644
index 0000000..7347e74
--- /dev/null
+++ b/apps/lib/curses/pdcurses/pdcurses/inch.c
@@ -0,0 +1,125 @@
+/* Public Domain Curses */
+
+#include <curspriv.h>
+
+RCSID("$Id: inch.c,v 1.33 2008/07/13 16:08:18 wmcbrine Exp $")
+
+/*man-start**************************************************************
+
+  Name:                                                         inch
+
+  Synopsis:
+        chtype inch(void);
+        chtype winch(WINDOW *win);
+        chtype mvinch(int y, int x);
+        chtype mvwinch(WINDOW *win, int y, int x);
+
+        int in_wch(cchar_t *wcval);
+        int win_wch(WINDOW *win, cchar_t *wcval);
+        int mvin_wch(int y, int x, cchar_t *wcval);
+        int mvwin_wch(WINDOW *win, int y, int x, cchar_t *wcval);
+
+  Description:
+        The inch() functions retrieve the character and attribute from 
+        the current or specified window position, in the form of a 
+        chtype. If a NULL window is specified, (chtype)ERR is returned.
+
+        The in_wch() functions are the wide-character versions; instead 
+        of returning a chtype, they store a cchar_t at the address 
+        specified by wcval, and return OK or ERR. (No value is stored 
+        when ERR is returned.) Note that in PDCurses, chtype and cchar_t 
+        are the same.
+
+  Portability                                X/Open    BSD    SYS V
+        inch                                    Y       Y       Y
+        winch                                   Y       Y       Y
+        mvinch                                  Y       Y       Y
+        mvwinch                                 Y       Y       Y
+        in_wch                                  Y
+        win_wch                                 Y
+        mvin_wch                                Y
+        mvwin_wch                               Y
+
+**man-end****************************************************************/
+
+chtype winch(WINDOW *win)
+{
+    PDC_LOG(("winch() - called\n"));
+
+    if (!win)
+        return (chtype)ERR;
+
+    return win->_y[win->_cury][win->_curx];
+}
+
+chtype inch(void)
+{
+    PDC_LOG(("inch() - called\n"));
+
+    return winch(stdscr);
+}
+
+chtype mvinch(int y, int x)
+{
+    PDC_LOG(("mvinch() - called\n"));
+
+    if (move(y, x) == ERR)
+        return (chtype)ERR;
+
+    return stdscr->_y[stdscr->_cury][stdscr->_curx];
+}
+
+chtype mvwinch(WINDOW *win, int y, int x)
+{
+    PDC_LOG(("mvwinch() - called\n"));
+
+    if (wmove(win, y, x) == ERR)
+        return (chtype)ERR;
+
+    return win->_y[win->_cury][win->_curx];
+}
+
+#ifdef PDC_WIDE
+int win_wch(WINDOW *win, cchar_t *wcval)
+{
+    PDC_LOG(("win_wch() - called\n"));
+
+    if (!win || !wcval)
+        return ERR;
+
+    *wcval = win->_y[win->_cury][win->_curx];
+
+    return OK;
+}
+
+int in_wch(cchar_t *wcval)
+{
+    PDC_LOG(("in_wch() - called\n"));
+
+    return win_wch(stdscr, wcval);
+}
+
+int mvin_wch(int y, int x, cchar_t *wcval)
+{
+    PDC_LOG(("mvin_wch() - called\n"));
+
+    if (!wcval || (move(y, x) == ERR))
+        return ERR;
+
+    *wcval = stdscr->_y[stdscr->_cury][stdscr->_curx];
+
+    return OK;
+}
+
+int mvwin_wch(WINDOW *win, int y, int x, cchar_t *wcval)
+{
+    PDC_LOG(("mvwin_wch() - called\n"));
+
+    if (!wcval || (wmove(win, y, x) == ERR))
+        return ERR;
+
+    *wcval = win->_y[win->_cury][win->_curx];
+
+    return OK;
+}
+#endif
diff --git a/apps/lib/curses/pdcurses/pdcurses/inchstr.c b/apps/lib/curses/pdcurses/pdcurses/inchstr.c
new file mode 100644
index 0000000..50b8cf5
--- /dev/null
+++ b/apps/lib/curses/pdcurses/pdcurses/inchstr.c
@@ -0,0 +1,211 @@
+/* Public Domain Curses */
+
+#include <curspriv.h>
+
+RCSID("$Id: inchstr.c,v 1.34 2008/07/13 16:08:18 wmcbrine Exp $")
+
+/*man-start**************************************************************
+
+  Name:                                                         inchstr
+
+  Synopsis:
+        int inchstr(chtype *ch);
+        int inchnstr(chtype *ch, int n);
+        int winchstr(WINDOW *win, chtype *ch);
+        int winchnstr(WINDOW *win, chtype *ch, int n);
+        int mvinchstr(int y, int x, chtype *ch);
+        int mvinchnstr(int y, int x, chtype *ch, int n);
+        int mvwinchstr(WINDOW *, int y, int x, chtype *ch);
+        int mvwinchnstr(WINDOW *, int y, int x, chtype *ch, int n);
+
+        int in_wchstr(cchar_t *wch);
+        int in_wchnstr(cchar_t *wch, int n);
+        int win_wchstr(WINDOW *win, cchar_t *wch);
+        int win_wchnstr(WINDOW *win, cchar_t *wch, int n);
+        int mvin_wchstr(int y, int x, cchar_t *wch);
+        int mvin_wchnstr(int y, int x, cchar_t *wch, int n);
+        int mvwin_wchstr(WINDOW *win, int y, int x, cchar_t *wch);
+        int mvwin_wchnstr(WINDOW *win, int y, int x, cchar_t *wch, int n);
+
+  Description:
+        These routines read a chtype or cchar_t string from the window, 
+        starting at the current or specified position, and ending at the 
+        right margin, or after n elements, whichever is less.
+
+  Return Value:
+        All functions return the number of elements read, or ERR on 
+        error.
+
+  Portability                                X/Open    BSD    SYS V
+        inchstr                                 Y       -      4.0
+        winchstr                                Y       -      4.0
+        mvinchstr                               Y       -      4.0
+        mvwinchstr                              Y       -      4.0
+        inchnstr                                Y       -      4.0
+        winchnstr                               Y       -      4.0
+        mvinchnstr                              Y       -      4.0
+        mvwinchnstr                             Y       -      4.0
+        in_wchstr                               Y
+        win_wchstr                              Y
+        mvin_wchstr                             Y
+        mvwin_wchstr                            Y
+        in_wchnstr                              Y
+        win_wchnstr                             Y
+        mvin_wchnstr                            Y
+        mvwin_wchnstr                           Y
+
+**man-end****************************************************************/
+
+int winchnstr(WINDOW *win, chtype *ch, int n)
+{
+    chtype *src;
+    int i;
+
+    PDC_LOG(("winchnstr() - called\n"));
+
+    if (!win || !ch || n < 0)
+        return ERR;
+
+    if ((win->_curx + n) > win->_maxx)
+        n = win->_maxx - win->_curx;
+
+    src = win->_y[win->_cury] + win->_curx;
+
+    for (i = 0; i < n; i++)
+        *ch++ = *src++;
+
+    *ch = (chtype)0;
+
+    return OK;
+}
+
+int inchstr(chtype *ch)
+{
+    PDC_LOG(("inchstr() - called\n"));
+
+    return winchnstr(stdscr, ch, stdscr->_maxx - stdscr->_curx);
+}
+
+int winchstr(WINDOW *win, chtype *ch)
+{
+    PDC_LOG(("winchstr() - called\n"));
+
+    return winchnstr(win, ch, win->_maxx - win->_curx);
+}
+
+int mvinchstr(int y, int x, chtype *ch)
+{
+    PDC_LOG(("mvinchstr() - called: y %d x %d\n", y, x));
+
+    if (move(y, x) == ERR)
+        return ERR;
+
+    return winchnstr(stdscr, ch, stdscr->_maxx - stdscr->_curx);
+}
+
+int mvwinchstr(WINDOW *win, int y, int x, chtype *ch)
+{
+    PDC_LOG(("mvwinchstr() - called:\n"));
+
+    if (wmove(win, y, x) == ERR)
+        return ERR;
+
+    return winchnstr(win, ch, win->_maxx - win->_curx);
+}
+
+int inchnstr(chtype *ch, int n)
+{
+    PDC_LOG(("inchnstr() - called\n"));
+
+    return winchnstr(stdscr, ch, n);
+}
+
+int mvinchnstr(int y, int x, chtype *ch, int n)
+{
+    PDC_LOG(("mvinchnstr() - called: y %d x %d n %d\n", y, x, n));
+
+    if (move(y, x) == ERR)
+        return ERR;
+
+    return winchnstr(stdscr, ch, n);
+}
+
+int mvwinchnstr(WINDOW *win, int y, int x, chtype *ch, int n)
+{
+    PDC_LOG(("mvwinchnstr() - called: y %d x %d n %d \n", y, x, n));
+
+    if (wmove(win, y, x) == ERR)
+        return ERR;
+
+    return winchnstr(win, ch, n);
+}
+
+#ifdef PDC_WIDE
+int win_wchnstr(WINDOW *win, cchar_t *wch, int n)
+{
+    PDC_LOG(("win_wchnstr() - called\n"));
+
+    return winchnstr(win, wch, n);
+}
+
+int in_wchstr(cchar_t *wch)
+{
+    PDC_LOG(("in_wchstr() - called\n"));
+
+    return win_wchnstr(stdscr, wch, stdscr->_maxx - stdscr->_curx);
+}
+
+int win_wchstr(WINDOW *win, cchar_t *wch)
+{
+    PDC_LOG(("win_wchstr() - called\n"));
+
+    return win_wchnstr(win, wch, win->_maxx - win->_curx);
+}
+
+int mvin_wchstr(int y, int x, cchar_t *wch)
+{
+    PDC_LOG(("mvin_wchstr() - called: y %d x %d\n", y, x));
+
+    if (move(y, x) == ERR)
+        return ERR;
+
+    return win_wchnstr(stdscr, wch, stdscr->_maxx - stdscr->_curx);
+}
+
+int mvwin_wchstr(WINDOW *win, int y, int x, cchar_t *wch)
+{
+    PDC_LOG(("mvwin_wchstr() - called:\n"));
+
+    if (wmove(win, y, x) == ERR)
+        return ERR;
+
+    return win_wchnstr(win, wch, win->_maxx - win->_curx);
+}
+
+int in_wchnstr(cchar_t *wch, int n)
+{
+    PDC_LOG(("in_wchnstr() - called\n"));
+
+    return win_wchnstr(stdscr, wch, n);
+}
+
+int mvin_wchnstr(int y, int x, cchar_t *wch, int n)
+{
+    PDC_LOG(("mvin_wchnstr() - called: y %d x %d n %d\n", y, x, n));
+
+    if (move(y, x) == ERR)
+        return ERR;
+
+    return win_wchnstr(stdscr, wch, n);
+}
+
+int mvwin_wchnstr(WINDOW *win, int y, int x, cchar_t *wch, int n)
+{
+    PDC_LOG(("mvwinchnstr() - called: y %d x %d n %d \n", y, x, n));
+
+    if (wmove(win, y, x) == ERR)
+        return ERR;
+
+    return win_wchnstr(win, wch, n);
+}
+#endif
diff --git a/apps/lib/curses/pdcurses/pdcurses/initscr.c b/apps/lib/curses/pdcurses/pdcurses/initscr.c
new file mode 100644
index 0000000..d80fa0c
--- /dev/null
+++ b/apps/lib/curses/pdcurses/pdcurses/initscr.c
@@ -0,0 +1,339 @@
+/* Public Domain Curses */
+
+#include <curspriv.h>
+
+RCSID("$Id: initscr.c,v 1.114 2008/07/13 16:08:18 wmcbrine Exp $")
+
+/*man-start**************************************************************
+
+  Name:                                                         initscr
+
+  Synopsis:
+        WINDOW *initscr(void);
+        WINDOW *Xinitscr(int argc, char *argv[]);
+        int endwin(void);
+        bool isendwin(void);
+        SCREEN *newterm(const char *type, FILE *outfd, FILE *infd);
+        SCREEN *set_term(SCREEN *new);
+        void delscreen(SCREEN *sp);
+
+        int resize_term(int nlines, int ncols);
+        bool is_termresized(void);
+        const char *curses_version(void);
+
+  Description:
+        initscr() should be the first curses routine called.  It will 
+        initialize all curses data structures, and arrange that the 
+        first call to refresh() will clear the screen.  In case of 
+        error, initscr() will write a message to standard error and end 
+        the program.
+
+        endwin() should be called before exiting or escaping from curses 
+        mode temporarily.  It will restore tty modes, move the cursor to 
+        the lower left corner of the screen and reset the terminal into 
+        the proper non-visual mode.  To resume curses after a temporary 
+        escape, call refresh() or doupdate().
+
+        isendwin() returns TRUE if endwin() has been called without a 
+        subsequent refresh, unless SP is NULL.
+
+        In some implementations of curses, newterm() allows the use of 
+        multiple terminals. Here, it's just an alternative interface for 
+        initscr(). It always returns SP, or NULL.
+
+        delscreen() frees the memory allocated by newterm() or
+        initscr(), since it's not freed by endwin(). This function is
+        usually not needed. In PDCurses, the parameter must be the
+        value of SP, and delscreen() sets SP to NULL.
+
+        set_term() does nothing meaningful in PDCurses, but is included 
+        for compatibility with other curses implementations.
+
+        resize_term() is effectively two functions: When called with 
+        nonzero values for nlines and ncols, it attempts to resize the 
+        screen to the given size. When called with (0, 0), it merely 
+        adjusts the internal structures to match the current size after 
+        the screen is resized by the user. On the currently supported 
+        platforms, this functionality is mutually exclusive: X11 allows 
+        user resizing, while DOS, OS/2 and Win32 allow programmatic 
+        resizing. If you want to support user resizing, you should check 
+        for getch() returning KEY_RESIZE, and/or call is_termresized() 
+        at appropriate times; if either condition occurs, call 
+        resize_term(0, 0). Then, with either user or programmatic 
+        resizing, you'll have to resize any windows you've created, as 
+        appropriate; resize_term() only handles stdscr and curscr.
+
+        is_termresized() returns TRUE if the curses screen has been
+        resized by the user, and a call to resize_term() is needed. 
+        Checking for KEY_RESIZE is generally preferable, unless you're 
+        not handling the keyboard.
+
+        curses_version() returns a string describing the version of 
+        PDCurses.
+
+  Return Value:
+        All functions return NULL on error, except endwin(), which
+        returns ERR on error.
+
+  Portability                                X/Open    BSD    SYS V
+        initscr                                 Y       Y       Y
+        endwin                                  Y       Y       Y
+        isendwin                                Y       -      3.0
+        newterm                                 Y       -       Y
+        set_term                                Y       -       Y
+        delscreen                               Y       -      4.0
+        resize_term                             -       -       -
+        is_termresized                          -       -       -
+        curses_version                          -       -       -
+
+**man-end****************************************************************/
+
+#include <stdlib.h>
+
+char ttytype[128];
+
+const char *_curses_notice = "PDCurses 3.4 - Public Domain 2008";
+
+SCREEN *SP = (SCREEN*)NULL;           /* curses variables */
+WINDOW *curscr = (WINDOW *)NULL;      /* the current screen image */
+WINDOW *stdscr = (WINDOW *)NULL;      /* the default screen window */
+WINDOW *pdc_lastscr = (WINDOW *)NULL; /* the last screen image */
+
+int LINES = 0;                        /* current terminal height */
+int COLS = 0;                         /* current terminal width */
+int TABSIZE = 8;
+
+MOUSE_STATUS Mouse_status, pdc_mouse_status;
+
+extern RIPPEDOFFLINE linesripped[5];
+extern char linesrippedoff;
+
+WINDOW *Xinitscr(int argc, char *argv[])
+{
+    int i;
+
+    PDC_LOG(("Xinitscr() - called\n"));
+
+    if (SP && SP->alive)
+        return NULL;
+
+    if (PDC_scr_open(argc, argv) == ERR)
+    {
+        fprintf(stderr, "initscr(): Unable to create SP\n");
+        exit(8);
+    }
+
+    SP->autocr = TRUE;       /* cr -> lf by default */
+    SP->raw_out = FALSE;     /* tty I/O modes */
+    SP->raw_inp = FALSE;     /* tty I/O modes */
+    SP->cbreak = TRUE;
+    SP->save_key_modifiers = FALSE;
+    SP->return_key_modifiers = FALSE;
+    SP->echo = TRUE;
+    SP->visibility = 1;
+    SP->resized = FALSE;
+    SP->_trap_mbe = 0L;
+    SP->_map_mbe_to_key = 0L;
+    SP->linesrippedoff = 0;
+    SP->linesrippedoffontop = 0;
+    SP->delaytenths = 0;
+    SP->line_color = -1;
+
+    SP->orig_cursor = PDC_get_cursor_mode();
+
+    LINES = SP->lines;
+    COLS = SP->cols;
+
+    if (LINES < 2 || COLS < 2)
+    {
+        fprintf(stderr, "initscr(): LINES=%d COLS=%d: too small.\n",
+                LINES, COLS);
+        exit(4);
+    }
+
+    if ((curscr = newwin(LINES, COLS, 0, 0)) == (WINDOW *)NULL)
+    {
+        fprintf(stderr, "initscr(): Unable to create curscr.\n");
+        exit(2);
+    }
+
+    if ((pdc_lastscr = newwin(LINES, COLS, 0, 0)) == (WINDOW *)NULL)
+    {
+        fprintf(stderr, "initscr(): Unable to create pdc_lastscr.\n");
+        exit(2);
+    }
+
+    wattrset(pdc_lastscr, (chtype)(-1));
+    werase(pdc_lastscr);
+
+    PDC_slk_initialize();
+    LINES -= SP->slklines;
+
+    /* We have to sort out ripped off lines here, and reduce the height 
+       of stdscr by the number of lines ripped off */
+
+    for (i = 0; i < linesrippedoff; i++)
+    {
+        if (linesripped[i].line < 0)
+            (*linesripped[i].init)(newwin(1, COLS, LINES - 1, 0), COLS);
+        else
+            (*linesripped[i].init)(newwin(1, COLS,
+                                   SP->linesrippedoffontop++, 0), COLS);
+
+        SP->linesrippedoff++;
+        LINES--;
+    }
+
+    linesrippedoff = 0;
+
+    if (!(stdscr = newwin(LINES, COLS, SP->linesrippedoffontop, 0)))
+    {
+        fprintf(stderr, "initscr(): Unable to create stdscr.\n");
+        exit(1);
+    }
+
+    wclrtobot(stdscr);
+
+    /* If preserving the existing screen, don't allow a screen clear */
+
+    if (SP->_preserve)
+    {
+        untouchwin(curscr);
+        untouchwin(stdscr);
+        stdscr->_clear = FALSE;
+        curscr->_clear = FALSE;
+    }
+    else
+        curscr->_clear = TRUE;
+
+    PDC_init_atrtab();  /* set up default colors */
+
+    MOUSE_X_POS = MOUSE_Y_POS = -1;
+    BUTTON_STATUS(1) = BUTTON_RELEASED;
+    BUTTON_STATUS(2) = BUTTON_RELEASED;
+    BUTTON_STATUS(3) = BUTTON_RELEASED;
+    Mouse_status.changes = 0;
+
+    SP->alive = TRUE;
+
+    def_shell_mode();
+
+    sprintf(ttytype, "pdcurses|PDCurses for %s", PDC_sysname());
+
+    return stdscr;
+}
+
+WINDOW *initscr(void)
+{
+    PDC_LOG(("initscr() - called\n"));
+
+    return Xinitscr(0, NULL);
+}
+
+int endwin(void)
+{
+    PDC_LOG(("endwin() - called\n"));
+
+    /* Allow temporary exit from curses using endwin() */
+
+    def_prog_mode();
+    PDC_scr_close();
+
+    SP->alive = FALSE;
+
+    return OK;
+}
+
+bool isendwin(void)
+{
+    PDC_LOG(("isendwin() - called\n"));
+    
+    return SP ? !(SP->alive) : FALSE;
+}
+
+SCREEN *newterm(const char *type, FILE *outfd, FILE *infd)
+{
+    PDC_LOG(("newterm() - called\n"));
+
+    return Xinitscr(0, NULL) ? SP : NULL;
+}
+
+SCREEN *set_term(SCREEN *new)
+{
+    PDC_LOG(("set_term() - called\n"));
+
+    /* We only support one screen */
+
+    return (new == SP) ? SP : NULL;
+}
+
+void delscreen(SCREEN *sp)
+{
+    PDC_LOG(("delscreen() - called\n"));
+
+    if (sp != SP)
+        return;
+
+    PDC_slk_free();     /* free the soft label keys, if needed */
+
+    delwin(stdscr);
+    delwin(curscr);
+    delwin(pdc_lastscr);
+    stdscr = (WINDOW *)NULL;
+    curscr = (WINDOW *)NULL;
+    pdc_lastscr = (WINDOW *)NULL;
+
+    SP->alive = FALSE;
+
+    PDC_scr_free();     /* free SP and pdc_atrtab */
+
+    SP = (SCREEN *)NULL;
+}
+
+int resize_term(int nlines, int ncols)
+{
+    PDC_LOG(("resize_term() - called: nlines %d\n", nlines));
+
+    if (!stdscr || PDC_resize_screen(nlines, ncols) == ERR)
+        return ERR;
+
+    SP->lines = PDC_get_rows();
+    LINES = SP->lines - SP->linesrippedoff - SP->slklines;
+    SP->cols = COLS = PDC_get_columns();
+
+    if (wresize(curscr, SP->lines, SP->cols) == ERR ||
+        wresize(stdscr, LINES, COLS) == ERR ||
+        wresize(pdc_lastscr, SP->lines, SP->cols) == ERR)
+        return ERR;
+
+    werase(pdc_lastscr);
+    curscr->_clear = TRUE;
+
+    if (SP->slk_winptr)
+    {
+        if (wresize(SP->slk_winptr, SP->slklines, COLS) == ERR)
+            return ERR;
+
+        wmove(SP->slk_winptr, 0, 0);
+        wclrtobot(SP->slk_winptr);
+        PDC_slk_initialize();
+        slk_noutrefresh();
+    }
+
+    touchwin(stdscr);
+    wnoutrefresh(stdscr);
+
+    return OK;
+}
+
+bool is_termresized(void)
+{
+    PDC_LOG(("is_termresized() - called\n"));
+
+    return SP->resized;
+}
+
+const char *curses_version(void)
+{
+    return _curses_notice;
+}
diff --git a/apps/lib/curses/pdcurses/pdcurses/inopts.c b/apps/lib/curses/pdcurses/pdcurses/inopts.c
new file mode 100644
index 0000000..6d33fc2
--- /dev/null
+++ b/apps/lib/curses/pdcurses/pdcurses/inopts.c
@@ -0,0 +1,321 @@
+/* Public Domain Curses */
+
+#include <curspriv.h>
+
+RCSID("$Id: inopts.c,v 1.43 2008/07/13 16:08:18 wmcbrine Exp $")
+
+/*man-start**************************************************************
+
+  Name:                                                         inopts
+
+  Synopsis:
+        int cbreak(void);
+        int nocbreak(void);
+        int echo(void);
+        int noecho(void);
+        int halfdelay(int tenths);
+        int intrflush(WINDOW *win, bool bf);
+        int keypad(WINDOW *win, bool bf);
+        int meta(WINDOW *win, bool bf);
+        int nl(void);
+        int nonl(void);
+        int nodelay(WINDOW *win, bool bf);
+        int notimeout(WINDOW *win, bool bf);
+        int raw(void);
+        int noraw(void);
+        void noqiflush(void);
+        void qiflush(void);
+        void timeout(int delay);
+        void wtimeout(WINDOW *win, int delay);
+        int typeahead(int fildes);
+
+        int crmode(void);
+        int nocrmode(void);
+
+  Description:
+        cbreak() and nocbreak() toggle cbreak mode. In cbreak mode, 
+        characters typed by the user are made available immediately, and 
+        erase/kill character processing is not performed.  In nocbreak 
+        mode, typed characters are buffered until a newline or carriage 
+        return. Interrupt and flow control characters are unaffected by 
+        this mode. PDCurses always starts in cbreak mode.
+
+        echo() and noecho() control whether typed characters are echoed 
+        by the input routine.  Initially, input characters are echoed.  
+        Subsequent calls to echo() and noecho() do not flush type-ahead.
+
+        halfdelay() is similar to cbreak(), but allows for a time limit 
+        to be specified, in tenths of a second. This causes getch() to 
+        block for that period before returning ERR if no key has been 
+        received.  tenths must be between 1 and 255.
+
+        keypad() controls whether getch() returns function/special keys 
+        as single key codes (e.g., the left arrow key as KEY_LEFT). Per 
+        X/Open, the default for keypad mode is OFF. You'll probably want 
+        it on. With keypad mode off, if a special key is pressed, 
+        getch() does nothing or returns ERR.
+
+        nodelay() controls whether wgetch() is a non-blocking call. If 
+        the option is enabled, and no input is ready, wgetch() will 
+        return ERR. If disabled, wgetch() will hang until input is 
+        ready.
+
+        nl() enables the translation of a carriage return into a newline 
+        on input. nonl() disables this. Initially, the translation does 
+        occur.
+
+        raw() and noraw() toggle raw mode. Raw mode is similar to cbreak 
+        mode, in that characters typed are immediately passed through to 
+        the user program.  The difference is that in raw mode, the INTR, 
+        QUIT, SUSP, and STOP characters are passed through without being 
+        interpreted, and without generating a signal.
+
+        In PDCurses, the meta() function sets raw mode on or off.
+
+        timeout() and wtimeout() set blocking or non-blocking reads for 
+        the specified window. The delay is measured in milliseconds. If 
+        it's negative, a blocking read is used; if zero, then non- 
+        blocking reads are done -- if no input is waiting, ERR is 
+        returned immediately. If the delay is positive, the read blocks 
+        for the delay period; if the period expires, ERR is returned.
+
+        intrflush(), notimeout(), noqiflush(), qiflush() and typeahead()
+        do nothing in PDCurses, but are included for compatibility with 
+        other curses implementations.
+
+        crmode() and nocrmode() are archaic equivalents to cbreak() and 
+        nocbreak(), respectively.
+
+  Return Value:
+        All functions return OK on success and ERR on error.
+
+  Portability                                X/Open    BSD    SYS V
+        cbreak                                  Y       Y       Y
+        nocbreak                                Y       Y       Y
+        echo                                    Y       Y       Y
+        noecho                                  Y       Y       Y
+        halfdelay                               Y       -       Y
+        intrflush                               Y       -       Y
+        keypad                                  Y       -       Y
+        meta                                    Y       -       Y
+        nl                                      Y       Y       Y
+        nonl                                    Y       Y       Y
+        nodelay                                 Y       -       Y
+        notimeout                               Y       -       Y
+        raw                                     Y       Y       Y
+        noraw                                   Y       Y       Y
+        noqiflush                               Y       -       Y
+        qiflush                                 Y       -       Y
+        timeout                                 Y       -       Y
+        wtimeout                                Y       -       Y
+        typeahead                               Y       -       Y
+        crmode                                  -
+        nocrmode                                -
+
+**man-end****************************************************************/
+
+int cbreak(void)
+{
+    PDC_LOG(("cbreak() - called\n"));
+
+    SP->cbreak = TRUE;
+
+    return OK;
+}
+
+int nocbreak(void)
+{
+    PDC_LOG(("nocbreak() - called\n"));
+
+    SP->cbreak = FALSE;
+    SP->delaytenths = 0;
+
+    return OK;
+}
+
+int echo(void)
+{
+    PDC_LOG(("echo() - called\n"));
+
+    SP->echo = TRUE;
+
+    return OK;
+}
+
+int noecho(void)
+{
+    PDC_LOG(("noecho() - called\n"));
+
+    SP->echo = FALSE;
+
+    return OK;
+}
+
+int halfdelay(int tenths)
+{
+    PDC_LOG(("halfdelay() - called\n"));
+
+    if (tenths < 1 || tenths > 255)
+        return ERR;
+
+    SP->delaytenths = tenths;
+
+    return OK;
+}
+
+int intrflush(WINDOW *win, bool bf)
+{
+    PDC_LOG(("intrflush() - called\n"));
+
+    return OK;
+}
+
+int keypad(WINDOW *win, bool bf)
+{
+    PDC_LOG(("keypad() - called\n"));
+
+    if (!win)
+        return ERR;
+
+    win->_use_keypad = bf;
+
+    return OK;
+}
+
+int meta(WINDOW *win, bool bf)
+{
+    PDC_LOG(("meta() - called\n"));
+
+    SP->raw_inp = bf;
+
+    return OK;
+}
+
+int nl(void)
+{
+    PDC_LOG(("nl() - called\n"));
+
+    SP->autocr = TRUE;
+
+    return OK;
+}
+
+int nonl(void)
+{
+    PDC_LOG(("nonl() - called\n"));
+
+    SP->autocr = FALSE;
+
+    return OK;
+}
+
+int nodelay(WINDOW *win, bool flag)
+{
+    PDC_LOG(("nodelay() - called\n"));
+
+    if (!win)
+        return ERR;
+
+    win->_nodelay = flag;
+
+    return OK;
+}
+
+int notimeout(WINDOW *win, bool flag)
+{
+    PDC_LOG(("notimeout() - called\n"));
+
+    return OK;
+}
+
+int raw(void)
+{
+    PDC_LOG(("raw() - called\n"));
+
+    PDC_set_keyboard_binary(TRUE);
+    SP->raw_inp = TRUE;
+
+    return OK;
+}
+
+int noraw(void)
+{
+    PDC_LOG(("noraw() - called\n"));
+
+    PDC_set_keyboard_binary(FALSE);
+    SP->raw_inp = FALSE;
+
+    return OK;
+}
+
+void noqiflush(void)
+{
+    PDC_LOG(("noqiflush() - called\n"));
+}
+
+void qiflush(void)
+{
+    PDC_LOG(("qiflush() - called\n"));
+}
+
+int typeahead(int fildes)
+{
+    PDC_LOG(("typeahead() - called\n"));
+
+    return OK;
+}
+
+void wtimeout(WINDOW *win, int delay)
+{
+    PDC_LOG(("wtimeout() - called\n"));
+
+    if (!win)
+        return;
+
+    if (delay < 0)
+    {
+        /* This causes a blocking read on the window, so turn on delay 
+           mode */
+
+        win->_nodelay = FALSE;
+        win->_delayms = 0;
+    }
+    else if (!delay)
+    {
+        /* This causes a non-blocking read on the window, so turn off 
+           delay mode */
+
+        win->_nodelay = TRUE;
+        win->_delayms = 0;
+    }
+    else
+    {
+        /* This causes the read on the window to delay for the number of 
+           milliseconds. Also forces the window into non-blocking read 
+           mode */
+
+        /*win->_nodelay = TRUE;*/
+        win->_delayms = delay;
+    }
+}
+
+void timeout(int delay)
+{
+    PDC_LOG(("timeout() - called\n"));
+
+    wtimeout(stdscr, delay);
+}
+
+int crmode(void)
+{
+    PDC_LOG(("crmode() - called\n"));
+
+    return cbreak();
+}
+
+int nocrmode(void)
+{
+    PDC_LOG(("nocrmode() - called\n"));
+
+    return nocbreak();
+}
diff --git a/apps/lib/curses/pdcurses/pdcurses/insch.c b/apps/lib/curses/pdcurses/pdcurses/insch.c
new file mode 100644
index 0000000..50527f2
--- /dev/null
+++ b/apps/lib/curses/pdcurses/pdcurses/insch.c
@@ -0,0 +1,268 @@
+/* Public Domain Curses */
+
+#include <curspriv.h>
+
+RCSID("$Id: insch.c,v 1.44 2008/07/13 16:08:18 wmcbrine Exp $")
+
+/*man-start**************************************************************
+
+  Name:                                                         insch
+
+  Synopsis:
+        int insch(chtype ch);
+        int winsch(WINDOW *win, chtype ch);
+        int mvinsch(int y, int x, chtype ch);
+        int mvwinsch(WINDOW *win, int y, int x, chtype ch);
+
+        int insrawch(chtype ch);
+        int winsrawch(WINDOW *win, chtype ch);
+        int mvinsrawch(int y, int x, chtype ch);
+        int mvwinsrawch(WINDOW *win, int y, int x, chtype ch);
+
+        int ins_wch(const cchar_t *wch);
+        int wins_wch(WINDOW *win, const cchar_t *wch);
+        int mvins_wch(int y, int x, const cchar_t *wch);
+        int mvwins_wch(WINDOW *win, int y, int x, const cchar_t *wch);
+
+  Description:
+        The insch() functions insert a chtype into the window at the 
+        current or specified cursor position. The cursor is NOT 
+        advanced. A newline is equivalent to clrtoeol(); tabs are 
+        expanded; other control characters are converted as with 
+        unctrl().
+
+        The ins_wch() functions are the wide-character
+        equivalents, taking cchar_t pointers rather than chtypes.
+
+        Video attributes can be combined with a character by ORing
+        them into the parameter. Text, including attributes, can be 
+        copied from one place to another using inch() and insch().
+
+        insrawch() etc. are PDCurses-specific wrappers for insch() etc. 
+        that disable the translation of control characters.
+
+  Return Value:
+        All functions return OK on success and ERR on error.
+
+  Portability                                X/Open    BSD    SYS V
+        insch                                   Y       Y       Y
+        winsch                                  Y       Y       Y
+        mvinsch                                 Y       Y       Y
+        mvwinsch                                Y       Y       Y
+        insrawch                                -       -       -
+        winsrawch                               -       -       -
+        ins_wch                                 Y
+        wins_wch                                Y
+        mvins_wch                               Y
+        mvwins_wch                              Y
+
+**man-end****************************************************************/
+
+#include <string.h>
+
+int winsch(WINDOW *win, chtype ch)
+{
+    int x, y;
+    chtype attr;
+    bool xlat;
+
+    PDC_LOG(("winsch() - called: win=%p ch=%x (text=%c attr=0x%x)\n",
+             win, ch, ch & A_CHARTEXT, ch & A_ATTRIBUTES));
+
+    if (!win)
+        return ERR;
+
+    x = win->_curx;
+    y = win->_cury;
+
+    if (y > win->_maxy || x > win->_maxx || y < 0 || x < 0)
+        return ERR;
+
+    xlat = !SP->raw_out && !(ch & A_ALTCHARSET);
+    attr = ch & A_ATTRIBUTES;
+    ch &= A_CHARTEXT;
+
+    if (xlat && (ch < ' ' || ch == 0x7f))
+    {
+        int x2;
+
+        switch (ch)
+        {
+        case '\t':
+            for (x2 = ((x / TABSIZE) + 1) * TABSIZE; x < x2; x++)
+            {
+                if (winsch(win, attr | ' ') == ERR)
+                    return ERR;
+            }
+            return OK;
+
+        case '\n':
+            wclrtoeol(win);
+            break;
+
+        case 0x7f:
+            if (winsch(win, attr | '?') == ERR)
+                return ERR;
+
+            return winsch(win, attr | '^');
+
+        default:
+            /* handle control chars */
+
+            if (winsch(win, attr | (ch + '@')) == ERR)
+                return ERR;
+
+            return winsch(win, attr | '^');
+        }
+    }
+    else
+    {
+        int maxx;
+        chtype *temp;
+
+        /* If the incoming character doesn't have its own attribute,
+           then use the current attributes for the window. If it has
+           attributes but not a color component, OR the attributes to
+           the current attributes for the window. If it has a color
+           component, use the attributes solely from the incoming
+           character. */
+
+        if (!(attr & A_COLOR))
+            attr |= win->_attrs;
+
+        /* wrs (4/10/93): Apply the same sort of logic for the window
+           background, in that it only takes precedence if other color
+           attributes are not there and that the background character
+           will only print if the printing character is blank. */
+
+        if (!(attr & A_COLOR))
+            attr |= win->_bkgd & A_ATTRIBUTES;
+        else
+            attr |= win->_bkgd & (A_ATTRIBUTES ^ A_COLOR);
+
+        if (ch == ' ')
+            ch = win->_bkgd & A_CHARTEXT;
+
+        /* Add the attribute back into the character. */
+
+        ch |= attr;
+
+        maxx = win->_maxx;
+        temp = &win->_y[y][x];
+
+        memmove(temp + 1, temp, (maxx - x - 1) * sizeof(chtype));
+
+        win->_lastch[y] = maxx - 1;
+
+        if ((win->_firstch[y] == _NO_CHANGE) || (win->_firstch[y] > x))
+            win->_firstch[y] = x;
+
+        *temp = ch;
+    }
+
+    PDC_sync(win);
+
+    return OK;
+}
+
+int insch(chtype ch)
+{
+    PDC_LOG(("insch() - called\n"));
+
+    return winsch(stdscr, ch);
+}
+
+int mvinsch(int y, int x, chtype ch)
+{
+    PDC_LOG(("mvinsch() - called\n"));
+
+    if (move(y, x) == ERR)
+        return ERR;
+
+    return winsch(stdscr, ch);
+}
+
+int mvwinsch(WINDOW *win, int y, int x, chtype ch)
+{
+    PDC_LOG(("mvwinsch() - called\n"));
+
+    if (wmove(win, y, x) == ERR)
+        return ERR;
+
+    return winsch(win, ch);
+}
+
+int winsrawch(WINDOW *win, chtype ch)
+{
+    PDC_LOG(("winsrawch() - called: win=%p ch=%x "
+             "(char=%c attr=0x%x)\n", win, ch,
+             ch & A_CHARTEXT, ch & A_ATTRIBUTES));
+
+    if ((ch & A_CHARTEXT) < ' ' || (ch & A_CHARTEXT) == 0x7f)
+        ch |= A_ALTCHARSET;
+
+    return winsch(win, ch);
+}
+
+int insrawch(chtype ch)
+{
+    PDC_LOG(("insrawch() - called\n"));
+
+    return winsrawch(stdscr, ch);
+}
+
+int mvinsrawch(int y, int x, chtype ch)
+{
+    PDC_LOG(("mvinsrawch() - called\n"));
+
+    if (move(y, x) == ERR)
+        return ERR;
+
+    return winsrawch(stdscr, ch);
+}
+
+int mvwinsrawch(WINDOW *win, int y, int x, chtype ch)
+{
+    PDC_LOG(("mvwinsrawch() - called\n"));
+
+    if (wmove(win, y, x) == ERR)
+        return ERR;
+
+    return winsrawch(win, ch);
+}
+
+#ifdef PDC_WIDE
+int wins_wch(WINDOW *win, const cchar_t *wch)
+{
+    PDC_LOG(("wins_wch() - called\n"));
+
+    return wch ? winsch(win, *wch) : ERR;
+}
+
+int ins_wch(const cchar_t *wch)
+{
+    PDC_LOG(("ins_wch() - called\n"));
+
+    return wins_wch(stdscr, wch);
+}
+
+int mvins_wch(int y, int x, const cchar_t *wch)
+{
+    PDC_LOG(("mvins_wch() - called\n"));
+
+    if (move(y, x) == ERR)
+        return ERR;
+
+    return wins_wch(stdscr, wch);
+}
+
+int mvwins_wch(WINDOW *win, int y, int x, const cchar_t *wch)
+{
+    PDC_LOG(("mvwins_wch() - called\n"));
+
+    if (wmove(win, y, x) == ERR)
+        return ERR;
+
+    return wins_wch(win, wch);
+}
+#endif
diff --git a/apps/lib/curses/pdcurses/pdcurses/insstr.c b/apps/lib/curses/pdcurses/pdcurses/insstr.c
new file mode 100644
index 0000000..38fa389
--- /dev/null
+++ b/apps/lib/curses/pdcurses/pdcurses/insstr.c
@@ -0,0 +1,261 @@
+/* Public Domain Curses */
+
+#include <curspriv.h>
+
+RCSID("$Id: insstr.c,v 1.46 2008/07/13 16:08:18 wmcbrine Exp $")
+
+/*man-start**************************************************************
+
+  Name:                                                         insstr
+
+  Synopsis:
+        int insstr(const char *str);
+        int insnstr(const char *str, int n);
+        int winsstr(WINDOW *win, const char *str);
+        int winsnstr(WINDOW *win, const char *str, int n);
+        int mvinsstr(int y, int x, const char *str);
+        int mvinsnstr(int y, int x, const char *str, int n);
+        int mvwinsstr(WINDOW *win, int y, int x, const char *str);
+        int mvwinsnstr(WINDOW *win, int y, int x, const char *str, int n);
+
+        int ins_wstr(const wchar_t *wstr);
+        int ins_nwstr(const wchar_t *wstr, int n);
+        int wins_wstr(WINDOW *win, const wchar_t *wstr);
+        int wins_nwstr(WINDOW *win, const wchar_t *wstr, int n);
+        int mvins_wstr(int y, int x, const wchar_t *wstr);
+        int mvins_nwstr(int y, int x, const wchar_t *wstr, int n);
+        int mvwins_wstr(WINDOW *win, int y, int x, const wchar_t *wstr);
+        int mvwins_nwstr(WINDOW *win, int y, int x, const wchar_t *wstr, int n);
+
+  Description:
+        The insstr() functions insert a character string into a window
+        at the current cursor position, by repeatedly calling winsch().
+        When PDCurses is built with wide-character support enabled, the
+        narrow-character functions treat the string as a multibyte
+        string in the current locale, and convert it first. All 
+        characters to the right of the cursor are moved to the right, 
+        with the possibility of the rightmost characters on the line 
+        being lost.  The cursor position does not change (after moving 
+        to y, x, if specified).  The routines with n as the last 
+        argument insert at most n characters; if n is negative, then the 
+        entire string is inserted.
+
+  Return Value:
+        All functions return OK on success and ERR on error.
+
+  Portability                                X/Open    BSD    SYS V
+        insstr                                  Y       -      4.0
+        winsstr                                 Y       -      4.0
+        mvinsstr                                Y       -      4.0
+        mvwinsstr                               Y       -      4.0
+        insnstr                                 Y       -      4.0
+        winsnstr                                Y       -      4.0
+        mvinsnstr                               Y       -      4.0
+        mvwinsnstr                              Y       -      4.0
+        ins_wstr                                Y
+        wins_wstr                               Y
+        mvins_wstr                              Y
+        mvwins_wstr                             Y
+        ins_nwstr                               Y
+        wins_nwstr                              Y
+        mvins_nwstr                             Y
+        mvwins_nwstr                            Y
+
+**man-end****************************************************************/
+
+#include <string.h>
+
+int winsnstr(WINDOW *win, const char *str, int n)
+{
+#ifdef PDC_WIDE
+    wchar_t wstr[513], *p;
+    int i;
+#endif
+    int len;
+
+    PDC_LOG(("winsnstr() - called: string=\"%s\" n %d \n", str, n));
+
+    if (!win || !str)
+        return ERR;
+
+    len = strlen(str);
+
+    if (n < 0 || n < len)
+        n = len;
+
+#ifdef PDC_WIDE
+    if (n > 512)
+        n = 512;
+
+    p = wstr;
+    i = 0;
+
+    while (str[i] && i < n)
+    {
+        int retval = PDC_mbtowc(p, str + i, n - i);
+
+        if (retval <= 0)
+            break;
+        p++;
+        i += retval;
+    }
+
+    while (p > wstr)
+        if (winsch(win, *--p) == ERR)
+#else
+    while (n)
+        if (winsch(win, (unsigned char)(str[--n])) == ERR)
+#endif
+            return ERR;
+
+    return OK;
+}
+
+int insstr(const char *str)
+{
+    PDC_LOG(("insstr() - called: string=\"%s\"\n", str));
+
+    return winsnstr(stdscr, str, -1);
+}
+
+int winsstr(WINDOW *win, const char *str)
+{
+    PDC_LOG(("winsstr() - called: string=\"%s\"\n", str));
+
+    return winsnstr(win, str, -1);
+}
+
+int mvinsstr(int y, int x, const char *str)
+{
+    PDC_LOG(("mvinsstr() - called: y %d x %d string=\"%s\"\n", y, x, str));
+
+    if (move(y, x) == ERR)
+        return ERR;
+
+    return winsnstr(stdscr, str, -1);
+}
+
+int mvwinsstr(WINDOW *win, int y, int x, const char *str)
+{
+    PDC_LOG(("mvwinsstr() - called: string=\"%s\"\n", str));
+
+    if (wmove(win, y, x) == ERR)
+        return ERR;
+
+    return winsnstr(win, str, -1);
+}
+
+int insnstr(const char *str, int n)
+{
+    PDC_LOG(("insnstr() - called: string=\"%s\" n %d \n", str, n));
+
+    return winsnstr(stdscr, str, n);
+}
+
+int mvinsnstr(int y, int x, const char *str, int n)
+{
+    PDC_LOG(("mvinsnstr() - called: y %d x %d string=\"%s\" n %d \n",
+             y, x, str, n));
+
+    if (move(y, x) == ERR)
+        return ERR;
+
+    return winsnstr(stdscr, str, n);
+}
+
+int mvwinsnstr(WINDOW *win, int y, int x, const char *str, int n)
+{
+    PDC_LOG(("mvwinsnstr() - called: y %d x %d string=\"%s\" n %d \n",
+             y, x, str, n));
+
+    if (wmove(win, y, x) == ERR)
+        return ERR;
+
+    return winsnstr(win, str, n);
+}
+
+#ifdef PDC_WIDE
+int wins_nwstr(WINDOW *win, const wchar_t *wstr, int n)
+{
+    const wchar_t *p;
+    int len;
+
+    PDC_LOG(("wins_nwstr() - called\n"));
+
+    if (!win || !wstr)
+        return ERR;
+
+    for (len = 0, p = wstr; *p; p++)
+        len++;
+
+    if (n < 0 || n < len)
+        n = len;
+
+    while (n)
+        if (winsch(win, wstr[--n]) == ERR)
+            return ERR;
+
+    return OK;
+}
+
+int ins_wstr(const wchar_t *wstr)
+{
+    PDC_LOG(("ins_wstr() - called\n"));
+
+    return wins_nwstr(stdscr, wstr, -1);
+}
+
+int wins_wstr(WINDOW *win, const wchar_t *wstr)
+{
+    PDC_LOG(("wins_wstr() - called\n"));
+
+    return wins_nwstr(win, wstr, -1);
+}
+
+int mvins_wstr(int y, int x, const wchar_t *wstr)
+{
+    PDC_LOG(("mvins_wstr() - called\n"));
+
+    if (move(y, x) == ERR)
+        return ERR;
+
+    return wins_nwstr(stdscr, wstr, -1);
+}
+
+int mvwins_wstr(WINDOW *win, int y, int x, const wchar_t *wstr)
+{
+    PDC_LOG(("mvwinsstr() - called\n"));
+
+    if (wmove(win, y, x) == ERR)
+        return ERR;
+
+    return wins_nwstr(win, wstr, -1);
+}
+
+int ins_nwstr(const wchar_t *wstr, int n)
+{
+    PDC_LOG(("ins_nwstr() - called\n"));
+
+    return wins_nwstr(stdscr, wstr, n);
+}
+
+int mvins_nwstr(int y, int x, const wchar_t *wstr, int n)
+{
+    PDC_LOG(("mvinsnstr() - called\n"));
+
+    if (move(y, x) == ERR)
+        return ERR;
+
+    return wins_nwstr(stdscr, wstr, n);
+}
+
+int mvwins_nwstr(WINDOW *win, int y, int x, const wchar_t *wstr, int n)
+{
+    PDC_LOG(("mvwinsnstr() - called\n"));
+
+    if (wmove(win, y, x) == ERR)
+        return ERR;
+
+    return wins_nwstr(win, wstr, n);
+}
+#endif
diff --git a/apps/lib/curses/pdcurses/pdcurses/instr.c b/apps/lib/curses/pdcurses/pdcurses/instr.c
new file mode 100644
index 0000000..bbf369c
--- /dev/null
+++ b/apps/lib/curses/pdcurses/pdcurses/instr.c
@@ -0,0 +1,243 @@
+/* Public Domain Curses */
+
+#include <curspriv.h>
+
+RCSID("$Id: instr.c,v 1.44 2008/07/13 16:08:18 wmcbrine Exp $")
+
+/*man-start**************************************************************
+
+  Name:                                                         instr
+
+  Synopsis:
+        int instr(char *str);
+        int innstr(char *str, int n);
+        int winstr(WINDOW *win, char *str);
+        int winnstr(WINDOW *win, char *str, int n);
+        int mvinstr(int y, int x, char *str);
+        int mvinnstr(int y, int x, char *str, int n);
+        int mvwinstr(WINDOW *win, int y, int x, char *str);
+        int mvwinnstr(WINDOW *win, int y, int x, char *str, int n);
+
+        int inwstr(wchar_t *wstr);
+        int innwstr(wchar_t *wstr, int n);
+        int winwstr(WINDOW *win, wchar_t *wstr);
+        int winnwstr(WINDOW *win, wchar_t *wstr, int n);
+        int mvinwstr(int y, int x, wchar_t *wstr);
+        int mvinnwstr(int y, int x, wchar_t *wstr, int n);
+        int mvwinwstr(WINDOW *win, int y, int x, wchar_t *wstr);
+        int mvwinnwstr(WINDOW *win, int y, int x, wchar_t *wstr, int n);
+
+  Description:
+        These functions take characters (or wide characters) from the 
+        current or specified position in the window, and return them as 
+        a string in str (or wstr). Attributes are ignored. The functions 
+        with n as the last argument return a string at most n characters 
+        long.
+
+  Return Value:
+        Upon successful completion, innstr(), mvinnstr(), mvwinnstr() 
+        and winnstr() return the number of characters actually read into
+        the string; instr(), mvinstr(), mvwinstr() and winstr() return 
+        OK. Otherwise, all these functions return ERR.
+
+  Portability                                X/Open    BSD    SYS V
+        instr                                   Y       -      4.0
+        winstr                                  Y       -      4.0
+        mvinstr                                 Y       -      4.0
+        mvwinstr                                Y       -      4.0
+        innstr                                  Y       -      4.0
+        winnstr                                 Y       -      4.0
+        mvinnstr                                Y       -      4.0
+        mvwinnstr                               Y       -      4.0
+        inwstr                                  Y
+        winwstr                                 Y
+        mvinwstr                                Y
+        mvwinwstr                               Y
+        innwstr                                 Y
+        winnwstr                                Y
+        mvinnwstr                               Y
+        mvwinnwstr                              Y
+
+**man-end****************************************************************/
+
+int winnstr(WINDOW *win, char *str, int n)
+{
+#ifdef PDC_WIDE
+    wchar_t wstr[513];
+
+    if (n < 0 || n > 512)
+        n = 512;
+
+    if (winnwstr(win, wstr, n) == ERR)
+        return ERR;
+
+    return PDC_wcstombs(str, wstr, n);
+#else
+    chtype *src;
+    int i;
+
+    PDC_LOG(("winnstr() - called: n %d \n", n));
+
+    if (!win || !str)
+        return ERR;
+
+    if (n < 0 || (win->_curx + n) > win->_maxx)
+        n = win->_maxx - win->_curx;
+
+    src = win->_y[win->_cury] + win->_curx;
+
+    for (i = 0; i < n; i++)
+        str[i] = src[i] & A_CHARTEXT;
+
+    str[i] = '\0';
+
+    return i;
+#endif
+}
+
+int instr(char *str)
+{
+    PDC_LOG(("instr() - called: string=\"%s\"\n", str));
+
+    return (ERR == winnstr(stdscr, str, stdscr->_maxx)) ? ERR : OK;
+}
+
+int winstr(WINDOW *win, char *str)
+{
+    PDC_LOG(("winstr() - called: \n"));
+
+    return (ERR == winnstr(win, str, win->_maxx)) ? ERR : OK;
+}
+
+int mvinstr(int y, int x, char *str)
+{
+    PDC_LOG(("mvinstr() - called: y %d x %d \n", y, x));
+
+    if (move(y, x) == ERR)
+        return ERR;
+
+    return (ERR == winnstr(stdscr, str, stdscr->_maxx)) ? ERR : OK;
+}
+
+int mvwinstr(WINDOW *win, int y, int x, char *str)
+{
+    PDC_LOG(("mvwinstr() - called: y %d x %d \n", y, x));
+
+    if (wmove(win, y, x) == ERR)
+        return ERR;
+
+    return (ERR == winnstr(win, str, win->_maxx)) ? ERR : OK;
+}
+
+int innstr(char *str, int n)
+{
+    PDC_LOG(("innstr() - called: n %d \n", n));
+
+    return winnstr(stdscr, str, n);
+}
+
+int mvinnstr(int y, int x, char *str, int n)
+{
+    PDC_LOG(("mvinnstr() - called: y %d x %d n %d \n", y, x, n));
+
+    if (move(y, x) == ERR)
+        return ERR;
+
+    return winnstr(stdscr, str, n);
+}
+
+int mvwinnstr(WINDOW *win, int y, int x, char *str, int n)
+{
+    PDC_LOG(("mvwinnstr() - called: y %d x %d n %d \n", y, x, n));
+
+    if (wmove(win, y, x) == ERR)
+        return ERR;
+
+    return winnstr(win, str, n);
+}
+
+#ifdef PDC_WIDE
+int winnwstr(WINDOW *win, wchar_t *wstr, int n)
+{
+    chtype *src;
+    int i;
+
+    PDC_LOG(("winnstr() - called: n %d \n", n));
+
+    if (!win || !wstr)
+        return ERR;
+
+    if (n < 0 || (win->_curx + n) > win->_maxx)
+        n = win->_maxx - win->_curx;
+
+    src = win->_y[win->_cury] + win->_curx;
+
+    for (i = 0; i < n; i++)
+        wstr[i] = src[i] & A_CHARTEXT;
+
+    wstr[i] = L'\0';
+
+    return i;
+}
+
+int inwstr(wchar_t *wstr)
+{
+    PDC_LOG(("inwstr() - called\n"));
+
+    return (ERR == winnwstr(stdscr, wstr, stdscr->_maxx)) ? ERR : OK;
+}
+
+int winwstr(WINDOW *win, wchar_t *wstr)
+{
+    PDC_LOG(("winwstr() - called\n"));
+
+    return (ERR == winnwstr(win, wstr, win->_maxx)) ? ERR : OK;
+}
+
+int mvinwstr(int y, int x, wchar_t *wstr)
+{
+    PDC_LOG(("mvinwstr() - called\n"));
+
+    if (move(y, x) == ERR)
+        return ERR;
+
+    return (ERR == winnwstr(stdscr, wstr, stdscr->_maxx)) ? ERR : OK;
+}
+
+int mvwinwstr(WINDOW *win, int y, int x, wchar_t *wstr)
+{
+    PDC_LOG(("mvwinstr() - called\n"));
+
+    if (wmove(win, y, x) == ERR)
+        return ERR;
+
+    return (ERR == winnwstr(win, wstr, win->_maxx)) ? ERR : OK;
+}
+
+int innwstr(wchar_t *wstr, int n)
+{
+    PDC_LOG(("innwstr() - called\n"));
+
+    return winnwstr(stdscr, wstr, n);
+}
+
+int mvinnwstr(int y, int x, wchar_t *wstr, int n)
+{
+    PDC_LOG(("mvinnstr() - called\n"));
+
+    if (move(y, x) == ERR)
+        return ERR;
+
+    return winnwstr(stdscr, wstr, n);
+}
+
+int mvwinnwstr(WINDOW *win, int y, int x, wchar_t *wstr, int n)
+{
+    PDC_LOG(("mvwinnwstr() - called\n"));
+
+    if (wmove(win, y, x) == ERR)
+        return ERR;
+
+    return winnwstr(win, wstr, n);
+}
+#endif
diff --git a/apps/lib/curses/pdcurses/pdcurses/kernel.c b/apps/lib/curses/pdcurses/pdcurses/kernel.c
new file mode 100644
index 0000000..7e41ccf
--- /dev/null
+++ b/apps/lib/curses/pdcurses/pdcurses/kernel.c
@@ -0,0 +1,256 @@
+/* Public Domain Curses */
+
+#include <curspriv.h>
+
+RCSID("$Id: kernel.c,v 1.78 2008/07/15 17:13:26 wmcbrine Exp $")
+
+/*man-start**************************************************************
+
+  Name:                                                         kernel
+
+  Synopsis:
+        int def_prog_mode(void);
+        int def_shell_mode(void);
+        int reset_prog_mode(void);
+        int reset_shell_mode(void);
+        int resetty(void);
+        int savetty(void);
+        int ripoffline(int line, int (*init)(WINDOW *, int));
+        int curs_set(int visibility);
+        int napms(int ms);
+
+        int draino(int ms);
+        int resetterm(void);
+        int fixterm(void);
+        int saveterm(void);
+
+  Description:
+        def_prog_mode() and def_shell_mode() save the current terminal
+        modes as the "program" (in curses) or "shell" (not in curses)
+        state for use by the reset_prog_mode() and reset_shell_mode()
+        functions.  This is done automatically by initscr().
+
+        reset_prog_mode() and reset_shell_mode() restore the terminal to
+        "program" (in curses) or "shell" (not in curses) state.  These
+        are done automatically by endwin() and doupdate() after an
+        endwin(), so they would normally not be called before these
+        functions.
+
+        savetty() and resetty() save and restore the state of the
+        terminal modes. savetty() saves the current state in a buffer,
+        and resetty() restores the state to what it was at the last call
+        to savetty().
+
+        curs_set() alters the appearance of the cursor. A visibility of
+        0 makes it disappear; 1 makes it appear "normal" (usually an
+        underline) and 2 makes it "highly visible" (usually a block).
+
+        ripoffline() reduces the size of stdscr by one line.  If the 
+        "line" parameter is positive, the line is removed from the top 
+        of the screen; if negative, from the bottom. Up to 5 lines can 
+        be ripped off stdscr by calling ripoffline() repeatedly. The 
+        function argument, init, is called from within initscr() or 
+        newterm(), so ripoffline() must be called before either of these 
+        functions.  The init function receives a pointer to a one-line 
+        WINDOW, and the width of the window. Calling ripoffline() with a 
+        NULL init function pointer is an error.
+
+        napms() suspends the program for the specified number of 
+        milliseconds. draino() is an archaic equivalent.
+
+        resetterm(), fixterm() and saveterm() are archaic equivalents
+        for reset_shell_mode(), reset_prog_mode() and def_prog_mode(),
+        respectively.
+
+  Return Value:
+        All functions return OK on success and ERR on error, except
+        curs_set(), which returns the previous visibility.
+
+  Portability                                X/Open    BSD    SYS V
+        def_prog_mode                           Y       Y       Y
+        def_shell_mode                          Y       Y       Y
+        reset_prog_mode                         Y       Y       Y
+        reset_shell_mode                        Y       Y       Y
+        resetty                                 Y       Y       Y
+        savetty                                 Y       Y       Y
+        ripoffline                              Y       -      3.0
+        curs_set                                Y       -      3.0
+        napms                                   Y       Y       Y
+        draino                                  -
+        resetterm                               -
+        fixterm                                 -
+        saveterm                                -
+
+**man-end****************************************************************/
+
+#include <string.h>
+
+RIPPEDOFFLINE linesripped[5];
+char linesrippedoff = 0;
+
+static struct cttyset
+{
+    bool been_set;
+    SCREEN saved;
+} ctty[3];
+
+enum { PDC_SH_TTY, PDC_PR_TTY, PDC_SAVE_TTY };
+
+static void _save_mode(int i)
+{
+    ctty[i].been_set = TRUE;
+
+    memcpy(&(ctty[i].saved), SP, sizeof(SCREEN));
+
+    PDC_save_screen_mode(i);
+}
+
+static int _restore_mode(int i)
+{
+    if (ctty[i].been_set == TRUE)
+    {
+        memcpy(SP, &(ctty[i].saved), sizeof(SCREEN));
+
+        if (ctty[i].saved.raw_out)
+            raw();
+
+        PDC_restore_screen_mode(i);
+
+        if ((LINES != ctty[i].saved.lines) ||
+            (COLS != ctty[i].saved.cols))
+            resize_term(ctty[i].saved.lines, ctty[i].saved.cols);
+
+        PDC_curs_set(ctty[i].saved.visibility);
+
+        PDC_gotoyx(ctty[i].saved.cursrow, ctty[i].saved.curscol);
+    }
+
+    return ctty[i].been_set ? OK : ERR;
+}
+
+int def_prog_mode(void)
+{
+    PDC_LOG(("def_prog_mode() - called\n"));
+
+    _save_mode(PDC_PR_TTY);
+
+    return OK;
+}
+
+int def_shell_mode(void)
+{
+    PDC_LOG(("def_shell_mode() - called\n"));
+
+    _save_mode(PDC_SH_TTY);
+
+    return OK;
+}
+
+int reset_prog_mode(void)
+{
+    PDC_LOG(("reset_prog_mode() - called\n"));
+
+    _restore_mode(PDC_PR_TTY);
+    PDC_reset_prog_mode();
+
+    return OK;
+}
+
+int reset_shell_mode(void)
+{
+    PDC_LOG(("reset_shell_mode() - called\n"));
+
+    _restore_mode(PDC_SH_TTY);
+    PDC_reset_shell_mode();
+
+    return OK;
+}
+
+int resetty(void)
+{
+    PDC_LOG(("resetty() - called\n"));
+
+    return _restore_mode(PDC_SAVE_TTY);
+}
+
+int savetty(void)
+{
+    PDC_LOG(("savetty() - called\n"));
+
+    _save_mode(PDC_SAVE_TTY);
+
+    return OK;
+}
+
+int curs_set(int visibility)
+{
+    int ret_vis;
+
+    PDC_LOG(("curs_set() - called: visibility=%d\n", visibility));
+
+    if ((visibility < 0) || (visibility > 2))
+        return ERR;
+
+    ret_vis = PDC_curs_set(visibility);
+
+    /* If the cursor is changing from invisible to visible, update 
+       its position */
+
+    if (visibility && !ret_vis)
+        PDC_gotoyx(SP->cursrow, SP->curscol);
+
+    return ret_vis;
+}
+
+int napms(int ms)
+{
+    PDC_LOG(("napms() - called: ms=%d\n", ms));
+
+    if (ms)
+        PDC_napms(ms);
+
+    return OK;
+}
+
+int ripoffline(int line, int (*init)(WINDOW *, int))
+{
+    PDC_LOG(("ripoffline() - called: line=%d\n", line));
+
+    if (linesrippedoff < 5 && line && init)
+    {
+        linesripped[(int)linesrippedoff].line = line;
+        linesripped[(int)linesrippedoff++].init = init;
+
+        return OK;
+    }
+
+    return ERR;
+}
+
+int draino(int ms)
+{
+    PDC_LOG(("draino() - called\n"));
+
+    return napms(ms);
+}
+
+int resetterm(void)
+{
+    PDC_LOG(("resetterm() - called\n"));
+
+    return reset_shell_mode();
+}
+
+int fixterm(void)
+{
+    PDC_LOG(("fixterm() - called\n"));
+
+    return reset_prog_mode();
+}
+
+int saveterm(void)
+{
+    PDC_LOG(("saveterm() - called\n"));
+
+    return def_prog_mode();
+}
diff --git a/apps/lib/curses/pdcurses/pdcurses/keyname.c b/apps/lib/curses/pdcurses/pdcurses/keyname.c
new file mode 100644
index 0000000..6d02cef
--- /dev/null
+++ b/apps/lib/curses/pdcurses/pdcurses/keyname.c
@@ -0,0 +1,125 @@
+/* Public Domain Curses */
+
+#include <curspriv.h>
+
+RCSID("$Id: keyname.c,v 1.8 2008/07/13 16:08:18 wmcbrine Exp $")
+
+/*man-start**************************************************************
+
+  Name:                                                         keyname
+
+  Synopsis:
+        char *keyname(int key);
+
+        char *key_name(wchar_t c);
+
+        bool has_key(int key);
+
+  Description:
+        keyname() returns a string corresponding to the argument key. 
+        key may be any key returned by wgetch().
+
+        key_name() is the wide-character version. It takes a wchar_t 
+        parameter, but still returns a char *.
+
+        has_key() returns TRUE for recognized keys, FALSE otherwise. 
+        This function is an ncurses extension.
+
+  Portability                                X/Open    BSD    SYS V
+        keyname                                 Y       -      3.0
+        key_name                                Y
+        has_key                                 -       -       -
+
+**man-end****************************************************************/
+
+char *keyname(int key)
+{
+    /* Key names must be in exactly the same order as in curses.h */
+
+    static char *key_name[] =
+    {
+        "KEY_BREAK", "KEY_DOWN", "KEY_UP", "KEY_LEFT", "KEY_RIGHT",
+        "KEY_HOME", "KEY_BACKSPACE", "KEY_F0", "KEY_F(1)", "KEY_F(2)",
+        "KEY_F(3)", "KEY_F(4)", "KEY_F(5)", "KEY_F(6)", "KEY_F(7)",
+        "KEY_F(8)", "KEY_F(9)", "KEY_F(10)", "KEY_F(11)", "KEY_F(12)",
+        "KEY_F(13)", "KEY_F(14)", "KEY_F(15)", "KEY_F(16)", "KEY_F(17)",
+        "KEY_F(18)", "KEY_F(19)", "KEY_F(20)", "KEY_F(21)", "KEY_F(22)",
+        "KEY_F(23)", "KEY_F(24)", "KEY_F(25)", "KEY_F(26)", "KEY_F(27)",
+        "KEY_F(28)", "KEY_F(29)", "KEY_F(30)", "KEY_F(31)", "KEY_F(32)",
+        "KEY_F(33)", "KEY_F(34)", "KEY_F(35)", "KEY_F(36)", "KEY_F(37)",
+        "KEY_F(38)", "KEY_F(39)", "KEY_F(40)", "KEY_F(41)", "KEY_F(42)",
+        "KEY_F(43)", "KEY_F(44)", "KEY_F(45)", "KEY_F(46)", "KEY_F(47)",
+        "KEY_F(48)", "KEY_F(49)", "KEY_F(50)", "KEY_F(51)", "KEY_F(52)",
+        "KEY_F(53)", "KEY_F(54)", "KEY_F(55)", "KEY_F(56)", "KEY_F(57)",
+        "KEY_F(58)", "KEY_F(59)", "KEY_F(60)", "KEY_F(61)", "KEY_F(62)",
+        "KEY_F(63)", "KEY_DL", "KEY_IL", "KEY_DC", "KEY_IC", "KEY_EIC",
+        "KEY_CLEAR", "KEY_EOS", "KEY_EOL", "KEY_SF", "KEY_SR",
+        "KEY_NPAGE", "KEY_PPAGE", "KEY_STAB", "KEY_CTAB", "KEY_CATAB",
+        "KEY_ENTER", "KEY_SRESET", "KEY_RESET", "KEY_PRINT", "KEY_LL",
+        "KEY_ABORT", "KEY_SHELP", "KEY_LHELP", "KEY_BTAB", "KEY_BEG",
+        "KEY_CANCEL", "KEY_CLOSE", "KEY_COMMAND", "KEY_COPY",
+        "KEY_CREATE", "KEY_END", "KEY_EXIT", "KEY_FIND", "KEY_HELP",
+        "KEY_MARK", "KEY_MESSAGE", "KEY_MOVE", "KEY_NEXT", "KEY_OPEN",
+        "KEY_OPTIONS", "KEY_PREVIOUS", "KEY_REDO", "KEY_REFERENCE",
+        "KEY_REFRESH", "KEY_REPLACE", "KEY_RESTART", "KEY_RESUME",
+        "KEY_SAVE", "KEY_SBEG", "KEY_SCANCEL", "KEY_SCOMMAND",
+        "KEY_SCOPY", "KEY_SCREATE", "KEY_SDC", "KEY_SDL", "KEY_SELECT",
+        "KEY_SEND", "KEY_SEOL", "KEY_SEXIT", "KEY_SFIND", "KEY_SHOME",
+        "KEY_SIC", "UNKNOWN KEY", "KEY_SLEFT", "KEY_SMESSAGE",
+        "KEY_SMOVE", "KEY_SNEXT", "KEY_SOPTIONS", "KEY_SPREVIOUS",
+        "KEY_SPRINT", "KEY_SREDO", "KEY_SREPLACE", "KEY_SRIGHT",
+        "KEY_SRSUME", "KEY_SSAVE", "KEY_SSUSPEND", "KEY_SUNDO",
+        "KEY_SUSPEND", "KEY_UNDO", "ALT_0", "ALT_1", "ALT_2", "ALT_3",
+        "ALT_4", "ALT_5", "ALT_6", "ALT_7", "ALT_8", "ALT_9", "ALT_A",
+        "ALT_B", "ALT_C", "ALT_D", "ALT_E", "ALT_F", "ALT_G", "ALT_H",
+        "ALT_I", "ALT_J", "ALT_K", "ALT_L", "ALT_M", "ALT_N", "ALT_O",
+        "ALT_P", "ALT_Q", "ALT_R", "ALT_S", "ALT_T", "ALT_U", "ALT_V",
+        "ALT_W", "ALT_X", "ALT_Y", "ALT_Z", "CTL_LEFT", "CTL_RIGHT",
+        "CTL_PGUP", "CTL_PGDN", "CTL_HOME", "CTL_END", "KEY_A1",
+        "KEY_A2", "KEY_A3", "KEY_B1", "KEY_B2", "KEY_B3", "KEY_C1",
+        "KEY_C2", "KEY_C3", "PADSLASH", "PADENTER", "CTL_PADENTER",
+        "ALT_PADENTER", "PADSTOP", "PADSTAR", "PADMINUS", "PADPLUS",
+        "CTL_PADSTOP", "CTL_PADCENTER", "CTL_PADPLUS", "CTL_PADMINUS",
+        "CTL_PADSLASH", "CTL_PADSTAR", "ALT_PADPLUS", "ALT_PADMINUS",
+        "ALT_PADSLASH", "ALT_PADSTAR", "ALT_PADSTOP", "CTL_INS",
+        "ALT_DEL", "ALT_INS", "CTL_UP", "CTL_DOWN", "CTL_TAB",
+        "ALT_TAB", "ALT_MINUS", "ALT_EQUAL", "ALT_HOME", "ALT_PGUP",
+        "ALT_PGDN", "ALT_END", "ALT_UP", "ALT_DOWN", "ALT_RIGHT",
+        "ALT_LEFT", "ALT_ENTER", "ALT_ESC", "ALT_BQUOTE",
+        "ALT_LBRACKET", "ALT_RBRACKET", "ALT_SEMICOLON", "ALT_FQUOTE",
+        "ALT_COMMA", "ALT_STOP", "ALT_FSLASH", "ALT_BKSP", "CTL_BKSP",
+        "PAD0", "CTL_PAD0", "CTL_PAD1", "CTL_PAD2", "CTL_PAD3",
+        "CTL_PAD4", "CTL_PAD5", "CTL_PAD6", "CTL_PAD7","CTL_PAD8",
+        "CTL_PAD9", "ALT_PAD0", "ALT_PAD1", "ALT_PAD2", "ALT_PAD3",
+        "ALT_PAD4", "ALT_PAD5", "ALT_PAD6", "ALT_PAD7", "ALT_PAD8",
+        "ALT_PAD9", "CTL_DEL", "ALT_BSLASH", "CTL_ENTER",
+        "SHF_PADENTER", "SHF_PADSLASH", "SHF_PADSTAR", "SHF_PADPLUS",
+        "SHF_PADMINUS", "SHF_UP", "SHF_DOWN", "SHF_IC", "SHF_DC",
+        "KEY_MOUSE", "KEY_SHIFT_L", "KEY_SHIFT_R", "KEY_CONTROL_L",
+        "KEY_CONTROL_R", "KEY_ALT_L", "KEY_ALT_R", "KEY_RESIZE",
+        "KEY_SUP", "KEY_SDOWN"
+    };
+
+    PDC_LOG(("keyname() - called: key %d\n", key));
+
+    if ((key >= 0) && (key < 0x80))
+        return unctrl((chtype)key);
+
+    return has_key(key) ? key_name[key - KEY_MIN] : "UNKNOWN KEY";
+}
+
+bool has_key(int key)
+{
+    PDC_LOG(("has_key() - called: key %d\n", key));
+
+    return (key >= KEY_MIN && key <= KEY_MAX);
+}
+
+#ifdef PDC_WIDE
+char *key_name(wchar_t c)
+{
+    PDC_LOG(("key_name() - called\n"));
+
+    return keyname((int)c);
+}
+#endif
diff --git a/apps/lib/curses/pdcurses/pdcurses/mouse.c b/apps/lib/curses/pdcurses/pdcurses/mouse.c
new file mode 100644
index 0000000..1f476dd
--- /dev/null
+++ b/apps/lib/curses/pdcurses/pdcurses/mouse.c
@@ -0,0 +1,429 @@
+/* Public Domain Curses */
+
+#include <curspriv.h>
+
+RCSID("$Id: mouse.c,v 1.45 2008/07/13 16:08:18 wmcbrine Exp $")
+
+/*man-start**************************************************************
+
+  Name:                                                         mouse
+
+  Synopsis:
+        int mouse_set(unsigned long mbe);
+        int mouse_on(unsigned long mbe);
+        int mouse_off(unsigned long mbe);
+        int request_mouse_pos(void);
+        int map_button(unsigned long button);
+        void wmouse_position(WINDOW *win, int *y, int *x);
+        unsigned long getmouse(void);
+        unsigned long getbmap(void);
+
+        int mouseinterval(int wait);
+        bool wenclose(const WINDOW *win, int y, int x);
+        bool wmouse_trafo(const WINDOW *win, int *y, int *x, bool to_screen);
+        bool mouse_trafo(int *y, int *x, bool to_screen);
+        mmask_t mousemask(mmask_t mask, mmask_t *oldmask);
+        int nc_getmouse(MEVENT *event);
+        int ungetmouse(MEVENT *event);
+
+  Description:
+        As of PDCurses 3.0, there are two separate mouse interfaces: the
+        classic interface, which is based on the undocumented Sys V
+        mouse functions; and an ncurses-compatible interface. Both are
+        active at all times, and you can mix and match functions from
+        each, though it's not recommended. The ncurses interface is
+        essentially an emulation layer built on top of the classic
+        interface; it's here to allow easier porting of ncurses apps.
+
+        The classic interface: mouse_set(), mouse_on(), mouse_off(),
+        request_mouse_pos(), map_button(), wmouse_position(),
+        getmouse(), and getbmap(). An application using this interface
+        would start by calling mouse_set() or mouse_on() with a non-zero
+        value, often ALL_MOUSE_EVENTS. Then it would check for a
+        KEY_MOUSE return from getch(). If found, it would call
+        request_mouse_pos() to get the current mouse status.
+
+        mouse_set(), mouse_on() and mouse_off() are analagous to
+        attrset(), attron() and attroff().  These functions set the
+        mouse button events to trap.  The button masks used in these
+        functions are defined in curses.h and can be or'ed together.
+        They are the group of masks starting with BUTTON1_RELEASED.
+
+        request_mouse_pos() requests curses to fill in the Mouse_status
+        structure with the current state of the mouse.
+
+        map_button() enables the specified mouse action to activate the
+        Soft Label Keys if the action occurs over the area of the screen
+        where the Soft Label Keys are displayed.  The mouse actions are
+        defined in curses.h in the group that starts with BUTTON_RELEASED.
+
+        wmouse_position() determines if the current mouse position is
+        within the window passed as an argument.  If the mouse is
+        outside the current window, -1 is returned in the y and x
+        arguments; otherwise the y and x coordinates of the mouse
+        (relative to the top left corner of the window) are returned in
+        y and x.
+
+        getmouse() returns the current status of the trapped mouse
+        buttons as set by mouse_set() or mouse_on().
+
+        getbmap() returns the current status of the button action used
+        to map a mouse action to the Soft Label Keys as set by the
+        map_button() function.
+
+        The ncurses interface: mouseinterval(), wenclose(),
+        wmouse_trafo(), mouse_trafo(), mousemask(), nc_getmouse(), and
+        ungetmouse(). A typical application using this interface would
+        start by calling mousemask() with a non-zero value, often
+        ALL_MOUSE_EVENTS. Then it would check for a KEY_MOUSE return
+        from getch(). If found, it would call nc_getmouse() to get the
+        current mouse status.
+
+        mouseinterval() sets the timeout for a mouse click. On all
+        current platforms, PDCurses receives mouse button press and
+        release events, but must synthesize click events. It does this
+        by checking whether a release event is queued up after a press
+        event. If it gets a press event, and there are no more events
+        waiting, it will wait for the timeout interval, then check again
+        for a release. A press followed by a release is reported as
+        BUTTON_CLICKED; otherwise it's passed through as BUTTON_PRESSED.
+        The default timeout is 150ms; valid values are 0 (no clicks
+        reported) through 1000ms. In x11, the timeout can also be set
+        via the clickPeriod resource. The return value from
+        mouseinterval() is the old timeout. To check the old value
+        without setting a new one, call it with a parameter of -1. Note 
+        that although there's no classic equivalent for this function 
+        (apart from the clickPeriod resource), the value set applies in 
+        both interfaces.
+
+        wenclose() reports whether the given screen-relative y, x
+        coordinates fall within the given window.
+
+        wmouse_trafo() converts between screen-relative and window-
+        relative coordinates. A to_screen parameter of TRUE means to
+        convert from window to screen; otherwise the reverse. The
+        function returns FALSE if the coordinates aren't within the
+        window, or if any of the parameters are NULL. The coordinates
+        have been converted when the function returns TRUE.
+
+        mouse_trafo() is the stdscr version of wmouse_trafo().
+
+        mousemask() is nearly equivalent to mouse_set(), but instead of
+        OK/ERR, it returns the value of the mask after setting it. (This
+        isn't necessarily the same value passed in, since the mask could
+        be altered on some platforms.) And if the second parameter is a 
+        non-null pointer, mousemask() stores the previous mask value 
+        there. Also, since the ncurses interface doesn't work with 
+        PDCurses' BUTTON_MOVED events, mousemask() filters them out.
+
+        nc_getmouse() returns the current mouse status in an MEVENT 
+        struct. This is equivalent to ncurses' getmouse(), renamed to 
+        avoid conflict with PDCurses' getmouse(). But if you define 
+        NCURSES_MOUSE_VERSION (preferably as 2) before including 
+        curses.h, it defines getmouse() to nc_getmouse(), along with a 
+        few other redefintions needed for compatibility with ncurses 
+        code. nc_getmouse() calls request_mouse_pos(), which (not 
+        getmouse()) is the classic equivalent.
+
+        ungetmouse() is the mouse equivalent of ungetch(). However, 
+        PDCurses doesn't maintain a queue of mouse events; only one can 
+        be pushed back, and it can overwrite or be overwritten by real 
+        mouse events.
+
+  Portability                                X/Open    BSD    SYS V
+        mouse_set                               -       -      4.0
+        mouse_on                                -       -      4.0
+        mouse_off                               -       -      4.0
+        request_mouse_pos                       -       -      4.0
+        map_button                              -       -      4.0
+        wmouse_position                         -       -      4.0
+        getmouse                                -       -      4.0
+        getbmap                                 -       -      4.0
+        mouseinterval                           -       -       -
+        wenclose                                -       -       -
+        wmouse_trafo                            -       -       -
+        mouse_trafo                             -       -       -
+        mousemask                               -       -       -
+        nc_getmouse                             -       -       -
+        ungetmouse                              -       -       -
+
+**man-end****************************************************************/
+
+#include <string.h>
+
+static bool ungot = FALSE;
+
+int mouse_set(unsigned long mbe)
+{
+    PDC_LOG(("mouse_set() - called: event %x\n", mbe));
+
+    SP->_trap_mbe = mbe;
+    return PDC_mouse_set();
+}
+
+int mouse_on(unsigned long mbe)
+{
+    PDC_LOG(("mouse_on() - called: event %x\n", mbe));
+
+    SP->_trap_mbe |= mbe;
+    return PDC_mouse_set();
+}
+
+int mouse_off(unsigned long mbe)
+{
+    PDC_LOG(("mouse_off() - called: event %x\n", mbe));
+
+    SP->_trap_mbe &= ~mbe;
+    return PDC_mouse_set();
+}
+
+int map_button(unsigned long button)
+{
+    PDC_LOG(("map_button() - called: button %x\n", button));
+
+/****************** this does nothing at the moment ***************/
+    SP->_map_mbe_to_key = button;
+
+    return OK;
+}
+
+int request_mouse_pos(void)
+{
+    PDC_LOG(("request_mouse_pos() - called\n"));
+
+    Mouse_status = pdc_mouse_status;
+
+    return OK;
+}
+
+void wmouse_position(WINDOW *win, int *y, int *x)
+{
+    PDC_LOG(("wmouse_position() - called\n"));
+
+    if (win && wenclose(win, MOUSE_Y_POS, MOUSE_X_POS))
+    {
+        if (y)
+            *y = MOUSE_Y_POS - win->_begy;
+        if (x)
+            *x = MOUSE_X_POS - win->_begx;
+    }
+    else
+    {
+        if (y)
+            *y = -1;
+        if (x)
+            *x = -1;
+    }
+}
+
+unsigned long getmouse(void)
+{
+    PDC_LOG(("getmouse() - called\n"));
+
+    return SP->_trap_mbe;
+}
+
+unsigned long getbmap(void)
+{
+    PDC_LOG(("getbmap() - called\n"));
+
+    return SP->_map_mbe_to_key;
+}
+
+/* ncurses mouse interface */
+
+int mouseinterval(int wait)
+{
+    int old_wait;
+
+    PDC_LOG(("mouseinterval() - called: %d\n", wait));
+
+    old_wait = SP->mouse_wait;
+
+    if (wait >= 0 && wait <= 1000)
+        SP->mouse_wait = wait;
+
+    return old_wait;
+}
+
+bool wenclose(const WINDOW *win, int y, int x)
+{
+    PDC_LOG(("wenclose() - called: %p %d %d\n", win, y, x));
+
+    return (win && y >= win->_begy && y < win->_begy + win->_maxy
+                && x >= win->_begx && x < win->_begx + win->_maxx);
+}
+
+bool wmouse_trafo(const WINDOW *win, int *y, int *x, bool to_screen)
+{
+    int newy, newx;
+
+    PDC_LOG(("wmouse_trafo() - called\n"));
+
+    if (!win || !y || !x)
+        return FALSE;
+
+    newy = *y;
+    newx = *x;
+
+    if (to_screen)
+    {
+        newy += win->_begy;
+        newx += win->_begx;
+
+        if (!wenclose(win, newy, newx))
+            return FALSE;
+    }
+    else
+    {
+        if (wenclose(win, newy, newx))
+        {
+            newy -= win->_begy;
+            newx -= win->_begx;
+        }
+        else
+            return FALSE;
+    }
+
+    *y = newy;
+    *x = newx;
+
+    return TRUE;
+}
+
+bool mouse_trafo(int *y, int *x, bool to_screen)
+{
+    PDC_LOG(("mouse_trafo() - called\n"));
+
+    return wmouse_trafo(stdscr, y, x, to_screen);
+}
+
+mmask_t mousemask(mmask_t mask, mmask_t *oldmask)
+{
+    PDC_LOG(("mousemask() - called\n"));
+
+    if (oldmask)
+        *oldmask = SP->_trap_mbe;
+
+    /* The ncurses interface doesn't work with our move events, so 
+       filter them here */
+
+    mask &= ~(BUTTON1_MOVED | BUTTON2_MOVED | BUTTON3_MOVED);
+
+    mouse_set(mask);
+
+    return SP->_trap_mbe;
+}
+
+int nc_getmouse(MEVENT *event)
+{
+    int i;
+    mmask_t bstate = 0;
+
+    PDC_LOG(("nc_getmouse() - called\n"));
+
+    if (!event)
+        return ERR;
+
+    ungot = FALSE;
+
+    request_mouse_pos();
+
+    event->id = 0;
+
+    event->x = Mouse_status.x;
+    event->y = Mouse_status.y;
+    event->z = 0;
+
+    for (i = 0; i < 3; i++)
+    {
+        if (Mouse_status.changes & (1 << i))
+        {
+            int shf = i * 5;
+            short button = Mouse_status.button[i] & BUTTON_ACTION_MASK;
+
+            if (button == BUTTON_RELEASED)
+                bstate |= (BUTTON1_RELEASED << shf);
+            else if (button == BUTTON_PRESSED)
+                bstate |= (BUTTON1_PRESSED << shf);
+            else if (button == BUTTON_CLICKED)
+                bstate |= (BUTTON1_CLICKED << shf);
+            else if (button == BUTTON_DOUBLE_CLICKED)
+                bstate |= (BUTTON1_DOUBLE_CLICKED << shf);
+
+            button = Mouse_status.button[i] & BUTTON_MODIFIER_MASK;
+
+            if (button & PDC_BUTTON_SHIFT)
+                bstate |= BUTTON_MODIFIER_SHIFT;
+            if (button & PDC_BUTTON_CONTROL)
+                bstate |= BUTTON_MODIFIER_CONTROL;
+            if (button & PDC_BUTTON_ALT)
+                bstate |= BUTTON_MODIFIER_ALT;
+        }
+    }
+
+    if (MOUSE_WHEEL_UP)
+        bstate |= BUTTON4_PRESSED;
+    else if (MOUSE_WHEEL_DOWN)
+        bstate |= BUTTON5_PRESSED;
+
+    /* extra filter pass -- mainly for button modifiers */
+
+    event->bstate = bstate & SP->_trap_mbe;
+
+    return OK;
+}
+
+int ungetmouse(MEVENT *event)
+{
+    int i;
+    unsigned long bstate;
+
+    PDC_LOG(("ungetmouse() - called\n"));
+
+    if (!event || ungot)
+        return ERR;
+
+    ungot = TRUE;
+
+    pdc_mouse_status.x = event->x;
+    pdc_mouse_status.y = event->y;
+
+    pdc_mouse_status.changes = 0;
+    bstate = event->bstate;
+
+    for (i = 0; i < 3; i++)
+    {
+        int shf = i * 5;
+        short button = 0;
+
+        if (bstate & ((BUTTON1_RELEASED | BUTTON1_PRESSED | 
+            BUTTON1_CLICKED | BUTTON1_DOUBLE_CLICKED) << shf))
+        {
+            pdc_mouse_status.changes |= 1 << i;
+
+            if (bstate & (BUTTON1_PRESSED << shf))
+                button = BUTTON_PRESSED;
+            if (bstate & (BUTTON1_CLICKED << shf))
+                button = BUTTON_CLICKED;
+            if (bstate & (BUTTON1_DOUBLE_CLICKED << shf))
+                button = BUTTON_DOUBLE_CLICKED;
+
+            if (bstate & BUTTON_MODIFIER_SHIFT)
+                button |= PDC_BUTTON_SHIFT;
+            if (bstate & BUTTON_MODIFIER_CONTROL)
+                button |= PDC_BUTTON_CONTROL;
+            if (bstate & BUTTON_MODIFIER_ALT)
+                button |= PDC_BUTTON_ALT;
+        }
+
+        pdc_mouse_status.button[i] = button;
+    }
+
+    if (bstate & BUTTON4_PRESSED)
+        pdc_mouse_status.changes |= PDC_MOUSE_WHEEL_UP;
+    else if (bstate & BUTTON5_PRESSED)
+        pdc_mouse_status.changes |= PDC_MOUSE_WHEEL_DOWN;
+
+    return ungetch(KEY_MOUSE);
+}
diff --git a/apps/lib/curses/pdcurses/pdcurses/move.c b/apps/lib/curses/pdcurses/pdcurses/move.c
new file mode 100644
index 0000000..30e5908
--- /dev/null
+++ b/apps/lib/curses/pdcurses/pdcurses/move.c
@@ -0,0 +1,54 @@
+/* Public Domain Curses */
+
+#include <curspriv.h>
+
+RCSID("$Id: move.c,v 1.28 2008/07/13 16:08:18 wmcbrine Exp $")
+
+/*man-start**************************************************************
+
+  Name:                                                         move
+
+  Synopsis:
+        int move(int y, int x);
+        int wmove(WINDOW *win, int y, int x);
+
+  Description:
+        The cursor associated with the window is moved to the given
+        location.  This does not move the physical cursor of the
+        terminal until refresh() is called.  The position specified is
+        relative to the upper left corner of the window, which is (0,0).
+
+  Return Value:
+        All functions return OK on success and ERR on error.
+
+  Portability                                X/Open    BSD    SYS V
+        move                                    Y       Y       Y
+        wmove                                   Y       Y       Y
+
+**man-end****************************************************************/
+
+int move(int y, int x)
+{
+    PDC_LOG(("move() - called: y=%d x=%d\n", y, x));
+
+    if (!stdscr || x < 0 || y < 0 || x >= stdscr->_maxx || y >= stdscr->_maxy)
+        return ERR;
+
+    stdscr->_curx = x;
+    stdscr->_cury = y;
+
+    return OK;
+}
+
+int wmove(WINDOW *win, int y, int x)
+{
+    PDC_LOG(("wmove() - called: y=%d x=%d\n", y, x));
+
+    if (!win || x < 0 || y < 0 || x >= win->_maxx || y >= win->_maxy)
+        return ERR;
+
+    win->_curx = x;
+    win->_cury = y;
+
+    return OK;
+}
diff --git a/apps/lib/curses/pdcurses/pdcurses/outopts.c b/apps/lib/curses/pdcurses/pdcurses/outopts.c
new file mode 100644
index 0000000..0a8fd2d
--- /dev/null
+++ b/apps/lib/curses/pdcurses/pdcurses/outopts.c
@@ -0,0 +1,156 @@
+/* Public Domain Curses */
+
+#include <curspriv.h>
+
+RCSID("$Id: outopts.c,v 1.39 2008/07/14 12:22:13 wmcbrine Exp $")
+
+/*man-start**************************************************************
+
+  Name:                                                         outopts
+
+  Synopsis:
+        int clearok(WINDOW *win, bool bf);
+        int idlok(WINDOW *win, bool bf);
+        void idcok(WINDOW *win, bool bf);
+        void immedok(WINDOW *win, bool bf);
+        int leaveok(WINDOW *win, bool bf);
+        int setscrreg(int top, int bot);
+        int wsetscrreg(WINDOW *win, int top, int bot);
+        int scrollok(WINDOW *win, bool bf);
+
+        int raw_output(bool bf);
+
+  Description:
+        With clearok(), if bf is TRUE, the next call to wrefresh() with 
+        this window will clear the screen completely and redraw the 
+        entire screen.
+
+        immedok(), called with a second argument of TRUE, causes an 
+        automatic wrefresh() every time a change is made to the 
+        specified window.
+
+        Normally, the hardware cursor is left at the location of the
+        window being refreshed.  leaveok() allows the cursor to be
+        left wherever the update happens to leave it.  It's useful
+        for applications where the cursor is not used, since it reduces
+        the need for cursor motions.  If possible, the cursor is made
+        invisible when this option is enabled.
+
+        wsetscrreg() sets a scrolling region in a window; "top" and 
+        "bot" are the line numbers for the top and bottom margins. If 
+        this option and scrollok() are enabled, any attempt to move off 
+        the bottom margin will cause all lines in the scrolling region 
+        to scroll up one line. setscrreg() is the stdscr version.
+
+        idlok() and idcok() do nothing in PDCurses, but are provided for 
+        compatibility with other curses implementations.
+
+        raw_output() enables the output of raw characters using the 
+        standard *add* and *ins* curses functions (that is, it disables 
+        translation of control characters).
+
+  Return Value:
+        All functions return OK on success and ERR on error.
+
+  Portability                                X/Open    BSD    SYS V
+        clearok                                 Y       Y       Y
+        idlok                                   Y       Y       Y
+        idcok                                   Y       -      4.0
+        immedok                                 Y       -      4.0
+        leaveok                                 Y       Y       Y
+        setscrreg                               Y       Y       Y
+        wsetscrreg                              Y       Y       Y
+        scrollok                                Y       Y       Y
+        raw_output                              -       -       -
+
+**man-end****************************************************************/
+
+int clearok(WINDOW *win, bool bf)
+{
+    PDC_LOG(("clearok() - called\n"));
+
+    if (!win)
+        return ERR;
+
+    win->_clear = bf;
+
+    return OK;
+}
+
+int idlok(WINDOW *win, bool bf)
+{
+    PDC_LOG(("idlok() - called\n"));
+
+    return OK;
+}
+
+void idcok(WINDOW *win, bool bf)
+{
+    PDC_LOG(("idcok() - called\n"));
+}
+
+void immedok(WINDOW *win, bool bf)
+{
+    PDC_LOG(("immedok() - called\n"));
+
+    if (win)
+        win->_immed = bf;
+}
+
+int leaveok(WINDOW *win, bool bf)
+{
+    PDC_LOG(("leaveok() - called\n"));
+
+    if (!win)
+        return ERR;
+
+    win->_leaveit = bf;
+
+    curs_set(!bf);
+
+    return OK;
+}
+
+int setscrreg(int top, int bottom)
+{
+    PDC_LOG(("setscrreg() - called: top %d bottom %d\n", top, bottom));
+
+    return wsetscrreg(stdscr, top, bottom);
+}
+
+int wsetscrreg(WINDOW *win, int top, int bottom)
+{
+    PDC_LOG(("wsetscrreg() - called: top %d bottom %d\n", top, bottom));
+
+    if (win && 0 <= top && top <= win->_cury &&
+        win->_cury <= bottom && bottom < win->_maxy)
+    {
+        win->_tmarg = top;
+        win->_bmarg = bottom;
+
+        return OK;
+    }
+    else
+        return ERR;
+}
+
+int scrollok(WINDOW *win, bool bf)
+{
+    PDC_LOG(("scrollok() - called\n"));
+
+    if (!win)
+        return ERR;
+
+    win->_scroll = bf;
+
+    return OK;
+}
+
+int raw_output(bool bf)
+{
+    PDC_LOG(("raw_output() - called\n"));
+
+    SP->raw_out = bf;
+
+    return OK;
+}
diff --git a/apps/lib/curses/pdcurses/pdcurses/overlay.c b/apps/lib/curses/pdcurses/pdcurses/overlay.c
new file mode 100644
index 0000000..f9bba50
--- /dev/null
+++ b/apps/lib/curses/pdcurses/pdcurses/overlay.c
@@ -0,0 +1,256 @@
+/* Public Domain Curses */
+
+#include <curspriv.h>
+
+RCSID("$Id: overlay.c,v 1.36 2008/07/14 12:35:23 wmcbrine Exp $")
+
+/*man-start**************************************************************
+
+  Name:                                                         overlay
+
+  Synopsis:
+        int overlay(const WINDOW *src_w, WINDOW *dst_w)
+        int overwrite(const WINDOW *src_w, WINDOW *dst_w)
+        int copywin(const WINDOW *src_w, WINDOW *dst_w, int src_tr,
+                    int src_tc, int dst_tr, int dst_tc, int dst_br,
+                    int dst_bc, bool overlay)
+
+  Description:
+        overlay() and overwrite() copy all the text from src_w into
+        dst_w. The windows need not be the same size. Those characters
+        in the source window that intersect with the destination window
+        are copied, so that the characters appear in the same physical
+        position on the screen. The difference between the two functions
+        is that overlay() is non-destructive (blanks are not copied)
+        while overwrite() is destructive (blanks are copied).
+
+        copywin() is similar, but doesn't require that the two windows
+        overlap. The arguments src_tc and src_tr specify the top left
+        corner of the region to be copied. dst_tc, dst_tr, dst_br, and
+        dst_bc specify the region within the destination window to copy
+        to. The argument "overlay", if TRUE, indicates that the copy is
+        done non-destructively (as in overlay()); blanks in the source
+        window are not copied to the destination window. When overlay is
+        FALSE, blanks are copied.
+
+  Return Value:
+        All functions return OK on success and ERR on error.
+
+  Portability                                X/Open    BSD    SYS V
+        overlay                                 Y       Y       Y
+        overwrite                               Y       Y       Y
+        copywin                                 Y       -      3.0
+
+**man-end****************************************************************/
+
+/* Thanks to Andreas Otte <venn@@uni-paderborn.de> for the 
+   corrected overlay()/overwrite() behavior. */
+
+static int _copy_win(const WINDOW *src_w, WINDOW *dst_w, int src_tr,
+                     int src_tc, int src_br, int src_bc, int dst_tr,
+                     int dst_tc, bool overlay)
+{
+    int col, line, y1, fc, *minchng, *maxchng;
+    chtype *w1ptr, *w2ptr;
+
+    int lc = 0;
+    int xdiff = src_bc - src_tc;
+    int ydiff = src_br - src_tr;
+
+    if (!src_w || !dst_w)
+        return ERR;
+
+    minchng = dst_w->_firstch;
+    maxchng = dst_w->_lastch;
+
+    for (y1 = 0; y1 < dst_tr; y1++)
+    {
+        minchng++;
+        maxchng++;
+    }
+
+    for (line = 0; line < ydiff; line++)
+    {
+        w1ptr = src_w->_y[line + src_tr] + src_tc;
+        w2ptr = dst_w->_y[line + dst_tr] + dst_tc;
+
+        fc = _NO_CHANGE;
+
+        for (col = 0; col < xdiff; col++)
+        {
+            if ((*w1ptr) != (*w2ptr) &&
+                !((*w1ptr & A_CHARTEXT) == ' ' && overlay))
+            {
+                *w2ptr = *w1ptr;
+
+                if (fc == _NO_CHANGE)
+                    fc = col + dst_tc;
+            
+                lc = col + dst_tc;
+            }
+
+            w1ptr++;
+            w2ptr++;
+        }
+
+        if (*minchng == _NO_CHANGE)
+        {
+            *minchng = fc;
+            *maxchng = lc;
+        }
+        else if (fc != _NO_CHANGE)
+        {
+            if (fc < *minchng)
+                *minchng = fc;
+            if (lc > *maxchng)
+                *maxchng = lc;
+        }
+
+        minchng++;
+        maxchng++;
+    }
+
+    return OK;
+}
+
+int overlay(const WINDOW *src_w, WINDOW *dst_w)
+{
+    int first_line, first_col, last_line, last_col;
+    int src_start_x, src_start_y, dst_start_x, dst_start_y;
+    int xdiff, ydiff;
+
+    PDC_LOG(("overlay() - called\n"));
+
+    if (!src_w || !dst_w)
+        return ERR;
+
+    first_col = max(dst_w->_begx, src_w->_begx);
+    first_line = max(dst_w->_begy, src_w->_begy);
+
+    last_col = min(src_w->_begx + src_w->_maxx, dst_w->_begx + dst_w->_maxx);
+    last_line = min(src_w->_begy + src_w->_maxy, dst_w->_begy + dst_w->_maxy);
+
+    /* determine the overlapping region of the two windows in real 
+       coordinates */
+
+    /* if no overlapping region, do nothing */
+
+    if ((last_col < first_col) || (last_line < first_line))
+        return OK;
+
+    /* size of overlapping region */
+
+    xdiff = last_col - first_col;
+    ydiff = last_line - first_line;
+
+    if (src_w->_begx <= dst_w->_begx)
+    {
+        src_start_x = dst_w->_begx - src_w->_begx;
+        dst_start_x = 0;
+    }
+    else
+    {
+        dst_start_x = src_w->_begx - dst_w->_begx;
+        src_start_x = 0;
+    }
+
+    if (src_w->_begy <= dst_w->_begy)
+    {
+        src_start_y = dst_w->_begy - src_w->_begy;
+        dst_start_y = 0;
+    }
+    else
+    {
+        dst_start_y = src_w->_begy - dst_w->_begy;
+        src_start_y = 0;
+    }
+
+    return _copy_win(src_w, dst_w, src_start_y, src_start_x,
+                     src_start_y + ydiff, src_start_x + xdiff,
+                     dst_start_y, dst_start_x, TRUE);
+}
+
+int overwrite(const WINDOW *src_w, WINDOW *dst_w)
+{
+    int first_line, first_col, last_line, last_col;
+    int src_start_x, src_start_y, dst_start_x, dst_start_y;
+    int xdiff, ydiff;
+
+    PDC_LOG(("overwrite() - called\n"));
+
+    if (!src_w || !dst_w)
+        return ERR;
+
+    first_col = max(dst_w->_begx, src_w->_begx);
+    first_line = max(dst_w->_begy, src_w->_begy);
+
+    last_col = min(src_w->_begx + src_w->_maxx, dst_w->_begx + dst_w->_maxx);
+    last_line = min(src_w->_begy + src_w->_maxy, dst_w->_begy + dst_w->_maxy);
+
+    /* determine the overlapping region of the two windows in real 
+       coordinates */
+
+    /* if no overlapping region, do nothing */
+
+    if ((last_col < first_col) || (last_line < first_line))
+        return OK;
+
+    /* size of overlapping region */
+
+    xdiff = last_col - first_col;
+    ydiff = last_line - first_line;
+
+    if (src_w->_begx <= dst_w->_begx)
+    {
+        src_start_x = dst_w->_begx - src_w->_begx;
+        dst_start_x = 0;
+    }
+    else
+    {
+        dst_start_x = src_w->_begx - dst_w->_begx;
+        src_start_x = 0;
+    }
+
+    if (src_w->_begy <= dst_w->_begy)
+    {
+        src_start_y = dst_w->_begy - src_w->_begy;
+        dst_start_y = 0;
+    }
+    else
+    {
+        dst_start_y = src_w->_begy - dst_w->_begy;
+        src_start_y = 0;
+    }
+
+    return _copy_win(src_w, dst_w, src_start_y, src_start_x,
+                     src_start_y + ydiff, src_start_x + xdiff,
+                     dst_start_y, dst_start_x, FALSE);
+}
+
+int copywin(const WINDOW *src_w, WINDOW *dst_w, int src_tr, int src_tc,
+            int dst_tr, int dst_tc, int dst_br, int dst_bc, int overlay)
+{
+    int src_end_x, src_end_y;
+    int src_rows, src_cols, dst_rows, dst_cols;
+    int min_rows, min_cols;
+
+    PDC_LOG(("copywin() - called\n"));
+
+    if (!src_w || !dst_w || dst_w == curscr || dst_br > dst_w->_maxy
+        || dst_bc > dst_w->_maxx || dst_tr < 0 || dst_tc < 0)
+        return ERR;
+
+    src_rows = src_w->_maxy - src_tr;
+    src_cols = src_w->_maxx - src_tc;
+    dst_rows = dst_br - dst_tr + 1;
+    dst_cols = dst_bc - dst_tc + 1;
+
+    min_rows = min(src_rows, dst_rows);
+    min_cols = min(src_cols, dst_cols);
+
+    src_end_y = src_tr + min_rows;
+    src_end_x = src_tc + min_cols;
+
+    return _copy_win(src_w, dst_w, src_tr, src_tc, src_end_y, src_end_x,
+                     dst_tr, dst_tc, overlay);
+}
diff --git a/apps/lib/curses/pdcurses/pdcurses/pad.c b/apps/lib/curses/pdcurses/pdcurses/pad.c
new file mode 100644
index 0000000..ccc5db2
--- /dev/null
+++ b/apps/lib/curses/pdcurses/pdcurses/pad.c
@@ -0,0 +1,259 @@
+/* Public Domain Curses */
+
+#include <curspriv.h>
+
+RCSID("$Id: pad.c,v 1.50 2008/07/14 12:22:13 wmcbrine Exp $")
+
+/*man-start**************************************************************
+
+  Name:                                                         pad
+
+  Synopsis:
+        WINDOW *newpad(int nlines, int ncols);
+        WINDOW *subpad(WINDOW *orig, int nlines, int ncols,
+                       int begy, int begx);
+        int prefresh(WINDOW *win, int py, int px, int sy1, int sx1,
+                     int sy2, int sx2);
+        int pnoutrefresh(WINDOW *w, int py, int px, int sy1, int sx1,
+                         int sy2, int sx2);
+        int pechochar(WINDOW *pad, chtype ch);
+        int pecho_wchar(WINDOW *pad, const cchar_t *wch);
+
+  Description:
+        A pad is a special kind of window, which is not restricted by
+        the screen size, and is not necessarily associated with a
+        particular part of the screen.  You can use a pad when you need
+        a large window, and only a part of the window will be on the
+        screen at one time.  Pads are not refreshed automatically (e.g.,
+        from scrolling or echoing of input).  You can't call wrefresh()
+        with a pad as an argument; use prefresh() or pnoutrefresh()
+        instead.  Note that these routines require additional parameters
+        to specify the part of the pad to be displayed, and the location
+        to use on the screen.
+
+        newpad() creates a new pad data structure.  
+
+        subpad() creates a new sub-pad within a pad, at position (begy,
+        begx), with dimensions of nlines lines and ncols columns. This 
+        position is relative to the pad, and not to the screen as with 
+        subwin.  Changes to either the parent pad or sub-pad will affect 
+        both.  When using sub-pads, you may need to call touchwin() 
+        before calling prefresh().
+
+        pnoutrefresh() copies the specified pad to the virtual screen.
+
+        prefresh() calls pnoutrefresh(), followed by doupdate().
+
+        These routines are analogous to wnoutrefresh() and wrefresh().
+        (py, px) specifies the upper left corner of the part of the pad
+        to be displayed; (sy1, sx1) and (sy2, sx2) describe the screen 
+        rectangle that will contain the selected part of the pad.
+
+        pechochar() is functionally equivalent to addch() followed by
+        a call to prefresh(), with the last-used coordinates and
+        dimensions. pecho_wchar() is the wide-character version.
+
+  Return Value:
+        All functions return OK on success and ERR on error.
+
+  Portability                                X/Open    BSD    SYS V
+        newpad                                  Y       -       Y
+        subpad                                  Y       -       Y
+        prefresh                                Y       -       Y
+        pnoutrefresh                            Y       -       Y
+        pechochar                               Y       -      3.0
+        pecho_wchar                             Y
+
+**man-end****************************************************************/
+
+#include <string.h>
+
+/* save values for pechochar() */
+
+static int save_pminrow, save_pmincol;
+static int save_sminrow, save_smincol, save_smaxrow, save_smaxcol;
+
+WINDOW *newpad(int nlines, int ncols)
+{
+    WINDOW *win;
+
+    PDC_LOG(("newpad() - called: lines=%d cols=%d\n", nlines, ncols));
+
+    if ( !(win = PDC_makenew(nlines, ncols, -1, -1))
+        || !(win = PDC_makelines(win)) )
+        return (WINDOW *)NULL;
+
+    werase(win);
+
+    win->_flags = _PAD;
+
+    /* save default values in case pechochar() is the first call to 
+       prefresh(). */
+
+    save_pminrow = 0;
+    save_pmincol = 0;
+    save_sminrow = 0;
+    save_smincol = 0;
+    save_smaxrow = min(LINES, nlines) - 1;
+    save_smaxcol = min(COLS, ncols) - 1;
+
+    return win;
+}
+
+WINDOW *subpad(WINDOW *orig, int nlines, int ncols, int begy, int begx)
+{
+    WINDOW *win;
+    int i;
+    int j = begy;
+    int k = begx;
+
+    PDC_LOG(("subpad() - called: lines=%d cols=%d begy=%d begx=%d\n",
+             nlines, ncols, begy, begx));
+
+    if (!orig || !(orig->_flags & _PAD))
+        return (WINDOW *)NULL;
+
+    /* make sure window fits inside the original one */
+
+    if ((begy < orig->_begy) || (begx < orig->_begx) ||
+        (begy + nlines) > (orig->_begy + orig->_maxy) ||
+        (begx + ncols)  > (orig->_begx + orig->_maxx))
+        return (WINDOW *)NULL;
+
+    if (!nlines) 
+        nlines = orig->_maxy - 1 - j;
+
+    if (!ncols) 
+        ncols = orig->_maxx - 1 - k;
+
+    if ( !(win = PDC_makenew(nlines, ncols, begy, begx)) )
+        return (WINDOW *)NULL;
+
+    /* initialize window variables */
+
+    win->_attrs = orig->_attrs;
+    win->_leaveit = orig->_leaveit;
+    win->_scroll = orig->_scroll;
+    win->_nodelay = orig->_nodelay;
+    win->_use_keypad = orig->_use_keypad;
+    win->_parent = orig;
+
+    for (i = 0; i < nlines; i++)
+        win->_y[i] = (orig->_y[j++]) + k;
+
+    win->_flags = _SUBPAD;
+
+    /* save default values in case pechochar() is the first call
+       to prefresh(). */
+
+    save_pminrow = 0;
+    save_pmincol = 0;
+    save_sminrow = 0;
+    save_smincol = 0;
+    save_smaxrow = min(LINES, nlines) - 1;
+    save_smaxcol = min(COLS, ncols) - 1;
+
+    return win;
+}
+
+int prefresh(WINDOW *win, int py, int px, int sy1, int sx1, int sy2, int sx2)
+{
+    PDC_LOG(("prefresh() - called\n"));
+
+    if (pnoutrefresh(win, py, px, sy1, sx1, sy2, sx2) == ERR)
+        return ERR;
+
+    doupdate();
+    return OK;
+}
+
+int pnoutrefresh(WINDOW *w, int py, int px, int sy1, int sx1, int sy2, int sx2)
+{
+    int num_cols;
+    int sline = sy1;
+    int pline = py;
+
+    PDC_LOG(("pnoutrefresh() - called\n"));
+
+    if (!w || !(w->_flags & (_PAD|_SUBPAD)) || (sy2 >= LINES) || (sy2 >= COLS))
+        return ERR;
+
+    if (py < 0)
+        py = 0;
+    if (px < 0)
+        px = 0;
+    if (sy1 < 0)
+        sy1 = 0;
+    if (sx1 < 0)
+        sx1 = 0;
+
+    if (sy2 < sy1 || sx2 < sx1)
+        return ERR;
+
+    num_cols = min((sx2 - sx1 + 1), (w->_maxx - px));
+
+    while (sline <= sy2)
+    {
+        if (pline < w->_maxy)
+        {
+            memcpy(curscr->_y[sline] + sx1, w->_y[pline] + px,
+                   num_cols * sizeof(chtype));
+
+            if ((curscr->_firstch[sline] == _NO_CHANGE) 
+                || (curscr->_firstch[sline] > sx1))
+                curscr->_firstch[sline] = sx1;
+
+            if (sx2 > curscr->_lastch[sline])
+                curscr->_lastch[sline] = sx2;
+
+            w->_firstch[pline] = _NO_CHANGE; /* updated now */
+            w->_lastch[pline] = _NO_CHANGE;  /* updated now */
+        }
+
+        sline++;
+        pline++;
+    }
+
+    if (w->_clear)
+    {
+        w->_clear = FALSE;
+        curscr->_clear = TRUE;
+    }
+
+    /* position the cursor to the pad's current position if possible -- 
+       is the pad current position going to end up displayed? if not, 
+       then don't move the cursor; if so, move it to the correct place */
+
+    if (!w->_leaveit && w->_cury >= py && w->_curx >= px &&
+         w->_cury <= py + (sy2 - sy1) && w->_curx <= px + (sx2 - sx1))
+    {
+        curscr->_cury = (w->_cury - py) + sy1;
+        curscr->_curx = (w->_curx - px) + sx1;
+    }
+
+    return OK;
+}
+
+int pechochar(WINDOW *pad, chtype ch)
+{
+    PDC_LOG(("pechochar() - called\n"));
+
+    if (waddch(pad, ch) == ERR)
+        return ERR;
+
+    return prefresh(pad, save_pminrow, save_pmincol, save_sminrow, 
+                    save_smincol, save_smaxrow, save_smaxcol);
+}
+
+#ifdef PDC_WIDE
+int pecho_wchar(WINDOW *pad, const cchar_t *wch)
+{
+    PDC_LOG(("pecho_wchar() - called\n"));
+
+    if (!wch || (waddch(pad, *wch) == ERR))
+        return ERR;
+
+    return prefresh(pad, save_pminrow, save_pmincol, save_sminrow, 
+                    save_smincol, save_smaxrow, save_smaxcol);
+}
+#endif
diff --git a/apps/lib/curses/pdcurses/pdcurses/panel.c b/apps/lib/curses/pdcurses/pdcurses/panel.c
new file mode 100644
index 0000000..77028c6
--- /dev/null
+++ b/apps/lib/curses/pdcurses/pdcurses/panel.c
@@ -0,0 +1,630 @@
+/* Public Domain Curses */
+
+#include <curspriv.h>
+
+RCSID("$Id: panel.c,v 1.8 2008/07/14 12:35:23 wmcbrine Exp $")
+
+/*man-start**************************************************************
+
+  Name:                                                         panel
+
+  Synopsis:
+        int bottom_panel(PANEL *pan);
+        int del_panel(PANEL *pan);
+        int hide_panel(PANEL *pan);
+        int move_panel(PANEL *pan, int starty, int startx);
+        PANEL *new_panel(WINDOW *win);
+        PANEL *panel_above(const PANEL *pan);
+        PANEL *panel_below(const PANEL *pan);
+        int panel_hidden(const PANEL *pan);
+        const void *panel_userptr(const PANEL *pan);
+        WINDOW *panel_window(const PANEL *pan);
+        int replace_panel(PANEL *pan, WINDOW *win);
+        int set_panel_userptr(PANEL *pan, const void *uptr);
+        int show_panel(PANEL *pan);
+        int top_panel(PANEL *pan);
+        void update_panels(void);
+
+  Description:
+        The panel library is built using the curses library, and any
+        program using panels routines must call one of the curses
+        initialization routines such as initscr(). A program using these
+        routines must be linked with the panels and curses libraries.
+        The header <panel.h> includes the header <curses.h>.
+
+        The panels package gives the applications programmer a way to
+        have depth relationships between curses windows; a curses window
+        is associated with every panel. The panels routines allow curses
+        windows to overlap without making visible the overlapped
+        portions of underlying windows. The initial curses window,
+        stdscr, lies beneath all panels. The set of currently visible
+        panels is the 'deck' of panels.
+
+        The panels package allows the applications programmer to create
+        panels, fetch and set their associated windows, shuffle panels
+        in the deck, and manipulate panels in other ways.
+
+        bottom_panel() places pan at the bottom of the deck. The size, 
+        location and contents of the panel are unchanged.
+
+        del_panel() deletes pan, but not its associated winwow.
+
+        hide_panel() removes a panel from the deck and thus hides it 
+        from view.
+
+        move_panel() moves the curses window associated with pan, so 
+        that its upper lefthand corner is at the supplied coordinates. 
+        (Do not use mvwin() on the window.)
+
+        new_panel() creates a new panel associated with win and returns 
+        the panel pointer. The new panel is placed at the top of the 
+        deck.
+
+        panel_above() returns a pointer to the panel in the deck above 
+        pan, or NULL if pan is the top panel. If the value of pan passed 
+        is NULL, this function returns a pointer to the bottom panel in 
+        the deck.
+
+        panel_below() returns a pointer to the panel in the deck below 
+        pan, or NULL if pan is the bottom panel. If the value of pan 
+        passed is NULL, this function returns a pointer to the top panel 
+        in the deck.
+
+        panel_hidden() returns OK if pan is hidden and ERR if it is not.
+
+        panel_userptr() - Each panel has a user pointer available for 
+        maintaining relevant information. This function returns a 
+        pointer to that information previously set up by 
+        set_panel_userptr().
+
+        panel_window() returns a pointer to the curses window associated 
+        with the panel.
+
+        replace_panel() replaces the current window of pan with win.
+
+        set_panel_userptr() - Each panel has a user pointer available 
+        for maintaining relevant information. This function sets the 
+        value of that information.
+
+        show_panel() makes a previously hidden panel visible and places 
+        it back in the deck on top.
+
+        top_panel() places pan on the top of the deck. The size, 
+        location and contents of the panel are unchanged.
+
+        update_panels() refreshes the virtual screen to reflect the 
+        depth relationships between the panels in the deck. The user 
+        must use doupdate() to refresh the physical screen.
+
+  Return Value:
+        Each routine that returns a pointer to an object returns NULL if 
+        an error occurs. Each panel routine that returns an integer, 
+        returns OK if it executes successfully and ERR if it does not.
+
+  Portability                                X/Open    BSD    SYS V
+        bottom_panel                            -       -       Y
+        del_panel                               -       -       Y
+        hide_panel                              -       -       Y
+        move_panel                              -       -       Y
+        new_panel                               -       -       Y
+        panel_above                             -       -       Y
+        panel_below                             -       -       Y
+        panel_hidden                            -       -       Y
+        panel_userptr                           -       -       Y
+        panel_window                            -       -       Y
+        replace_panel                           -       -       Y
+        set_panel_userptr                       -       -       Y
+        show_panel                              -       -       Y
+        top_panel                               -       -       Y
+        update_panels                           -       -       Y
+
+  Credits:
+        Original Author - Warren Tucker <wht@n4hgf.mt-park.ga.us>
+
+**man-end****************************************************************/
+
+#include <panel.h>
+#include <stdlib.h>
+
+PANEL *_bottom_panel = (PANEL *)0;
+PANEL *_top_panel = (PANEL *)0;
+PANEL _stdscr_pseudo_panel = { (WINDOW *)0 };
+
+#ifdef PANEL_DEBUG
+
+static void dPanel(char *text, PANEL *pan)
+{
+    PDC_LOG(("%s id=%s b=%s a=%s y=%d x=%d", text, pan->user,
+             pan->below ? pan->below->user : "--",
+             pan->above ? pan->above->user : "--",
+             pan->wstarty, pan->wstartx));
+}
+
+static void dStack(char *fmt, int num, PANEL *pan)
+{
+    char s80[80];
+
+    sprintf(s80, fmt, num, pan);
+    PDC_LOG(("%s b=%s t=%s", s80, _bottom_panel ? _bottom_panel->user : "--",
+             _top_panel    ? _top_panel->user    : "--"));
+
+    if (pan)
+        PDC_LOG(("pan id=%s", pan->user));
+
+    pan = _bottom_panel;
+
+    while (pan)
+    {
+        dPanel("stk", pan);
+        pan = pan->above;
+    }
+}
+
+/* debugging hook for wnoutrefresh */
+
+static void Wnoutrefresh(PANEL *pan)
+{
+    dPanel("wnoutrefresh", pan);
+    wnoutrefresh(pan->win);
+}
+
+static void Touchpan(PANEL *pan)
+{
+    dPanel("Touchpan", pan);
+    touchwin(pan->win);
+}
+
+static void Touchline(PANEL *pan, int start, int count)
+{
+    char s80[80];
+
+    sprintf(s80, "Touchline s=%d c=%d", start, count);
+    dPanel(s80, pan);
+    touchline(pan->win, start, count);
+}
+
+#else   /* PANEL_DEBUG */
+
+#define dPanel(text, pan)
+#define dStack(fmt, num, pan)
+#define Wnoutrefresh(pan) wnoutrefresh((pan)->win)
+#define Touchpan(pan) touchwin((pan)->win)
+#define Touchline(pan, start, count) touchline((pan)->win, start, count)
+
+#endif  /* PANEL_DEBUG */
+
+static bool _panels_overlapped(PANEL *pan1, PANEL *pan2)
+{
+    if (!pan1 || !pan2)
+        return FALSE;
+
+    return ((pan1->wstarty >= pan2->wstarty && pan1->wstarty < pan2->wendy)
+         || (pan2->wstarty >= pan1->wstarty && pan2->wstarty < pan1->wendy))
+        && ((pan1->wstartx >= pan2->wstartx && pan1->wstartx < pan2->wendx)
+         || (pan2->wstartx >= pan1->wstartx && pan2->wstartx < pan1->wendx));
+}
+
+static void _free_obscure(PANEL *pan)
+{
+    PANELOBS *tobs = pan->obscure;  /* "this" one */
+    PANELOBS *nobs;                 /* "next" one */
+
+    while (tobs)
+    {
+        nobs = tobs->above;
+        free((char *)tobs);
+        tobs = nobs;
+    }
+    pan->obscure = (PANELOBS *)0;
+}
+
+static void _override(PANEL *pan, int show)
+{
+    int y;
+    PANEL *pan2;
+    PANELOBS *tobs = pan->obscure;      /* "this" one */
+
+    if (show == 1)
+        Touchpan(pan);
+    else if (!show)
+    {
+        Touchpan(pan);
+        Touchpan(&_stdscr_pseudo_panel);
+    }
+    else if (show == -1)
+        while (tobs && (tobs->pan != pan))
+            tobs = tobs->above;
+
+    while (tobs)
+    {
+        if ((pan2 = tobs->pan) != pan)
+            for (y = pan->wstarty; y < pan->wendy; y++)
+                if ((y >= pan2->wstarty) && (y < pan2->wendy) &&
+                   ((is_linetouched(pan->win, y - pan->wstarty)) ||
+                    (is_linetouched(stdscr, y))))
+                    Touchline(pan2, y - pan2->wstarty, 1);
+
+        tobs = tobs->above;
+    }
+}
+
+static void _calculate_obscure(void)
+{
+    PANEL *pan, *pan2;
+    PANELOBS *tobs;     /* "this" one */
+    PANELOBS *lobs;     /* last one */
+
+    pan = _bottom_panel;
+
+    while (pan)
+    {
+        if (pan->obscure)
+            _free_obscure(pan);
+
+        lobs = (PANELOBS *)0;
+        pan2 = _bottom_panel;
+
+        while (pan2)
+        {
+            if (_panels_overlapped(pan, pan2))
+            {
+                if ((tobs = malloc(sizeof(PANELOBS))) == NULL)
+                    return;
+
+                tobs->pan = pan2;
+                dPanel("obscured", pan2);
+                tobs->above = (PANELOBS *)0;
+
+                if (lobs)
+                    lobs->above = tobs;
+                else
+                    pan->obscure = tobs;
+
+                lobs  = tobs;
+            }
+
+            pan2 = pan2->above;
+        }
+
+        _override(pan, 1);
+        pan = pan->above;
+    }
+}
+
+/* check to see if panel is in the stack */
+
+static bool _panel_is_linked(const PANEL *pan)
+{
+    PANEL *pan2 = _bottom_panel;
+
+    while (pan2)
+    {
+        if (pan2 == pan)
+            return TRUE;
+
+        pan2 = pan2->above;
+    }
+
+    return FALSE;
+}
+
+/* link panel into stack at top */
+
+static void _panel_link_top(PANEL *pan)
+{
+#ifdef PANEL_DEBUG
+    dStack("<lt%d>", 1, pan);
+    if (_panel_is_linked(pan))
+        return;
+#endif
+    pan->above = (PANEL *)0;
+    pan->below = (PANEL *)0;
+
+    if (_top_panel)
+    {
+        _top_panel->above = pan;
+        pan->below = _top_panel;
+    }
+
+    _top_panel = pan;
+
+    if (!_bottom_panel)
+        _bottom_panel = pan;
+
+    _calculate_obscure();
+    dStack("<lt%d>", 9, pan);
+}
+
+/* link panel into stack at bottom */
+
+static void _panel_link_bottom(PANEL *pan)
+{
+#ifdef PANEL_DEBUG
+    dStack("<lb%d>", 1, pan);
+    if (_panel_is_linked(pan))
+        return;
+#endif
+    pan->above = (PANEL *)0;
+    pan->below = (PANEL *)0;
+
+    if (_bottom_panel)
+    {
+        _bottom_panel->below = pan;
+        pan->above = _bottom_panel;
+    }
+
+    _bottom_panel = pan;
+
+    if (!_top_panel)
+        _top_panel = pan;
+
+    _calculate_obscure();
+    dStack("<lb%d>", 9, pan);
+}
+
+static void _panel_unlink(PANEL *pan)
+{
+    PANEL *prev;
+    PANEL *next;
+
+#ifdef PANEL_DEBUG
+    dStack("<u%d>", 1, pan);
+    if (!_panel_is_linked(pan))
+        return;
+#endif
+    _override(pan, 0);
+    _free_obscure(pan);
+
+    prev = pan->below;
+    next = pan->above;
+
+    /* if non-zero, we will not update the list head */
+
+    if (prev)
+    {
+        prev->above = next;
+        if(next)
+            next->below = prev;
+    }
+    else if (next)
+        next->below = prev;
+
+    if (pan == _bottom_panel)
+        _bottom_panel = next;
+
+    if (pan == _top_panel)
+        _top_panel = prev;
+
+    _calculate_obscure();
+
+    pan->above = (PANEL *)0;
+    pan->below = (PANEL *)0;
+    dStack("<u%d>", 9, pan);
+
+}
+
+/************************************************************************
+ *   The following are the public functions for the panels library.     *
+ ************************************************************************/
+
+int bottom_panel(PANEL *pan)
+{
+    if (!pan)
+        return ERR;
+
+    if (pan == _bottom_panel)
+        return OK;
+
+    if (_panel_is_linked(pan))
+        hide_panel(pan);
+
+    _panel_link_bottom(pan);
+
+    return OK;
+}
+
+int del_panel(PANEL *pan)
+{
+    if (pan)
+    {
+        if (_panel_is_linked(pan))
+            hide_panel(pan);
+
+        free((char *)pan);
+        return OK;
+    }
+
+    return ERR;
+}
+
+int hide_panel(PANEL *pan)
+{
+    if (!pan)
+        return ERR;
+
+    if (!_panel_is_linked(pan))
+    {
+        pan->above = (PANEL *)0;
+        pan->below = (PANEL *)0;
+        return ERR;
+    }
+
+    _panel_unlink(pan);
+
+    return OK;
+}
+
+int move_panel(PANEL *pan, int starty, int startx)
+{
+    WINDOW *win;
+    int maxy, maxx;
+
+    if (!pan)
+        return ERR;
+
+    if (_panel_is_linked(pan))
+        _override(pan, 0);
+
+    win = pan->win;
+
+    if (mvwin(win, starty, startx) == ERR)
+        return ERR;
+
+    getbegyx(win, pan->wstarty, pan->wstartx);
+    getmaxyx(win, maxy, maxx);
+    pan->wendy = pan->wstarty + maxy;
+    pan->wendx = pan->wstartx + maxx;
+
+    if (_panel_is_linked(pan))
+        _calculate_obscure();
+
+    return OK;
+}
+
+PANEL *new_panel(WINDOW *win)
+{
+    PANEL *pan = malloc(sizeof(PANEL));
+
+    if (!_stdscr_pseudo_panel.win)
+    {
+        _stdscr_pseudo_panel.win = stdscr;
+        _stdscr_pseudo_panel.wstarty = 0;
+        _stdscr_pseudo_panel.wstartx = 0;
+        _stdscr_pseudo_panel.wendy = LINES;
+        _stdscr_pseudo_panel.wendx = COLS;
+        _stdscr_pseudo_panel.user = "stdscr";
+        _stdscr_pseudo_panel.obscure = (PANELOBS *)0;
+    }
+
+    if (pan)
+    {
+        int maxy, maxx;
+
+        pan->win = win;
+        pan->above = (PANEL *)0;
+        pan->below = (PANEL *)0;
+        getbegyx(win, pan->wstarty, pan->wstartx);
+        getmaxyx(win, maxy, maxx);
+        pan->wendy = pan->wstarty + maxy;
+        pan->wendx = pan->wstartx + maxx;
+#ifdef PANEL_DEBUG
+        pan->user = "new";
+#else
+        pan->user = (char *)0;
+#endif
+        pan->obscure = (PANELOBS *)0;
+        show_panel(pan);
+    }
+
+    return pan;
+}
+
+PANEL *panel_above(const PANEL *pan)
+{
+    return pan ? pan->above : _bottom_panel;
+}
+
+PANEL *panel_below(const PANEL *pan)
+{
+    return pan ? pan->below : _top_panel;
+}
+
+int panel_hidden(const PANEL *pan)
+{
+    if (!pan)
+        return ERR;
+
+    return _panel_is_linked(pan) ? ERR : OK;
+}
+
+const void *panel_userptr(const PANEL *pan)
+{
+    return pan ? pan->user : NULL;
+}
+
+WINDOW *panel_window(const PANEL *pan)
+{
+    PDC_LOG(("panel_window() - called\n"));
+
+    return pan->win;
+}
+
+int replace_panel(PANEL *pan, WINDOW *win)
+{
+    int maxy, maxx;
+
+    if (!pan)
+        return ERR;
+
+    if (_panel_is_linked(pan))
+        _override(pan, 0);
+
+    pan->win = win;
+    getbegyx(win, pan->wstarty, pan->wstartx);
+    getmaxyx(win, maxy, maxx);
+    pan->wendy = pan->wstarty + maxy;
+    pan->wendx = pan->wstartx + maxx;
+
+    if (_panel_is_linked(pan))
+        _calculate_obscure();
+
+    return OK;
+}
+
+int set_panel_userptr(PANEL *pan, const void *uptr)
+{
+    if (!pan)
+        return ERR;
+
+    pan->user = uptr;
+    return OK;
+}
+
+int show_panel(PANEL *pan)
+{
+    if (!pan)
+        return ERR;
+
+    if (pan == _top_panel)
+        return OK;
+
+    if (_panel_is_linked(pan))
+        hide_panel(pan);
+
+    _panel_link_top(pan);
+
+    return OK;
+}
+
+int top_panel(PANEL *pan)
+{
+    return show_panel(pan);
+}
+
+void update_panels(void)
+{
+    PANEL *pan;
+
+    PDC_LOG(("update_panels() - called\n"));
+
+    pan = _bottom_panel;
+
+    while (pan)
+    {
+        _override(pan, -1);
+        pan = pan->above;
+    }
+
+    if (is_wintouched(stdscr))
+        Wnoutrefresh(&_stdscr_pseudo_panel);
+    
+    pan = _bottom_panel;
+
+    while (pan)
+    {
+        if (is_wintouched(pan->win) || !pan->above)
+            Wnoutrefresh(pan);
+
+        pan = pan->above;
+    }
+}
diff --git a/apps/lib/curses/pdcurses/pdcurses/printw.c b/apps/lib/curses/pdcurses/pdcurses/printw.c
new file mode 100644
index 0000000..9be0c5f
--- /dev/null
+++ b/apps/lib/curses/pdcurses/pdcurses/printw.c
@@ -0,0 +1,123 @@
+/* Public Domain Curses */
+
+#include <curspriv.h>
+
+RCSID("$Id: printw.c,v 1.40 2008/07/13 16:08:18 wmcbrine Exp $")
+
+/*man-start**************************************************************
+
+  Name:                                                         printw
+
+  Synopsis:
+        int printw(const char *fmt, ...);
+        int wprintw(WINDOW *win, const char *fmt, ...);
+        int mvprintw(int y, int x, const char *fmt, ...);
+        int mvwprintw(WINDOW *win, int y, int x, const char *fmt,...);
+        int vwprintw(WINDOW *win, const char *fmt, va_list varglist);
+        int vw_printw(WINDOW *win, const char *fmt, va_list varglist);
+
+  Description:
+        The printw() functions add a formatted string to the window at 
+        the current or specified cursor position. The format strings are 
+        the same as used in the standard C library's printf(). (printw() 
+        can be used as a drop-in replacement for printf().)
+
+  Return Value:
+        All functions return the number of characters printed, or 
+        ERR on error.
+
+  Portability                                X/Open    BSD    SYS V
+        printw                                  Y       Y       Y
+        wprintw                                 Y       Y       Y
+        mvprintw                                Y       Y       Y
+        mvwprintw                               Y       Y       Y
+        vwprintw                                Y       -      4.0
+        vw_printw                               Y
+
+**man-end****************************************************************/
+
+#include <string.h>
+
+int vwprintw(WINDOW *win, const char *fmt, va_list varglist)
+{
+    char printbuf[513];
+    int len;
+
+    PDC_LOG(("vwprintw() - called\n"));
+
+#ifdef HAVE_VSNPRINTF
+    len = vsnprintf(printbuf, 512, fmt, varglist);
+#else
+    len = vsprintf(printbuf, fmt, varglist);
+#endif
+    return (waddstr(win, printbuf) == ERR) ? ERR : len;
+}
+
+int printw(const char *fmt, ...)
+{
+    va_list args;
+    int retval;
+
+    PDC_LOG(("printw() - called\n"));
+
+    va_start(args, fmt);
+    retval = vwprintw(stdscr, fmt, args);
+    va_end(args);
+
+    return retval;
+}
+
+int wprintw(WINDOW *win, const char *fmt, ...)
+{
+    va_list args;
+    int retval;
+
+    PDC_LOG(("wprintw() - called\n"));
+
+    va_start(args, fmt);
+    retval = vwprintw(win, fmt, args);
+    va_end(args);
+
+    return retval;
+}
+
+int mvprintw(int y, int x, const char *fmt, ...)
+{
+    va_list args;
+    int retval;
+
+    PDC_LOG(("mvprintw() - called\n"));
+
+    if (move(y, x) == ERR)
+        return ERR;
+
+    va_start(args, fmt);
+    retval = vwprintw(stdscr, fmt, args);
+    va_end(args);
+
+    return retval;
+}
+
+int mvwprintw(WINDOW *win, int y, int x, const char *fmt, ...)
+{
+    va_list args;
+    int retval;
+
+    PDC_LOG(("mvwprintw() - called\n"));
+
+    if (wmove(win, y, x) == ERR)
+        return ERR;
+
+    va_start(args, fmt);
+    retval = vwprintw(win, fmt, args);
+    va_end(args);
+
+    return retval;
+}
+
+int vw_printw(WINDOW *win, const char *fmt, va_list varglist)
+{
+    PDC_LOG(("vw_printw() - called\n"));
+
+    return vwprintw(win, fmt, varglist);
+}
diff --git a/apps/lib/curses/pdcurses/pdcurses/refresh.c b/apps/lib/curses/pdcurses/pdcurses/refresh.c
new file mode 100644
index 0000000..0b8e1ca
--- /dev/null
+++ b/apps/lib/curses/pdcurses/pdcurses/refresh.c
@@ -0,0 +1,276 @@
+/* Public Domain Curses */
+
+#include <curspriv.h>
+
+RCSID("$Id: refresh.c,v 1.56 2008/07/13 16:08:18 wmcbrine Exp $")
+
+/*man-start**************************************************************
+
+  Name:                                                         refresh
+
+  Synopsis:
+        int refresh(void);
+        int wrefresh(WINDOW *win);
+        int wnoutrefresh(WINDOW *win);
+        int doupdate(void);
+        int redrawwin(WINDOW *win);
+        int wredrawln(WINDOW *win, int beg_line, int num_lines);
+
+  Description:
+        wrefresh() copies the named window to the physical terminal 
+        screen, taking into account what is already there in order to 
+        optimize cursor movement. refresh() does the same, using stdscr. 
+        These routines must be called to get any output on the terminal, 
+        as other routines only manipulate data structures. Unless 
+        leaveok() has been enabled, the physical cursor of the terminal 
+        is left at the location of the window's cursor.
+
+        wnoutrefresh() and doupdate() allow multiple updates with more 
+        efficiency than wrefresh() alone. wrefresh() works by first 
+        calling wnoutrefresh(), which copies the named window to the 
+        virtual screen.  It then calls doupdate(), which compares the 
+        virtual screen to the physical screen and does the actual 
+        update. A series of calls to wrefresh() will result in 
+        alternating calls to wnoutrefresh() and doupdate(), causing 
+        several bursts of output to the screen.  By first calling 
+        wnoutrefresh() for each window, it is then possible to call 
+        doupdate() only once.
+
+        In PDCurses, redrawwin() is equivalent to touchwin(), and 
+        wredrawln() is the same as touchline(). In some other curses 
+        implementations, there's a subtle distinction, but it has no 
+        meaning in PDCurses.
+
+  Return Value:
+        All functions return OK on success and ERR on error.
+
+  Portability                                X/Open    BSD    SYS V
+        refresh                                 Y       Y       Y
+        wrefresh                                Y       Y       Y
+        wnoutrefresh                            Y       Y       Y
+        doupdate                                Y       Y       Y
+        redrawwin                               Y       -      4.0
+        wredrawln                               Y       -      4.0
+
+**man-end****************************************************************/
+
+#include <string.h>
+
+int wnoutrefresh(WINDOW *win)
+{
+    int begy, begx;     /* window's place on screen   */
+    int i, j;
+
+    PDC_LOG(("wnoutrefresh() - called: win=%p\n", win));
+
+    if ( !win || (win->_flags & (_PAD|_SUBPAD)) )
+        return ERR;
+
+    begy = win->_begy;
+    begx = win->_begx;
+
+    for (i = 0, j = begy; i < win->_maxy; i++, j++)
+    {
+        if (win->_firstch[i] != _NO_CHANGE)
+        {
+            chtype *src = win->_y[i];
+            chtype *dest = curscr->_y[j] + begx;
+
+            int first = win->_firstch[i]; /* first changed */
+            int last = win->_lastch[i];   /* last changed */
+
+            /* ignore areas on the outside that are marked as changed, 
+               but really aren't */
+
+            while (first <= last && src[first] == dest[first])
+                first++;
+
+            while (last >= first && src[last] == dest[last])
+                last--;
+
+            /* if any have really changed... */
+
+            if (first <= last)
+            {
+                memcpy(dest + first, src + first,
+                       (last - first + 1) * sizeof(chtype));
+
+                first += begx; 
+                last += begx;
+
+                if (first < curscr->_firstch[j] ||
+                    curscr->_firstch[j] == _NO_CHANGE)
+                    curscr->_firstch[j] = first;
+
+                if (last > curscr->_lastch[j])
+                    curscr->_lastch[j] = last;
+            }
+
+            win->_firstch[i] = _NO_CHANGE;  /* updated now */
+        }
+
+        win->_lastch[i] = _NO_CHANGE;       /* updated now */
+    }
+
+    if (win->_clear)
+        win->_clear = FALSE;
+
+    if (!win->_leaveit)
+    {
+        curscr->_cury = win->_cury + begy;
+        curscr->_curx = win->_curx + begx;
+    }
+
+    return OK;
+}
+
+int doupdate(void)
+{
+    int y;
+    bool clearall;
+
+    PDC_LOG(("doupdate() - called\n"));
+
+    if (!curscr)
+        return ERR;
+
+    if (isendwin())         /* coming back after endwin() called */
+    {
+        reset_prog_mode();
+        clearall = TRUE;
+        SP->alive = TRUE;   /* so isendwin() result is correct */
+    }
+    else
+        clearall = curscr->_clear;
+
+    for (y = 0; y < SP->lines; y++)
+    {
+        PDC_LOG(("doupdate() - Transforming line %d of %d: %s\n",
+                 y, SP->lines, (curscr->_firstch[y] != _NO_CHANGE) ?
+                 "Yes" : "No"));
+
+        if (clearall || curscr->_firstch[y] != _NO_CHANGE)
+        {
+            int first, last;
+
+            chtype *src = curscr->_y[y];
+            chtype *dest = pdc_lastscr->_y[y];
+
+            if (clearall)
+            {
+                first = 0;
+                last = COLS - 1;
+            }
+            else
+            {
+                first = curscr->_firstch[y];
+                last = curscr->_lastch[y];
+            }
+
+            while (first <= last)
+            {
+                int len = 0;
+
+                /* build up a run of changed cells; if two runs are
+                   separated by a single unchanged cell, ignore the
+                   break */
+
+                if (clearall)
+                    len = last - first + 1;
+                else
+                    while (first + len <= last &&
+                           (src[first + len] != dest[first + len] ||
+                            (len && first + len < last &&
+                             src[first + len + 1] != dest[first + len + 1])
+                           )
+                          )
+                        len++;
+
+                /* update the screen, and pdc_lastscr */
+
+                if (len)
+                {
+                    PDC_transform_line(y, first, len, src + first);
+                    memcpy(dest + first, src + first, len * sizeof(chtype));
+                    first += len;
+                }
+
+                /* skip over runs of unchanged cells */
+
+                while (first <= last && src[first] == dest[first])
+                    first++;
+            }
+
+            curscr->_firstch[y] = _NO_CHANGE;
+            curscr->_lastch[y] = _NO_CHANGE;
+        }
+    }
+
+    curscr->_clear = FALSE;
+
+    if (SP->visibility)
+        PDC_gotoyx(curscr->_cury, curscr->_curx);
+
+    SP->cursrow = curscr->_cury;
+    SP->curscol = curscr->_curx;
+
+    return OK;
+}
+
+int wrefresh(WINDOW *win)
+{
+    bool save_clear;
+
+    PDC_LOG(("wrefresh() - called\n"));
+
+    if ( !win || (win->_flags & (_PAD|_SUBPAD)) )
+        return ERR;
+
+    save_clear = win->_clear;
+
+    if (win == curscr)
+        curscr->_clear = TRUE;
+    else
+        wnoutrefresh(win);
+
+    if (save_clear && win->_maxy == SP->lines && win->_maxx == SP->cols)
+        curscr->_clear = TRUE;
+
+    return doupdate();
+}
+
+int refresh(void)
+{
+    PDC_LOG(("refresh() - called\n"));
+
+    return wrefresh(stdscr);
+}
+
+int wredrawln(WINDOW *win, int start, int num)
+{
+    int i;
+
+    PDC_LOG(("wredrawln() - called: win=%p start=%d num=%d\n",
+        win, start, num));
+
+    if (!win || start > win->_maxy || start + num > win->_maxy)
+        return ERR;
+
+    for (i = start; i < start + num; i++)
+    {
+        win->_firstch[i] = 0;
+        win->_lastch[i] = win->_maxx - 1;
+    }
+
+    return OK;
+}
+
+int redrawwin(WINDOW *win)
+{
+    PDC_LOG(("redrawwin() - called: win=%p\n", win));
+
+    if (!win)
+        return ERR;
+
+    return wredrawln(win, 0, win->_maxy);
+}
diff --git a/apps/lib/curses/pdcurses/pdcurses/scanw.c b/apps/lib/curses/pdcurses/pdcurses/scanw.c
new file mode 100644
index 0000000..af2bcb9
--- /dev/null
+++ b/apps/lib/curses/pdcurses/pdcurses/scanw.c
@@ -0,0 +1,575 @@
+/* Public Domain Curses */
+
+#include <curspriv.h>
+
+RCSID("$Id: scanw.c,v 1.42 2008/07/14 12:22:13 wmcbrine Exp $")
+
+/*man-start**************************************************************
+
+  Name:                                                         scanw
+
+  Synopsis:
+        int scanw(const char *fmt, ...);
+        int wscanw(WINDOW *win, const char *fmt, ...);
+        int mvscanw(int y, int x, const char *fmt, ...);
+        int mvwscanw(WINDOW *win, int y, int x, const char *fmt, ...);
+        int vwscanw(WINDOW *win, const char *fmt, va_list varglist);
+        int vw_scanw(WINDOW *win, const char *fmt, va_list varglist);
+
+  Description:
+        These routines correspond to the standard C library's scanf()
+        family. Each gets a string from the window via wgetnstr(), and
+        uses the resulting line as input for the scan.
+
+  Return Value:
+        On successful completion, these functions return the number of
+        items successfully matched.  Otherwise they return ERR.
+
+  Portability                                X/Open    BSD    SYS V
+        scanw                                   Y       Y       Y
+        wscanw                                  Y       Y       Y
+        mvscanw                                 Y       Y       Y
+        mvwscanw                                Y       Y       Y
+        vwscanw                                 Y       -      4.0
+        vw_scanw                                Y
+
+**man-end****************************************************************/
+
+#include <string.h>
+
+#ifndef HAVE_VSSCANF
+# include <stdlib.h>
+# include <ctype.h>
+# include <limits.h>
+
+static int _pdc_vsscanf(const char *, const char *, va_list);
+
+# define vsscanf _pdc_vsscanf
+#endif
+
+int vwscanw(WINDOW *win, const char *fmt, va_list varglist)
+{
+    char scanbuf[256];
+
+    PDC_LOG(("vwscanw() - called\n"));
+
+    if (wgetnstr(win, scanbuf, 255) == ERR)
+        return ERR;
+
+    return vsscanf(scanbuf, fmt, varglist);
+}
+
+int scanw(const char *fmt, ...)
+{
+    va_list args;
+    int retval;
+
+    PDC_LOG(("scanw() - called\n"));
+
+    va_start(args, fmt);
+    retval = vwscanw(stdscr, fmt, args);
+    va_end(args);
+
+    return retval;
+}
+
+int wscanw(WINDOW *win, const char *fmt, ...)
+{
+    va_list args;
+    int retval;
+
+    PDC_LOG(("wscanw() - called\n"));
+
+    va_start(args, fmt);
+    retval = vwscanw(win, fmt, args);
+    va_end(args);
+
+    return retval;
+}
+
+int mvscanw(int y, int x, const char *fmt, ...)
+{
+    va_list args;
+    int retval;
+
+    PDC_LOG(("mvscanw() - called\n"));
+
+    if (move(y, x) == ERR)
+        return ERR;
+
+    va_start(args, fmt);
+    retval = vwscanw(stdscr, fmt, args);
+    va_end(args);
+
+    return retval;
+}
+
+int mvwscanw(WINDOW *win, int y, int x, const char *fmt, ...)
+{
+    va_list args;
+    int retval;
+
+    PDC_LOG(("mvscanw() - called\n"));
+
+    if (wmove(win, y, x) == ERR)
+        return ERR;
+
+    va_start(args, fmt);
+    retval = vwscanw(win, fmt, args);
+    va_end(args);
+
+    return retval;
+}
+
+int vw_scanw(WINDOW *win, const char *fmt, va_list varglist)
+{
+    PDC_LOG(("vw_scanw() - called\n"));
+
+    return vwscanw(win, fmt, varglist);
+}
+
+#ifndef HAVE_VSSCANF
+
+/* _pdc_vsscanf() - Internal routine to parse and format an input 
+   buffer. It scans a series of input fields; each field is formatted 
+   according to a supplied format string and the formatted input is 
+   stored in the variable number of addresses passed. Returns the number 
+   of input fields or EOF on error.
+
+   Don't compile this unless required. Some compilers (at least Borland 
+   C++ 3.0) have to link with math libraries due to the use of floats.
+
+   Based on vsscanf.c and input.c from emx 0.8f library source, 
+   Copyright (c) 1990-1992 by Eberhard Mattes, who has kindly agreed to 
+   its inclusion in PDCurses. */
+
+#define WHITE(x) ((x) == ' ' || (x) == '\t' || (x) == '\n')
+
+#define NEXT(x) \
+        do { \
+            x = *buf++; \
+            if (!x) \
+               return (count ? count : EOF); \
+            ++chars; \
+           } while (0)
+
+#define UNGETC() \
+        do { \
+            --buf; --chars; \
+           } while (0)
+
+static int _pdc_vsscanf(const char *buf, const char *fmt, va_list arg_ptr)
+{
+    int count, chars, c, width, radix, d, i;
+    int *int_ptr;
+    long *long_ptr;
+    short *short_ptr;
+    char *char_ptr;
+    unsigned char f;
+    char neg, assign, ok, size;
+    long n;
+    char map[256], end;
+    double dx, dd, *dbl_ptr;
+    float *flt_ptr;
+    int exp;
+    char eneg;
+
+    count = 0;
+    chars = 0;
+    c = 0;
+    while ((f = *fmt) != 0)
+    {
+        if (WHITE(f))
+        {
+            do
+            {
+                ++fmt;
+                f = *fmt;
+            }
+            while (WHITE(f));
+            do
+            {
+                c = *buf++;
+                if (!c)
+                {
+                    if (!f || count)
+                        return count;
+                    else
+                        return EOF;
+                } else
+                    ++chars;
+            }
+            while (WHITE(c));
+            UNGETC();
+        } else if (f != '%')
+        {
+            NEXT(c);
+            if (c != f)
+                return count;
+            ++fmt;
+        } else
+        {
+            assign = TRUE;
+            width = INT_MAX;
+            char_ptr = NULL;
+            ++fmt;
+            if (*fmt == '*')
+            {
+                assign = FALSE;
+                ++fmt;
+            }
+            if (isdigit(*fmt))
+            {
+                width = 0;
+                while (isdigit(*fmt))
+                    width = width * 10 + (*fmt++ - '0');
+                if (!width)
+                    width = INT_MAX;
+            }
+            size = 0;
+            if (*fmt == 'h' || *fmt == 'l')
+                size = *fmt++;
+            f = *fmt;
+            switch (f)
+            {
+            case 'c':
+                if (width == INT_MAX)
+                    width = 1;
+                if (assign)
+                    char_ptr = va_arg(arg_ptr, char *);
+                while (width > 0)
+                {
+                    --width;
+                    NEXT(c);
+                    if (assign)
+                    {
+                        *char_ptr++ = (char) c;
+                        ++count;
+                    }
+                }
+                break;
+            case '[':
+                memset(map, 0, 256);
+                end = 0;
+                ++fmt;
+                if (*fmt == '^')
+                {
+                    ++fmt;
+                    end = 1;
+                }
+                i = 0;
+                for (;;)
+                {
+                    f = (unsigned char) *fmt;
+                    switch (f)
+                    {
+                    case 0:
+                        /* avoid skipping past 0 */
+                        --fmt;
+                        NEXT(c);
+                        goto string;
+                    case ']':
+                        if (i > 0)
+                        {
+                            NEXT(c);
+                            goto string;
+                        }
+                        /* no break */
+                    default:
+                        if (fmt[1] == '-' && fmt[2]
+                            && f < (unsigned char)fmt[2])
+                        {
+                            memset(map + f, 1, (unsigned char)fmt[2] - f);
+                            fmt += 2;
+                        }
+                        else
+                            map[f] = 1;
+                        break;
+                    }
+                    ++fmt;
+                    ++i;
+                }
+            case 's':
+                memset(map, 0, 256);
+                map[' '] = 1;
+                map['\n'] = 1;
+                map['\r'] = 1;
+                map['\t'] = 1;
+                end = 1;
+                do
+                {
+                    NEXT(c);
+                }
+                while (WHITE(c));
+            string:
+                if (assign)
+                    char_ptr = va_arg(arg_ptr, char *);
+                while (width > 0 && map[(unsigned char) c] != end)
+                {
+                    --width;
+                    if (assign)
+                        *char_ptr++ = (char) c;
+                    c = *buf++;
+                    if (!c)
+                        break;
+                    else
+                        ++chars;
+                }
+                if (assign)
+                {
+                    *char_ptr = 0;
+                    ++count;
+                }
+                if (!c)
+                    return count;
+                else
+                    UNGETC();
+                break;
+            case 'f':
+            case 'e':
+            case 'E':
+            case 'g':
+            case 'G':
+                neg = ok = FALSE;
+                dx = 0.0;
+                do
+                {
+                    NEXT(c);
+                }
+                while (WHITE(c));
+                if (c == '+')
+                {
+                    NEXT(c);
+                    --width;
+                } else if (c == '-')
+                {
+                    neg = TRUE;
+                    NEXT(c);
+                    --width;
+                }
+                while (width > 0 && isdigit(c))
+                {
+                    --width;
+                    dx = dx * 10.0 + (double) (c - '0');
+                    ok = TRUE;
+                    c = *buf++;
+                    if (!c)
+                        break;
+                    else
+                        ++chars;
+                }
+                if (width > 0 && c == '.')
+                {
+                    --width;
+                    dd = 10.0;
+                    NEXT(c);
+                    while (width > 0 && isdigit(c))
+                    {
+                        --width;
+                        dx += (double) (c - '0') / dd;
+                        dd *= 10.0;
+                        ok = TRUE;
+                        c = *buf++;
+                        if (!c)
+                            break;
+                        else
+                            ++chars;
+                    }
+                }
+                if (!ok)
+                    return count;
+                if (width > 0 && (c == 'e' || c == 'E'))
+                {
+                    eneg = FALSE;
+                    exp = 0;
+                    NEXT(c);
+                    --width;
+                    if (width > 0 && c == '+')
+                    {
+                        NEXT(c);
+                        --width;
+                    } else if (width > 0 && c == '-')
+                    {
+                        eneg = TRUE;
+                        NEXT(c);
+                        --width;
+                    }
+                    if (!(width > 0 && isdigit(c)))
+                    {
+                        UNGETC();
+                        return count;
+                    }
+                    while (width > 0 && isdigit(c))
+                    {
+                        --width;
+                        exp = exp * 10 + (c - '0');
+                        c = *buf++;
+                        if (!c)
+                            break;
+                        else
+                            ++chars;
+                    }
+                    if (eneg)
+                        exp = -exp;
+                    while (exp > 0)
+                    {
+                        dx *= 10.0;
+                        --exp;
+                    }
+                    while (exp < 0)
+                    {
+                        dx /= 10.0;
+                        ++exp;
+                    }
+                }
+                if (assign)
+                {
+                    if (neg)
+                        dx = -dx;
+                    if (size == 'l')
+                    {
+                        dbl_ptr = va_arg(arg_ptr, double *);
+                        *dbl_ptr = dx;
+                    }
+                    else
+                    {
+                        flt_ptr = va_arg(arg_ptr, float *);
+                        *flt_ptr = (float)dx;
+                    }
+                    ++count;
+                }
+                if (!c)
+                    return count;
+                else
+                    UNGETC();
+                break;
+            case 'i':
+                neg = FALSE;
+                radix = 10;
+                do
+                {
+                    NEXT(c);
+                }
+                while (WHITE(c));
+                if (!(width > 0 && c == '0'))
+                    goto scan_complete_number;
+                NEXT(c);
+                --width;
+                if (width > 0 && (c == 'x' || c == 'X'))
+                {
+                    NEXT(c);
+                    radix = 16;
+                    --width;
+                }
+                else if (width > 0 && (c >= '0' && c <= '7'))
+                    radix = 8;
+                goto scan_unsigned_number;
+            case 'd':
+            case 'u':
+            case 'o':
+            case 'x':
+            case 'X':
+                do
+                {
+                    NEXT(c);
+                }
+                while (WHITE(c));
+                switch (f)
+                {
+                case 'o':
+                    radix = 8;
+                    break;
+                case 'x':
+                case 'X':
+                    radix = 16;
+                    break;
+                default:
+                    radix = 10;
+                    break;
+                }
+            scan_complete_number:
+                neg = FALSE;
+                if (width > 0 && c == '+')
+                {
+                    NEXT(c);
+                    --width;
+                }
+                else if (width > 0 && c == '-' && radix == 10)
+                {
+                    neg = TRUE;
+                    NEXT(c);
+                    --width;
+                }
+            scan_unsigned_number:
+                n = 0;
+                ok = FALSE;
+                while (width > 0)
+                {
+                    --width;
+                    if (isdigit(c))
+                        d = c - '0';
+                    else if (isupper(c))
+                        d = c - 'A' + 10;
+                    else if (islower(c))
+                        d = c - 'a' + 10;
+                    else
+                        break;
+                    if (d < 0 || d >= radix)
+                        break;
+                    ok = TRUE;
+                    n = n * radix + d;
+                    c = *buf++;
+                    if (!c)
+                        break;
+                    else
+                        ++chars;
+                }
+                if (!ok)
+                    return count;
+                if (assign)
+                {
+                    if (neg)
+                        n = -n;
+                    switch (size)
+                    {
+                    case 'h':
+                        short_ptr = va_arg(arg_ptr, short *);
+                        *short_ptr = (short) n;
+                        break;
+                    case 'l':
+                        long_ptr = va_arg(arg_ptr, long *);
+                        *long_ptr = (long) n;
+                        break;
+                    default:
+                        int_ptr = va_arg(arg_ptr, int *);
+                        *int_ptr = (int) n;
+                    }
+                    ++count;
+                }
+                if (!c)
+                    return count;
+                else
+                    UNGETC();
+                break;
+            case 'n':
+                if (assign)
+                {
+                    int_ptr = va_arg(arg_ptr, int *);
+                    *int_ptr = chars;
+                    ++count;
+                }
+                break;
+            default:
+                if (!f) /* % at end of string */
+                    return count;
+                NEXT(c);
+                if (c != f)
+                    return count;
+                break;
+            }
+            ++fmt;
+        }
+    }
+    return count;
+}
+#endif /* HAVE_VSSCANF */
diff --git a/apps/lib/curses/pdcurses/pdcurses/scr_dump.c b/apps/lib/curses/pdcurses/pdcurses/scr_dump.c
new file mode 100644
index 0000000..e02046e
--- /dev/null
+++ b/apps/lib/curses/pdcurses/pdcurses/scr_dump.c
@@ -0,0 +1,210 @@
+/* Public Domain Curses */
+
+#include <curspriv.h>
+
+RCSID("$Id: scr_dump.c,v 1.30 2008/07/13 16:08:18 wmcbrine Exp $")
+
+/*man-start**************************************************************
+
+  Name:                                                         scr_dump
+
+  Synopsis:
+        int putwin(WINDOW *win, FILE *filep);
+        WINDOW *getwin(FILE *filep);
+        int scr_dump(const char *filename);
+        int scr_init(const char *filename);
+        int scr_restore(const char *filename);
+        int scr_set(const char *filename);
+
+  Description:
+        getwin() reads window-related data previously stored in a file 
+        by putwin(). It then creates and initialises a new window using 
+        that data.
+
+        putwin() writes all data associated with a window into a file, 
+        using an unspecified format. This information can be retrieved 
+        later using getwin().
+
+        scr_dump() writes the current contents of the virtual screen to 
+        the file named by filename in an unspecified format.
+
+        scr_restore() function sets the virtual screen to the contents 
+        of the file named by filename, which must have been written 
+        using scr_dump(). The next refresh operation restores the screen 
+        to the way it looked in the dump file.
+
+        In PDCurses, scr_init() does nothing, and scr_set() is a synonym 
+        for scr_restore(). Also, scr_dump() and scr_restore() save and 
+        load from curscr. This differs from some other implementations, 
+        where scr_init() works with curscr, and scr_restore() works with 
+        newscr; but the effect should be the same. (PDCurses has no 
+        newscr.)
+
+  Return Value:
+        On successful completion, getwin() returns a pointer to the 
+        window it created. Otherwise, it returns a null pointer. Other 
+        functions return OK or ERR.
+
+  Portability                                X/Open    BSD    SYS V
+        putwin                                  Y
+        getwin                                  Y
+        scr_dump                                Y
+        scr_init                                Y
+        scr_restore                             Y
+        scr_set                                 Y
+
+**man-end****************************************************************/
+
+#include <stdlib.h>
+#include <string.h>
+
+#define DUMPVER 1   /* Should be updated whenever the WINDOW struct is
+                       changed */
+
+int putwin(WINDOW *win, FILE *filep)
+{
+    static const char *marker = "PDC";
+    static const unsigned char version = DUMPVER;
+
+    PDC_LOG(("putwin() - called\n"));
+
+    /* write the marker and the WINDOW struct */
+
+    if (filep && fwrite(marker, strlen(marker), 1, filep)
+              && fwrite(&version, 1, 1, filep)
+              && fwrite(win, sizeof(WINDOW), 1, filep))
+    {
+        int i;
+
+        /* write each line */
+
+        for (i = 0; i < win->_maxy && win->_y[i]; i++)
+            if (!fwrite(win->_y[i], win->_maxx * sizeof(chtype), 1, filep))
+                return ERR;
+
+        return OK;
+    }
+
+    return ERR;
+}
+
+WINDOW *getwin(FILE *filep)
+{
+    WINDOW *win;
+    char marker[4];
+    int i, nlines, ncols;
+
+    PDC_LOG(("getwin() - called\n"));
+
+    if ( !(win = malloc(sizeof(WINDOW))) )
+        return (WINDOW *)NULL;
+
+    /* check for the marker, and load the WINDOW struct */
+
+    if (!filep || !fread(marker, 4, 1, filep) || strncmp(marker, "PDC", 3)
+        || marker[3] != DUMPVER || !fread(win, sizeof(WINDOW), 1, filep))
+    {
+        free(win);
+        return (WINDOW *)NULL;
+    }
+
+    nlines = win->_maxy;
+    ncols = win->_maxx;
+
+    /* allocate the line pointer array */
+
+    if ( !(win->_y = malloc(nlines * sizeof(chtype *))) )
+    {
+        free(win);
+        return (WINDOW *)NULL;
+    }
+
+    /* allocate the minchng and maxchng arrays */
+
+    if ( !(win->_firstch = malloc(nlines * sizeof(int))) )
+    {
+        free(win->_y);
+        free(win);
+        return (WINDOW *)NULL;
+    }
+
+    if ( !(win->_lastch = malloc(nlines * sizeof(int))) )
+    {
+        free(win->_firstch);
+        free(win->_y);
+        free(win);
+        return (WINDOW *)NULL;
+    }
+
+    /* allocate the lines */
+
+    if ( !(win = PDC_makelines(win)) )
+        return (WINDOW *)NULL;
+
+    /* read them */
+
+    for (i = 0; i < nlines; i++)
+    {
+        if (!fread(win->_y[i], ncols * sizeof(chtype), 1, filep))
+        {
+            delwin(win);
+            return (WINDOW *)NULL;
+        }
+    }
+
+    touchwin(win);
+
+    return win;
+}
+
+int scr_dump(const char *filename)
+{
+    FILE *filep;
+
+    PDC_LOG(("scr_dump() - called: filename %s\n", filename));
+
+    if (filename && (filep = fopen(filename, "wb")) != NULL)
+    {
+        int result = putwin(curscr, filep);
+        fclose(filep);
+        return result;
+    }
+
+    return ERR;
+}
+
+int scr_init(const char *filename)
+{
+    PDC_LOG(("scr_init() - called: filename %s\n", filename));
+
+    return OK;
+}
+
+int scr_restore(const char *filename)
+{
+    FILE *filep;
+
+    PDC_LOG(("scr_restore() - called: filename %s\n", filename));
+
+    if (filename && (filep = fopen(filename, "rb")) != NULL)
+    {
+        WINDOW *replacement = getwin(filep);
+        fclose(filep);
+
+        if (replacement)
+        {
+            int result = overwrite(replacement, curscr);
+            delwin(replacement);
+            return result;
+        }
+    }
+
+    return ERR;
+}
+
+int scr_set(const char *filename)
+{
+    PDC_LOG(("scr_set() - called: filename %s\n", filename));
+
+    return scr_restore(filename);
+}
diff --git a/apps/lib/curses/pdcurses/pdcurses/scroll.c b/apps/lib/curses/pdcurses/pdcurses/scroll.c
new file mode 100644
index 0000000..c53e295
--- /dev/null
+++ b/apps/lib/curses/pdcurses/pdcurses/scroll.c
@@ -0,0 +1,98 @@
+/* Public Domain Curses */
+
+#include <curspriv.h>
+
+RCSID("$Id: scroll.c,v 1.36 2008/07/13 16:08:18 wmcbrine Exp $")
+
+/*man-start**************************************************************
+
+  Name:                                                         scroll
+
+  Synopsis:
+        int scroll(WINDOW *win);
+        int scrl(int n);
+        int wscrl(WINDOW *win, int n);
+
+  Description:
+        scroll() causes the window to scroll up one line.  This involves 
+        moving the lines in the window data strcture.
+ 
+        With a positive n, scrl() and wscrl() scroll the window up n 
+        lines (line i + n becomes i); otherwise they scroll the window 
+        down n lines.
+ 
+        For these functions to work, scrolling must be enabled via 
+        scrollok(). Note also that scrolling is not allowed if the 
+        supplied window is a pad.
+
+  Return Value:
+        All functions return OK on success and ERR on error.
+
+  Portability                                X/Open    BSD    SYS V
+        scroll                                  Y       Y       Y
+        scrl                                    Y       -      4.0
+        wscrl                                   Y       -      4.0
+
+**man-end****************************************************************/
+
+int wscrl(WINDOW *win, int n)
+{
+    int i, l, dir, start, end;
+    chtype blank, *temp;
+
+    /* Check if window scrolls. Valid for window AND pad */
+
+    if (!win || !win->_scroll || !n)
+        return ERR;
+
+    blank = win->_bkgd;
+
+    if (n > 0)
+    {
+        start = win->_tmarg;
+        end = win->_bmarg;
+        dir = 1;
+    }
+    else
+    {
+        start = win->_bmarg;
+        end = win->_tmarg;
+        dir = -1;
+    }
+
+    for (l = 0; l < (n * dir); l++) 
+    {
+        temp = win->_y[start];
+
+        /* re-arrange line pointers */
+
+        for (i = start; i != end; i += dir)
+            win->_y[i] = win->_y[i + dir];
+
+        win->_y[end] = temp;
+
+        /* make a blank line */
+
+        for (i = 0; i < win->_maxx; i++)
+            *temp++ = blank;
+    }
+
+    touchline(win, win->_tmarg, win->_bmarg - win->_tmarg + 1);
+
+    PDC_sync(win);
+    return OK;
+}
+
+int scrl(int n)
+{
+    PDC_LOG(("scrl() - called\n"));
+
+    return wscrl(stdscr, n);
+}
+
+int scroll(WINDOW *win)
+{
+    PDC_LOG(("scroll() - called\n"));
+
+    return wscrl(win, 1);
+}
diff --git a/apps/lib/curses/pdcurses/pdcurses/slk.c b/apps/lib/curses/pdcurses/pdcurses/slk.c
new file mode 100644
index 0000000..f97f406
--- /dev/null
+++ b/apps/lib/curses/pdcurses/pdcurses/slk.c
@@ -0,0 +1,643 @@
+/* Public Domain Curses */
+
+#include <curspriv.h>
+
+RCSID("$Id: slk.c,v 1.61 2008/07/13 16:08:18 wmcbrine Exp $")
+
+/*man-start**************************************************************
+
+  Name:                                                         slk
+
+  Synopsis:
+        int slk_init(int fmt);
+        int slk_set(int labnum, const char *label, int justify);
+        int slk_refresh(void);
+        int slk_noutrefresh(void);
+        char *slk_label(int labnum);
+        int slk_clear(void);
+        int slk_restore(void);
+        int slk_touch(void);
+        int slk_attron(const chtype attrs);
+        int slk_attr_on(const attr_t attrs, void *opts);
+        int slk_attrset(const chtype attrs);
+        int slk_attr_set(const attr_t attrs, short color_pair, void *opts);
+        int slk_attroff(const chtype attrs);
+        int slk_attr_off(const attr_t attrs, void *opts);
+        int slk_color(short color_pair);
+
+        int slk_wset(int labnum, const wchar_t *label, int justify);
+
+        int PDC_mouse_in_slk(int y, int x);
+        void PDC_slk_free(void);
+        void PDC_slk_initialize(void);
+
+        wchar_t *slk_wlabel(int labnum)
+
+  Description:
+        These functions manipulate a window that contain Soft Label Keys 
+        (SLK). To use the SLK functions, a call to slk_init() must be 
+        made BEFORE initscr() or newterm(). slk_init() removes 1 or 2 
+        lines from the useable screen, depending on the format selected.
+
+        The line(s) removed from the screen are used as a separate 
+        window, in which SLKs are displayed.
+
+        slk_init() requires a single parameter which describes the 
+        format of the SLKs as follows:
+ 
+                0       3-2-3 format
+                1       4-4 format
+                2       4-4-4 format (ncurses extension)
+                3       4-4-4 format with index line (ncurses extension)
+                        2 lines used
+                55      5-5 format (pdcurses format)
+
+        slk_refresh(), slk_noutrefresh() and slk_touch() are analogous
+        to refresh(), noutrefresh() and touch().
+
+  Return Value:
+        All functions return OK on success and ERR on error.
+
+  Portability                                X/Open    BSD    SYS V
+        slk_init                                Y       -       Y
+        slk_set                                 Y       -       Y
+        slk_refresh                             Y       -       Y
+        slk_noutrefresh                         Y       -       Y
+        slk_label                               Y       -       Y
+        slk_clear                               Y       -       Y
+        slk_restore                             Y       -       Y
+        slk_touch                               Y       -       Y
+        slk_attron                              Y       -       Y
+        slk_attrset                             Y       -       Y
+        slk_attroff                             Y       -       Y
+        slk_attr_on                             Y
+        slk_attr_set                            Y
+        slk_attr_off                            Y
+        slk_wset                                Y
+        PDC_mouse_in_slk                        -       -       -
+        PDC_slk_free                            -       -       -
+        PDC_slk_initialize                      -       -       -
+        slk_wlabel                              -       -       -
+
+**man-end****************************************************************/
+
+#include <stdlib.h>
+
+enum { LABEL_NORMAL = 8, LABEL_EXTENDED = 10, LABEL_NCURSES_EXTENDED = 12 };
+
+static int label_length = 0;
+static int labels = 0;
+static int label_fmt = 0;
+static int label_line = 0;
+static bool hidden = FALSE;
+
+static struct SLK {
+    chtype label[32];
+    int len;
+    int format;
+    int start_col;
+} *slk = (struct SLK *)NULL;
+
+/* slk_init() is the slk initialization routine.
+   This must be called before initscr().
+
+   label_fmt = 0, 1 or 55.
+       0 = 3-2-3 format
+       1 = 4 - 4 format
+       2 = 4-4-4 format (ncurses extension for PC 12 function keys)
+       3 = 4-4-4 format (ncurses extension for PC 12 function keys -
+    with index line)
+      55 = 5 - 5 format (extended for PC, 10 function keys) */
+
+int slk_init(int fmt)
+{
+    PDC_LOG(("slk_init() - called\n"));
+
+    if (SP)
+        return ERR;
+
+    switch (fmt) 
+    {
+    case 0:  /* 3 - 2 - 3 */
+        labels = LABEL_NORMAL;
+        break;
+
+    case 1:   /* 4 - 4 */
+        labels = LABEL_NORMAL;
+        break;
+
+    case 2:   /* 4 4 4 */
+        labels = LABEL_NCURSES_EXTENDED;
+        break;
+
+    case 3:   /* 4 4 4  with index */
+        labels = LABEL_NCURSES_EXTENDED;
+        break;
+
+    case 55:  /* 5 - 5 */
+        labels = LABEL_EXTENDED;
+        break;
+
+    default:
+        return ERR;
+    }
+
+    label_fmt = fmt;
+
+    slk = calloc(labels, sizeof(struct SLK));
+
+    if (!slk)
+        labels = 0;
+
+    return slk ? OK : ERR;
+}
+
+/* draw a single button */
+
+static void _drawone(int num)
+{
+    int i, col, slen;
+
+    if (hidden)
+        return;
+
+    slen = slk[num].len;
+
+    switch (slk[num].format)
+    {
+    case 0:  /* LEFT */
+        col = 0;
+        break;
+
+    case 1:  /* CENTER */
+        col = (label_length - slen) / 2;
+
+        if (col + slen > label_length)
+            --col;
+        break;
+
+    default:  /* RIGHT */
+        col = label_length - slen;
+    }
+
+    wmove(SP->slk_winptr, label_line, slk[num].start_col);
+
+    for (i = 0; i < label_length; ++i)
+        waddch(SP->slk_winptr, (i >= col && i < (col + slen)) ?
+               slk[num].label[i - col] : ' ');
+}
+
+/* redraw each button */
+
+static void _redraw(void)
+{
+    int i;
+
+    for (i = 0; i < labels; ++i)
+        _drawone(i);
+}
+
+/* slk_set() Used to set a slk label to a string.
+
+   labnum  = 1 - 8 (or 10) (number of the label)
+   label   = string (8 or 7 bytes total), or NULL
+   justify = 0 : left, 1 : center, 2 : right  */
+
+int slk_set(int labnum, const char *label, int justify)
+{
+#ifdef PDC_WIDE
+    wchar_t wlabel[32];
+
+    PDC_mbstowcs(wlabel, label, 31);
+    return slk_wset(labnum, wlabel, justify);
+#else
+    PDC_LOG(("slk_set() - called\n"));
+
+    if (labnum < 1 || labnum > labels || justify < 0 || justify > 2)
+        return ERR;
+
+    labnum--;
+
+    if (!label || !(*label)) 
+    {
+        /* Clear the label */
+
+        *slk[labnum].label = 0;
+        slk[labnum].format = 0;
+        slk[labnum].len = 0;
+    }
+    else
+    {
+        int i, j = 0;
+
+        /* Skip leading spaces */
+
+        while (label[j] == ' ')
+            j++;
+
+        /* Copy it */
+
+        for (i = 0; i < label_length; i++)
+        {
+            chtype ch = label[i + j];
+
+            slk[labnum].label[i] = ch;
+
+            if (!ch)
+                break;
+        }
+
+        /* Drop trailing spaces */
+
+        while ((i + j) && (label[i + j - 1] == ' '))
+            i--;
+
+        slk[labnum].label[i] = 0;
+        slk[labnum].format = justify;
+        slk[labnum].len = i;
+    }
+
+    _drawone(labnum);
+
+    return OK;
+#endif
+}
+
+int slk_refresh(void)
+{
+    PDC_LOG(("slk_refresh() - called\n"));
+
+    return (slk_noutrefresh() == ERR) ? ERR : doupdate();
+}
+
+int slk_noutrefresh(void)
+{
+    PDC_LOG(("slk_noutrefresh() - called\n"));
+
+    return wnoutrefresh(SP->slk_winptr);
+}
+
+char *slk_label(int labnum)
+{
+    static char temp[33];
+#ifdef PDC_WIDE
+    wchar_t *wtemp = slk_wlabel(labnum);
+
+    PDC_wcstombs(temp, wtemp, 32);
+#else
+    chtype *p;
+    int i;
+
+    PDC_LOG(("slk_label() - called\n"));
+
+    if (labnum < 1 || labnum > labels)
+        return (char *)0;
+
+    for (i = 0, p = slk[labnum - 1].label; *p; i++)
+        temp[i] = *p++;
+
+    temp[i] = '\0';
+#endif
+    return temp;
+}
+
+int slk_clear(void)
+{
+    PDC_LOG(("slk_clear() - called\n"));
+
+    hidden = TRUE;
+    werase(SP->slk_winptr);
+    return wrefresh(SP->slk_winptr);
+}
+
+int slk_restore(void)
+{
+    PDC_LOG(("slk_restore() - called\n"));
+
+    hidden = FALSE;
+    _redraw();
+    return wrefresh(SP->slk_winptr);
+}
+
+int slk_touch(void)
+{
+    PDC_LOG(("slk_touch() - called\n"));
+
+    return touchwin(SP->slk_winptr);
+}
+
+int slk_attron(const chtype attrs)
+{
+    int rc;
+
+    PDC_LOG(("slk_attron() - called\n"));
+
+    rc = wattron(SP->slk_winptr, attrs);
+    _redraw();
+
+    return rc;
+}
+
+int slk_attr_on(const attr_t attrs, void *opts)
+{
+    PDC_LOG(("slk_attr_on() - called\n"));
+
+    return slk_attron(attrs);
+}
+
+int slk_attroff(const chtype attrs)
+{
+    int rc;
+
+    PDC_LOG(("slk_attroff() - called\n"));
+
+    rc = wattroff(SP->slk_winptr, attrs);
+    _redraw();
+
+    return rc;
+}
+
+int slk_attr_off(const attr_t attrs, void *opts)
+{
+    PDC_LOG(("slk_attr_off() - called\n"));
+
+    return slk_attroff(attrs);
+}
+
+int slk_attrset(const chtype attrs)
+{
+    int rc;
+
+    PDC_LOG(("slk_attrset() - called\n"));
+
+    rc = wattrset(SP->slk_winptr, attrs);
+    _redraw();
+
+    return rc;
+}
+
+int slk_color(short color_pair)
+{
+    int rc;
+
+    PDC_LOG(("slk_color() - called\n"));
+
+    rc = wcolor_set(SP->slk_winptr, color_pair, NULL);
+    _redraw();
+
+    return rc;
+}
+
+int slk_attr_set(const attr_t attrs, short color_pair, void *opts)
+{
+    PDC_LOG(("slk_attr_set() - called\n"));
+
+    return slk_attrset(attrs | COLOR_PAIR(color_pair));
+}
+
+static void _slk_calc(void)
+{
+    int i, center, col = 0;
+    label_length = COLS / labels;
+
+    if (label_length > 31)
+        label_length = 31;
+
+    switch (label_fmt)
+    {
+    case 0:     /* 3 - 2 - 3 F-Key layout */
+
+        --label_length;
+
+        slk[0].start_col = col;
+        slk[1].start_col = (col += label_length);
+        slk[2].start_col = (col += label_length);
+
+        center = COLS / 2;
+
+        slk[3].start_col = center - label_length + 1;
+        slk[4].start_col = center + 1;
+
+        col = COLS - (label_length * 3) + 1;
+
+        slk[5].start_col = col;
+        slk[6].start_col = (col += label_length);
+        slk[7].start_col = (col += label_length);
+        break;
+
+    case 1:     /* 4 - 4 F-Key layout */
+
+        for (i = 0; i < 8; i++)
+        {
+            slk[i].start_col = col;
+            col += label_length;
+
+            if (i == 3)
+                col = COLS - (label_length * 4) + 1; 
+        }
+
+        break;
+
+    case 2:     /* 4 4 4 F-Key layout */
+    case 3:     /* 4 4 4 F-Key layout with index */
+
+        for (i = 0; i < 4; i++)
+        {
+            slk[i].start_col = col;
+            col += label_length;
+        }
+
+        center = COLS/2;
+
+        slk[4].start_col = center - (label_length * 2) + 1;
+        slk[5].start_col = center - label_length - 1;
+        slk[6].start_col = center + 1;
+        slk[7].start_col = center + label_length + 1;
+
+        col = COLS - (label_length * 4) + 1;
+
+        for (i = 8; i < 12; i++)
+        {
+            slk[i].start_col = col;
+            col += label_length;
+        }
+
+        break;
+
+    default:    /* 5 - 5 F-Key layout */
+
+        for (i = 0; i < 10; i++)
+        {
+            slk[i].start_col = col;
+            col += label_length;
+
+            if (i == 4)
+                col = COLS - (label_length * 5) + 1;
+        }
+    }
+
+    --label_length;
+
+    /* make sure labels are all in window */
+
+    _redraw();
+}
+
+void PDC_slk_initialize(void)
+{
+    if (slk)
+    {
+        if (label_fmt == 3)
+        {
+            SP->slklines = 2;
+            label_line = 1;
+        }
+        else
+            SP->slklines = 1;
+
+        if (!SP->slk_winptr)
+        {
+            if ( !(SP->slk_winptr = newwin(SP->slklines, COLS, 
+                                           LINES - SP->slklines, 0)) )
+                return;
+
+            wattrset(SP->slk_winptr, A_REVERSE);
+        }
+
+        _slk_calc();
+
+        /* if we have an index line, display it now */
+
+        if (label_fmt == 3)
+        {
+            chtype save_attr;
+            int i;
+
+            save_attr = SP->slk_winptr->_attrs;
+            wattrset(SP->slk_winptr, A_NORMAL);
+            wmove(SP->slk_winptr, 0, 0);
+            whline(SP->slk_winptr, 0, COLS);
+
+            for (i = 0; i < labels; i++)
+                mvwprintw(SP->slk_winptr, 0, slk[i].start_col, "F%d", i + 1);
+
+            SP->slk_winptr->_attrs = save_attr;
+        }
+
+        touchwin(SP->slk_winptr);
+    }
+}
+
+void PDC_slk_free(void)
+{
+    if (slk)
+    {
+        if (SP->slk_winptr)
+        {
+            delwin(SP->slk_winptr);
+            SP->slk_winptr = (WINDOW *)NULL;
+        }
+
+        free(slk);
+        slk = (struct SLK *)NULL;
+
+        label_length = 0;
+        labels = 0;
+        label_fmt = 0;
+        label_line = 0;
+        hidden = FALSE;
+    }
+}
+
+int PDC_mouse_in_slk(int y, int x)
+{
+    int i;
+
+    PDC_LOG(("PDC_mouse_in_slk() - called: y->%d x->%d\n", y, x));
+
+    /* If the line on which the mouse was clicked is NOT the last line 
+       of the screen, we are not interested in it. */
+
+    if (!slk || !SP->slk_winptr || (y != SP->slk_winptr->_begy + label_line))
+        return 0;
+
+    for (i = 0; i < labels; i++)
+        if (x >= slk[i].start_col && x < (slk[i].start_col + label_length))
+            return i + 1;
+
+    return 0;
+}
+
+#ifdef PDC_WIDE
+int slk_wset(int labnum, const wchar_t *label, int justify)
+{
+    PDC_LOG(("slk_wset() - called\n"));
+
+    if (labnum < 1 || labnum > labels || justify < 0 || justify > 2)
+        return ERR;
+
+    labnum--;
+
+    if (!label || !(*label)) 
+    {
+        /* Clear the label */
+
+        *slk[labnum].label = 0;
+        slk[labnum].format = 0;
+        slk[labnum].len = 0;
+    }
+    else
+    {
+        int i, j = 0;
+
+        /* Skip leading spaces */
+
+        while (label[j] == L' ')
+            j++;
+
+        /* Copy it */
+
+        for (i = 0; i < label_length; i++)
+        {
+            chtype ch = label[i + j];
+
+            slk[labnum].label[i] = ch;
+
+            if (!ch)
+                break;
+        }
+
+        /* Drop trailing spaces */
+
+        while ((i + j) && (label[i + j - 1] == L' '))
+            i--;
+
+        slk[labnum].label[i] = 0;
+        slk[labnum].format = justify;
+        slk[labnum].len = i;
+    }
+
+    _drawone(labnum);
+
+    return OK;
+}
+
+wchar_t *slk_wlabel(int labnum)
+{
+    static wchar_t temp[33];
+    chtype *p;
+    int i;
+
+    PDC_LOG(("slk_wlabel() - called\n"));
+
+    if (labnum < 1 || labnum > labels)
+        return (wchar_t *)0;
+
+    for (i = 0, p = slk[labnum - 1].label; *p; i++)
+        temp[i] = *p++;
+
+    temp[i] = '\0';
+
+    return temp;
+}
+#endif
diff --git a/apps/lib/curses/pdcurses/pdcurses/term.h b/apps/lib/curses/pdcurses/pdcurses/term.h
new file mode 100644
index 0000000..ce6bc4f
--- /dev/null
+++ b/apps/lib/curses/pdcurses/pdcurses/term.h
@@ -0,0 +1,57 @@
+/* Public Domain Curses */
+
+/* $Id: term.h,v 1.16 2008/07/13 16:08:16 wmcbrine Exp $ */
+
+/* PDCurses doesn't operate with terminfo, but we need these functions for 
+   compatibility, to allow some things (notably, interface libraries for 
+   other languages) to be compiled. Anyone who tries to actually _use_ 
+   them will be disappointed, since they only return ERR. */
+
+#ifndef __PDCURSES_TERM_H__
+#define __PDCURSES_TERM_H__ 1
+
+#include <curses.h>
+
+#if defined(__cplusplus) || defined(__cplusplus__) || defined(__CPLUSPLUS)
+extern "C"
+{
+#endif
+
+typedef struct
+{
+    const char *_termname;
+} TERMINAL;
+
+#ifdef PDC_DLL_BUILD
+# ifndef CURSES_LIBRARY
+__declspec(dllimport)  TERMINAL *cur_term;
+# else
+__declspec(dllexport) extern TERMINAL *cur_term;
+# endif
+#else
+extern TERMINAL *cur_term;
+#endif
+
+int     del_curterm(TERMINAL *);
+int     putp(const char *);
+int     restartterm(const char *, int, int *);
+TERMINAL *set_curterm(TERMINAL *);
+int     setterm(const char *);
+int     setupterm(const char *, int, int *);
+int     tgetent(char *, const char *);
+int     tgetflag(const char *);
+int     tgetnum(const char *);
+char   *tgetstr(const char *, char **);
+char   *tgoto(const char *, int, int);
+int     tigetflag(const char *);
+int     tigetnum(const char *);
+char   *tigetstr(const char *);
+char   *tparm(const char *, long, long, long, long, long, 
+              long, long, long, long);
+int     tputs(const char *, int, int (*)(int));
+
+#if defined(__cplusplus) || defined(__cplusplus__) || defined(__CPLUSPLUS)
+}
+#endif
+
+#endif /* __PDCURSES_TERM_H__ */
diff --git a/apps/lib/curses/pdcurses/pdcurses/termattr.c b/apps/lib/curses/pdcurses/pdcurses/termattr.c
new file mode 100644
index 0000000..06e9ee8
--- /dev/null
+++ b/apps/lib/curses/pdcurses/pdcurses/termattr.c
@@ -0,0 +1,176 @@
+/* Public Domain Curses */
+
+#include <curspriv.h>
+
+RCSID("$Id: termattr.c,v 1.54 2008/07/13 16:08:18 wmcbrine Exp $")
+
+/*man-start**************************************************************
+
+  Name:                                                         termattr
+
+  Synopsis:
+        int baudrate(void);
+        char erasechar(void);
+        bool has_ic(void);
+        bool has_il(void);
+        char killchar(void);
+        char *longname(void);
+        chtype termattrs(void);
+        attr_t term_attrs(void);
+        char *termname(void);
+
+        int erasewchar(wchar_t *ch);
+        int killwchar(wchar_t *ch);
+
+        char wordchar(void);
+
+  Description:
+        baudrate() is supposed to return the output speed of the 
+        terminal. In PDCurses, it simply returns INT_MAX.
+
+        has_ic and has_il() return TRUE. These functions have meaning in 
+        some other implementations of curses.
+
+        erasechar() and killchar() return ^H and ^U, respectively -- the 
+        ERASE and KILL characters. In other curses implementations, 
+        these may vary by terminal type. erasewchar() and killwchar() 
+        are the wide-character versions; they take a pointer to a 
+        location in which to store the character, and return OK or ERR.
+
+        longname() returns a pointer to a static area containing a
+        verbose description of the current terminal. The maximum length
+        of the string is 128 characters.  It is defined only after the
+        call to initscr() or newterm().
+
+        termname() returns a pointer to a static area containing a
+        short description of the current terminal (14 characters).
+
+        termattrs() returns a logical OR of all video attributes
+        supported by the terminal.
+
+        wordchar() is a PDCurses extension of the concept behind the 
+        functions erasechar() and killchar(), returning the "delete 
+        word" character, ^W.
+
+  Portability                                X/Open    BSD    SYS V
+        baudrate                                Y       Y       Y
+        erasechar                               Y       Y       Y
+        has_ic                                  Y       Y       Y
+        has_il                                  Y       Y       Y
+        killchar                                Y       Y       Y
+        longname                                Y       Y       Y
+        termattrs                               Y       Y       Y
+        termname                                Y       Y       Y
+        erasewchar                              Y
+        killwchar                               Y
+        term_attrs                              Y
+        wordchar                                -       -       -
+
+**man-end****************************************************************/
+
+#include <string.h>
+#include <limits.h>
+
+int baudrate(void)
+{
+    PDC_LOG(("baudrate() - called\n"));
+
+    return INT_MAX;
+}
+
+char erasechar(void)
+{
+    PDC_LOG(("erasechar() - called\n"));
+
+    return _ECHAR;      /* character delete char (^H) */
+}
+
+bool has_ic(void)
+{
+    PDC_LOG(("has_ic() - called\n"));
+
+    return TRUE;
+}
+
+bool has_il(void)
+{
+    PDC_LOG(("has_il() - called\n"));
+
+    return TRUE;
+}
+
+char killchar(void)
+{
+    PDC_LOG(("killchar() - called\n"));
+
+    return _DLCHAR;     /* line delete char (^U) */
+}
+
+char *longname(void)
+{
+    PDC_LOG(("longname() - called\n"));
+
+    return ttytype + 9; /* skip "pdcurses|" */
+}
+
+chtype termattrs(void)
+{
+    chtype temp = A_BLINK | A_BOLD | A_INVIS | A_REVERSE | A_UNDERLINE;
+
+    /* note: blink is bold background on some platforms */
+
+    PDC_LOG(("termattrs() - called\n"));
+
+    if (!SP->mono)
+        temp |= A_COLOR;
+
+    return temp;
+}
+
+attr_t term_attrs(void)
+{
+    PDC_LOG(("term_attrs() - called\n"));
+
+    return WA_BLINK | WA_BOLD | WA_INVIS | WA_LEFT | WA_REVERSE | 
+           WA_RIGHT | WA_UNDERLINE;
+}
+
+char *termname(void)
+{
+    PDC_LOG(("termname() - called\n"));
+
+    return "pdcurses";
+}
+
+char wordchar(void)
+{
+    PDC_LOG(("wordchar() - called\n"));
+
+    return _DWCHAR;         /* word delete char */
+}
+
+#ifdef PDC_WIDE
+int erasewchar(wchar_t *ch)
+{
+    PDC_LOG(("erasewchar() - called\n"));
+
+    if (!ch)
+        return ERR;
+
+    *ch = (wchar_t)_ECHAR;
+
+    return OK;
+}
+
+int killwchar(wchar_t *ch)
+{
+    PDC_LOG(("killwchar() - called\n"));
+
+    if (!ch)
+        return ERR;
+
+    *ch = (wchar_t)_DLCHAR;
+
+    return OK;
+}
+#endif
diff --git a/apps/lib/curses/pdcurses/pdcurses/terminfo.c b/apps/lib/curses/pdcurses/pdcurses/terminfo.c
new file mode 100644
index 0000000..c099ada
--- /dev/null
+++ b/apps/lib/curses/pdcurses/pdcurses/terminfo.c
@@ -0,0 +1,215 @@
+/* Public Domain Curses */
+
+#include <curspriv.h>
+
+RCSID("$Id: terminfo.c,v 1.37 2008/07/21 12:29:20 wmcbrine Exp $")
+
+/*man-start**************************************************************
+
+  Name:                                                         terminfo
+
+  Synopsis:
+        int mvcur(int oldrow, int oldcol, int newrow, int newcol);
+        int vidattr(chtype attr);
+        int vid_attr(attr_t attr, short color_pair, void *opt);
+        int vidputs(chtype attr, int (*putfunc)(int));
+        int vid_puts(attr_t attr, short color_pair, void *opt,
+                int (*putfunc)(int));
+
+        int del_curterm(TERMINAL *);
+        int putp(const char *);
+        int restartterm(const char *, int, int *);
+        TERMINAL *set_curterm(TERMINAL *);
+        int setterm(const char *term);
+        int setupterm(const char *, int, int *);
+        int tgetent(char *, const char *);
+        int tgetflag(const char *);
+        int tgetnum(const char *);
+        char *tgetstr(const char *, char **);
+        char *tgoto(const char *, int, int);
+        int tigetflag(const char *);
+        int tigetnum(const char *);
+        char *tigetstr(const char *);
+        char *tparm(const char *,long, long, long, long, long, long,
+                long, long, long);
+        int tputs(const char *, int, int (*)(int));
+
+  Description:
+        mvcur() lets you move the physical cursor without updating any 
+        window cursor positions. It returns OK or ERR.
+
+        The rest of these functions are currently implemented as stubs, 
+        returning the appropriate errors and doing nothing else.
+
+  Portability                                X/Open    BSD    SYS V
+        mvcur                                   Y       Y       Y
+
+**man-end****************************************************************/
+
+#include <term.h>
+
+TERMINAL *cur_term = NULL;
+
+int mvcur(int oldrow, int oldcol, int newrow, int newcol)
+{
+    PDC_LOG(("mvcur() - called: oldrow %d oldcol %d newrow %d newcol %d\n",
+             oldrow, oldcol, newrow, newcol));
+
+    if ((newrow >= LINES) || (newcol >= COLS) || (newrow < 0) || (newcol < 0))
+        return ERR;
+
+    PDC_gotoyx(newrow, newcol);
+    SP->cursrow = newrow;
+    SP->curscol = newcol;
+
+    return OK;
+}
+
+int vidattr(chtype attr)
+{
+    PDC_LOG(("vidattr() - called: attr %d\n", attr));
+
+    return ERR;
+}
+
+int vid_attr(attr_t attr, short color_pair, void *opt)
+{
+    PDC_LOG(("vid_attr() - called\n"));
+
+    return ERR;
+}
+
+int vidputs(chtype attr, int (*putfunc)(int))
+{
+    PDC_LOG(("vidputs() - called: attr %d\n", attr));
+
+    return ERR;
+}
+
+int vid_puts(attr_t attr, short color_pair, void *opt, int (*putfunc)(int))
+{
+    PDC_LOG(("vid_puts() - called\n"));
+
+    return ERR;
+}
+
+int del_curterm(TERMINAL *oterm)
+{
+    PDC_LOG(("del_curterm() - called\n"));
+
+    return ERR;
+}
+
+int putp(const char *str)
+{
+    PDC_LOG(("putp() - called: str %s\n", str));
+
+    return ERR;
+}
+
+int restartterm(const char *term, int filedes, int *errret)
+{
+    PDC_LOG(("restartterm() - called\n"));
+
+    if (errret)
+        *errret = -1;
+
+    return ERR;
+}
+
+TERMINAL *set_curterm(TERMINAL *nterm)
+{
+    PDC_LOG(("set_curterm() - called\n"));
+
+    return (TERMINAL *)NULL;
+}
+
+int setterm(const char *term)
+{
+    PDC_LOG(("setterm() - called\n"));
+
+    return ERR;
+}
+
+int setupterm(const char *term, int filedes, int *errret)
+{
+    PDC_LOG(("setupterm() - called\n"));
+
+    if (errret)
+        *errret = -1;
+    else
+        fprintf(stderr, "There is no terminfo database\n");
+
+    return ERR;
+}
+
+int tgetent(char *bp, const char *name)
+{
+    PDC_LOG(("tgetent() - called: name %s\n", name));
+
+    return ERR;
+}
+
+int tgetflag(const char *id)
+{
+    PDC_LOG(("tgetflag() - called: id %s\n", id));
+
+    return ERR;
+}
+
+int tgetnum(const char *id)
+{
+    PDC_LOG(("tgetnum() - called: id %s\n", id));
+
+    return ERR;
+}
+
+char *tgetstr(const char *id, char **area)
+{
+    PDC_LOG(("tgetstr() - called: id %s\n", id));
+
+    return (char *)NULL;
+}
+
+char *tgoto(const char *cap, int col, int row)
+{
+    PDC_LOG(("tgoto() - called\n"));
+
+    return (char *)NULL;
+}
+
+int tigetflag(const char *capname)
+{
+    PDC_LOG(("tigetflag() - called: capname %s\n", capname));
+
+    return -1;
+}
+
+int tigetnum(const char *capname)
+{
+    PDC_LOG(("tigetnum() - called: capname %s\n", capname));
+
+    return -2;
+}
+
+char *tigetstr(const char *capname)
+{
+    PDC_LOG(("tigetstr() - called: capname %s\n", capname));
+
+    return (char *)(-1);
+}
+
+char *tparm(const char *cap, long p1, long p2, long p3, long p4,
+            long p5, long p6, long p7, long p8, long p9)
+{
+    PDC_LOG(("tparm() - called: cap %s\n", cap));
+
+    return (char *)NULL;
+}
+
+int tputs(const char *str, int affcnt, int (*putfunc)(int))
+{
+    PDC_LOG(("tputs() - called\n"));
+
+    return ERR;
+}
diff --git a/apps/lib/curses/pdcurses/pdcurses/touch.c b/apps/lib/curses/pdcurses/pdcurses/touch.c
new file mode 100644
index 0000000..9355aa1
--- /dev/null
+++ b/apps/lib/curses/pdcurses/pdcurses/touch.c
@@ -0,0 +1,160 @@
+/* Public Domain Curses */
+
+#include <curspriv.h>
+
+RCSID("$Id: touch.c,v 1.29 2008/07/13 16:08:18 wmcbrine Exp $")
+
+/*man-start**************************************************************
+
+  Name:                                                         touch
+
+  Synopsis:
+        int touchwin(WINDOW *win);
+        int touchline(WINDOW *win, int start, int count);
+        int untouchwin(WINDOW *win);
+        int wtouchln(WINDOW *win, int y, int n, int changed);
+        bool is_linetouched(WINDOW *win, int line);
+        bool is_wintouched(WINDOW *win);
+
+  Description:
+        touchwin() and touchline() throw away all information about 
+        which parts of the window have been touched, pretending that the 
+        entire window has been drawn on.  This is sometimes necessary 
+        when using overlapping windows, since a change to one window 
+        will affect the other window, but the records of which lines 
+        have been changed in the other window will not reflect the 
+        change.
+
+        untouchwin() marks all lines in the window as unchanged since 
+        the last call to wrefresh().
+
+        wtouchln() makes n lines in the window, starting at line y, look 
+        as if they have (changed == 1) or have not (changed == 0) been 
+        changed since the last call to wrefresh().
+
+        is_linetouched() returns TRUE if the specified line in the 
+        specified window has been changed since the last call to 
+        wrefresh().
+
+        is_wintouched() returns TRUE if the specified window 
+        has been changed since the last call to wrefresh().
+
+  Return Value:
+        All functions return OK on success and ERR on error except
+        is_wintouched() and is_linetouched().
+
+  Portability                                X/Open    BSD    SYS V
+        touchwin                                Y       Y       Y
+        touchline                               Y       -      3.0
+        untouchwin                              Y       -      4.0
+        wtouchln                                Y       Y       Y
+        is_linetouched                          Y       -      4.0
+        is_wintouched                           Y       -      4.0
+
+**man-end****************************************************************/
+
+int touchwin(WINDOW *win)
+{
+    int i;
+
+    PDC_LOG(("touchwin() - called: Win=%x\n", win));
+
+    if (!win)
+        return ERR;
+
+    for (i = 0; i < win->_maxy; i++)
+    {
+        win->_firstch[i] = 0;
+        win->_lastch[i] = win->_maxx - 1;
+    }
+
+    return OK;
+}
+
+int touchline(WINDOW *win, int start, int count)
+{
+    int i;
+
+    PDC_LOG(("touchline() - called: win=%p start %d count %d\n",
+             win, start, count));
+
+    if (!win || start > win->_maxy || start + count > win->_maxy)
+        return ERR;
+
+    for (i = start; i < start + count; i++)
+    {
+        win->_firstch[i] = 0;
+        win->_lastch[i] = win->_maxx - 1;
+    }
+
+    return OK;
+}
+
+int untouchwin(WINDOW *win)
+{
+    int i;
+
+    PDC_LOG(("untouchwin() - called: win=%p", win));
+
+    if (!win)
+        return ERR;
+
+    for (i = 0; i < win->_maxy; i++)
+    {
+        win->_firstch[i] = _NO_CHANGE;
+        win->_lastch[i] = _NO_CHANGE;
+    }
+
+    return OK;
+}
+
+int wtouchln(WINDOW *win, int y, int n, int changed)
+{
+    int i;
+
+    PDC_LOG(("wtouchln() - called: win=%p y=%d n=%d changed=%d\n",
+             win, y, n, changed));
+
+    if (!win || y > win->_maxy || y + n > win->_maxy)
+        return ERR;
+
+    for (i = y; i < y + n; i++)
+    {
+        if (changed)
+        {
+            win->_firstch[i] = 0;
+            win->_lastch[i] = win->_maxx - 1;
+        }
+        else 
+        {
+            win->_firstch[i] = _NO_CHANGE;
+            win->_lastch[i] = _NO_CHANGE;
+        }
+    }
+
+    return OK;
+}
+
+bool is_linetouched(WINDOW *win, int line)
+{
+    PDC_LOG(("is_linetouched() - called: win=%p line=%d\n", win, line));
+
+    if (!win || line > win->_maxy || line < 0)
+        return FALSE;
+
+    return (win->_firstch[line] != _NO_CHANGE) ? TRUE : FALSE;
+}
+
+bool is_wintouched(WINDOW *win)
+{
+    int i;
+
+    PDC_LOG(("is_wintouched() - called: win=%p\n", win));
+
+    if (win)
+        for (i = 0; i < win->_maxy; i++)
+            if (win->_firstch[i] != _NO_CHANGE)
+                return TRUE;
+
+    return FALSE;
+}
diff --git a/apps/lib/curses/pdcurses/pdcurses/util.c b/apps/lib/curses/pdcurses/pdcurses/util.c
new file mode 100644
index 0000000..f0673fc
--- /dev/null
+++ b/apps/lib/curses/pdcurses/pdcurses/util.c
@@ -0,0 +1,309 @@
+/* Public Domain Curses */
+
+#include <curspriv.h>
+
+RCSID("$Id: util.c,v 1.71 2008/07/13 16:08:18 wmcbrine Exp $")
+
+/*man-start**************************************************************
+
+  Name:                                                         util
+
+  Synopsis:
+        char *unctrl(chtype c);
+        void filter(void);
+        void use_env(bool x);
+        int delay_output(int ms);
+
+        int getcchar(const cchar_t *wcval, wchar_t *wch, attr_t *attrs,
+                     short *color_pair, void *opts);
+        int setcchar(cchar_t *wcval, const wchar_t *wch, const attr_t attrs,
+                     short color_pair, const void *opts);
+        wchar_t *wunctrl(cchar_t *wc);
+
+        int PDC_mbtowc(wchar_t *pwc, const char *s, size_t n);
+        size_t PDC_mbstowcs(wchar_t *dest, const char *src, size_t n);
+        size_t PDC_wcstombs(char *dest, const wchar_t *src, size_t n);
+
+  Description:
+        unctrl() expands the text portion of the chtype c into a 
+        printable string. Control characters are changed to the "^X" 
+        notation; others are passed through. wunctrl() is the wide- 
+        character version of the function.
+
+        filter() and use_env() are no-ops in PDCurses.
+
+        delay_output() inserts an ms millisecond pause in output.
+
+        getcchar() works in two modes: When wch is not NULL, it reads 
+        the cchar_t pointed to by wcval and stores the attributes in 
+        attrs, the color pair in color_pair, and the text in the
+        wide-character string wch. When wch is NULL, getcchar() merely 
+        returns the number of wide characters in wcval. In either mode, 
+        the opts argument is unused.
+
+        setcchar constructs a cchar_t at wcval from the wide-character 
+        text at wch, the attributes in attr and the color pair in 
+        color_pair. The opts argument is unused.
+
+        Currently, the length returned by getcchar() is always 1 or 0.
+        Similarly, setcchar() will only take the first wide character
+        from wch, and ignore any others that it "should" take (i.e.,
+        combining characters). Nor will it correctly handle any 
+        character outside the basic multilingual plane (UCS-2).
+
+  Return Value:
+        unctrl() and wunctrl() return NULL on failure. delay_output() 
+        always returns OK.
+
+        getcchar() returns the number of wide characters wcval points to 
+        when wch is NULL; when it's not, getcchar() returns OK or ERR. 
+
+        setcchar() returns OK or ERR.
+
+  Portability                                X/Open    BSD    SYS V
+        unctrl                                  Y       Y       Y
+        filter                                  Y       -      3.0
+        use_env                                 Y       -      4.0
+        delay_output                            Y       Y       Y
+        getcchar                                Y
+        setcchar                                Y
+        wunctrl                                 Y
+        PDC_mbtowc                              -       -       -
+        PDC_mbstowcs                            -       -       -
+        PDC_wcstombs                            -       -       -
+
+**man-end****************************************************************/
+
+#ifdef PDC_WIDE
+# ifdef PDC_FORCE_UTF8
+#  include <string.h>
+# else
+#  include <stdlib.h>
+# endif
+#endif
+
+char *unctrl(chtype c)
+{
+    static char strbuf[3] = {0, 0, 0};
+
+    chtype ic;
+
+    PDC_LOG(("unctrl() - called\n"));
+
+    ic = c & A_CHARTEXT;
+
+    if (ic >= 0x20 && ic != 0x7f)       /* normal characters */
+    {
+        strbuf[0] = (char)ic;
+        strbuf[1] = '\0';
+        return strbuf;
+    }
+
+    strbuf[0] = '^';            /* '^' prefix */
+
+    if (ic == 0x7f)             /* 0x7f == DEL */
+        strbuf[1] = '?';
+    else                    /* other control */
+        strbuf[1] = (char)(ic + '@');
+
+    return strbuf;
+}
+
+void filter(void)
+{
+    PDC_LOG(("filter() - called\n"));
+}
+
+void use_env(bool x)
+{
+    PDC_LOG(("use_env() - called: x %d\n", x));
+}
+
+int delay_output(int ms)
+{
+    PDC_LOG(("delay_output() - called: ms %d\n", ms));
+
+    return napms(ms);
+}
+
+#ifdef PDC_WIDE
+int getcchar(const cchar_t *wcval, wchar_t *wch, attr_t *attrs,
+             short *color_pair, void *opts)
+{
+    if (!wcval)
+        return ERR;
+
+    if (wch)
+    {
+        if (!attrs || !color_pair)
+            return ERR;
+
+        *wch = (*wcval & A_CHARTEXT);
+        *attrs = (*wcval & (A_ATTRIBUTES & ~A_COLOR));
+        *color_pair = PAIR_NUMBER(*wcval & A_COLOR);
+
+        if (*wch)
+            *++wch = L'\0';
+
+        return OK;
+    }
+    else
+        return ((*wcval & A_CHARTEXT) != L'\0');
+}
+
+int setcchar(cchar_t *wcval, const wchar_t *wch, const attr_t attrs,
+             short color_pair, const void *opts)
+{
+    if (!wcval || !wch)
+        return ERR;
+
+    *wcval = *wch | attrs | COLOR_PAIR(color_pair);
+
+    return OK;
+}
+
+wchar_t *wunctrl(cchar_t *wc)
+{
+    static wchar_t strbuf[3] = {0, 0, 0};
+
+    cchar_t ic;
+
+    PDC_LOG(("wunctrl() - called\n"));
+
+    ic = *wc & A_CHARTEXT;
+
+    if (ic >= 0x20 && ic != 0x7f)       /* normal characters */
+    {
+        strbuf[0] = (wchar_t)ic;
+        strbuf[1] = L'\0';
+        return strbuf;
+    }
+
+    strbuf[0] = '^';            /* '^' prefix */
+
+    if (ic == 0x7f)             /* 0x7f == DEL */
+        strbuf[1] = '?';
+    else                    /* other control */
+        strbuf[1] = (wchar_t)(ic + '@');
+
+    return strbuf;
+}
+
+int PDC_mbtowc(wchar_t *pwc, const char *s, size_t n)
+{
+# ifdef PDC_FORCE_UTF8
+    wchar_t key;
+    int i = -1;
+    const unsigned char *string;
+
+    if (!s || (n < 1))
+        return -1;
+
+    if (!*s)
+        return 0;
+
+    string = (const unsigned char *)s;
+
+    key = string[0];
+
+    /* Simplistic UTF-8 decoder -- only does the BMP, minimal validation */
+
+    if (key & 0x80)
+    {
+        if ((key & 0xe0) == 0xc0)
+        {
+            if (1 < n)
+            {
+                key = ((key & 0x1f) << 6) | (string[1] & 0x3f);
+                i = 2;
+            }
+        }
+        else if ((key & 0xe0) == 0xe0)
+        {
+            if (2 < n)
+            {
+                key = ((key & 0x0f) << 12) | ((string[1] & 0x3f) << 6) |
+                      (string[2] & 0x3f);
+                i = 3;
+            }
+        }
+    }
+    else
+        i = 1;
+
+    if (i)
+        *pwc = key;
+
+    return i;
+# else
+    return mbtowc(pwc, s, n);
+# endif
+}
+
+size_t PDC_mbstowcs(wchar_t *dest, const char *src, size_t n)
+{
+# ifdef PDC_FORCE_UTF8
+    size_t i = 0, len;
+
+    if (!src || !dest)
+        return 0;
+
+    len = strlen(src);
+
+    while (*src && i < n)
+    {
+        int retval = PDC_mbtowc(dest + i, src, len);
+
+        if (retval < 1)
+            return -1;
+
+        src += retval;
+        len -= retval;
+        i++;
+    }
+# else
+    size_t i = mbstowcs(dest, src, n);
+# endif
+    dest[i] = 0;
+    return i;
+}
+
+size_t PDC_wcstombs(char *dest, const wchar_t *src, size_t n)
+{
+# ifdef PDC_FORCE_UTF8
+    size_t i = 0;
+
+    if (!src || !dest)
+        return 0;
+
+    while (*src && i < n)
+    {
+        chtype code = *src++;
+
+        if (code < 0x80)
+        {
+            dest[i] = code;
+            i++;
+        }
+        else
+            if (code < 0x800)
+            {
+                dest[i] = ((code & 0x07c0) >> 6) | 0xc0;
+                dest[i + 1] = (code & 0x003f) | 0x80;
+                i += 2;
+            }
+            else
+            {
+                dest[i] = ((code & 0xf000) >> 12) | 0xe0;
+                dest[i + 1] = ((code & 0x0fc0) >> 6) | 0x80;
+                dest[i + 2] = (code & 0x003f) | 0x80;
+                i += 3;
+            }
+    }
+# else
+    size_t i = wcstombs(dest, src, n);
+# endif
+    dest[i] = '\0';
+    return i;
+}
+#endif
diff --git a/apps/lib/curses/pdcurses/pdcurses/window.c b/apps/lib/curses/pdcurses/pdcurses/window.c
new file mode 100644
index 0000000..dbfd584
--- /dev/null
+++ b/apps/lib/curses/pdcurses/pdcurses/window.c
@@ -0,0 +1,562 @@
+/* Public Domain Curses */
+
+#include <curspriv.h>
+
+RCSID("$Id: window.c,v 1.62 2008/07/13 16:08:18 wmcbrine Exp $")
+
+/*man-start**************************************************************
+
+  Name:                                                         window
+
+  Synopsis:
+        WINDOW *newwin(int nlines, int ncols, int begy, int begx);
+        WINDOW *derwin(WINDOW* orig, int nlines, int ncols,
+                int begy, int begx);
+        WINDOW *subwin(WINDOW* orig, int nlines, int ncols,
+                int begy, int begx);
+        WINDOW *dupwin(WINDOW *win);
+        int delwin(WINDOW *win);
+        int mvwin(WINDOW *win, int y, int x);
+        int mvderwin(WINDOW *win, int pary, int parx);
+        int syncok(WINDOW *win, bool bf);
+        void wsyncup(WINDOW *win);
+        void wcursyncup(WINDOW *win);
+        void wsyncdown(WINDOW *win);
+
+        WINDOW *resize_window(WINDOW *win, int nlines, int ncols);
+        int wresize(WINDOW *win, int nlines, int ncols);
+        WINDOW *PDC_makelines(WINDOW *win);
+        WINDOW *PDC_makenew(int nlines, int ncols, int begy, int begx);
+        void PDC_sync(WINDOW *win);
+
+  Description:
+        newwin() creates a new window with the given number of lines,
+        nlines and columns, ncols. The upper left corner of the window
+        is at line begy, column begx. If nlines is zero, it defaults to
+        LINES - begy; ncols to COLS - begx. Create a new full-screen
+        window by calling newwin(0, 0, 0, 0).
+
+        delwin() deletes the named window, freeing all associated 
+        memory. In the case of overlapping windows, subwindows should be 
+        deleted before the main window.
+
+        mvwin() moves the window so that the upper left-hand corner is
+        at position (y,x). If the move would cause the window to be off
+        the screen, it is an error and the window is not moved. Moving
+        subwindows is allowed.
+
+        subwin() creates a new subwindow within a window.  The
+        dimensions of the subwindow are nlines lines and ncols columns.
+        The subwindow is at position (begy, begx) on the screen.  This
+        position is relative to the screen, and not to the window orig.
+        Changes made to either window will affect both.  When using this
+        routine, you will often need to call touchwin() before calling
+        wrefresh().
+
+        derwin() is the same as subwin(), except that begy and begx are
+        relative to the origin of the window orig rather than the
+        screen.  There is no difference between subwindows and derived
+        windows.
+
+        mvderwin() moves a derived window (or subwindow) inside its
+        parent window.  The screen-relative parameters of the window are
+        not changed.  This routine is used to display different parts of
+        the parent window at the same physical position on the screen.
+
+        dupwin() creates an exact duplicate of the window win.
+
+        wsyncup() causes a touchwin() of all of the window's parents.
+
+        If wsyncok() is called with a second argument of TRUE, this
+        causes a wsyncup() to be called every time the window is
+        changed.
+
+        wcursyncup() causes the current cursor position of all of a
+        window's ancestors to reflect the current cursor position of the
+        current window.
+
+        wsyncdown() causes a touchwin() of the current window if any of
+        its parent's windows have been touched.
+
+        resize_window() allows the user to resize an existing window. It 
+        returns the pointer to the new window, or NULL on failure.
+
+        wresize() is an ncurses-compatible wrapper for resize_window().
+        Note that, unlike ncurses, it will NOT process any subwindows of
+        the window. (However, you still can call it _on_ subwindows.) It 
+        returns OK or ERR.
+
+        PDC_makenew() allocates all data for a new WINDOW * except the
+        actual lines themselves. If it's unable to allocate memory for
+        the window structure, it will free all allocated memory and
+        return a NULL pointer.
+
+        PDC_makelines() allocates the memory for the lines.
+
+        PDC_sync() handles wrefresh() and wsyncup() calls when a window
+        is changed.
+
+  Return Value:
+        newwin(), subwin(), derwin() and dupwin() return a pointer
+        to the new window, or NULL on failure. delwin(), mvwin(),
+        mvderwin() and syncok() return OK or ERR. wsyncup(),
+        wcursyncup() and wsyncdown() return nothing.
+
+  Errors:
+        It is an error to call resize_window() before calling initscr().
+        Also, an error will be generated if we fail to create a newly
+        sized replacement window for curscr, or stdscr. This could
+        happen when increasing the window size. NOTE: If this happens,
+        the previously successfully allocated windows are left alone;
+        i.e., the resize is NOT cancelled for those windows.
+
+  Portability                                X/Open    BSD    SYS V
+        newwin                                  Y       Y       Y
+        delwin                                  Y       Y       Y
+        mvwin                                   Y       Y       Y
+        subwin                                  Y       Y       Y
+        derwin                                  Y       -       Y
+        mvderwin                                Y       -       Y
+        dupwin                                  Y       -      4.0
+        wsyncup                                 Y       -      4.0
+        syncok                                  Y       -      4.0
+        wcursyncup                              Y       -      4.0
+        wsyncdown                               Y       -      4.0
+        resize_window                           -       -       -
+        wresize                                 -       -       -
+        PDC_makelines                           -       -       -
+        PDC_makenew                             -       -       -
+        PDC_sync                                -       -       -
+
+**man-end****************************************************************/
+
+#include <stdlib.h>
+
+WINDOW *PDC_makenew(int nlines, int ncols, int begy, int begx)
+{
+    WINDOW *win;
+
+    PDC_LOG(("PDC_makenew() - called: lines %d cols %d begy %d begx %d\n",
+             nlines, ncols, begy, begx));
+
+    /* allocate the window structure itself */
+
+    if ((win = calloc(1, sizeof(WINDOW))) == (WINDOW *)NULL)
+        return win;
+
+    /* allocate the line pointer array */
+
+    if ((win->_y = malloc(nlines * sizeof(chtype *))) == NULL)
+    {
+        free(win);
+        return (WINDOW *)NULL;
+    }
+
+    /* allocate the minchng and maxchng arrays */
+
+    if ((win->_firstch = malloc(nlines * sizeof(int))) == NULL)
+    {
+        free(win->_y);
+        free(win);
+        return (WINDOW *)NULL;
+    }
+
+    if ((win->_lastch = malloc(nlines * sizeof(int))) == NULL)
+    {
+        free(win->_firstch);
+        free(win->_y);
+        free(win);
+        return (WINDOW *)NULL;
+    }
+
+    /* initialize window variables */
+
+    win->_maxy = nlines;  /* real max screen size */
+    win->_maxx = ncols;   /* real max screen size */
+    win->_begy = begy;
+    win->_begx = begx;
+    win->_bkgd = ' ';     /* wrs 4/10/93 -- initialize background to blank */
+    win->_clear = (bool) ((nlines == LINES) && (ncols == COLS));
+    win->_bmarg = nlines - 1;
+    win->_parx = win->_pary = -1;
+
+    /* init to say window all changed */
+
+    touchwin(win);
+
+    return win;
+}
+
+WINDOW *PDC_makelines(WINDOW *win)
+{
+    int i, j, nlines, ncols;
+
+    PDC_LOG(("PDC_makelines() - called: lines %d cols %d\n", nlines, ncols));
+
+    if (!win)
+        return (WINDOW *)NULL;
+
+    nlines = win->_maxy;
+    ncols = win->_maxx;
+
+    for (i = 0; i < nlines; i++)
+    {
+        if ((win->_y[i] = malloc(ncols * sizeof(chtype))) == NULL)
+        {
+            /* if error, free all the data */
+
+            for (j = 0; j < i; j++)
+                free(win->_y[j]);
+
+            free(win->_firstch);
+            free(win->_lastch);
+            free(win->_y);
+            free(win);
+
+            return (WINDOW *)NULL;
+        }
+    }
+
+    return win;
+}
+
+void PDC_sync(WINDOW *win)
+{
+    PDC_LOG(("PDC_sync() - called:\n"));
+
+    if (win->_immed)
+        wrefresh(win);
+    if (win->_sync)
+        wsyncup(win);
+}
+
+WINDOW *newwin(int nlines, int ncols, int begy, int begx)
+{
+    WINDOW *win;
+
+    PDC_LOG(("newwin() - called:lines=%d cols=%d begy=%d begx=%d\n",
+             nlines, ncols, begy, begx));
+
+    if (!nlines)
+        nlines = LINES - begy;
+    if (!ncols)
+        ncols  = COLS  - begx;
+
+    if ( (begy + nlines > SP->lines || begx + ncols > SP->cols)
+        || !(win = PDC_makenew(nlines, ncols, begy, begx))
+        || !(win = PDC_makelines(win)) )
+        return (WINDOW *)NULL;
+
+    werase(win);
+
+    return win;
+}
+
+int delwin(WINDOW *win)
+{
+    int i;
+
+    PDC_LOG(("delwin() - called\n"));
+
+    if (!win)
+        return ERR;
+
+    /* subwindows use parents' lines */
+
+    if (!(win->_flags & (_SUBWIN|_SUBPAD)))
+        for (i = 0; i < win->_maxy && win->_y[i]; i++)
+            if (win->_y[i])
+                free(win->_y[i]);
+
+    free(win->_firstch);
+    free(win->_lastch);
+    free(win->_y);
+    free(win);
+
+    return OK;
+}
+
+int mvwin(WINDOW *win, int y, int x)
+{
+    PDC_LOG(("mvwin() - called\n"));
+
+    if (!win || (y + win->_maxy > LINES || y < 0)
+             || (x + win->_maxx > COLS || x < 0))
+        return ERR;
+
+    win->_begy = y;
+    win->_begx = x;
+    touchwin(win);
+
+    return OK;
+}
+
+WINDOW *subwin(WINDOW *orig, int nlines, int ncols, int begy, int begx)
+{
+    WINDOW *win;
+    int i;
+    int j = begy - orig->_begy;
+    int k = begx - orig->_begx;
+
+    PDC_LOG(("subwin() - called: lines %d cols %d begy %d begx %d\n",
+             nlines, ncols, begy, begx));
+
+    /* make sure window fits inside the original one */
+
+    if (!orig || (begy < orig->_begy) || (begx < orig->_begx) ||
+        (begy + nlines) > (orig->_begy + orig->_maxy) ||
+        (begx + ncols) > (orig->_begx + orig->_maxx))
+        return (WINDOW *)NULL;
+
+    if (!nlines)
+        nlines = orig->_maxy - 1 - j;
+    if (!ncols)
+        ncols  = orig->_maxx - 1 - k;
+
+    if ( !(win = PDC_makenew(nlines, ncols, begy, begx)) )
+        return (WINDOW *)NULL;
+
+    /* initialize window variables */
+
+    win->_attrs = orig->_attrs;
+    win->_bkgd = orig->_bkgd;
+    win->_leaveit = orig->_leaveit;
+    win->_scroll = orig->_scroll;
+    win->_nodelay = orig->_nodelay;
+    win->_use_keypad = orig->_use_keypad;
+    win->_immed = orig->_immed;
+    win->_sync = orig->_sync;
+    win->_pary = j;
+    win->_parx = k;
+    win->_parent = orig;
+
+    for (i = 0; i < nlines; i++, j++)
+        win->_y[i] = orig->_y[j] + k;
+
+    win->_flags |= _SUBWIN;
+
+    return win;
+}
+
+WINDOW *derwin(WINDOW *orig, int nlines, int ncols, int begy, int begx)
+{
+    return subwin(orig, nlines, ncols, begy + orig->_begy, begx + orig->_begx);
+}
+
+int mvderwin(WINDOW *win, int pary, int parx)
+{
+    int i, j;
+    WINDOW *mypar;
+
+    if (!win || !(win->_parent))
+        return ERR;
+
+    mypar = win->_parent;
+
+    if (pary < 0 || parx < 0 || (pary + win->_maxy) > mypar->_maxy ||
+                                (parx + win->_maxx) > mypar->_maxx)
+        return ERR;
+
+    j = pary;
+
+    for (i = 0; i < win->_maxy; i++)
+        win->_y[i] = (mypar->_y[j++]) + parx;
+
+    win->_pary = pary;
+    win->_parx = parx;
+
+    return OK;
+}
+
+WINDOW *dupwin(WINDOW *win)
+{
+    WINDOW *new;
+    chtype *ptr, *ptr1;
+    int nlines, ncols, begy, begx, i;
+
+    if (!win)
+        return (WINDOW *)NULL;
+
+    nlines = win->_maxy;
+    ncols = win->_maxx;
+    begy = win->_begy;
+    begx = win->_begx;
+
+    if ( !(new = PDC_makenew(nlines, ncols, begy, begx))
+        || !(new = PDC_makelines(new)) )
+        return (WINDOW *)NULL;
+
+    /* copy the contents of win into new */
+
+    for (i = 0; i < nlines; i++)
+    {
+        for (ptr = new->_y[i], ptr1 = win->_y[i];
+             ptr < new->_y[i] + ncols; ptr++, ptr1++)
+            *ptr = *ptr1;
+
+        new->_firstch[i] = 0;
+        new->_lastch[i] = ncols - 1;
+    }
+
+    new->_curx = win->_curx;
+    new->_cury = win->_cury;
+    new->_maxy = win->_maxy;
+    new->_maxx = win->_maxx;
+    new->_begy = win->_begy;
+    new->_begx = win->_begx;
+    new->_flags = win->_flags;
+    new->_attrs = win->_attrs;
+    new->_clear = win->_clear;
+    new->_leaveit = win->_leaveit;
+    new->_scroll = win->_scroll;
+    new->_nodelay = win->_nodelay;
+    new->_use_keypad = win->_use_keypad;
+    new->_tmarg = win->_tmarg;
+    new->_bmarg = win->_bmarg;
+    new->_parx = win->_parx;
+    new->_pary = win->_pary;
+    new->_parent = win->_parent;
+    new->_bkgd = win->_bkgd;
+    new->_flags = win->_flags;
+
+    return new;
+}
+
+WINDOW *resize_window(WINDOW *win, int nlines, int ncols)
+{
+    WINDOW *new;
+    int i, save_cury, save_curx, new_begy, new_begx;
+
+    PDC_LOG(("resize_window() - called: nlines %d ncols %d\n",
+             nlines, ncols));
+
+    if (!win)
+        return (WINDOW *)NULL;
+
+    if (win->_flags & _SUBPAD)
+    {
+        if ( !(new = subpad(win->_parent, nlines, ncols,
+                            win->_begy, win->_begx)) )
+            return (WINDOW *)NULL;
+    }
+    else if (win->_flags & _SUBWIN)
+    {
+        if ( !(new = subwin(win->_parent, nlines, ncols,
+                            win->_begy, win->_begx)) )
+            return (WINDOW *)NULL;
+    }
+    else
+    {
+        if (win == SP->slk_winptr)
+        {
+            new_begy = SP->lines - SP->slklines;
+            new_begx = 0;
+        }
+        else
+        {
+            new_begy = win->_begy;
+            new_begx = win->_begx;
+        }
+
+        if ( !(new = PDC_makenew(nlines, ncols, new_begy, new_begx)) )
+            return (WINDOW *)NULL;
+    }
+
+    save_curx = min(win->_curx, new->_maxx);
+    save_cury = min(win->_cury, new->_maxy);
+
+    if (!(win->_flags & (_SUBPAD|_SUBWIN)))
+    {
+        if ( !(new = PDC_makelines(new)) )
+            return (WINDOW *)NULL;
+
+        werase(new);
+
+        copywin(win, new, 0, 0, 0, 0, min(win->_maxy, new->_maxy) - 1,
+                min(win->_maxx, new->_maxx) - 1, FALSE);
+
+        for (i = 0; i < win->_maxy && win->_y[i]; i++)
+            if (win->_y[i])
+                free(win->_y[i]);
+    }
+
+    new->_flags = win->_flags;
+    new->_attrs = win->_attrs;
+    new->_clear = win->_clear;
+    new->_leaveit = win->_leaveit;
+    new->_scroll = win->_scroll;
+    new->_nodelay = win->_nodelay;
+    new->_use_keypad = win->_use_keypad;
+    new->_tmarg = (win->_tmarg > new->_maxy - 1) ? 0 : win->_tmarg;
+    new->_bmarg = (win->_bmarg == win->_maxy - 1) ?
+                  new->_maxy - 1 : min(win->_bmarg, (new->_maxy - 1));
+    new->_parent = win->_parent;
+    new->_immed = win->_immed;
+    new->_sync = win->_sync;
+    new->_bkgd = win->_bkgd;
+
+    new->_curx = save_curx;
+    new->_cury = save_cury;
+
+    free(win->_firstch);
+    free(win->_lastch);
+    free(win->_y);
+
+    *win = *new;
+    free(new);
+
+    return win;
+}
+
+int wresize(WINDOW *win, int nlines, int ncols)
+{
+    return (resize_window(win, nlines, ncols) ? OK : ERR);
+}
+
+void wsyncup(WINDOW *win)
+{
+    WINDOW *tmp;
+
+    PDC_LOG(("wsyncup() - called\n"));
+
+    for (tmp = win; tmp; tmp = tmp->_parent)
+        touchwin(tmp);
+}
+
+int syncok(WINDOW *win, bool bf)
+{
+    PDC_LOG(("syncok() - called\n"));
+
+    if (!win)
+        return ERR;
+
+    win->_sync = bf;
+
+    return OK;
+}
+
+void wcursyncup(WINDOW *win)
+{
+    WINDOW *tmp;
+
+    PDC_LOG(("wcursyncup() - called\n"));
+
+    for (tmp = win; tmp && tmp->_parent; tmp = tmp->_parent)
+        wmove(tmp->_parent, tmp->_pary + tmp->_cury, tmp->_parx + tmp->_curx);
+}
+
+void wsyncdown(WINDOW *win)
+{
+    WINDOW *tmp;
+
+    PDC_LOG(("wsyncdown() - called\n"));
+
+    for (tmp = win; tmp; tmp = tmp->_parent)
+    {
+        if (is_wintouched(tmp))
+        {
+            touchwin(win);
+            break;
+        }
+    }
+}
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
