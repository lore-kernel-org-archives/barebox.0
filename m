Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo4.mail-out.ovh.net ([188.165.33.109]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UDAjp-0000ZE-QZ
 for barebox@lists.infradead.org; Wed, 06 Mar 2013 09:36:19 +0000
Received: from mail413.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 68D33104E6FE
 for <barebox@lists.infradead.org>; Wed,  6 Mar 2013 10:45:20 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Subject: [PATCH 16/20] app: pdcurses: add libform
Date: Wed,  6 Mar 2013 10:29:45 +0100
Message-Id: <1362562189-17783-16-git-send-email-plagnioj@jcrosoft.com>
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

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 apps/lib/curses/Kconfig                      |    4 +
 apps/lib/curses/pdcurses/Makefile            |  114 +-
 apps/lib/curses/pdcurses/Makefile.include    |    1 +
 apps/lib/curses/pdcurses/form/Makefile       |   42 +
 apps/lib/curses/pdcurses/form/READ.ME        |   42 +
 apps/lib/curses/pdcurses/form/f_trace.c      |   70 +
 apps/lib/curses/pdcurses/form/fld_arg.c      |   98 +
 apps/lib/curses/pdcurses/form/fld_attr.c     |  119 +
 apps/lib/curses/pdcurses/form/fld_current.c  |  137 +
 apps/lib/curses/pdcurses/form/fld_def.c      |  399 +++
 apps/lib/curses/pdcurses/form/fld_dup.c      |  101 +
 apps/lib/curses/pdcurses/form/fld_ftchoice.c |   70 +
 apps/lib/curses/pdcurses/form/fld_ftlink.c   |   87 +
 apps/lib/curses/pdcurses/form/fld_info.c     |  113 +
 apps/lib/curses/pdcurses/form/fld_just.c     |   86 +
 apps/lib/curses/pdcurses/form/fld_link.c     |   96 +
 apps/lib/curses/pdcurses/form/fld_max.c      |   77 +
 apps/lib/curses/pdcurses/form/fld_move.c     |   64 +
 apps/lib/curses/pdcurses/form/fld_newftyp.c  |  143 +
 apps/lib/curses/pdcurses/form/fld_opts.c     |  138 +
 apps/lib/curses/pdcurses/form/fld_pad.c      |   85 +
 apps/lib/curses/pdcurses/form/fld_page.c     |   82 +
 apps/lib/curses/pdcurses/form/fld_stat.c     |   79 +
 apps/lib/curses/pdcurses/form/fld_type.c     |   97 +
 apps/lib/curses/pdcurses/form/fld_user.c     |   72 +
 apps/lib/curses/pdcurses/form/form.h         |  423 +++
 apps/lib/curses/pdcurses/form/form.priv.h    |  299 ++
 apps/lib/curses/pdcurses/form/frm_cursor.c   |   70 +
 apps/lib/curses/pdcurses/form/frm_data.c     |  193 ++
 apps/lib/curses/pdcurses/form/frm_def.c      |  448 +++
 apps/lib/curses/pdcurses/form/frm_driver.c   | 4646 ++++++++++++++++++++++++++
 apps/lib/curses/pdcurses/form/frm_hook.c     |  142 +
 apps/lib/curses/pdcurses/form/frm_opts.c     |  127 +
 apps/lib/curses/pdcurses/form/frm_page.c     |  106 +
 apps/lib/curses/pdcurses/form/frm_post.c     |  124 +
 apps/lib/curses/pdcurses/form/frm_req_name.c |  170 +
 apps/lib/curses/pdcurses/form/frm_scale.c    |   69 +
 apps/lib/curses/pdcurses/form/frm_sub.c      |   86 +
 apps/lib/curses/pdcurses/form/frm_user.c     |   72 +
 apps/lib/curses/pdcurses/form/frm_win.c      |   92 +
 apps/lib/curses/pdcurses/form/fty_alnum.c    |  202 ++
 apps/lib/curses/pdcurses/form/fty_alpha.c    |  202 ++
 apps/lib/curses/pdcurses/form/fty_enum.c     |  442 +++
 apps/lib/curses/pdcurses/form/fty_generic.c  |  297 ++
 apps/lib/curses/pdcurses/form/fty_int.c      |  293 ++
 apps/lib/curses/pdcurses/form/fty_ipv4.c     |  120 +
 apps/lib/curses/pdcurses/form/fty_num.c      |  339 ++
 apps/lib/curses/pdcurses/form/fty_regex.c    |  350 ++
 48 files changed, 11639 insertions(+), 89 deletions(-)
 rewrite apps/lib/curses/pdcurses/Makefile (78%)
 create mode 100644 apps/lib/curses/pdcurses/form/Makefile
 create mode 100644 apps/lib/curses/pdcurses/form/READ.ME
 create mode 100644 apps/lib/curses/pdcurses/form/f_trace.c
 create mode 100644 apps/lib/curses/pdcurses/form/fld_arg.c
 create mode 100644 apps/lib/curses/pdcurses/form/fld_attr.c
 create mode 100644 apps/lib/curses/pdcurses/form/fld_current.c
 create mode 100644 apps/lib/curses/pdcurses/form/fld_def.c
 create mode 100644 apps/lib/curses/pdcurses/form/fld_dup.c
 create mode 100644 apps/lib/curses/pdcurses/form/fld_ftchoice.c
 create mode 100644 apps/lib/curses/pdcurses/form/fld_ftlink.c
 create mode 100644 apps/lib/curses/pdcurses/form/fld_info.c
 create mode 100644 apps/lib/curses/pdcurses/form/fld_just.c
 create mode 100644 apps/lib/curses/pdcurses/form/fld_link.c
 create mode 100644 apps/lib/curses/pdcurses/form/fld_max.c
 create mode 100644 apps/lib/curses/pdcurses/form/fld_move.c
 create mode 100644 apps/lib/curses/pdcurses/form/fld_newftyp.c
 create mode 100644 apps/lib/curses/pdcurses/form/fld_opts.c
 create mode 100644 apps/lib/curses/pdcurses/form/fld_pad.c
 create mode 100644 apps/lib/curses/pdcurses/form/fld_page.c
 create mode 100644 apps/lib/curses/pdcurses/form/fld_stat.c
 create mode 100644 apps/lib/curses/pdcurses/form/fld_type.c
 create mode 100644 apps/lib/curses/pdcurses/form/fld_user.c
 create mode 100644 apps/lib/curses/pdcurses/form/form.h
 create mode 100644 apps/lib/curses/pdcurses/form/form.priv.h
 create mode 100644 apps/lib/curses/pdcurses/form/frm_cursor.c
 create mode 100644 apps/lib/curses/pdcurses/form/frm_data.c
 create mode 100644 apps/lib/curses/pdcurses/form/frm_def.c
 create mode 100644 apps/lib/curses/pdcurses/form/frm_driver.c
 create mode 100644 apps/lib/curses/pdcurses/form/frm_hook.c
 create mode 100644 apps/lib/curses/pdcurses/form/frm_opts.c
 create mode 100644 apps/lib/curses/pdcurses/form/frm_page.c
 create mode 100644 apps/lib/curses/pdcurses/form/frm_post.c
 create mode 100644 apps/lib/curses/pdcurses/form/frm_req_name.c
 create mode 100644 apps/lib/curses/pdcurses/form/frm_scale.c
 create mode 100644 apps/lib/curses/pdcurses/form/frm_sub.c
 create mode 100644 apps/lib/curses/pdcurses/form/frm_user.c
 create mode 100644 apps/lib/curses/pdcurses/form/frm_win.c
 create mode 100644 apps/lib/curses/pdcurses/form/fty_alnum.c
 create mode 100644 apps/lib/curses/pdcurses/form/fty_alpha.c
 create mode 100644 apps/lib/curses/pdcurses/form/fty_enum.c
 create mode 100644 apps/lib/curses/pdcurses/form/fty_generic.c
 create mode 100644 apps/lib/curses/pdcurses/form/fty_int.c
 create mode 100644 apps/lib/curses/pdcurses/form/fty_ipv4.c
 create mode 100644 apps/lib/curses/pdcurses/form/fty_num.c
 create mode 100644 apps/lib/curses/pdcurses/form/fty_regex.c

diff --git a/apps/lib/curses/Kconfig b/apps/lib/curses/Kconfig
index 5950385..8c0fa1b 100644
--- a/apps/lib/curses/Kconfig
+++ b/apps/lib/curses/Kconfig
@@ -22,4 +22,8 @@ config APP_LIB_MENU
 	bool "menu"
 	depends on APP_LIB_PDCURSES
 
+config APP_LIB_FORM
+	bool "form"
+	depends on APP_LIB_MENU
+
 endif
diff --git a/apps/lib/curses/pdcurses/Makefile b/apps/lib/curses/pdcurses/Makefile
dissimilarity index 78%
index 3707947..37c7b8e 100644
--- a/apps/lib/curses/pdcurses/Makefile
+++ b/apps/lib/curses/pdcurses/Makefile
@@ -1,89 +1,25 @@
-#ifeq (y,y)
-#INCLUDES += -D_LP64=0 -Icurses/PDCurses-3.4 -Icurses/pdcurses-backend -Icurses/menu -Icurses/form
-#endif
-
-
-obj-y += pdcurses/
-obj-y += backend/
-
-includes-y += pdcurses-backend/nc_alloc.h
-includes-y += pdcurses-backend/ncurses_cfg.h
-includes-y += PDCurses-3.4/curses.h
-includes-y += PDCurses-3.4/term.h
-includes-y += PDCurses-3.4/panel.h
-includes-y += menu/eti.h
-includes-y += menu/menu.h
-includes-y += menu/mf_common.h
-includes-y += form/form.h
-
-libpanel-y += PDCurses-3.4/pdcurses/panel.o
-
-libmenu-y += menu/m_req_name.o
-libmenu-y += menu/m_item_nam.o
-libmenu-y += menu/m_pad.o
-libmenu-y += menu/m_cursor.o
-libmenu-y += menu/m_item_new.o
-libmenu-y += menu/m_attribs.o
-libmenu-y += menu/m_item_opt.o
-libmenu-y += menu/m_format.o
-libmenu-y += menu/m_post.o
-libmenu-y += menu/m_userptr.o
-libmenu-y += menu/m_item_cur.o
-libmenu-y += menu/m_driver.o
-libmenu-y += menu/m_sub.o
-libmenu-y += menu/m_win.o
-libmenu-y += menu/m_global.o
-libmenu-y += menu/m_item_vis.o
-libmenu-y += menu/m_new.o
-libmenu-y += menu/m_scale.o
-libmenu-y += menu/m_spacing.o
-libmenu-y += menu/m_opts.o
-libmenu-y += menu/m_pattern.o
-libmenu-y += menu/m_item_val.o
-libmenu-y += menu/m_hook.o
-libmenu-y += menu/m_item_use.o
-libmenu-y += menu/m_items.o
-libmenu-y += menu/m_item_top.o
-libform-y += form/frm_page.o
-libform-y += form/frm_opts.o
-libform-y += form/frm_def.o
-libform-y += form/frm_req_name.o
-libform-y += form/fty_alpha.o
-libform-y += form/frm_driver.o
-libform-y += form/fld_user.o
-libform-y += form/frm_win.o
-libform-y += form/fld_newftyp.o
-#libform-y += form/fty_regex.o
-libform-y += form/fld_stat.o
-libform-y += form/fld_pad.o
-libform-y += form/fld_current.o
-libform-y += form/frm_post.o
-#libform-y += form/f_trace.o
-libform-y += form/fty_generic.o
-libform-y += form/fld_page.o
-libform-y += form/frm_hook.o
-libform-y += form/frm_scale.o
-libform-y += form/fty_int.o
-libform-y += form/fty_alnum.o
-libform-y += form/frm_cursor.o
-#libform-y += form/fty_ipv4.o
-libform-y += form/fld_link.o
-libform-y += form/fld_arg.o
-libform-y += form/fld_move.o
-libform-y += form/fld_def.o
-libform-y += form/fld_type.o
-libform-y += form/fld_max.o
-libform-y += form/fld_ftlink.o
-libform-y += form/fld_ftchoice.o
-libform-y += form/fld_info.o
-libform-y += form/frm_user.o
-#libform-y += form/fty_num.o
-libform-y += form/frm_sub.o
-libform-y += form/fty_enum.o
-libform-y += form/frm_data.o
-libform-y += form/fld_opts.o
-libform-y += form/fld_attr.o
-libform-y += form/fld_dup.o
-libform-y += form/fld_just.o
-
-app-y += $(curses-y)
+#ifeq (y,y)
+#INCLUDES += -D_LP64=0 -Icurses/PDCurses-3.4 -Icurses/pdcurses-backend -Icurses/menu -Icurses/form
+#endif
+
+
+obj-y += pdcurses/
+obj-y += backend/
+obj-$(CONFIG_APP_LIB_MENU) += menu/
+obj-$(CONFIG_APP_LIB_FORM) += form/
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
+
+
+app-y += $(curses-y)
diff --git a/apps/lib/curses/pdcurses/Makefile.include b/apps/lib/curses/pdcurses/Makefile.include
index 7a0061e..710e782 100644
--- a/apps/lib/curses/pdcurses/Makefile.include
+++ b/apps/lib/curses/pdcurses/Makefile.include
@@ -1,2 +1,3 @@
 APP_CPPFLAGS-y += -I$(srctree)/apps/lib/curses/pdcurses/include/ -D_LP64=0
 APP_CPPFLAGS-$(CONFIG_APP_LIB_MENU) += -I$(srctree)/apps/lib/curses/pdcurses/menu
+APP_CPPFLAGS-$(CONFIG_APP_LIB_FORM) += -I$(srctree)/apps/lib/curses/pdcurses/form
diff --git a/apps/lib/curses/pdcurses/form/Makefile b/apps/lib/curses/pdcurses/form/Makefile
new file mode 100644
index 0000000..42f641c
--- /dev/null
+++ b/apps/lib/curses/pdcurses/form/Makefile
@@ -0,0 +1,42 @@
+app-y += frm_page.o
+app-y += frm_opts.o
+app-y += frm_def.o
+app-y += frm_req_name.o
+app-y += fty_alpha.o
+app-y += frm_driver.o
+app-y += fld_user.o
+app-y += frm_win.o
+app-y += fld_newftyp.o
+#app-y += fty_regex.o
+app-y += fld_stat.o
+app-y += fld_pad.o
+app-y += fld_current.o
+app-y += frm_post.o
+#app-y += f_trace.o
+app-y += fty_generic.o
+app-y += fld_page.o
+app-y += frm_hook.o
+app-y += frm_scale.o
+app-y += fty_int.o
+app-y += fty_alnum.o
+app-y += frm_cursor.o
+#app-y += fty_ipv4.o
+app-y += fld_link.o
+app-y += fld_arg.o
+app-y += fld_move.o
+app-y += fld_def.o
+app-y += fld_type.o
+app-y += fld_max.o
+app-y += fld_ftlink.o
+app-y += fld_ftchoice.o
+app-y += fld_info.o
+app-y += frm_user.o
+#app-y += fty_num.o
+app-y += frm_sub.o
+app-y += fty_enum.o
+app-y += frm_data.o
+app-y += fld_opts.o
+app-y += fld_attr.o
+app-y += fld_dup.o
+app-y += fld_just.o
+
diff --git a/apps/lib/curses/pdcurses/form/READ.ME b/apps/lib/curses/pdcurses/form/READ.ME
new file mode 100644
index 0000000..da86bf6
--- /dev/null
+++ b/apps/lib/curses/pdcurses/form/READ.ME
@@ -0,0 +1,42 @@
+-------------------------------------------------------------------------------
+-- Copyright (c) 1998-2003,2006 Free Software Foundation, Inc.               --
+--                                                                           --
+-- Permission is hereby granted, free of charge, to any person obtaining a   --
+-- copy of this software and associated documentation files (the             --
+-- "Software"), to deal in the Software without restriction, including       --
+-- without limitation the rights to use, copy, modify, merge, publish,       --
+-- distribute, distribute with modifications, sublicense, and/or sell copies --
+-- of the Software, and to permit persons to whom the Software is furnished  --
+-- to do so, subject to the following conditions:                            --
+--                                                                           --
+-- The above copyright notice and this permission notice shall be included   --
+-- in all copies or substantial portions of the Software.                    --
+--                                                                           --
+-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS   --
+-- OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF                --
+-- MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN --
+-- NO EVENT SHALL THE ABOVE COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,       --
+-- DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR     --
+-- OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE --
+-- USE OR OTHER DEALINGS IN THE SOFTWARE.                                    --
+--                                                                           --
+-- Except as contained in this notice, the name(s) of the above copyright    --
+-- holders shall not be used in advertising or otherwise to promote the      --
+-- sale, use or other dealings in this Software without prior written        --
+-- authorization.                                                            --
+-------------------------------------------------------------------------------
+-- $Id: READ.ME,v 0.7 2006/04/22 23:13:05 tom Exp $
+-------------------------------------------------------------------------------
+
+This is a clone of the form library that is available with typical
+System V curses implementations (ETI).
+
+It is modelled after the documentation that comes for this library with
+a 386 based SVR4 implementation (ESIX).  
+
+The development environment was and is an ELF based Linux system.
+
+For things that still need doing, see the TO-DO file in the top-level 
+directory.
+
+Juergen Pfeifer
diff --git a/apps/lib/curses/pdcurses/form/f_trace.c b/apps/lib/curses/pdcurses/form/f_trace.c
new file mode 100644
index 0000000..6044e03
--- /dev/null
+++ b/apps/lib/curses/pdcurses/form/f_trace.c
@@ -0,0 +1,70 @@
+/****************************************************************************
+ * Copyright (c) 2004,2010 Free Software Foundation, Inc.                   *
+ *                                                                          *
+ * Permission is hereby granted, free of charge, to any person obtaining a  *
+ * copy of this software and associated documentation files (the            *
+ * "Software"), to deal in the Software without restriction, including      *
+ * without limitation the rights to use, copy, modify, merge, publish,      *
+ * distribute, distribute with modifications, sublicense, and/or sell       *
+ * copies of the Software, and to permit persons to whom the Software is    *
+ * furnished to do so, subject to the following conditions:                 *
+ *                                                                          *
+ * The above copyright notice and this permission notice shall be included  *
+ * in all copies or substantial portions of the Software.                   *
+ *                                                                          *
+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS  *
+ * OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF               *
+ * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.   *
+ * IN NO EVENT SHALL THE ABOVE COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,   *
+ * DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR    *
+ * OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR    *
+ * THE USE OR OTHER DEALINGS IN THE SOFTWARE.                               *
+ *                                                                          *
+ * Except as contained in this notice, the name(s) of the above copyright   *
+ * holders shall not be used in advertising or otherwise to promote the     *
+ * sale, use or other dealings in this Software without prior written       *
+ * authorization.                                                           *
+ ****************************************************************************/
+
+/****************************************************************************
+ *   Author:  Thomas E. Dickey                                              *
+ ****************************************************************************/
+
+#include "form.priv.h"
+
+MODULE_ID("$Id: f_trace.c,v 1.2 2010/01/23 21:14:36 tom Exp $")
+
+NCURSES_EXPORT(FIELD **)
+_nc_retrace_field_ptr(FIELD **code)
+{
+  T((T_RETURN("%p"), (void *)code));
+  return code;
+}
+
+NCURSES_EXPORT(FIELD *)
+_nc_retrace_field(FIELD *code)
+{
+  T((T_RETURN("%p"), (void *)code));
+  return code;
+}
+
+NCURSES_EXPORT(FIELDTYPE *)
+_nc_retrace_field_type(FIELDTYPE *code)
+{
+  T((T_RETURN("%p"), (void *)code));
+  return code;
+}
+
+NCURSES_EXPORT(FORM *)
+_nc_retrace_form(FORM *code)
+{
+  T((T_RETURN("%p"), (void *)code));
+  return code;
+}
+
+NCURSES_EXPORT(Form_Hook)
+_nc_retrace_form_hook(Form_Hook code)
+{
+  T((T_RETURN("%p"), code));
+  return code;
+}
diff --git a/apps/lib/curses/pdcurses/form/fld_arg.c b/apps/lib/curses/pdcurses/form/fld_arg.c
new file mode 100644
index 0000000..a07bdb1
--- /dev/null
+++ b/apps/lib/curses/pdcurses/form/fld_arg.c
@@ -0,0 +1,98 @@
+/****************************************************************************
+ * Copyright (c) 1998-2004,2010 Free Software Foundation, Inc.              *
+ *                                                                          *
+ * Permission is hereby granted, free of charge, to any person obtaining a  *
+ * copy of this software and associated documentation files (the            *
+ * "Software"), to deal in the Software without restriction, including      *
+ * without limitation the rights to use, copy, modify, merge, publish,      *
+ * distribute, distribute with modifications, sublicense, and/or sell       *
+ * copies of the Software, and to permit persons to whom the Software is    *
+ * furnished to do so, subject to the following conditions:                 *
+ *                                                                          *
+ * The above copyright notice and this permission notice shall be included  *
+ * in all copies or substantial portions of the Software.                   *
+ *                                                                          *
+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS  *
+ * OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF               *
+ * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.   *
+ * IN NO EVENT SHALL THE ABOVE COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,   *
+ * DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR    *
+ * OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR    *
+ * THE USE OR OTHER DEALINGS IN THE SOFTWARE.                               *
+ *                                                                          *
+ * Except as contained in this notice, the name(s) of the above copyright   *
+ * holders shall not be used in advertising or otherwise to promote the     *
+ * sale, use or other dealings in this Software without prior written       *
+ * authorization.                                                           *
+ ****************************************************************************/
+
+/****************************************************************************
+ *   Author:  Juergen Pfeifer, 1995,1997                                    *
+ ****************************************************************************/
+
+#include "form.priv.h"
+
+MODULE_ID("$Id: fld_arg.c,v 1.12 2010/01/23 21:14:35 tom Exp $")
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  int set_fieldtype_arg(
+|                            FIELDTYPE *typ,
+|                            void * (* const make_arg)(va_list *),
+|                            void * (* const copy_arg)(const void *),
+|                            void   (* const free_arg)(void *) )
+|
+|   Description   :  Connects to the type additional arguments necessary
+|                    for a set_field_type call. The various function pointer
+|                    arguments are:
+|                       make_arg : allocates a structure for the field
+|                                  specific parameters.
+|                       copy_arg : duplicate the structure created by
+|                                  make_arg
+|                       free_arg : Release the memory allocated by make_arg
+|                                  or copy_arg
+|
+|                    At least make_arg must be non-NULL.
+|                    You may pass NULL for copy_arg and free_arg if your
+|                    make_arg function doesn't allocate memory and your
+|                    arg fits into the storage for a (void*).
+|
+|   Return Values :  E_OK           - success
+|                    E_BAD_ARGUMENT - invalid argument
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+set_fieldtype_arg(FIELDTYPE *typ,
+		  void *(*const make_arg)(va_list *),
+		  void *(*const copy_arg)(const void *),
+		  void (*const free_arg) (void *))
+{
+  T((T_CALLED("set_fieldtype_arg(%p,%p,%p,%p)"),
+     (void *)typ, make_arg, copy_arg, free_arg));
+
+  if (typ != 0 && make_arg != (void *)0)
+    {
+      typ->status |= _HAS_ARGS;
+      typ->makearg = make_arg;
+      typ->copyarg = copy_arg;
+      typ->freearg = free_arg;
+      RETURN(E_OK);
+    }
+  RETURN(E_BAD_ARGUMENT);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  void *field_arg(const FIELD *field)
+|
+|   Description   :  Retrieve pointer to the fields argument structure.
+|
+|   Return Values :  Pointer to structure or NULL if none is defined.
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(void *)
+field_arg(const FIELD *field)
+{
+  T((T_CALLED("field_arg(%p)"), (const void *)field));
+  returnVoidPtr(Normalize_Field(field)->arg);
+}
+
+/* fld_arg.c ends here */
diff --git a/apps/lib/curses/pdcurses/form/fld_attr.c b/apps/lib/curses/pdcurses/form/fld_attr.c
new file mode 100644
index 0000000..0112f00
--- /dev/null
+++ b/apps/lib/curses/pdcurses/form/fld_attr.c
@@ -0,0 +1,119 @@
+/****************************************************************************
+ * Copyright (c) 1998-2004,2010 Free Software Foundation, Inc.              *
+ *                                                                          *
+ * Permission is hereby granted, free of charge, to any person obtaining a  *
+ * copy of this software and associated documentation files (the            *
+ * "Software"), to deal in the Software without restriction, including      *
+ * without limitation the rights to use, copy, modify, merge, publish,      *
+ * distribute, distribute with modifications, sublicense, and/or sell       *
+ * copies of the Software, and to permit persons to whom the Software is    *
+ * furnished to do so, subject to the following conditions:                 *
+ *                                                                          *
+ * The above copyright notice and this permission notice shall be included  *
+ * in all copies or substantial portions of the Software.                   *
+ *                                                                          *
+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS  *
+ * OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF               *
+ * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.   *
+ * IN NO EVENT SHALL THE ABOVE COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,   *
+ * DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR    *
+ * OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR    *
+ * THE USE OR OTHER DEALINGS IN THE SOFTWARE.                               *
+ *                                                                          *
+ * Except as contained in this notice, the name(s) of the above copyright   *
+ * holders shall not be used in advertising or otherwise to promote the     *
+ * sale, use or other dealings in this Software without prior written       *
+ * authorization.                                                           *
+ ****************************************************************************/
+
+/****************************************************************************
+ *   Author:  Juergen Pfeifer, 1995,1997                                    *
+ ****************************************************************************/
+
+#include "form.priv.h"
+
+MODULE_ID("$Id: fld_attr.c,v 1.11 2010/01/23 21:12:08 tom Exp $")
+
+/*----------------------------------------------------------------------------
+  Field-Attribute manipulation routines
+  --------------------------------------------------------------------------*/
+/* "Template" macro to generate a function to set a fields attribute */
+#define GEN_FIELD_ATTR_SET_FCT( name ) \
+NCURSES_IMPEXP int NCURSES_API set_field_ ## name (FIELD * field, chtype attr)\
+{\
+   int res = E_BAD_ARGUMENT;\
+   T((T_CALLED("set_field_" #name "(%p,%s)"), field, _traceattr(attr)));\
+   if ( attr==A_NORMAL || ((attr & A_ATTRIBUTES)==attr) )\
+     {\
+       Normalize_Field( field );\
+       if (field != 0) \
+	 { \
+	 if ((field -> name) != attr)\
+	   {\
+	     field -> name = attr;\
+	     res = _nc_Synchronize_Attributes( field );\
+	   }\
+	 else\
+	   {\
+	     res = E_OK;\
+	   }\
+	 }\
+     }\
+   RETURN(res);\
+}
+
+/* "Template" macro to generate a function to get a fields attribute */
+#define GEN_FIELD_ATTR_GET_FCT( name ) \
+NCURSES_IMPEXP chtype NCURSES_API field_ ## name (const FIELD * field)\
+{\
+   T((T_CALLED("field_" #name "(%p)"), (const void *) field));\
+   returnAttr( A_ATTRIBUTES & (Normalize_Field( field ) -> name) );\
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  int set_field_fore(FIELD *field, chtype attr)
+|
+|   Description   :  Sets the foreground of the field used to display the
+|                    field contents.
+|
+|   Return Values :  E_OK             - success
+|                    E_BAD_ARGUMENT   - invalid attributes
+|                    E_SYSTEM_ERROR   - system error
++--------------------------------------------------------------------------*/
+GEN_FIELD_ATTR_SET_FCT(fore)
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  chtype field_fore(const FIELD *)
+|
+|   Description   :  Retrieve fields foreground attribute
+|
+|   Return Values :  The foreground attribute
++--------------------------------------------------------------------------*/
+GEN_FIELD_ATTR_GET_FCT(fore)
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  int set_field_back(FIELD *field, chtype attr)
+|
+|   Description   :  Sets the background of the field used to display the
+|                    fields extend.
+|
+|   Return Values :  E_OK             - success
+|                    E_BAD_ARGUMENT   - invalid attributes
+|                    E_SYSTEM_ERROR   - system error
++--------------------------------------------------------------------------*/
+GEN_FIELD_ATTR_SET_FCT(back)
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  chtype field_back(const
+|
+|   Description   :  Retrieve fields background attribute
+|
+|   Return Values :  The background attribute
++--------------------------------------------------------------------------*/
+GEN_FIELD_ATTR_GET_FCT(back)
+
+/* fld_attr.c ends here */
diff --git a/apps/lib/curses/pdcurses/form/fld_current.c b/apps/lib/curses/pdcurses/form/fld_current.c
new file mode 100644
index 0000000..ef9ec00
--- /dev/null
+++ b/apps/lib/curses/pdcurses/form/fld_current.c
@@ -0,0 +1,137 @@
+/****************************************************************************
+ * Copyright (c) 1998-2004,2010 Free Software Foundation, Inc.              *
+ *                                                                          *
+ * Permission is hereby granted, free of charge, to any person obtaining a  *
+ * copy of this software and associated documentation files (the            *
+ * "Software"), to deal in the Software without restriction, including      *
+ * without limitation the rights to use, copy, modify, merge, publish,      *
+ * distribute, distribute with modifications, sublicense, and/or sell       *
+ * copies of the Software, and to permit persons to whom the Software is    *
+ * furnished to do so, subject to the following conditions:                 *
+ *                                                                          *
+ * The above copyright notice and this permission notice shall be included  *
+ * in all copies or substantial portions of the Software.                   *
+ *                                                                          *
+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS  *
+ * OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF               *
+ * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.   *
+ * IN NO EVENT SHALL THE ABOVE COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,   *
+ * DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR    *
+ * OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR    *
+ * THE USE OR OTHER DEALINGS IN THE SOFTWARE.                               *
+ *                                                                          *
+ * Except as contained in this notice, the name(s) of the above copyright   *
+ * holders shall not be used in advertising or otherwise to promote the     *
+ * sale, use or other dealings in this Software without prior written       *
+ * authorization.                                                           *
+ ****************************************************************************/
+
+/****************************************************************************
+ *   Author:  Juergen Pfeifer, 1995,1997                                    *
+ ****************************************************************************/
+
+#include "form.priv.h"
+
+MODULE_ID("$Id: fld_current.c,v 1.12 2010/01/23 21:14:35 tom Exp $")
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  int set_current_field(FORM  * form,FIELD * field)
+|
+|   Description   :  Set the current field of the form to the specified one.
+|
+|   Return Values :  E_OK              - success
+|                    E_BAD_ARGUMENT    - invalid form or field pointer
+|                    E_REQUEST_DENIED  - field not selectable
+|                    E_BAD_STATE       - called from a hook routine
+|                    E_INVALID_FIELD   - current field can't be left
+|                    E_SYSTEM_ERROR    - system error
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+set_current_field(FORM *form, FIELD *field)
+{
+  int err = E_OK;
+
+  T((T_CALLED("set_current_field(%p,%p)"), (void *)form, (void *)field));
+  if (form == 0 || field == 0)
+    {
+      RETURN(E_BAD_ARGUMENT);
+    }
+  else if ((form != field->form) || Field_Is_Not_Selectable(field))
+    {
+      RETURN(E_REQUEST_DENIED);
+    }
+  else if ((form->status & _POSTED) == 0)
+    {
+      form->current = field;
+      form->curpage = field->page;
+    }
+  else
+    {
+      if ((form->status & _IN_DRIVER) != 0)
+	{
+	  err = E_BAD_STATE;
+	}
+      else
+	{
+	  if (form->current != field)
+	    {
+	      if (!_nc_Internal_Validation(form))
+		{
+		  err = E_INVALID_FIELD;
+		}
+	      else
+		{
+		  Call_Hook(form, fieldterm);
+		  if (field->page != form->curpage)
+		    {
+		      Call_Hook(form, formterm);
+		      err = _nc_Set_Form_Page(form, (int)field->page, field);
+		      Call_Hook(form, forminit);
+		    }
+		  else
+		    {
+		      err = _nc_Set_Current_Field(form, field);
+		    }
+		  Call_Hook(form, fieldinit);
+		  (void)_nc_Refresh_Current_Field(form);
+		}
+	    }
+	}
+    }
+  RETURN(err);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  FIELD *current_field(const FORM * form)
+|
+|   Description   :  Return the current field.
+|
+|   Return Values :  Pointer to the current field.
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(FIELD *)
+current_field(const FORM *form)
+{
+  T((T_CALLED("current_field(%p)"), (const void *)form));
+  returnField(Normalize_Form(form)->current);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  int field_index(const FIELD * field)
+|
+|   Description   :  Return the index of the field in the field-array of
+|                    the form.
+|
+|   Return Values :  >= 0   : field index
+|                    -1     : fieldpointer invalid or field not connected
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+field_index(const FIELD *field)
+{
+  T((T_CALLED("field_index(%p)"), (const void *)field));
+  returnCode((field != 0 && field->form != 0) ? (int)field->index : -1);
+}
+
+/* fld_current.c ends here */
diff --git a/apps/lib/curses/pdcurses/form/fld_def.c b/apps/lib/curses/pdcurses/form/fld_def.c
new file mode 100644
index 0000000..6d7bd34
--- /dev/null
+++ b/apps/lib/curses/pdcurses/form/fld_def.c
@@ -0,0 +1,399 @@
+/****************************************************************************
+ * Copyright (c) 1998-2007,2010 Free Software Foundation, Inc.              *
+ *                                                                          *
+ * Permission is hereby granted, free of charge, to any person obtaining a  *
+ * copy of this software and associated documentation files (the            *
+ * "Software"), to deal in the Software without restriction, including      *
+ * without limitation the rights to use, copy, modify, merge, publish,      *
+ * distribute, distribute with modifications, sublicense, and/or sell       *
+ * copies of the Software, and to permit persons to whom the Software is    *
+ * furnished to do so, subject to the following conditions:                 *
+ *                                                                          *
+ * The above copyright notice and this permission notice shall be included  *
+ * in all copies or substantial portions of the Software.                   *
+ *                                                                          *
+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS  *
+ * OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF               *
+ * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.   *
+ * IN NO EVENT SHALL THE ABOVE COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,   *
+ * DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR    *
+ * OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR    *
+ * THE USE OR OTHER DEALINGS IN THE SOFTWARE.                               *
+ *                                                                          *
+ * Except as contained in this notice, the name(s) of the above copyright   *
+ * holders shall not be used in advertising or otherwise to promote the     *
+ * sale, use or other dealings in this Software without prior written       *
+ * authorization.                                                           *
+ ****************************************************************************/
+
+/****************************************************************************
+ *   Author:  Juergen Pfeifer, 1995,1997                                    *
+ ****************************************************************************/
+
+#include "form.priv.h"
+
+MODULE_ID("$Id: fld_def.c,v 1.38 2010/01/23 21:14:35 tom Exp $")
+
+/* this can't be readonly */
+static FIELD default_field =
+{
+  0,				/* status  */
+  0,				/* rows    */
+  0,				/* cols    */
+  0,				/* frow    */
+  0,				/* fcol    */
+  0,				/* drows   */
+  0,				/* dcols   */
+  0,				/* maxgrow */
+  0,				/* nrow    */
+  0,				/* nbuf    */
+  NO_JUSTIFICATION,		/* just    */
+  0,				/* page    */
+  0,				/* index   */
+  (int)' ',			/* pad     */
+  A_NORMAL,			/* fore    */
+  A_NORMAL,			/* back    */
+  ALL_FIELD_OPTS,		/* opts    */
+  (FIELD *)0,			/* snext   */
+  (FIELD *)0,			/* sprev   */
+  (FIELD *)0,			/* link    */
+  (FORM *)0,			/* form    */
+  (FIELDTYPE *)0,		/* type    */
+  (char *)0,			/* arg     */
+  (FIELD_CELL *)0,		/* buf     */
+  (char *)0			/* usrptr  */
+  NCURSES_FIELD_EXTENSION
+};
+
+NCURSES_EXPORT_VAR(FIELD *)
+_nc_Default_Field = &default_field;
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  TypeArgument *_nc_Make_Argument(
+|                              const FIELDTYPE *typ,
+|                              va_list *ap,
+|                              int *err )
+|
+|   Description   :  Create an argument structure for the specified type.
+|                    Use the type-dependent argument list to construct
+|                    it.
+|
+|   Return Values :  Pointer to argument structure. Maybe NULL.
+|                    In case of an error in *err an error counter is increased.
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(TypeArgument *)
+_nc_Make_Argument(const FIELDTYPE *typ, va_list *ap, int *err)
+{
+  TypeArgument *res = (TypeArgument *)0;
+  TypeArgument *p;
+
+  if (typ != 0 && (typ->status & _HAS_ARGS) != 0)
+    {
+      assert(err != 0 && ap != (va_list *)0);
+      if ((typ->status & _LINKED_TYPE) != 0)
+	{
+	  p = typeMalloc(TypeArgument, 1);
+
+	  if (p != 0)
+	    {
+	      p->left = _nc_Make_Argument(typ->left, ap, err);
+	      p->right = _nc_Make_Argument(typ->right, ap, err);
+	      return p;
+	    }
+	  else
+	    {
+	      *err += 1;
+	    }
+	}
+      else
+	{
+	  assert(typ->makearg != (void *)0);
+	  if (!(res = (TypeArgument *)typ->makearg(ap)))
+	    {
+	      *err += 1;
+	    }
+	}
+    }
+  return res;
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  TypeArgument *_nc_Copy_Argument(const FIELDTYPE *typ,
+|                                                    const TypeArgument *argp,
+|                                                    int *err )
+|
+|   Description   :  Create a copy of an argument structure for the specified
+|                    type.
+|
+|   Return Values :  Pointer to argument structure. Maybe NULL.
+|                    In case of an error in *err an error counter is increased.
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(TypeArgument *)
+_nc_Copy_Argument(const FIELDTYPE *typ, const TypeArgument *argp, int *err)
+{
+  TypeArgument *res = (TypeArgument *)0;
+  TypeArgument *p;
+
+  if (typ != 0 && (typ->status & _HAS_ARGS) != 0)
+    {
+      assert(err != 0 && argp != 0);
+      if ((typ->status & _LINKED_TYPE) != 0)
+	{
+	  p = typeMalloc(TypeArgument, 1);
+
+	  if (p != 0)
+	    {
+	      p->left = _nc_Copy_Argument(typ, argp->left, err);
+	      p->right = _nc_Copy_Argument(typ, argp->right, err);
+	      return p;
+	    }
+	  *err += 1;
+	}
+      else
+	{
+	  if (typ->copyarg != (void *)0)
+	    {
+	      if (!(res = (TypeArgument *)(typ->copyarg((const void *)argp))))
+		{
+		  *err += 1;
+		}
+	    }
+	  else
+	    {
+	      res = (TypeArgument *)argp;
+	    }
+	}
+    }
+  return res;
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  void _nc_Free_Argument(const FIELDTYPE *typ,
+|                                           TypeArgument * argp )
+|
+|   Description   :  Release memory associated with the argument structure
+|                    for the given fieldtype.
+|
+|   Return Values :  -
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(void)
+_nc_Free_Argument(const FIELDTYPE *typ, TypeArgument *argp)
+{
+  if (typ != 0 && (typ->status & _HAS_ARGS) != 0)
+    {
+      if ((typ->status & _LINKED_TYPE) != 0)
+	{
+	  assert(argp != 0);
+	  _nc_Free_Argument(typ->left, argp->left);
+	  _nc_Free_Argument(typ->right, argp->right);
+	  free(argp);
+	}
+      else
+	{
+	  if (typ->freearg != (void *)0)
+	    {
+	      typ->freearg((void *)argp);
+	    }
+	}
+    }
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  bool _nc_Copy_Type( FIELD *dst, FIELD const *src )
+|
+|   Description   :  Copy argument structure of field src to field dst
+|
+|   Return Values :  TRUE       - copy worked
+|                    FALSE      - error occurred
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(bool)
+_nc_Copy_Type(FIELD *dst, FIELD const *src)
+{
+  int err = 0;
+
+  assert(dst != 0 && src != 0);
+
+  dst->type = src->type;
+  dst->arg = (void *)_nc_Copy_Argument(src->type, (TypeArgument *)(src->arg), &err);
+
+  if (err != 0)
+    {
+      _nc_Free_Argument(dst->type, (TypeArgument *)(dst->arg));
+      dst->type = (FIELDTYPE *)0;
+      dst->arg = (void *)0;
+      return FALSE;
+    }
+  else
+    {
+      if (dst->type != 0)
+	{
+	  dst->type->ref++;
+	}
+      return TRUE;
+    }
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  void _nc_Free_Type( FIELD *field )
+|
+|   Description   :  Release Argument structure for this field
+|
+|   Return Values :  -
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(void)
+_nc_Free_Type(FIELD *field)
+{
+  assert(field != 0);
+  if (field->type != 0)
+    {
+      field->type->ref--;
+      _nc_Free_Argument(field->type, (TypeArgument *)(field->arg));
+    }
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  FIELD *new_field( int rows, int cols,
+|                                      int frow, int fcol,
+|                                      int nrow, int nbuf )
+|
+|   Description   :  Create a new field with this many 'rows' and 'cols',
+|                    starting at 'frow/fcol' in the subwindow of the form.
+|                    Allocate 'nrow' off-screen rows and 'nbuf' additional
+|                    buffers. If an error occurs, errno is set to
+|
+|                    E_BAD_ARGUMENT - invalid argument
+|                    E_SYSTEM_ERROR - system error
+|
+|   Return Values :  Pointer to the new field or NULL if failure.
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(FIELD *)
+new_field(int rows, int cols, int frow, int fcol, int nrow, int nbuf)
+{
+  static const FIELD_CELL blank = BLANK;
+  static const FIELD_CELL zeros = ZEROS;
+
+  FIELD *New_Field = (FIELD *)0;
+  int err = E_BAD_ARGUMENT;
+
+  T((T_CALLED("new_field(%d,%d,%d,%d,%d,%d)"), rows, cols, frow, fcol, nrow, nbuf));
+  if (rows > 0 &&
+      cols > 0 &&
+      frow >= 0 &&
+      fcol >= 0 &&
+      nrow >= 0 &&
+      nbuf >= 0 &&
+      ((err = E_SYSTEM_ERROR) != 0) &&	/* trick: this resets the default error */
+      (New_Field = typeMalloc(FIELD, 1)) != 0)
+    {
+      T((T_CREATE("field %p"), (void *)New_Field));
+      *New_Field = default_field;
+      New_Field->rows = rows;
+      New_Field->cols = cols;
+      New_Field->drows = rows + nrow;
+      New_Field->dcols = cols;
+      New_Field->frow = frow;
+      New_Field->fcol = fcol;
+      New_Field->nrow = nrow;
+      New_Field->nbuf = nbuf;
+      New_Field->link = New_Field;
+
+#if USE_WIDEC_SUPPORT
+      New_Field->working = newpad(1, Buffer_Length(New_Field) + 1);
+      New_Field->expanded = typeCalloc(char *, 1 + (unsigned)nbuf);
+#endif
+
+      if (_nc_Copy_Type(New_Field, &default_field))
+	{
+	  size_t len;
+
+	  len = Total_Buffer_Size(New_Field);
+	  if ((New_Field->buf = (FIELD_CELL *)malloc(len)))
+	    {
+	      /* Prefill buffers with blanks and insert terminating zeroes
+	         between buffers */
+	      int i, j;
+	      int cells = Buffer_Length(New_Field);
+
+	      for (i = 0; i <= New_Field->nbuf; i++)
+		{
+		  FIELD_CELL *buffer = &(New_Field->buf[(cells + 1) * i]);
+
+		  for (j = 0; j < cells; ++j)
+		    {
+		      buffer[j] = blank;
+		    }
+		  buffer[j] = zeros;
+		}
+	      returnField(New_Field);
+	    }
+	}
+    }
+
+  if (New_Field)
+    free_field(New_Field);
+
+  SET_ERROR(err);
+  returnField((FIELD *)0);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  int free_field( FIELD *field )
+|
+|   Description   :  Frees the storage allocated for the field.
+|
+|   Return Values :  E_OK           - success
+|                    E_BAD_ARGUMENT - invalid field pointer
+|                    E_CONNECTED    - field is connected
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+free_field(FIELD *field)
+{
+  T((T_CALLED("free_field(%p)"), (void *)field));
+  if (!field)
+    {
+      RETURN(E_BAD_ARGUMENT);
+    }
+  else if (field->form != 0)
+    {
+      RETURN(E_CONNECTED);
+    }
+  else if (field == field->link)
+    {
+      if (field->buf != 0)
+	free(field->buf);
+    }
+  else
+    {
+      FIELD *f;
+
+      for (f = field; f->link != field; f = f->link)
+	{
+	}
+      f->link = field->link;
+    }
+  _nc_Free_Type(field);
+#if USE_WIDEC_SUPPORT
+  if (field->expanded != 0)
+    {
+      int n;
+
+      for (n = 0; n <= field->nbuf; ++n)
+	{
+	  FreeIfNeeded(field->expanded[n]);
+	}
+      free(field->expanded);
+      (void)delwin(field->working);
+    }
+#endif
+  free(field);
+  RETURN(E_OK);
+}
+
+/* fld_def.c ends here */
diff --git a/apps/lib/curses/pdcurses/form/fld_dup.c b/apps/lib/curses/pdcurses/form/fld_dup.c
new file mode 100644
index 0000000..b8e501b
--- /dev/null
+++ b/apps/lib/curses/pdcurses/form/fld_dup.c
@@ -0,0 +1,101 @@
+/****************************************************************************
+ * Copyright (c) 1998-2007,2010 Free Software Foundation, Inc.              *
+ *                                                                          *
+ * Permission is hereby granted, free of charge, to any person obtaining a  *
+ * copy of this software and associated documentation files (the            *
+ * "Software"), to deal in the Software without restriction, including      *
+ * without limitation the rights to use, copy, modify, merge, publish,      *
+ * distribute, distribute with modifications, sublicense, and/or sell       *
+ * copies of the Software, and to permit persons to whom the Software is    *
+ * furnished to do so, subject to the following conditions:                 *
+ *                                                                          *
+ * The above copyright notice and this permission notice shall be included  *
+ * in all copies or substantial portions of the Software.                   *
+ *                                                                          *
+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS  *
+ * OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF               *
+ * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.   *
+ * IN NO EVENT SHALL THE ABOVE COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,   *
+ * DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR    *
+ * OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR    *
+ * THE USE OR OTHER DEALINGS IN THE SOFTWARE.                               *
+ *                                                                          *
+ * Except as contained in this notice, the name(s) of the above copyright   *
+ * holders shall not be used in advertising or otherwise to promote the     *
+ * sale, use or other dealings in this Software without prior written       *
+ * authorization.                                                           *
+ ****************************************************************************/
+
+/****************************************************************************
+ *   Author:  Juergen Pfeifer, 1995,1997                                    *
+ ****************************************************************************/
+
+#include "form.priv.h"
+
+MODULE_ID("$Id: fld_dup.c,v 1.13 2010/01/23 21:14:35 tom Exp $")
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  FIELD *dup_field(FIELD *field, int frow, int fcol)
+|
+|   Description   :  Duplicates the field at the specified position. All
+|                    field attributes and the buffers are copied.
+|                    If an error occurs, errno is set to
+|
+|                    E_BAD_ARGUMENT - invalid argument
+|                    E_SYSTEM_ERROR - system error
+|
+|   Return Values :  Pointer to the new field or NULL if failure
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(FIELD *)
+dup_field(FIELD *field, int frow, int fcol)
+{
+  FIELD *New_Field = (FIELD *)0;
+  int err = E_BAD_ARGUMENT;
+
+  T((T_CALLED("dup_field(%p,%d,%d)"), (void *)field, frow, fcol));
+  if (field && (frow >= 0) && (fcol >= 0) &&
+      ((err = E_SYSTEM_ERROR) != 0) &&	/* trick : this resets the default error */
+      (New_Field = typeMalloc(FIELD, 1)))
+    {
+      T((T_CREATE("field %p"), (void *)New_Field));
+      *New_Field = *_nc_Default_Field;
+      New_Field->frow = frow;
+      New_Field->fcol = fcol;
+      New_Field->link = New_Field;
+      New_Field->rows = field->rows;
+      New_Field->cols = field->cols;
+      New_Field->nrow = field->nrow;
+      New_Field->drows = field->drows;
+      New_Field->dcols = field->dcols;
+      New_Field->maxgrow = field->maxgrow;
+      New_Field->nbuf = field->nbuf;
+      New_Field->just = field->just;
+      New_Field->fore = field->fore;
+      New_Field->back = field->back;
+      New_Field->pad = field->pad;
+      New_Field->opts = field->opts;
+      New_Field->usrptr = field->usrptr;
+
+      if (_nc_Copy_Type(New_Field, field))
+	{
+	  size_t i, len;
+
+	  len = Total_Buffer_Size(New_Field);
+	  if ((New_Field->buf = (FIELD_CELL *)malloc(len)))
+	    {
+	      for (i = 0; i < len; ++i)
+		New_Field->buf[i] = field->buf[i];
+	      returnField(New_Field);
+	    }
+	}
+    }
+
+  if (New_Field)
+    free_field(New_Field);
+
+  SET_ERROR(err);
+  returnField((FIELD *)0);
+}
+
+/* fld_dup.c ends here */
diff --git a/apps/lib/curses/pdcurses/form/fld_ftchoice.c b/apps/lib/curses/pdcurses/form/fld_ftchoice.c
new file mode 100644
index 0000000..e628171
--- /dev/null
+++ b/apps/lib/curses/pdcurses/form/fld_ftchoice.c
@@ -0,0 +1,70 @@
+/****************************************************************************
+ * Copyright (c) 1998-2009,2010 Free Software Foundation, Inc.              *
+ *                                                                          *
+ * Permission is hereby granted, free of charge, to any person obtaining a  *
+ * copy of this software and associated documentation files (the            *
+ * "Software"), to deal in the Software without restriction, including      *
+ * without limitation the rights to use, copy, modify, merge, publish,      *
+ * distribute, distribute with modifications, sublicense, and/or sell       *
+ * copies of the Software, and to permit persons to whom the Software is    *
+ * furnished to do so, subject to the following conditions:                 *
+ *                                                                          *
+ * The above copyright notice and this permission notice shall be included  *
+ * in all copies or substantial portions of the Software.                   *
+ *                                                                          *
+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS  *
+ * OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF               *
+ * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.   *
+ * IN NO EVENT SHALL THE ABOVE COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,   *
+ * DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR    *
+ * OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR    *
+ * THE USE OR OTHER DEALINGS IN THE SOFTWARE.                               *
+ *                                                                          *
+ * Except as contained in this notice, the name(s) of the above copyright   *
+ * holders shall not be used in advertising or otherwise to promote the     *
+ * sale, use or other dealings in this Software without prior written       *
+ * authorization.                                                           *
+ ****************************************************************************/
+
+/****************************************************************************
+ *   Author:  Juergen Pfeifer, 1995,1997                                    *
+ ****************************************************************************/
+
+#include "form.priv.h"
+
+MODULE_ID("$Id: fld_ftchoice.c,v 1.12 2010/01/23 21:14:35 tom Exp $")
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  int set_fieldtype_choice(
+|                          FIELDTYPE *typ,
+|                          bool (* const next_choice)(FIELD *,const void *),
+|                          bool (* const prev_choice)(FIELD *,const void *))
+|
+|   Description   :  Define implementation of enumeration requests.
+|
+|   Return Values :  E_OK           - success
+|                    E_BAD_ARGUMENT - invalid arguments
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+set_fieldtype_choice(FIELDTYPE *typ,
+		     bool (*const next_choice) (FIELD *, const void *),
+		     bool (*const prev_choice) (FIELD *, const void *))
+{
+  T((T_CALLED("set_fieldtype_choice(%p,%p,%p)"), (void *)typ, next_choice, prev_choice));
+
+  if (!typ || !next_choice || !prev_choice)
+    RETURN(E_BAD_ARGUMENT);
+
+  typ->status |= _HAS_CHOICE;
+#if NCURSES_INTEROP_FUNCS
+  typ->enum_next.onext = next_choice;
+  typ->enum_prev.oprev = prev_choice;
+#else
+  typ->next = next_choice;
+  typ->prev = prev_choice;
+#endif
+  RETURN(E_OK);
+}
+
+/* fld_ftchoice.c ends here */
diff --git a/apps/lib/curses/pdcurses/form/fld_ftlink.c b/apps/lib/curses/pdcurses/form/fld_ftlink.c
new file mode 100644
index 0000000..aa5862f
--- /dev/null
+++ b/apps/lib/curses/pdcurses/form/fld_ftlink.c
@@ -0,0 +1,87 @@
+/****************************************************************************
+ * Copyright (c) 1998-2007,2010 Free Software Foundation, Inc.              *
+ *                                                                          *
+ * Permission is hereby granted, free of charge, to any person obtaining a  *
+ * copy of this software and associated documentation files (the            *
+ * "Software"), to deal in the Software without restriction, including      *
+ * without limitation the rights to use, copy, modify, merge, publish,      *
+ * distribute, distribute with modifications, sublicense, and/or sell       *
+ * copies of the Software, and to permit persons to whom the Software is    *
+ * furnished to do so, subject to the following conditions:                 *
+ *                                                                          *
+ * The above copyright notice and this permission notice shall be included  *
+ * in all copies or substantial portions of the Software.                   *
+ *                                                                          *
+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS  *
+ * OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF               *
+ * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.   *
+ * IN NO EVENT SHALL THE ABOVE COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,   *
+ * DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR    *
+ * OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR    *
+ * THE USE OR OTHER DEALINGS IN THE SOFTWARE.                               *
+ *                                                                          *
+ * Except as contained in this notice, the name(s) of the above copyright   *
+ * holders shall not be used in advertising or otherwise to promote the     *
+ * sale, use or other dealings in this Software without prior written       *
+ * authorization.                                                           *
+ ****************************************************************************/
+
+/****************************************************************************
+ *   Author:  Juergen Pfeifer, 1995,1997                                    *
+ ****************************************************************************/
+
+#include "form.priv.h"
+
+MODULE_ID("$Id: fld_ftlink.c,v 1.14 2010/01/23 21:14:35 tom Exp $")
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  FIELDTYPE *link_fieldtype(
+|                                FIELDTYPE *type1,
+|                                FIELDTYPE *type2)
+|
+|   Description   :  Create a new fieldtype built from the two given types.
+|                    They are connected by an logical 'OR'.
+|                    If an error occurs, errno is set to
+|                       E_BAD_ARGUMENT  - invalid arguments
+|                       E_SYSTEM_ERROR  - system error (no memory)
+|
+|   Return Values :  Fieldtype pointer or NULL if error occurred.
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(FIELDTYPE *)
+link_fieldtype(FIELDTYPE *type1, FIELDTYPE *type2)
+{
+  FIELDTYPE *nftyp = (FIELDTYPE *)0;
+
+  T((T_CALLED("link_fieldtype(%p,%p)"), (void *)type1, (void *)type2));
+  if (type1 && type2)
+    {
+      nftyp = typeMalloc(FIELDTYPE, 1);
+
+      if (nftyp)
+	{
+	  T((T_CREATE("fieldtype %p"), (void *)nftyp));
+	  *nftyp = *_nc_Default_FieldType;
+	  nftyp->status |= _LINKED_TYPE;
+	  if ((type1->status & _HAS_ARGS) || (type2->status & _HAS_ARGS))
+	    nftyp->status |= _HAS_ARGS;
+	  if ((type1->status & _HAS_CHOICE) || (type2->status & _HAS_CHOICE))
+	    nftyp->status |= _HAS_CHOICE;
+	  nftyp->left = type1;
+	  nftyp->right = type2;
+	  type1->ref++;
+	  type2->ref++;
+	}
+      else
+	{
+	  SET_ERROR(E_SYSTEM_ERROR);
+	}
+    }
+  else
+    {
+      SET_ERROR(E_BAD_ARGUMENT);
+    }
+  returnFieldType(nftyp);
+}
+
+/* fld_ftlink.c ends here */
diff --git a/apps/lib/curses/pdcurses/form/fld_info.c b/apps/lib/curses/pdcurses/form/fld_info.c
new file mode 100644
index 0000000..da95e65
--- /dev/null
+++ b/apps/lib/curses/pdcurses/form/fld_info.c
@@ -0,0 +1,113 @@
+/****************************************************************************
+ * Copyright (c) 1998-2004,2010 Free Software Foundation, Inc.              *
+ *                                                                          *
+ * Permission is hereby granted, free of charge, to any person obtaining a  *
+ * copy of this software and associated documentation files (the            *
+ * "Software"), to deal in the Software without restriction, including      *
+ * without limitation the rights to use, copy, modify, merge, publish,      *
+ * distribute, distribute with modifications, sublicense, and/or sell       *
+ * copies of the Software, and to permit persons to whom the Software is    *
+ * furnished to do so, subject to the following conditions:                 *
+ *                                                                          *
+ * The above copyright notice and this permission notice shall be included  *
+ * in all copies or substantial portions of the Software.                   *
+ *                                                                          *
+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS  *
+ * OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF               *
+ * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.   *
+ * IN NO EVENT SHALL THE ABOVE COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,   *
+ * DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR    *
+ * OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR    *
+ * THE USE OR OTHER DEALINGS IN THE SOFTWARE.                               *
+ *                                                                          *
+ * Except as contained in this notice, the name(s) of the above copyright   *
+ * holders shall not be used in advertising or otherwise to promote the     *
+ * sale, use or other dealings in this Software without prior written       *
+ * authorization.                                                           *
+ ****************************************************************************/
+
+/****************************************************************************
+ *   Author:  Juergen Pfeifer, 1995,1997                                    *
+ ****************************************************************************/
+
+#include "form.priv.h"
+
+MODULE_ID("$Id: fld_info.c,v 1.11 2010/01/23 21:14:35 tom Exp $")
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  int field_info(const FIELD *field,
+|                                   int *rows, int *cols,
+|                                   int *frow, int *fcol,
+|                                   int *nrow, int *nbuf)
+|
+|   Description   :  Retrieve infos about the fields creation parameters.
+|
+|   Return Values :  E_OK           - success
+|                    E_BAD_ARGUMENT - invalid field pointer
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+field_info(const FIELD *field,
+	   int *rows, int *cols,
+	   int *frow, int *fcol,
+	   int *nrow, int *nbuf)
+{
+  T((T_CALLED("field_info(%p,%p,%p,%p,%p,%p,%p)"),
+     (const void *)field,
+     (void *)rows, (void *)cols,
+     (void *)frow, (void *)fcol,
+     (void *)nrow, (void *)nbuf));
+
+  if (!field)
+    RETURN(E_BAD_ARGUMENT);
+
+  if (rows)
+    *rows = field->rows;
+  if (cols)
+    *cols = field->cols;
+  if (frow)
+    *frow = field->frow;
+  if (fcol)
+    *fcol = field->fcol;
+  if (nrow)
+    *nrow = field->nrow;
+  if (nbuf)
+    *nbuf = field->nbuf;
+  RETURN(E_OK);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  int dynamic_field_info(const FIELD *field,
+|                                           int *drows, int *dcols,
+|                                           int *maxgrow)
+|
+|   Description   :  Retrieve informations about a dynamic fields current
+|                    dynamic parameters.
+|
+|   Return Values :  E_OK           - success
+|                    E_BAD_ARGUMENT - invalid argument
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+dynamic_field_info(const FIELD *field, int *drows, int *dcols, int *maxgrow)
+{
+  T((T_CALLED("dynamic_field_info(%p,%p,%p,%p)"),
+     (const void *)field,
+     (void *)drows,
+     (void *)dcols,
+     (void *)maxgrow));
+
+  if (!field)
+    RETURN(E_BAD_ARGUMENT);
+
+  if (drows)
+    *drows = field->drows;
+  if (dcols)
+    *dcols = field->dcols;
+  if (maxgrow)
+    *maxgrow = field->maxgrow;
+
+  RETURN(E_OK);
+}
+
+/* fld_info.c ends here */
diff --git a/apps/lib/curses/pdcurses/form/fld_just.c b/apps/lib/curses/pdcurses/form/fld_just.c
new file mode 100644
index 0000000..a87ea70
--- /dev/null
+++ b/apps/lib/curses/pdcurses/form/fld_just.c
@@ -0,0 +1,86 @@
+/****************************************************************************
+ * Copyright (c) 1998-2004,2010 Free Software Foundation, Inc.              *
+ *                                                                          *
+ * Permission is hereby granted, free of charge, to any person obtaining a  *
+ * copy of this software and associated documentation files (the            *
+ * "Software"), to deal in the Software without restriction, including      *
+ * without limitation the rights to use, copy, modify, merge, publish,      *
+ * distribute, distribute with modifications, sublicense, and/or sell       *
+ * copies of the Software, and to permit persons to whom the Software is    *
+ * furnished to do so, subject to the following conditions:                 *
+ *                                                                          *
+ * The above copyright notice and this permission notice shall be included  *
+ * in all copies or substantial portions of the Software.                   *
+ *                                                                          *
+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS  *
+ * OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF               *
+ * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.   *
+ * IN NO EVENT SHALL THE ABOVE COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,   *
+ * DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR    *
+ * OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR    *
+ * THE USE OR OTHER DEALINGS IN THE SOFTWARE.                               *
+ *                                                                          *
+ * Except as contained in this notice, the name(s) of the above copyright   *
+ * holders shall not be used in advertising or otherwise to promote the     *
+ * sale, use or other dealings in this Software without prior written       *
+ * authorization.                                                           *
+ ****************************************************************************/
+
+/****************************************************************************
+ *   Author:  Juergen Pfeifer, 1995,1997                                    *
+ ****************************************************************************/
+
+#include "form.priv.h"
+
+MODULE_ID("$Id: fld_just.c,v 1.12 2010/01/23 21:14:35 tom Exp $")
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  int set_field_just(FIELD *field, int just)
+|
+|   Description   :  Set the fields type of justification.
+|
+|   Return Values :  E_OK            - success
+|                    E_BAD_ARGUMENT  - one of the arguments was incorrect
+|                    E_SYSTEM_ERROR  - system error
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+set_field_just(FIELD *field, int just)
+{
+  int res = E_BAD_ARGUMENT;
+
+  T((T_CALLED("set_field_just(%p,%d)"), (void *)field, just));
+
+  if ((just == NO_JUSTIFICATION) ||
+      (just == JUSTIFY_LEFT) ||
+      (just == JUSTIFY_CENTER) ||
+      (just == JUSTIFY_RIGHT))
+    {
+      Normalize_Field(field);
+      if (field->just != just)
+	{
+	  field->just = just;
+	  res = _nc_Synchronize_Attributes(field);
+	}
+      else
+	res = E_OK;
+    }
+  RETURN(res);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  int field_just( const FIELD *field )
+|
+|   Description   :  Retrieve the fields type of justification
+|
+|   Return Values :  The justification type.
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+field_just(const FIELD *field)
+{
+  T((T_CALLED("field_just(%p)"), (const void *)field));
+  returnCode(Normalize_Field(field)->just);
+}
+
+/* fld_just.c ends here */
diff --git a/apps/lib/curses/pdcurses/form/fld_link.c b/apps/lib/curses/pdcurses/form/fld_link.c
new file mode 100644
index 0000000..31b9da0
--- /dev/null
+++ b/apps/lib/curses/pdcurses/form/fld_link.c
@@ -0,0 +1,96 @@
+/****************************************************************************
+ * Copyright (c) 1998-2007,2010 Free Software Foundation, Inc.              *
+ *                                                                          *
+ * Permission is hereby granted, free of charge, to any person obtaining a  *
+ * copy of this software and associated documentation files (the            *
+ * "Software"), to deal in the Software without restriction, including      *
+ * without limitation the rights to use, copy, modify, merge, publish,      *
+ * distribute, distribute with modifications, sublicense, and/or sell       *
+ * copies of the Software, and to permit persons to whom the Software is    *
+ * furnished to do so, subject to the following conditions:                 *
+ *                                                                          *
+ * The above copyright notice and this permission notice shall be included  *
+ * in all copies or substantial portions of the Software.                   *
+ *                                                                          *
+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS  *
+ * OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF               *
+ * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.   *
+ * IN NO EVENT SHALL THE ABOVE COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,   *
+ * DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR    *
+ * OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR    *
+ * THE USE OR OTHER DEALINGS IN THE SOFTWARE.                               *
+ *                                                                          *
+ * Except as contained in this notice, the name(s) of the above copyright   *
+ * holders shall not be used in advertising or otherwise to promote the     *
+ * sale, use or other dealings in this Software without prior written       *
+ * authorization.                                                           *
+ ****************************************************************************/
+
+/****************************************************************************
+ *   Author:  Juergen Pfeifer, 1995,1997                                    *
+ ****************************************************************************/
+
+#include "form.priv.h"
+
+MODULE_ID("$Id: fld_link.c,v 1.12 2010/01/23 21:14:35 tom Exp $")
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  FIELD *link_field(FIELD *field, int frow, int fcol)
+|
+|   Description   :  Duplicates the field at the specified position. The
+|                    new field shares its buffers with the original one,
+|                    the attributes are independent.
+|                    If an error occurs, errno is set to
+|
+|                    E_BAD_ARGUMENT - invalid argument
+|                    E_SYSTEM_ERROR - system error
+|
+|   Return Values :  Pointer to the new field or NULL if failure
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(FIELD *)
+link_field(FIELD *field, int frow, int fcol)
+{
+  FIELD *New_Field = (FIELD *)0;
+  int err = E_BAD_ARGUMENT;
+
+  T((T_CALLED("link_field(%p,%d,%d)"), (void *)field, frow, fcol));
+  if (field && (frow >= 0) && (fcol >= 0) &&
+      ((err = E_SYSTEM_ERROR) != 0) &&	/* trick: this resets the default error */
+      (New_Field = typeMalloc(FIELD, 1)))
+    {
+      T((T_CREATE("field %p"), (void *)New_Field));
+      *New_Field = *_nc_Default_Field;
+      New_Field->frow = frow;
+      New_Field->fcol = fcol;
+
+      New_Field->link = field->link;
+      field->link = New_Field;
+
+      New_Field->buf = field->buf;
+      New_Field->rows = field->rows;
+      New_Field->cols = field->cols;
+      New_Field->nrow = field->nrow;
+      New_Field->nbuf = field->nbuf;
+      New_Field->drows = field->drows;
+      New_Field->dcols = field->dcols;
+      New_Field->maxgrow = field->maxgrow;
+      New_Field->just = field->just;
+      New_Field->fore = field->fore;
+      New_Field->back = field->back;
+      New_Field->pad = field->pad;
+      New_Field->opts = field->opts;
+      New_Field->usrptr = field->usrptr;
+
+      if (_nc_Copy_Type(New_Field, field))
+	returnField(New_Field);
+    }
+
+  if (New_Field)
+    free_field(New_Field);
+
+  SET_ERROR(err);
+  returnField((FIELD *)0);
+}
+
+/* fld_link.c ends here */
diff --git a/apps/lib/curses/pdcurses/form/fld_max.c b/apps/lib/curses/pdcurses/form/fld_max.c
new file mode 100644
index 0000000..91d9819
--- /dev/null
+++ b/apps/lib/curses/pdcurses/form/fld_max.c
@@ -0,0 +1,77 @@
+/****************************************************************************
+ * Copyright (c) 1998-2004,2010 Free Software Foundation, Inc.              *
+ *                                                                          *
+ * Permission is hereby granted, free of charge, to any person obtaining a  *
+ * copy of this software and associated documentation files (the            *
+ * "Software"), to deal in the Software without restriction, including      *
+ * without limitation the rights to use, copy, modify, merge, publish,      *
+ * distribute, distribute with modifications, sublicense, and/or sell       *
+ * copies of the Software, and to permit persons to whom the Software is    *
+ * furnished to do so, subject to the following conditions:                 *
+ *                                                                          *
+ * The above copyright notice and this permission notice shall be included  *
+ * in all copies or substantial portions of the Software.                   *
+ *                                                                          *
+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS  *
+ * OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF               *
+ * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.   *
+ * IN NO EVENT SHALL THE ABOVE COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,   *
+ * DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR    *
+ * OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR    *
+ * THE USE OR OTHER DEALINGS IN THE SOFTWARE.                               *
+ *                                                                          *
+ * Except as contained in this notice, the name(s) of the above copyright   *
+ * holders shall not be used in advertising or otherwise to promote the     *
+ * sale, use or other dealings in this Software without prior written       *
+ * authorization.                                                           *
+ ****************************************************************************/
+
+/****************************************************************************
+ *   Author:  Juergen Pfeifer, 1995,1997                                    *
+ ****************************************************************************/
+
+#include "form.priv.h"
+
+MODULE_ID("$Id: fld_max.c,v 1.10 2010/01/23 21:14:36 tom Exp $")
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  int set_max_field(FIELD *field, int maxgrow)
+|
+|   Description   :  Set the maximum growth for a dynamic field. If maxgrow=0
+|                    the field may grow to any possible size.
+|
+|   Return Values :  E_OK           - success
+|                    E_BAD_ARGUMENT - invalid argument
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+set_max_field(FIELD *field, int maxgrow)
+{
+  T((T_CALLED("set_max_field(%p,%d)"), (void *)field, maxgrow));
+
+  if (!field || (maxgrow < 0))
+    RETURN(E_BAD_ARGUMENT);
+  else
+    {
+      bool single_line_field = Single_Line_Field(field);
+
+      if (maxgrow > 0)
+	{
+	  if ((single_line_field && (maxgrow < field->dcols)) ||
+	      (!single_line_field && (maxgrow < field->drows)))
+	    RETURN(E_BAD_ARGUMENT);
+	}
+      field->maxgrow = maxgrow;
+      field->status &= ~_MAY_GROW;
+      if (!(field->opts & O_STATIC))
+	{
+	  if ((maxgrow == 0) ||
+	      (single_line_field && (field->dcols < maxgrow)) ||
+	      (!single_line_field && (field->drows < maxgrow)))
+	    field->status |= _MAY_GROW;
+	}
+    }
+  RETURN(E_OK);
+}
+
+/* fld_max.c ends here */
diff --git a/apps/lib/curses/pdcurses/form/fld_move.c b/apps/lib/curses/pdcurses/form/fld_move.c
new file mode 100644
index 0000000..24652ea
--- /dev/null
+++ b/apps/lib/curses/pdcurses/form/fld_move.c
@@ -0,0 +1,64 @@
+/****************************************************************************
+ * Copyright (c) 1998-2004,2010 Free Software Foundation, Inc.              *
+ *                                                                          *
+ * Permission is hereby granted, free of charge, to any person obtaining a  *
+ * copy of this software and associated documentation files (the            *
+ * "Software"), to deal in the Software without restriction, including      *
+ * without limitation the rights to use, copy, modify, merge, publish,      *
+ * distribute, distribute with modifications, sublicense, and/or sell       *
+ * copies of the Software, and to permit persons to whom the Software is    *
+ * furnished to do so, subject to the following conditions:                 *
+ *                                                                          *
+ * The above copyright notice and this permission notice shall be included  *
+ * in all copies or substantial portions of the Software.                   *
+ *                                                                          *
+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS  *
+ * OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF               *
+ * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.   *
+ * IN NO EVENT SHALL THE ABOVE COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,   *
+ * DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR    *
+ * OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR    *
+ * THE USE OR OTHER DEALINGS IN THE SOFTWARE.                               *
+ *                                                                          *
+ * Except as contained in this notice, the name(s) of the above copyright   *
+ * holders shall not be used in advertising or otherwise to promote the     *
+ * sale, use or other dealings in this Software without prior written       *
+ * authorization.                                                           *
+ ****************************************************************************/
+
+/****************************************************************************
+ *   Author:  Juergen Pfeifer, 1995,1997                                    *
+ ****************************************************************************/
+
+#include "form.priv.h"
+
+MODULE_ID("$Id: fld_move.c,v 1.10 2010/01/23 21:14:36 tom Exp $")
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  int move_field(FIELD *field,int frow, int fcol)
+|
+|   Description   :  Moves the disconnected field to the new location in
+|                    the forms subwindow.
+|
+|   Return Values :  E_OK            - success
+|                    E_BAD_ARGUMENT  - invalid argument passed
+|                    E_CONNECTED     - field is connected
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+move_field(FIELD *field, int frow, int fcol)
+{
+  T((T_CALLED("move_field(%p,%d,%d)"), (void *)field, frow, fcol));
+
+  if (!field || (frow < 0) || (fcol < 0))
+    RETURN(E_BAD_ARGUMENT);
+
+  if (field->form)
+    RETURN(E_CONNECTED);
+
+  field->frow = frow;
+  field->fcol = fcol;
+  RETURN(E_OK);
+}
+
+/* fld_move.c ends here */
diff --git a/apps/lib/curses/pdcurses/form/fld_newftyp.c b/apps/lib/curses/pdcurses/form/fld_newftyp.c
new file mode 100644
index 0000000..4351aed
--- /dev/null
+++ b/apps/lib/curses/pdcurses/form/fld_newftyp.c
@@ -0,0 +1,143 @@
+/****************************************************************************
+ * Copyright (c) 1998-2009,2010 Free Software Foundation, Inc.              *
+ *                                                                          *
+ * Permission is hereby granted, free of charge, to any person obtaining a  *
+ * copy of this software and associated documentation files (the            *
+ * "Software"), to deal in the Software without restriction, including      *
+ * without limitation the rights to use, copy, modify, merge, publish,      *
+ * distribute, distribute with modifications, sublicense, and/or sell       *
+ * copies of the Software, and to permit persons to whom the Software is    *
+ * furnished to do so, subject to the following conditions:                 *
+ *                                                                          *
+ * The above copyright notice and this permission notice shall be included  *
+ * in all copies or substantial portions of the Software.                   *
+ *                                                                          *
+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS  *
+ * OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF               *
+ * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.   *
+ * IN NO EVENT SHALL THE ABOVE COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,   *
+ * DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR    *
+ * OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR    *
+ * THE USE OR OTHER DEALINGS IN THE SOFTWARE.                               *
+ *                                                                          *
+ * Except as contained in this notice, the name(s) of the above copyright   *
+ * holders shall not be used in advertising or otherwise to promote the     *
+ * sale, use or other dealings in this Software without prior written       *
+ * authorization.                                                           *
+ ****************************************************************************/
+
+/****************************************************************************
+ *   Author:  Juergen Pfeifer, 1995,1997                                    *
+ ****************************************************************************/
+
+#include "form.priv.h"
+
+MODULE_ID("$Id: fld_newftyp.c,v 1.19 2010/01/23 21:14:36 tom Exp $")
+
+static FIELDTYPE default_fieldtype =
+{
+  0,				/* status                                      */
+  0L,				/* reference count                             */
+  (FIELDTYPE *)0,		/* pointer to left  operand                    */
+  (FIELDTYPE *)0,		/* pointer to right operand                    */
+  NULL,				/* makearg function                            */
+  NULL,				/* copyarg function                            */
+  NULL,				/* freearg function                            */
+  INIT_FT_FUNC(NULL),		/* field validation function                   */
+  INIT_FT_FUNC(NULL),		/* Character check function                    */
+  INIT_FT_FUNC(NULL),		/* enumerate next function                     */
+  INIT_FT_FUNC(NULL),		/* enumerate previous function                 */
+#if NCURSES_INTEROP_FUNCS
+  NULL				/* generic callback alternative to makearg     */
+#endif
+};
+
+NCURSES_EXPORT_VAR(FIELDTYPE *)
+_nc_Default_FieldType = &default_fieldtype;
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  FIELDTYPE *new_fieldtype(
+|                       bool (* const field_check)(FIELD *,const void *),
+|                       bool (* const char_check) (int, const void *) )
+|
+|   Description   :  Create a new fieldtype. The application programmer must
+|                    write a field_check and a char_check function and give
+|                    them as input to this call.
+|                    If an error occurs, errno is set to
+|                       E_BAD_ARGUMENT  - invalid arguments
+|                       E_SYSTEM_ERROR  - system error (no memory)
+|
+|   Return Values :  Fieldtype pointer or NULL if error occurred
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(FIELDTYPE *)
+new_fieldtype(bool (*const field_check) (FIELD *, const void *),
+	      bool (*const char_check) (int, const void *))
+{
+  FIELDTYPE *nftyp = (FIELDTYPE *)0;
+
+  T((T_CALLED("new_fieldtype(%p,%p)"), field_check, char_check));
+  if ((field_check) || (char_check))
+    {
+      nftyp = typeMalloc(FIELDTYPE, 1);
+
+      if (nftyp)
+	{
+	  T((T_CREATE("fieldtype %p"), (void *)nftyp));
+	  *nftyp = default_fieldtype;
+#if NCURSES_INTEROP_FUNCS
+	  nftyp->fieldcheck.ofcheck = field_check;
+	  nftyp->charcheck.occheck = char_check;
+#else
+	  nftyp->fcheck = field_check;
+	  nftyp->ccheck = char_check;
+#endif
+	}
+      else
+	{
+	  SET_ERROR(E_SYSTEM_ERROR);
+	}
+    }
+  else
+    {
+      SET_ERROR(E_BAD_ARGUMENT);
+    }
+  returnFieldType(nftyp);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  int free_fieldtype(FIELDTYPE *typ)
+|
+|   Description   :  Release the memory associated with this fieldtype.
+|
+|   Return Values :  E_OK            - success
+|                    E_CONNECTED     - there are fields referencing the type
+|                    E_BAD_ARGUMENT  - invalid fieldtype pointer
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+free_fieldtype(FIELDTYPE *typ)
+{
+  T((T_CALLED("free_fieldtype(%p)"), (void *)typ));
+
+  if (!typ)
+    RETURN(E_BAD_ARGUMENT);
+
+  if (typ->ref != 0)
+    RETURN(E_CONNECTED);
+
+  if (typ->status & _RESIDENT)
+    RETURN(E_CONNECTED);
+
+  if (typ->status & _LINKED_TYPE)
+    {
+      if (typ->left)
+	typ->left->ref--;
+      if (typ->right)
+	typ->right->ref--;
+    }
+  free(typ);
+  RETURN(E_OK);
+}
+
+/* fld_newftyp.c ends here */
diff --git a/apps/lib/curses/pdcurses/form/fld_opts.c b/apps/lib/curses/pdcurses/form/fld_opts.c
new file mode 100644
index 0000000..4e92bd9
--- /dev/null
+++ b/apps/lib/curses/pdcurses/form/fld_opts.c
@@ -0,0 +1,138 @@
+/****************************************************************************
+ * Copyright (c) 1998-2004,2010 Free Software Foundation, Inc.              *
+ *                                                                          *
+ * Permission is hereby granted, free of charge, to any person obtaining a  *
+ * copy of this software and associated documentation files (the            *
+ * "Software"), to deal in the Software without restriction, including      *
+ * without limitation the rights to use, copy, modify, merge, publish,      *
+ * distribute, distribute with modifications, sublicense, and/or sell       *
+ * copies of the Software, and to permit persons to whom the Software is    *
+ * furnished to do so, subject to the following conditions:                 *
+ *                                                                          *
+ * The above copyright notice and this permission notice shall be included  *
+ * in all copies or substantial portions of the Software.                   *
+ *                                                                          *
+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS  *
+ * OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF               *
+ * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.   *
+ * IN NO EVENT SHALL THE ABOVE COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,   *
+ * DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR    *
+ * OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR    *
+ * THE USE OR OTHER DEALINGS IN THE SOFTWARE.                               *
+ *                                                                          *
+ * Except as contained in this notice, the name(s) of the above copyright   *
+ * holders shall not be used in advertising or otherwise to promote the     *
+ * sale, use or other dealings in this Software without prior written       *
+ * authorization.                                                           *
+ ****************************************************************************/
+
+/****************************************************************************
+ *   Author:  Juergen Pfeifer, 1995,1997                                    *
+ ****************************************************************************/
+
+#include "form.priv.h"
+
+MODULE_ID("$Id: fld_opts.c,v 1.12 2010/01/23 21:14:36 tom Exp $")
+
+/*----------------------------------------------------------------------------
+  Field-Options manipulation routines
+  --------------------------------------------------------------------------*/
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  int set_field_opts(FIELD *field, Field_Options opts)
+|
+|   Description   :  Turns on the named options for this field and turns
+|                    off all the remaining options.
+|
+|   Return Values :  E_OK            - success
+|                    E_CURRENT       - the field is the current field
+|                    E_BAD_ARGUMENT  - invalid options
+|                    E_SYSTEM_ERROR  - system error
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+set_field_opts(FIELD *field, Field_Options opts)
+{
+  int res = E_BAD_ARGUMENT;
+
+  T((T_CALLED("set_field_opts(%p,%d)"), (void *)field, opts));
+
+  opts &= ALL_FIELD_OPTS;
+  if (!(opts & ~ALL_FIELD_OPTS))
+    res = _nc_Synchronize_Options(Normalize_Field(field), opts);
+  RETURN(res);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  Field_Options field_opts(const FIELD *field)
+|
+|   Description   :  Retrieve the fields options.
+|
+|   Return Values :  The options.
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(Field_Options)
+field_opts(const FIELD *field)
+{
+  T((T_CALLED("field_opts(%p)"), (const void *)field));
+
+  returnCode(ALL_FIELD_OPTS & Normalize_Field(field)->opts);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  int field_opts_on(FIELD *field, Field_Options opts)
+|
+|   Description   :  Turns on the named options for this field and all the
+|                    remaining options are unchanged.
+|
+|   Return Values :  E_OK            - success
+|                    E_CURRENT       - the field is the current field
+|                    E_BAD_ARGUMENT  - invalid options
+|                    E_SYSTEM_ERROR  - system error
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+field_opts_on(FIELD *field, Field_Options opts)
+{
+  int res = E_BAD_ARGUMENT;
+
+  T((T_CALLED("field_opts_on(%p,%d)"), (void *)field, opts));
+
+  opts &= ALL_FIELD_OPTS;
+  if (!(opts & ~ALL_FIELD_OPTS))
+    {
+      Normalize_Field(field);
+      res = _nc_Synchronize_Options(field, field->opts | opts);
+    }
+  RETURN(res);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  int field_opts_off(FIELD *field, Field_Options opts)
+|
+|   Description   :  Turns off the named options for this field and all the
+|                    remaining options are unchanged.
+|
+|   Return Values :  E_OK            - success
+|                    E_CURRENT       - the field is the current field
+|                    E_BAD_ARGUMENT  - invalid options
+|                    E_SYSTEM_ERROR  - system error
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+field_opts_off(FIELD *field, Field_Options opts)
+{
+  int res = E_BAD_ARGUMENT;
+
+  T((T_CALLED("field_opts_off(%p,%d)"), (void *)field, opts));
+
+  opts &= ALL_FIELD_OPTS;
+  if (!(opts & ~ALL_FIELD_OPTS))
+    {
+      Normalize_Field(field);
+      res = _nc_Synchronize_Options(field, field->opts & ~opts);
+    }
+  RETURN(res);
+}
+
+/* fld_opts.c ends here */
diff --git a/apps/lib/curses/pdcurses/form/fld_pad.c b/apps/lib/curses/pdcurses/form/fld_pad.c
new file mode 100644
index 0000000..37df703
--- /dev/null
+++ b/apps/lib/curses/pdcurses/form/fld_pad.c
@@ -0,0 +1,85 @@
+/****************************************************************************
+ * Copyright (c) 1998-2004,2010 Free Software Foundation, Inc.              *
+ *                                                                          *
+ * Permission is hereby granted, free of charge, to any person obtaining a  *
+ * copy of this software and associated documentation files (the            *
+ * "Software"), to deal in the Software without restriction, including      *
+ * without limitation the rights to use, copy, modify, merge, publish,      *
+ * distribute, distribute with modifications, sublicense, and/or sell       *
+ * copies of the Software, and to permit persons to whom the Software is    *
+ * furnished to do so, subject to the following conditions:                 *
+ *                                                                          *
+ * The above copyright notice and this permission notice shall be included  *
+ * in all copies or substantial portions of the Software.                   *
+ *                                                                          *
+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS  *
+ * OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF               *
+ * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.   *
+ * IN NO EVENT SHALL THE ABOVE COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,   *
+ * DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR    *
+ * OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR    *
+ * THE USE OR OTHER DEALINGS IN THE SOFTWARE.                               *
+ *                                                                          *
+ * Except as contained in this notice, the name(s) of the above copyright   *
+ * holders shall not be used in advertising or otherwise to promote the     *
+ * sale, use or other dealings in this Software without prior written       *
+ * authorization.                                                           *
+ ****************************************************************************/
+
+/****************************************************************************
+ *   Author:  Juergen Pfeifer, 1995,1997                                    *
+ ****************************************************************************/
+
+#include "form.priv.h"
+
+MODULE_ID("$Id: fld_pad.c,v 1.10 2010/01/23 21:14:36 tom Exp $")
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  int set_field_pad(FIELD *field, int ch)
+|
+|   Description   :  Set the pad character used to fill the field. This must
+|                    be a printable character.
+|
+|   Return Values :  E_OK           - success
+|                    E_BAD_ARGUMENT - invalid field pointer or pad character
+|                    E_SYSTEM_ERROR - system error
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+set_field_pad(FIELD *field, int ch)
+{
+  int res = E_BAD_ARGUMENT;
+
+  T((T_CALLED("set_field_pad(%p,%d)"), (void *)field, ch));
+
+  Normalize_Field(field);
+  if (isprint(UChar(ch)))
+    {
+      if (field->pad != ch)
+	{
+	  field->pad = ch;
+	  res = _nc_Synchronize_Attributes(field);
+	}
+      else
+	res = E_OK;
+    }
+  RETURN(res);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  int field_pad(const FIELD *field)
+|
+|   Description   :  Retrieve the fields pad character.
+|
+|   Return Values :  The pad character.
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+field_pad(const FIELD *field)
+{
+  T((T_CALLED("field_pad(%p)"), (const void *)field));
+
+  returnCode(Normalize_Field(field)->pad);
+}
+
+/* fld_pad.c ends here */
diff --git a/apps/lib/curses/pdcurses/form/fld_page.c b/apps/lib/curses/pdcurses/form/fld_page.c
new file mode 100644
index 0000000..67f48a1
--- /dev/null
+++ b/apps/lib/curses/pdcurses/form/fld_page.c
@@ -0,0 +1,82 @@
+/****************************************************************************
+ * Copyright (c) 1998-2004,2010 Free Software Foundation, Inc.              *
+ *                                                                          *
+ * Permission is hereby granted, free of charge, to any person obtaining a  *
+ * copy of this software and associated documentation files (the            *
+ * "Software"), to deal in the Software without restriction, including      *
+ * without limitation the rights to use, copy, modify, merge, publish,      *
+ * distribute, distribute with modifications, sublicense, and/or sell       *
+ * copies of the Software, and to permit persons to whom the Software is    *
+ * furnished to do so, subject to the following conditions:                 *
+ *                                                                          *
+ * The above copyright notice and this permission notice shall be included  *
+ * in all copies or substantial portions of the Software.                   *
+ *                                                                          *
+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS  *
+ * OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF               *
+ * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.   *
+ * IN NO EVENT SHALL THE ABOVE COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,   *
+ * DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR    *
+ * OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR    *
+ * THE USE OR OTHER DEALINGS IN THE SOFTWARE.                               *
+ *                                                                          *
+ * Except as contained in this notice, the name(s) of the above copyright   *
+ * holders shall not be used in advertising or otherwise to promote the     *
+ * sale, use or other dealings in this Software without prior written       *
+ * authorization.                                                           *
+ ****************************************************************************/
+
+/****************************************************************************
+ *   Author:  Juergen Pfeifer, 1995,1997                                    *
+ ****************************************************************************/
+
+#include "form.priv.h"
+
+MODULE_ID("$Id: fld_page.c,v 1.10 2010/01/23 21:14:36 tom Exp $")
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  int set_new_page(FIELD *field, bool new_page_flag)
+|
+|   Description   :  Marks the field as the beginning of a new page of
+|                    the form.
+|
+|   Return Values :  E_OK         - success
+|                    E_CONNECTED  - field is connected
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+set_new_page(FIELD *field, bool new_page_flag)
+{
+  T((T_CALLED("set_new_page(%p,%d)"), (void *)field, new_page_flag));
+
+  Normalize_Field(field);
+  if (field->form)
+    RETURN(E_CONNECTED);
+
+  if (new_page_flag)
+    field->status |= _NEWPAGE;
+  else
+    field->status &= ~_NEWPAGE;
+
+  RETURN(E_OK);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  bool new_page(const FIELD *field)
+|
+|   Description   :  Retrieve the info whether or not the field starts a
+|                    new page on the form.
+|
+|   Return Values :  TRUE  - field starts a new page
+|                    FALSE - field doesn't start a new page
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(bool)
+new_page(const FIELD *field)
+{
+  T((T_CALLED("new_page(%p)"), (const void *)field));
+
+  returnBool((Normalize_Field(field)->status & _NEWPAGE) ? TRUE : FALSE);
+}
+
+/* fld_page.c ends here */
diff --git a/apps/lib/curses/pdcurses/form/fld_stat.c b/apps/lib/curses/pdcurses/form/fld_stat.c
new file mode 100644
index 0000000..bc5ba50
--- /dev/null
+++ b/apps/lib/curses/pdcurses/form/fld_stat.c
@@ -0,0 +1,79 @@
+/****************************************************************************
+ * Copyright (c) 1998-2004,2010 Free Software Foundation, Inc.              *
+ *                                                                          *
+ * Permission is hereby granted, free of charge, to any person obtaining a  *
+ * copy of this software and associated documentation files (the            *
+ * "Software"), to deal in the Software without restriction, including      *
+ * without limitation the rights to use, copy, modify, merge, publish,      *
+ * distribute, distribute with modifications, sublicense, and/or sell       *
+ * copies of the Software, and to permit persons to whom the Software is    *
+ * furnished to do so, subject to the following conditions:                 *
+ *                                                                          *
+ * The above copyright notice and this permission notice shall be included  *
+ * in all copies or substantial portions of the Software.                   *
+ *                                                                          *
+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS  *
+ * OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF               *
+ * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.   *
+ * IN NO EVENT SHALL THE ABOVE COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,   *
+ * DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR    *
+ * OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR    *
+ * THE USE OR OTHER DEALINGS IN THE SOFTWARE.                               *
+ *                                                                          *
+ * Except as contained in this notice, the name(s) of the above copyright   *
+ * holders shall not be used in advertising or otherwise to promote the     *
+ * sale, use or other dealings in this Software without prior written       *
+ * authorization.                                                           *
+ ****************************************************************************/
+
+/****************************************************************************
+ *   Author:  Juergen Pfeifer, 1995,1997                                    *
+ ****************************************************************************/
+
+#include "form.priv.h"
+
+MODULE_ID("$Id: fld_stat.c,v 1.12 2010/01/23 21:14:36 tom Exp $")
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  int set_field_status(FIELD *field, bool status)
+|
+|   Description   :  Set or clear the 'changed' indication flag for that
+|                    fields primary buffer.
+|
+|   Return Values :  E_OK            - success
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+set_field_status(FIELD *field, bool status)
+{
+  T((T_CALLED("set_field_status(%p,%d)"), (void *)field, status));
+
+  Normalize_Field(field);
+
+  if (status)
+    field->status |= _CHANGED;
+  else
+    field->status &= ~_CHANGED;
+
+  RETURN(E_OK);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  bool field_status(const FIELD *field)
+|
+|   Description   :  Retrieve the value of the 'changed' indication flag
+|                    for that fields primary buffer.
+|
+|   Return Values :  TRUE  - buffer has been changed
+|                    FALSE - buffer has not been changed
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(bool)
+field_status(const FIELD *field)
+{
+  T((T_CALLED("field_status(%p)"), (const void *)field));
+
+  returnBool((Normalize_Field(field)->status & _CHANGED) ? TRUE : FALSE);
+}
+
+/* fld_stat.c ends here */
diff --git a/apps/lib/curses/pdcurses/form/fld_type.c b/apps/lib/curses/pdcurses/form/fld_type.c
new file mode 100644
index 0000000..1117a56
--- /dev/null
+++ b/apps/lib/curses/pdcurses/form/fld_type.c
@@ -0,0 +1,97 @@
+/****************************************************************************
+ * Copyright (c) 1998-2004,2010 Free Software Foundation, Inc.              *
+ *                                                                          *
+ * Permission is hereby granted, free of charge, to any person obtaining a  *
+ * copy of this software and associated documentation files (the            *
+ * "Software"), to deal in the Software without restriction, including      *
+ * without limitation the rights to use, copy, modify, merge, publish,      *
+ * distribute, distribute with modifications, sublicense, and/or sell       *
+ * copies of the Software, and to permit persons to whom the Software is    *
+ * furnished to do so, subject to the following conditions:                 *
+ *                                                                          *
+ * The above copyright notice and this permission notice shall be included  *
+ * in all copies or substantial portions of the Software.                   *
+ *                                                                          *
+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS  *
+ * OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF               *
+ * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.   *
+ * IN NO EVENT SHALL THE ABOVE COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,   *
+ * DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR    *
+ * OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR    *
+ * THE USE OR OTHER DEALINGS IN THE SOFTWARE.                               *
+ *                                                                          *
+ * Except as contained in this notice, the name(s) of the above copyright   *
+ * holders shall not be used in advertising or otherwise to promote the     *
+ * sale, use or other dealings in this Software without prior written       *
+ * authorization.                                                           *
+ ****************************************************************************/
+
+/****************************************************************************
+ *   Author:  Juergen Pfeifer, 1995,1997                                    *
+ ****************************************************************************/
+
+#include "form.priv.h"
+
+MODULE_ID("$Id: fld_type.c,v 1.16 2010/01/23 21:14:36 tom Exp $")
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  int set_field_type(FIELD *field, FIELDTYPE *type,...)
+|
+|   Description   :  Associate the specified fieldtype with the field.
+|                    Certain field types take additional arguments. Look
+|                    at the spec of the field types !
+|
+|   Return Values :  E_OK           - success
+|                    E_SYSTEM_ERROR - system error
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+set_field_type(FIELD *field, FIELDTYPE *type,...)
+{
+  va_list ap;
+  int res = E_SYSTEM_ERROR;
+  int err = 0;
+
+  T((T_CALLED("set_field_type(%p,%p)"), (void *)field, (void *)type));
+
+  va_start(ap, type);
+
+  Normalize_Field(field);
+  _nc_Free_Type(field);
+
+  field->type = type;
+  field->arg = (void *)_nc_Make_Argument(field->type, &ap, &err);
+
+  if (err)
+    {
+      _nc_Free_Argument(field->type, (TypeArgument *)(field->arg));
+      field->type = (FIELDTYPE *)0;
+      field->arg = (void *)0;
+    }
+  else
+    {
+      res = E_OK;
+      if (field->type)
+	field->type->ref++;
+    }
+
+  va_end(ap);
+  RETURN(res);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  FIELDTYPE *field_type(const FIELD *field)
+|
+|   Description   :  Retrieve the associated fieldtype for this field.
+|
+|   Return Values :  Pointer to fieldtype of NULL if none is defined.
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(FIELDTYPE *)
+field_type(const FIELD *field)
+{
+  T((T_CALLED("field_type(%p)"), (const void *)field));
+  returnFieldType(Normalize_Field(field)->type);
+}
+
+/* fld_type.c ends here */
diff --git a/apps/lib/curses/pdcurses/form/fld_user.c b/apps/lib/curses/pdcurses/form/fld_user.c
new file mode 100644
index 0000000..075580b
--- /dev/null
+++ b/apps/lib/curses/pdcurses/form/fld_user.c
@@ -0,0 +1,72 @@
+/****************************************************************************
+ * Copyright (c) 1998-2004,2010 Free Software Foundation, Inc.              *
+ *                                                                          *
+ * Permission is hereby granted, free of charge, to any person obtaining a  *
+ * copy of this software and associated documentation files (the            *
+ * "Software"), to deal in the Software without restriction, including      *
+ * without limitation the rights to use, copy, modify, merge, publish,      *
+ * distribute, distribute with modifications, sublicense, and/or sell       *
+ * copies of the Software, and to permit persons to whom the Software is    *
+ * furnished to do so, subject to the following conditions:                 *
+ *                                                                          *
+ * The above copyright notice and this permission notice shall be included  *
+ * in all copies or substantial portions of the Software.                   *
+ *                                                                          *
+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS  *
+ * OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF               *
+ * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.   *
+ * IN NO EVENT SHALL THE ABOVE COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,   *
+ * DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR    *
+ * OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR    *
+ * THE USE OR OTHER DEALINGS IN THE SOFTWARE.                               *
+ *                                                                          *
+ * Except as contained in this notice, the name(s) of the above copyright   *
+ * holders shall not be used in advertising or otherwise to promote the     *
+ * sale, use or other dealings in this Software without prior written       *
+ * authorization.                                                           *
+ ****************************************************************************/
+
+/****************************************************************************
+ *   Author:  Juergen Pfeifer, 1995,1997                                    *
+ ****************************************************************************/
+
+#include "form.priv.h"
+
+MODULE_ID("$Id: fld_user.c,v 1.16 2010/01/23 21:14:36 tom Exp $")
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  int set_field_userptr(FIELD *field, void *usrptr)
+|
+|   Description   :  Set the pointer that is reserved in any field to store
+|                    application relevant informations
+|
+|   Return Values :  E_OK         - on success
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+set_field_userptr(FIELD *field, void *usrptr)
+{
+  T((T_CALLED("set_field_userptr(%p,%p)"), (void *)field, (void *)usrptr));
+
+  Normalize_Field(field)->usrptr = usrptr;
+  RETURN(E_OK);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  void *field_userptr(const FIELD *field)
+|
+|   Description   :  Return the pointer that is reserved in any field to
+|                    store application relevant informations.
+|
+|   Return Values :  Value of pointer. If no such pointer has been set,
+|                    NULL is returned
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(void *)
+field_userptr(const FIELD *field)
+{
+  T((T_CALLED("field_userptr(%p)"), (const void *)field));
+  returnVoidPtr(Normalize_Field(field)->usrptr);
+}
+
+/* fld_user.c ends here */
diff --git a/apps/lib/curses/pdcurses/form/form.h b/apps/lib/curses/pdcurses/form/form.h
new file mode 100644
index 0000000..d7bb85a
--- /dev/null
+++ b/apps/lib/curses/pdcurses/form/form.h
@@ -0,0 +1,423 @@
+/****************************************************************************
+ * Copyright (c) 1998-2004,2009 Free Software Foundation, Inc.              *
+ *                                                                          *
+ * Permission is hereby granted, free of charge, to any person obtaining a  *
+ * copy of this software and associated documentation files (the            *
+ * "Software"), to deal in the Software without restriction, including      *
+ * without limitation the rights to use, copy, modify, merge, publish,      *
+ * distribute, distribute with modifications, sublicense, and/or sell       *
+ * copies of the Software, and to permit persons to whom the Software is    *
+ * furnished to do so, subject to the following conditions:                 *
+ *                                                                          *
+ * The above copyright notice and this permission notice shall be included  *
+ * in all copies or substantial portions of the Software.                   *
+ *                                                                          *
+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS  *
+ * OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF               *
+ * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.   *
+ * IN NO EVENT SHALL THE ABOVE COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,   *
+ * DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR    *
+ * OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR    *
+ * THE USE OR OTHER DEALINGS IN THE SOFTWARE.                               *
+ *                                                                          *
+ * Except as contained in this notice, the name(s) of the above copyright   *
+ * holders shall not be used in advertising or otherwise to promote the     *
+ * sale, use or other dealings in this Software without prior written       *
+ * authorization.                                                           *
+ ****************************************************************************/
+
+/****************************************************************************
+ *   Author:  Juergen Pfeifer, 1995,1997                                    *
+ ****************************************************************************/
+
+/* $Id: form.h,v 0.21 2009/11/07 19:31:11 tom Exp $ */
+
+#ifndef FORM_H
+#define FORM_H
+
+#include <curses.h>
+#include <eti.h>
+#include <ncurses_cfg.h>
+
+#ifdef __cplusplus
+  extern "C" {
+#endif
+
+#ifndef FORM_PRIV_H
+typedef void *FIELD_CELL;
+#endif
+
+#ifndef NCURSES_FIELD_INTERNALS
+#define NCURSES_FIELD_INTERNALS /* nothing */
+#endif
+
+typedef int Form_Options;
+typedef int Field_Options;
+
+	/**********
+	*  _PAGE  *
+	**********/
+
+typedef struct {
+  short pmin;		/* index of first field on page			*/
+  short pmax;		/* index of last field on page			*/
+  short smin;		/* index of top leftmost field on page		*/
+  short smax;		/* index of bottom rightmost field on page	*/
+} _PAGE;
+
+	/**********
+	*  FIELD  *
+	**********/
+
+typedef struct fieldnode {
+  unsigned short	status;		/* flags			*/
+  short			rows;		/* size in rows			*/
+  short			cols;		/* size in cols			*/
+  short			frow;		/* first row			*/
+  short			fcol;		/* first col			*/
+  int			drows;		/* dynamic rows			*/
+  int			dcols;		/* dynamic cols			*/
+  int			maxgrow;	/* maximum field growth		*/
+  int			nrow;		/* off-screen rows		*/
+  short			nbuf;		/* additional buffers		*/
+  short			just;		/* justification		*/
+  short			page;		/* page on form			*/
+  short			index;		/* into form -> field		*/
+  int			pad;		/* pad character		*/
+  chtype		fore;		/* foreground attribute		*/
+  chtype		back;		/* background attribute		*/
+  Field_Options		opts;		/* options			*/
+  struct fieldnode *	snext;		/* sorted order pointer		*/
+  struct fieldnode *	sprev;		/* sorted order pointer		*/
+  struct fieldnode *	link;		/* linked field chain		*/
+  struct formnode *	form;		/* containing form		*/
+  struct typenode *	type;		/* field type			*/
+  void *		arg;		/* argument for type		*/
+  FIELD_CELL *		buf;		/* field buffers		*/
+  void *		usrptr;		/* user pointer			*/
+  /*
+   * The wide-character configuration requires extra information.  Because
+   * there are existing applications that manipulate the members of FIELD
+   * directly, we cannot make the struct opaque.  Offsets of members up to
+   * this point are the same in the narrow- and wide-character configuration.
+   * But note that the type of buf depends on the configuration, and is made
+   * opaque for that reason.
+   */
+  NCURSES_FIELD_INTERNALS
+} FIELD;
+
+
+	/*********
+	*  FORM  *
+	*********/
+
+typedef struct formnode {
+  unsigned short	status;	  	/* flags			*/
+  short			rows;		/* size in rows			*/
+  short			cols;		/* size in cols			*/
+  int			currow;		/* current row in field window	*/
+  int			curcol;		/* current col in field window	*/
+  int			toprow;		/* in scrollable field window	*/
+  int			begincol;	/* in horiz. scrollable field	*/
+  short			maxfield;	/* number of fields		*/
+  short			maxpage;	/* number of pages		*/
+  short			curpage;	/* index into page		*/
+  Form_Options		opts;		/* options			*/
+  WINDOW *		win;		/* window			*/
+  WINDOW *		sub;		/* subwindow			*/
+  WINDOW *		w;		/* window for current field	*/
+  FIELD **		field;		/* field [maxfield]		*/
+  FIELD *		current;	/* current field		*/
+  _PAGE *		page;		/* page [maxpage]		*/
+  void *		usrptr;		/* user pointer			*/
+
+  void			(*forminit)(struct formnode *);
+  void			(*formterm)(struct formnode *);
+  void			(*fieldinit)(struct formnode *);
+  void			(*fieldterm)(struct formnode *);
+
+} FORM;
+
+
+	/**************
+	*  FIELDTYPE  *
+	**************/
+
+typedef struct typenode {
+  unsigned short	status;			/* flags		    */
+  long			ref;			/* reference count	    */
+  struct typenode *	left;			/* ptr to operand for |     */
+  struct typenode *	right;			/* ptr to operand for |     */
+
+  void* (*makearg)(va_list *);			/* make fieldtype arg	    */
+  void* (*copyarg)(const void *);		/* copy fieldtype arg 	    */
+  void	(*freearg)(void *);			/* free fieldtype arg	    */
+
+#if NCURSES_INTEROP_FUNCS
+  union {
+    bool (*ofcheck)(FIELD *,const void *);	/* field validation	    */
+    bool (*gfcheck)(FORM*,FIELD *,const void*);	/* generic field validation */
+  } fieldcheck;
+  union {
+    bool (*occheck)(int,const void *);		/* character validation     */
+    bool (*gccheck)(int,FORM*,
+		    FIELD*,const void*);        /* generic char validation  */
+  } charcheck;
+  union {
+    bool (*onext)(FIELD *,const void *);        /* enumerate next value     */
+    bool (*gnext)(FORM*,FIELD*,const void*);    /* generic enumerate next   */
+  } enum_next;
+  union {
+    bool (*oprev)(FIELD *,const void *);	/* enumerate prev value     */
+    bool (*gprev)(FORM*,FIELD*,const void*);    /* generic enumerate prev   */
+  } enum_prev;
+  void* (*genericarg)(void*);                   /* Alternate Arg method     */
+#else
+  bool	(*fcheck)(FIELD *,const void *);	/* field validation	*/
+  bool	(*ccheck)(int,const void *);		/* character validation */
+
+  bool	(*next)(FIELD *,const void *);		/* enumerate next value */
+  bool	(*prev)(FIELD *,const void *);		/* enumerate prev value */
+#endif
+} FIELDTYPE;
+
+typedef void (*Form_Hook)(FORM *);
+
+	/***************************
+	*  miscellaneous #defines  *
+	***************************/
+
+/* field justification */
+#define NO_JUSTIFICATION	(0)
+#define JUSTIFY_LEFT		(1)
+#define JUSTIFY_CENTER		(2)
+#define JUSTIFY_RIGHT		(3)
+
+/* field options */
+#define O_VISIBLE		(0x0001U)
+#define O_ACTIVE		(0x0002U)
+#define O_PUBLIC		(0x0004U)
+#define O_EDIT			(0x0008U)
+#define O_WRAP			(0x0010U)
+#define O_BLANK			(0x0020U)
+#define O_AUTOSKIP		(0x0040U)
+#define O_NULLOK		(0x0080U)
+#define O_PASSOK		(0x0100U)
+#define O_STATIC		(0x0200U)
+
+/* form options */
+#define O_NL_OVERLOAD		(0x0001U)
+#define O_BS_OVERLOAD		(0x0002U)
+
+/* form driver commands */
+#define REQ_NEXT_PAGE	 (KEY_MAX + 1)	/* move to next page		*/
+#define REQ_PREV_PAGE	 (KEY_MAX + 2)	/* move to previous page	*/
+#define REQ_FIRST_PAGE	 (KEY_MAX + 3)	/* move to first page		*/
+#define REQ_LAST_PAGE	 (KEY_MAX + 4)	/* move to last page		*/
+
+#define REQ_NEXT_FIELD	 (KEY_MAX + 5)	/* move to next field		*/
+#define REQ_PREV_FIELD	 (KEY_MAX + 6)	/* move to previous field	*/
+#define REQ_FIRST_FIELD	 (KEY_MAX + 7)	/* move to first field		*/
+#define REQ_LAST_FIELD	 (KEY_MAX + 8)	/* move to last field		*/
+#define REQ_SNEXT_FIELD	 (KEY_MAX + 9)	/* move to sorted next field	*/
+#define REQ_SPREV_FIELD	 (KEY_MAX + 10)	/* move to sorted prev field	*/
+#define REQ_SFIRST_FIELD (KEY_MAX + 11)	/* move to sorted first field	*/
+#define REQ_SLAST_FIELD	 (KEY_MAX + 12)	/* move to sorted last field	*/
+#define REQ_LEFT_FIELD	 (KEY_MAX + 13)	/* move to left to field	*/
+#define REQ_RIGHT_FIELD	 (KEY_MAX + 14)	/* move to right to field	*/
+#define REQ_UP_FIELD	 (KEY_MAX + 15)	/* move to up to field		*/
+#define REQ_DOWN_FIELD	 (KEY_MAX + 16)	/* move to down to field	*/
+
+#define REQ_NEXT_CHAR	 (KEY_MAX + 17)	/* move to next char in field	*/
+#define REQ_PREV_CHAR	 (KEY_MAX + 18)	/* move to prev char in field	*/
+#define REQ_NEXT_LINE	 (KEY_MAX + 19)	/* move to next line in field	*/
+#define REQ_PREV_LINE	 (KEY_MAX + 20)	/* move to prev line in field	*/
+#define REQ_NEXT_WORD	 (KEY_MAX + 21)	/* move to next word in field	*/
+#define REQ_PREV_WORD	 (KEY_MAX + 22)	/* move to prev word in field	*/
+#define REQ_BEG_FIELD	 (KEY_MAX + 23)	/* move to first char in field	*/
+#define REQ_END_FIELD	 (KEY_MAX + 24)	/* move after last char in fld	*/
+#define REQ_BEG_LINE	 (KEY_MAX + 25)	/* move to beginning of line	*/
+#define REQ_END_LINE	 (KEY_MAX + 26)	/* move after last char in line	*/
+#define REQ_LEFT_CHAR	 (KEY_MAX + 27)	/* move left in field		*/
+#define REQ_RIGHT_CHAR	 (KEY_MAX + 28)	/* move right in field		*/
+#define REQ_UP_CHAR	 (KEY_MAX + 29)	/* move up in field		*/
+#define REQ_DOWN_CHAR	 (KEY_MAX + 30)	/* move down in field		*/
+
+#define REQ_NEW_LINE	 (KEY_MAX + 31)	/* insert/overlay new line	*/
+#define REQ_INS_CHAR	 (KEY_MAX + 32)	/* insert blank char at cursor	*/
+#define REQ_INS_LINE	 (KEY_MAX + 33)	/* insert blank line at cursor	*/
+#define REQ_DEL_CHAR	 (KEY_MAX + 34)	/* delete char at cursor	*/
+#define REQ_DEL_PREV	 (KEY_MAX + 35)	/* delete char before cursor	*/
+#define REQ_DEL_LINE	 (KEY_MAX + 36)	/* delete line at cursor	*/
+#define REQ_DEL_WORD	 (KEY_MAX + 37)	/* delete word at cursor	*/
+#define REQ_CLR_EOL	 (KEY_MAX + 38)	/* clear to end of line		*/
+#define REQ_CLR_EOF	 (KEY_MAX + 39)	/* clear to end of field	*/
+#define REQ_CLR_FIELD	 (KEY_MAX + 40)	/* clear entire field		*/
+#define REQ_OVL_MODE	 (KEY_MAX + 41)	/* begin overlay mode		*/
+#define REQ_INS_MODE	 (KEY_MAX + 42)	/* begin insert mode		*/
+#define REQ_SCR_FLINE	 (KEY_MAX + 43)	/* scroll field forward a line	*/
+#define REQ_SCR_BLINE	 (KEY_MAX + 44)	/* scroll field backward a line	*/
+#define REQ_SCR_FPAGE	 (KEY_MAX + 45)	/* scroll field forward a page	*/
+#define REQ_SCR_BPAGE	 (KEY_MAX + 46)	/* scroll field backward a page	*/
+#define REQ_SCR_FHPAGE	 (KEY_MAX + 47) /* scroll field forward	 half page */
+#define REQ_SCR_BHPAGE	 (KEY_MAX + 48) /* scroll field backward half page */
+#define REQ_SCR_FCHAR	 (KEY_MAX + 49) /* horizontal scroll char	*/
+#define REQ_SCR_BCHAR	 (KEY_MAX + 50) /* horizontal scroll char	*/
+#define REQ_SCR_HFLINE	 (KEY_MAX + 51) /* horizontal scroll line	*/
+#define REQ_SCR_HBLINE	 (KEY_MAX + 52) /* horizontal scroll line	*/
+#define REQ_SCR_HFHALF	 (KEY_MAX + 53) /* horizontal scroll half line	*/
+#define REQ_SCR_HBHALF	 (KEY_MAX + 54) /* horizontal scroll half line	*/
+
+#define REQ_VALIDATION	 (KEY_MAX + 55)	/* validate field		*/
+#define REQ_NEXT_CHOICE	 (KEY_MAX + 56)	/* display next field choice	*/
+#define REQ_PREV_CHOICE	 (KEY_MAX + 57)	/* display prev field choice	*/
+
+#define MIN_FORM_COMMAND (KEY_MAX + 1)	/* used by form_driver		*/
+#define MAX_FORM_COMMAND (KEY_MAX + 57)	/* used by form_driver		*/
+
+#if defined(MAX_COMMAND)
+#  if (MAX_FORM_COMMAND > MAX_COMMAND)
+#    error Something is wrong -- MAX_FORM_COMMAND is greater than MAX_COMMAND
+#  elif (MAX_COMMAND != (KEY_MAX + 128))
+#    error Something is wrong -- MAX_COMMAND is already inconsistently defined.
+#  endif
+#else
+#  define MAX_COMMAND (KEY_MAX + 128)
+#endif
+
+	/*************************
+	*  standard field types  *
+	*************************/
+extern NCURSES_EXPORT_VAR(FIELDTYPE *) TYPE_ALPHA;
+extern NCURSES_EXPORT_VAR(FIELDTYPE *) TYPE_ALNUM;
+extern NCURSES_EXPORT_VAR(FIELDTYPE *) TYPE_ENUM;
+extern NCURSES_EXPORT_VAR(FIELDTYPE *) TYPE_INTEGER;
+extern NCURSES_EXPORT_VAR(FIELDTYPE *) TYPE_NUMERIC;
+extern NCURSES_EXPORT_VAR(FIELDTYPE *) TYPE_REGEXP;
+
+	/************************************
+	*  built-in additional field types  *
+	*  They are not defined in SVr4     *
+	************************************/
+extern NCURSES_EXPORT_VAR(FIELDTYPE *) TYPE_IPV4;      /* Internet IP Version 4 address */
+
+	/***********************
+	*  FIELDTYPE routines  *
+	***********************/
+extern NCURSES_EXPORT(FIELDTYPE *) new_fieldtype (
+		    bool (* const field_check)(FIELD *,const void *),
+		    bool (* const char_check)(int,const void *));
+extern NCURSES_EXPORT(FIELDTYPE *) link_fieldtype(
+		    FIELDTYPE *, FIELDTYPE *);
+
+extern NCURSES_EXPORT(int)	free_fieldtype (FIELDTYPE *);
+extern NCURSES_EXPORT(int)	set_fieldtype_arg (FIELDTYPE *,
+		    void * (* const make_arg)(va_list *),
+		    void * (* const copy_arg)(const void *),
+		    void (* const free_arg)(void *));
+extern NCURSES_EXPORT(int)	 set_fieldtype_choice (FIELDTYPE *,
+		    bool (* const next_choice)(FIELD *,const void *),
+	      	    bool (* const prev_choice)(FIELD *,const void *));
+
+	/*******************
+	*  FIELD routines  *
+	*******************/
+extern NCURSES_EXPORT(FIELD *)	new_field (int,int,int,int,int,int);
+extern NCURSES_EXPORT(FIELD *)	dup_field (FIELD *,int,int);
+extern NCURSES_EXPORT(FIELD *)	link_field (FIELD *,int,int);
+
+extern NCURSES_EXPORT(int)	free_field (FIELD *);
+extern NCURSES_EXPORT(int)	field_info (const FIELD *,int *,int *,int *,int *,int *,int *);
+extern NCURSES_EXPORT(int)	dynamic_field_info (const FIELD *,int *,int *,int *);
+extern NCURSES_EXPORT(int)	set_max_field ( FIELD *,int);
+extern NCURSES_EXPORT(int)	move_field (FIELD *,int,int);
+extern NCURSES_EXPORT(int)	set_field_type (FIELD *,FIELDTYPE *,...);
+extern NCURSES_EXPORT(int)	set_new_page (FIELD *,bool);
+extern NCURSES_EXPORT(int)	set_field_just (FIELD *,int);
+extern NCURSES_EXPORT(int)	field_just (const FIELD *);
+extern NCURSES_EXPORT(int)	set_field_fore (FIELD *,chtype);
+extern NCURSES_EXPORT(int)	set_field_back (FIELD *,chtype);
+extern NCURSES_EXPORT(int)	set_field_pad (FIELD *,int);
+extern NCURSES_EXPORT(int)	field_pad (const FIELD *);
+extern NCURSES_EXPORT(int)	set_field_buffer (FIELD *,int,const char *);
+extern NCURSES_EXPORT(int)	set_field_status (FIELD *,bool);
+extern NCURSES_EXPORT(int)	set_field_userptr (FIELD *, void *);
+extern NCURSES_EXPORT(int)	set_field_opts (FIELD *,Field_Options);
+extern NCURSES_EXPORT(int)	field_opts_on (FIELD *,Field_Options);
+extern NCURSES_EXPORT(int)	field_opts_off (FIELD *,Field_Options);
+
+extern NCURSES_EXPORT(chtype)	field_fore (const FIELD *);
+extern NCURSES_EXPORT(chtype)	field_back (const FIELD *);
+
+extern NCURSES_EXPORT(bool)	new_page (const FIELD *);
+extern NCURSES_EXPORT(bool)	field_status (const FIELD *);
+
+extern NCURSES_EXPORT(void *)	field_arg (const FIELD *);
+
+extern NCURSES_EXPORT(void *)	field_userptr (const FIELD *);
+
+extern NCURSES_EXPORT(FIELDTYPE *)	field_type (const FIELD *);
+
+extern NCURSES_EXPORT(char *)	field_buffer (const FIELD *,int);
+
+extern NCURSES_EXPORT(Field_Options)	field_opts (const FIELD *);
+
+	/******************
+	*  FORM routines  *
+	******************/
+
+extern NCURSES_EXPORT(FORM *)	new_form (FIELD **);
+
+extern NCURSES_EXPORT(FIELD **)	form_fields (const FORM *);
+extern NCURSES_EXPORT(FIELD *)	current_field (const FORM *);
+
+extern NCURSES_EXPORT(WINDOW *)	form_win (const FORM *);
+extern NCURSES_EXPORT(WINDOW *)	form_sub (const FORM *);
+
+extern NCURSES_EXPORT(Form_Hook)	form_init (const FORM *);
+extern NCURSES_EXPORT(Form_Hook)	form_term (const FORM *);
+extern NCURSES_EXPORT(Form_Hook)	field_init (const FORM *);
+extern NCURSES_EXPORT(Form_Hook)	field_term (const FORM *);
+
+extern NCURSES_EXPORT(int)	free_form (FORM *);
+extern NCURSES_EXPORT(int)	set_form_fields (FORM *,FIELD **);
+extern NCURSES_EXPORT(int)	field_count (const FORM *);
+extern NCURSES_EXPORT(int)	set_form_win (FORM *,WINDOW *);
+extern NCURSES_EXPORT(int)	set_form_sub (FORM *,WINDOW *);
+extern NCURSES_EXPORT(int)	set_current_field (FORM *,FIELD *);
+extern NCURSES_EXPORT(int)	field_index (const FIELD *);
+extern NCURSES_EXPORT(int)	set_form_page (FORM *,int);
+extern NCURSES_EXPORT(int)	form_page (const FORM *);
+extern NCURSES_EXPORT(int)	scale_form (const FORM *,int *,int *);
+extern NCURSES_EXPORT(int)	set_form_init (FORM *,Form_Hook);
+extern NCURSES_EXPORT(int)	set_form_term (FORM *,Form_Hook);
+extern NCURSES_EXPORT(int)	set_field_init (FORM *,Form_Hook);
+extern NCURSES_EXPORT(int)	set_field_term (FORM *,Form_Hook);
+extern NCURSES_EXPORT(int)	post_form (FORM *);
+extern NCURSES_EXPORT(int)	unpost_form (FORM *);
+extern NCURSES_EXPORT(int)	pos_form_cursor (FORM *);
+extern NCURSES_EXPORT(int)	form_driver (FORM *,int);
+extern NCURSES_EXPORT(int)	set_form_userptr (FORM *,void *);
+extern NCURSES_EXPORT(int)	set_form_opts (FORM *,Form_Options);
+extern NCURSES_EXPORT(int)	form_opts_on (FORM *,Form_Options);
+extern NCURSES_EXPORT(int)	form_opts_off (FORM *,Form_Options);
+extern NCURSES_EXPORT(int)	form_request_by_name (const char *);
+
+extern NCURSES_EXPORT(const char *)	form_request_name (int);
+
+extern NCURSES_EXPORT(void *)	form_userptr (const FORM *);
+
+extern NCURSES_EXPORT(Form_Options)	form_opts (const FORM *);
+
+extern NCURSES_EXPORT(bool)	data_ahead (const FORM *);
+extern NCURSES_EXPORT(bool)	data_behind (const FORM *);
+
+#if NCURSES_SP_FUNCS
+extern NCURSES_EXPORT(FORM *)	NCURSES_SP_NAME(new_form) (SCREEN*, FIELD **);
+#endif
+
+#ifdef __cplusplus
+  }
+#endif
+
+#endif	/* FORM_H */
diff --git a/apps/lib/curses/pdcurses/form/form.priv.h b/apps/lib/curses/pdcurses/form/form.priv.h
new file mode 100644
index 0000000..a118b29
--- /dev/null
+++ b/apps/lib/curses/pdcurses/form/form.priv.h
@@ -0,0 +1,299 @@
+/****************************************************************************
+ * Copyright (c) 1998-2008,2009 Free Software Foundation, Inc.              *
+ *                                                                          *
+ * Permission is hereby granted, free of charge, to any person obtaining a  *
+ * copy of this software and associated documentation files (the            *
+ * "Software"), to deal in the Software without restriction, including      *
+ * without limitation the rights to use, copy, modify, merge, publish,      *
+ * distribute, distribute with modifications, sublicense, and/or sell       *
+ * copies of the Software, and to permit persons to whom the Software is    *
+ * furnished to do so, subject to the following conditions:                 *
+ *                                                                          *
+ * The above copyright notice and this permission notice shall be included  *
+ * in all copies or substantial portions of the Software.                   *
+ *                                                                          *
+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS  *
+ * OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF               *
+ * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.   *
+ * IN NO EVENT SHALL THE ABOVE COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,   *
+ * DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR    *
+ * OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR    *
+ * THE USE OR OTHER DEALINGS IN THE SOFTWARE.                               *
+ *                                                                          *
+ * Except as contained in this notice, the name(s) of the above copyright   *
+ * holders shall not be used in advertising or otherwise to promote the     *
+ * sale, use or other dealings in this Software without prior written       *
+ * authorization.                                                           *
+ ****************************************************************************/
+
+/****************************************************************************
+ *   Author:  Juergen Pfeifer, 1995,1997                                    *
+ ****************************************************************************/
+
+/* $Id: form.priv.h,v 0.32 2009/11/07 21:26:43 tom Exp $ */
+
+#ifndef FORM_PRIV_H
+#define FORM_PRIV_H 1
+
+#include "../pdcurses/curspriv.h"
+#include "../menu/mf_common.h"
+
+#define UChar(c)	((unsigned char)(c))
+
+#if USE_WIDEC_SUPPORT
+#if HAVE_WCTYPE_H
+#include <wctype.h>
+#endif
+
+#ifndef MB_LEN_MAX
+#define MB_LEN_MAX 8 /* should be >= MB_CUR_MAX, but that may be a function */
+#endif
+
+#define FIELD_CELL NCURSES_CH_T
+
+#define NCURSES_FIELD_INTERNALS char** expanded; WINDOW *working;
+#define NCURSES_FIELD_EXTENSION , (char **)0, (WINDOW *)0
+
+#else
+
+#define FIELD_CELL char
+
+#define NCURSES_FIELD_EXTENSION /* nothing */
+
+#endif
+
+#include "form.h"
+
+	/***********************
+	*   Default objects    *
+	***********************/
+extern NCURSES_EXPORT_VAR(FORM *)      _nc_Default_Form;
+extern NCURSES_EXPORT_VAR(FIELD *)     _nc_Default_Field;
+extern NCURSES_EXPORT_VAR(FIELDTYPE *) _nc_Default_FieldType;
+
+/* form  status values */
+#define _OVLMODE         (0x04U) /* Form is in overlay mode                */
+#define _WINDOW_MODIFIED (0x10U) /* Current field window has been modified */
+#define _FCHECK_REQUIRED (0x20U) /* Current field needs validation         */
+
+/* field status values */
+#define _CHANGED         (0x01U) /* Field has been changed                 */
+#define _NEWTOP          (0x02U) /* Vertical scrolling occurred            */
+#define _NEWPAGE         (0x04U) /* field begins new page of form          */
+#define _MAY_GROW        (0x08U) /* dynamic field may still grow           */
+
+/* fieldtype status values */
+#define _LINKED_TYPE     (0x01U) /* Type is a linked type                  */
+#define _HAS_ARGS        (0x02U) /* Type has arguments                     */
+#define _HAS_CHOICE      (0x04U) /* Type has choice methods                */
+#define _RESIDENT        (0x08U) /* Type is built-in                       */
+#define _GENERIC         (0x10U) /* A generic field type                   */
+
+/* This are the field options required to be a selectable field in field
+   navigation requests */
+#define O_SELECTABLE (O_ACTIVE | O_VISIBLE)
+
+/* If form is NULL replace form argument by default-form */
+#define Normalize_Form(form) \
+  ((form) = (form != 0) ? (form) : _nc_Default_Form)
+
+/* If field is NULL replace field argument by default-field */
+#define Normalize_Field(field) \
+  ((field) = (field != 0) ? (field) : _nc_Default_Field)
+
+#if NCURSES_SP_FUNCS
+#define Get_Form_Screen(form) \
+  ((form)->win ? _nc_screen_of((form->win)):CURRENT_SCREEN)
+#else
+#define Get_Form_Screen(form) CURRENT_SCREEN
+#endif
+
+/* Retrieve forms window */
+#define Get_Form_Window(form) \
+  ((form)->sub != NULL \
+   ? (form)->sub \
+   : ((form)->win != NULL \
+      ? (form)->win \
+      : StdScreen(Get_Form_Screen(form))))
+
+/* Calculate the size for a single buffer for this field */
+#define Buffer_Length(field) ((field)->drows * (field)->dcols)
+
+/* Calculate the total size of all buffers for this field */
+#define Total_Buffer_Size(field) \
+   ( (Buffer_Length(field) + 1) * (1+(field)->nbuf) * sizeof(FIELD_CELL) )
+
+/* Logic to determine whether or not a field is single lined */
+#define Single_Line_Field(field) \
+   (((field)->rows + (field)->nrow) == 1)
+
+/* Logic to determine whether or not a field is selectable */
+#define Field_Is_Selectable(f)     (((unsigned)((f)->opts) & O_SELECTABLE)==O_SELECTABLE)
+#define Field_Is_Not_Selectable(f) (((unsigned)((f)->opts) & O_SELECTABLE)!=O_SELECTABLE)
+
+typedef struct typearg
+  {
+    struct typearg *left;
+    struct typearg *right;
+  }
+TypeArgument;
+
+/* This is a dummy request code (normally invalid) to be used internally
+   with the form_driver() routine to position to the first active field
+   on the form
+*/
+#define FIRST_ACTIVE_MAGIC (-291056)
+
+#define ALL_FORM_OPTS  (                \
+			O_NL_OVERLOAD  |\
+			O_BS_OVERLOAD   )
+
+#define ALL_FIELD_OPTS (Field_Options)( \
+			O_VISIBLE |\
+			O_ACTIVE  |\
+			O_PUBLIC  |\
+			O_EDIT    |\
+			O_WRAP    |\
+			O_BLANK   |\
+			O_AUTOSKIP|\
+			O_NULLOK  |\
+			O_PASSOK  |\
+			O_STATIC   )
+
+#define C_BLANK ' '
+#define is_blank(c) ((c)==C_BLANK)
+
+#define C_ZEROS '\0'
+
+extern NCURSES_EXPORT(TypeArgument *) _nc_Make_Argument (const FIELDTYPE*, va_list*, int*);
+extern NCURSES_EXPORT(TypeArgument *) _nc_Copy_Argument (const FIELDTYPE*, const TypeArgument*, int*);
+extern NCURSES_EXPORT(void) _nc_Free_Argument (const FIELDTYPE*, TypeArgument*);
+extern NCURSES_EXPORT(bool) _nc_Copy_Type (FIELD*, FIELD const *);
+extern NCURSES_EXPORT(void) _nc_Free_Type (FIELD *);
+
+extern NCURSES_EXPORT(int) _nc_Synchronize_Attributes (FIELD*);
+extern NCURSES_EXPORT(int) _nc_Synchronize_Options (FIELD*, Field_Options);
+extern NCURSES_EXPORT(int) _nc_Set_Form_Page (FORM*, int, FIELD*);
+extern NCURSES_EXPORT(int) _nc_Refresh_Current_Field (FORM*);
+extern NCURSES_EXPORT(FIELD *) _nc_First_Active_Field (FORM*);
+extern NCURSES_EXPORT(bool) _nc_Internal_Validation (FORM*);
+extern NCURSES_EXPORT(int) _nc_Set_Current_Field (FORM*, FIELD*);
+extern NCURSES_EXPORT(int) _nc_Position_Form_Cursor (FORM*);
+
+#if NCURSES_INTEROP_FUNCS
+extern NCURSES_EXPORT(FIELDTYPE *) _nc_TYPE_INTEGER(void);
+extern NCURSES_EXPORT(FIELDTYPE *) _nc_TYPE_ALNUM(void);
+extern NCURSES_EXPORT(FIELDTYPE *) _nc_TYPE_ALPHA(void);
+extern NCURSES_EXPORT(FIELDTYPE *) _nc_TYPE_ENUM(void);
+extern NCURSES_EXPORT(FIELDTYPE *) _nc_TYPE_NUMERIC(void);
+extern NCURSES_EXPORT(FIELDTYPE *) _nc_TYPE_REGEXP(void);
+extern NCURSES_EXPORT(FIELDTYPE *) _nc_TYPE_IPV4(void);
+
+extern NCURSES_EXPORT(FIELDTYPE *)
+_nc_generic_fieldtype(bool (*const field_check) (FORM*,
+						 FIELD *,
+						 const void *),
+		      bool (*const char_check)  (int,
+						 FORM*,
+						 FIELD*,
+						 const void *),
+		      bool (*const next)(FORM*,FIELD*,const void*),
+		      bool (*const prev)(FORM*,FIELD*,const void*),
+		      void (*freecallback)(void*));
+extern NCURSES_EXPORT(int) _nc_set_generic_fieldtype(FIELD*, FIELDTYPE*, int (*)(void**));
+extern NCURSES_EXPORT(WINDOW*) _nc_form_cursor(const FORM* , int* , int* );
+
+#define INIT_FT_FUNC(func) {func}
+#else
+#define INIT_FT_FUNC(func) func
+#endif
+
+extern NCURSES_EXPORT(void) _nc_get_fieldbuffer(FORM*, FIELD*, FIELD_CELL*);
+
+#if USE_WIDEC_SUPPORT
+extern NCURSES_EXPORT(wchar_t *) _nc_Widen_String(char *, int *);
+#endif
+
+#ifdef TRACE
+
+#define returnField(code)	TRACE_RETURN(code,field)
+#define returnFieldPtr(code)	TRACE_RETURN(code,field_ptr)
+#define returnForm(code)	TRACE_RETURN(code,form)
+#define returnFieldType(code)	TRACE_RETURN(code,field_type)
+#define returnFormHook(code)	TRACE_RETURN(code,form_hook)
+
+extern NCURSES_EXPORT(FIELD **)	    _nc_retrace_field_ptr (FIELD **);
+extern NCURSES_EXPORT(FIELD *)	    _nc_retrace_field (FIELD *);
+extern NCURSES_EXPORT(FIELDTYPE *)  _nc_retrace_field_type (FIELDTYPE *);
+extern NCURSES_EXPORT(FORM *)       _nc_retrace_form (FORM *);
+extern NCURSES_EXPORT(Form_Hook)    _nc_retrace_form_hook (Form_Hook);
+
+#else /* !TRACE */
+
+#define returnFieldPtr(code)	return code
+#define returnFieldType(code)	return code
+#define returnField(code)	return code
+#define returnForm(code)	return code
+#define returnFormHook(code)	return code
+
+#endif /* TRACE/!TRACE */
+
+/*
+ * Use Check_CTYPE_Field() to simplify FIELDTYPE's that use only the ccheck()
+ * function.
+ */
+#if USE_WIDEC_SUPPORT
+#define Check_CTYPE_Field(result, buffer, width, ccheck) \
+  while (*buffer && *buffer == ' ') \
+    buffer++; \
+  if (*buffer) \
+    { \
+      bool blank = FALSE; \
+      int len; \
+      int n; \
+      wchar_t *list = _nc_Widen_String((char *)buffer, &len); \
+      if (list != 0) \
+	{ \
+	  result = TRUE; \
+	  for (n = 0; n < len; ++n) \
+	    { \
+	      if (blank) \
+		{ \
+		  if (list[n] != ' ') \
+		    { \
+		      result = FALSE; \
+		      break; \
+		    } \
+		} \
+	      else if (list[n] == ' ') \
+		{ \
+		  blank = TRUE; \
+		  result = (n + 1 >= width); \
+		} \
+	      else if (!ccheck(list[n], NULL)) \
+		{ \
+		  result = FALSE; \
+		  break; \
+		} \
+	    } \
+	  free(list); \
+	} \
+    }
+#else
+#define Check_CTYPE_Field(result, buffer, width, ccheck) \
+  while (*buffer && *buffer == ' ') \
+    buffer++; \
+  if (*buffer) \
+    { \
+      unsigned char *s = buffer; \
+      int l = -1; \
+      while (*buffer && ccheck(*buffer, NULL)) \
+	buffer++; \
+      l = (int)(buffer - s); \
+      while (*buffer && *buffer == ' ') \
+	buffer++; \
+      result = ((*buffer || (l < width)) ? FALSE : TRUE); \
+    }
+#endif
+
+#endif /* FORM_PRIV_H */
diff --git a/apps/lib/curses/pdcurses/form/frm_cursor.c b/apps/lib/curses/pdcurses/form/frm_cursor.c
new file mode 100644
index 0000000..091b0fd
--- /dev/null
+++ b/apps/lib/curses/pdcurses/form/frm_cursor.c
@@ -0,0 +1,70 @@
+/****************************************************************************
+ * Copyright (c) 1998-2004,2010 Free Software Foundation, Inc.              *
+ *                                                                          *
+ * Permission is hereby granted, free of charge, to any person obtaining a  *
+ * copy of this software and associated documentation files (the            *
+ * "Software"), to deal in the Software without restriction, including      *
+ * without limitation the rights to use, copy, modify, merge, publish,      *
+ * distribute, distribute with modifications, sublicense, and/or sell       *
+ * copies of the Software, and to permit persons to whom the Software is    *
+ * furnished to do so, subject to the following conditions:                 *
+ *                                                                          *
+ * The above copyright notice and this permission notice shall be included  *
+ * in all copies or substantial portions of the Software.                   *
+ *                                                                          *
+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS  *
+ * OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF               *
+ * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.   *
+ * IN NO EVENT SHALL THE ABOVE COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,   *
+ * DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR    *
+ * OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR    *
+ * THE USE OR OTHER DEALINGS IN THE SOFTWARE.                               *
+ *                                                                          *
+ * Except as contained in this notice, the name(s) of the above copyright   *
+ * holders shall not be used in advertising or otherwise to promote the     *
+ * sale, use or other dealings in this Software without prior written       *
+ * authorization.                                                           *
+ ****************************************************************************/
+
+/****************************************************************************
+ *   Author:  Juergen Pfeifer, 1995,1997                                    *
+ ****************************************************************************/
+
+#include "form.priv.h"
+
+MODULE_ID("$Id: frm_cursor.c,v 1.10 2010/01/23 21:14:36 tom Exp $")
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  int pos_form_cursor(FORM * form)
+|
+|   Description   :  Moves the form window cursor to the location required
+|                    by the form driver to resume form processing. This may
+|                    be needed after the application calls a curses library
+|                    I/O routine that modifies the cursor position.
+|
+|   Return Values :  E_OK                      - Success
+|                    E_SYSTEM_ERROR            - System error.
+|                    E_BAD_ARGUMENT            - Invalid form pointer
+|                    E_NOT_POSTED              - Form is not posted
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+pos_form_cursor(FORM *form)
+{
+  int res;
+
+  T((T_CALLED("pos_form_cursor(%p)"), (void *)form));
+
+  if (!form)
+    res = E_BAD_ARGUMENT;
+  else
+    {
+      if (!(form->status & _POSTED))
+	res = E_NOT_POSTED;
+      else
+	res = _nc_Position_Form_Cursor(form);
+    }
+  RETURN(res);
+}
+
+/* frm_cursor.c ends here */
diff --git a/apps/lib/curses/pdcurses/form/frm_data.c b/apps/lib/curses/pdcurses/form/frm_data.c
new file mode 100644
index 0000000..85914eb
--- /dev/null
+++ b/apps/lib/curses/pdcurses/form/frm_data.c
@@ -0,0 +1,193 @@
+/****************************************************************************
+ * Copyright (c) 1998-2005,2010 Free Software Foundation, Inc.              *
+ *                                                                          *
+ * Permission is hereby granted, free of charge, to any person obtaining a  *
+ * copy of this software and associated documentation files (the            *
+ * "Software"), to deal in the Software without restriction, including      *
+ * without limitation the rights to use, copy, modify, merge, publish,      *
+ * distribute, distribute with modifications, sublicense, and/or sell       *
+ * copies of the Software, and to permit persons to whom the Software is    *
+ * furnished to do so, subject to the following conditions:                 *
+ *                                                                          *
+ * The above copyright notice and this permission notice shall be included  *
+ * in all copies or substantial portions of the Software.                   *
+ *                                                                          *
+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS  *
+ * OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF               *
+ * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.   *
+ * IN NO EVENT SHALL THE ABOVE COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,   *
+ * DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR    *
+ * OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR    *
+ * THE USE OR OTHER DEALINGS IN THE SOFTWARE.                               *
+ *                                                                          *
+ * Except as contained in this notice, the name(s) of the above copyright   *
+ * holders shall not be used in advertising or otherwise to promote the     *
+ * sale, use or other dealings in this Software without prior written       *
+ * authorization.                                                           *
+ ****************************************************************************/
+
+/****************************************************************************
+ *   Author:  Juergen Pfeifer, 1995,1997                                    *
+ ****************************************************************************/
+
+#include "form.priv.h"
+
+MODULE_ID("$Id: frm_data.c,v 1.15 2010/01/23 21:14:36 tom Exp $")
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  bool data_behind(const FORM *form)
+|
+|   Description   :  Check for off-screen data behind. This is nearly trivial
+|                    because the beginning of a field is fixed.
+|
+|   Return Values :  TRUE   - there are off-screen data behind
+|                    FALSE  - there are no off-screen data behind
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(bool)
+data_behind(const FORM *form)
+{
+  bool result = FALSE;
+
+  T((T_CALLED("data_behind(%p)"), (const void *)form));
+
+  if (form && (form->status & _POSTED) && form->current)
+    {
+      FIELD *field;
+
+      field = form->current;
+      if (!Single_Line_Field(field))
+	{
+	  result = (form->toprow == 0) ? FALSE : TRUE;
+	}
+      else
+	{
+	  result = (form->begincol == 0) ? FALSE : TRUE;
+	}
+    }
+  returnBool(result);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static char * Only_Padding(
+|                                    WINDOW *w,
+|                                    int len,
+|                                    int pad)
+|
+|   Description   :  Test if 'length' cells starting at the current position
+|                    contain a padding character.
+|
+|   Return Values :  true if only padding cells are found
++--------------------------------------------------------------------------*/
+NCURSES_INLINE static bool
+Only_Padding(WINDOW *w, int len, int pad)
+{
+  bool result = TRUE;
+  int y, x, j;
+  FIELD_CELL cell;
+
+  getyx(w, y, x);
+  for (j = 0; j < len; ++j)
+    {
+      if (wmove(w, y, x + j) != ERR)
+	{
+#if USE_WIDEC_SUPPORT
+	  if (win_wch(w, &cell) != ERR)
+	    {
+	      if ((chtype)CharOf(cell) != ChCharOf(pad)
+		  || cell.chars[1] != 0)
+		{
+		  result = FALSE;
+		  break;
+		}
+	    }
+#else
+	  cell = winch(w);
+	  if (ChCharOf(cell) != ChCharOf(pad))
+	    {
+	      result = FALSE;
+	      break;
+	    }
+#endif
+	}
+      else
+	{
+	  /* if an error, return true: no non-padding text found */
+	  break;
+	}
+    }
+  /* no need to reset the cursor position; caller does this */
+  return result;
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  bool data_ahead(const FORM *form)
+|
+|   Description   :  Check for off-screen data ahead. This is more difficult
+|                    because a dynamic field has a variable end.
+|
+|   Return Values :  TRUE   - there are off-screen data ahead
+|                    FALSE  - there are no off-screen data ahead
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(bool)
+data_ahead(const FORM *form)
+{
+  bool result = FALSE;
+
+  T((T_CALLED("data_ahead(%p)"), (const void *)form));
+
+  if (form && (form->status & _POSTED) && form->current)
+    {
+      FIELD *field;
+      bool cursor_moved = FALSE;
+      int pos;
+
+      field = form->current;
+      assert(form->w);
+
+      if (Single_Line_Field(field))
+	{
+	  int check_len;
+
+	  pos = form->begincol + field->cols;
+	  while (pos < field->dcols)
+	    {
+	      check_len = field->dcols - pos;
+	      if (check_len >= field->cols)
+		check_len = field->cols;
+	      cursor_moved = TRUE;
+	      wmove(form->w, 0, pos);
+	      if (Only_Padding(form->w, check_len, field->pad))
+		pos += field->cols;
+	      else
+		{
+		  result = TRUE;
+		  break;
+		}
+	    }
+	}
+      else
+	{
+	  pos = form->toprow + field->rows;
+	  while (pos < field->drows)
+	    {
+	      cursor_moved = TRUE;
+	      wmove(form->w, pos, 0);
+	      pos++;
+	      if (!Only_Padding(form->w, field->cols, field->pad))
+		{
+		  result = TRUE;
+		  break;
+		}
+	    }
+	}
+
+      if (cursor_moved)
+	wmove(form->w, form->currow, form->curcol);
+    }
+  returnBool(result);
+}
+
+/* frm_data.c ends here */
diff --git a/apps/lib/curses/pdcurses/form/frm_def.c b/apps/lib/curses/pdcurses/form/frm_def.c
new file mode 100644
index 0000000..54f743b
--- /dev/null
+++ b/apps/lib/curses/pdcurses/form/frm_def.c
@@ -0,0 +1,448 @@
+/****************************************************************************
+ * Copyright (c) 1998-2009,2010 Free Software Foundation, Inc.              *
+ *                                                                          *
+ * Permission is hereby granted, free of charge, to any person obtaining a  *
+ * copy of this software and associated documentation files (the            *
+ * "Software"), to deal in the Software without restriction, including      *
+ * without limitation the rights to use, copy, modify, merge, publish,      *
+ * distribute, distribute with modifications, sublicense, and/or sell       *
+ * copies of the Software, and to permit persons to whom the Software is    *
+ * furnished to do so, subject to the following conditions:                 *
+ *                                                                          *
+ * The above copyright notice and this permission notice shall be included  *
+ * in all copies or substantial portions of the Software.                   *
+ *                                                                          *
+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS  *
+ * OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF               *
+ * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.   *
+ * IN NO EVENT SHALL THE ABOVE COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,   *
+ * DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR    *
+ * OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR    *
+ * THE USE OR OTHER DEALINGS IN THE SOFTWARE.                               *
+ *                                                                          *
+ * Except as contained in this notice, the name(s) of the above copyright   *
+ * holders shall not be used in advertising or otherwise to promote the     *
+ * sale, use or other dealings in this Software without prior written       *
+ * authorization.                                                           *
+ ****************************************************************************/
+
+/****************************************************************************
+ *   Author:  Juergen Pfeifer, 1995,1997                                    *
+ ****************************************************************************/
+
+#include "form.priv.h"
+
+MODULE_ID("$Id: frm_def.c,v 1.25 2010/01/23 21:14:36 tom Exp $")
+
+/* this can't be readonly */
+static FORM default_form =
+{
+  0,				/* status     */
+  0,				/* rows       */
+  0,				/* cols       */
+  0,				/* currow     */
+  0,				/* curcol     */
+  0,				/* toprow     */
+  0,				/* begincol   */
+  -1,				/* maxfield   */
+  -1,				/* maxpage    */
+  -1,				/* curpage    */
+  ALL_FORM_OPTS,		/* opts       */
+  (WINDOW *)0,			/* win        */
+  (WINDOW *)0,			/* sub        */
+  (WINDOW *)0,			/* w          */
+  (FIELD **)0,			/* field      */
+  (FIELD *)0,			/* current    */
+  (_PAGE *) 0,			/* page       */
+  (char *)0,			/* usrptr     */
+  NULL,				/* forminit   */
+  NULL,				/* formterm   */
+  NULL,				/* fieldinit  */
+  NULL				/* fieldterm  */
+};
+
+NCURSES_EXPORT_VAR(FORM *) _nc_Default_Form = &default_form;
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static FIELD *Insert_Field_By_Position(
+|                                     FIELD *new_field,
+|                                     FIELD *head )
+|
+|   Description   :  Insert new_field into sorted fieldlist with head "head"
+|                    and return new head of sorted fieldlist. Sorting
+|                    criteria is (row,column). This is a circular list.
+|
+|   Return Values :  New head of sorted fieldlist
++--------------------------------------------------------------------------*/
+static FIELD *
+Insert_Field_By_Position(FIELD *newfield, FIELD *head)
+{
+  FIELD *current, *newhead;
+
+  assert(newfield);
+
+  if (!head)
+    {				/* empty list is trivial */
+      newhead = newfield->snext = newfield->sprev = newfield;
+    }
+  else
+    {
+      newhead = current = head;
+      while ((current->frow < newfield->frow) ||
+	     ((current->frow == newfield->frow) &&
+	      (current->fcol < newfield->fcol)))
+	{
+	  current = current->snext;
+	  if (current == head)
+	    {			/* We cycled through. Reset head to indicate that */
+	      head = (FIELD *)0;
+	      break;
+	    }
+	}
+      /* we leave the loop with current pointing to the field after newfield */
+      newfield->snext = current;
+      newfield->sprev = current->sprev;
+      newfield->snext->sprev = newfield;
+      newfield->sprev->snext = newfield;
+      if (current == head)
+	newhead = newfield;
+    }
+  return (newhead);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static void Disconnect_Fields(FORM *form)
+|
+|   Description   :  Break association between form and array of fields.
+|
+|   Return Values :  -
++--------------------------------------------------------------------------*/
+static void
+Disconnect_Fields(FORM *form)
+{
+  if (form->field)
+    {
+      FIELD **fields;
+
+      for (fields = form->field; *fields; fields++)
+	{
+	  if (form == (*fields)->form)
+	    (*fields)->form = (FORM *)0;
+	}
+
+      form->rows = form->cols = 0;
+      form->maxfield = form->maxpage = -1;
+      form->field = (FIELD **)0;
+      if (form->page)
+	free(form->page);
+      form->page = (_PAGE *) 0;
+    }
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int Connect_Fields(FORM *form, FIELD **fields)
+|
+|   Description   :  Set association between form and array of fields.
+|
+|   Return Values :  E_OK            - no error
+|                    E_CONNECTED     - a field is already connected
+|                    E_BAD_ARGUMENT  - Invalid form pointer or field array
+|                    E_SYSTEM_ERROR  - not enough memory
++--------------------------------------------------------------------------*/
+static int
+Connect_Fields(FORM *form, FIELD **fields)
+{
+  int field_cnt, j;
+  int page_nr;
+  int maximum_row_in_field, maximum_col_in_field;
+  _PAGE *pg;
+
+  T((T_CALLED("Connect_Fields(%p,%p)"), (void *)form, (void *)fields));
+
+  assert(form);
+
+  form->field = fields;
+  form->maxfield = 0;
+  form->maxpage = 0;
+
+  if (!fields)
+    RETURN(E_OK);
+
+  page_nr = 0;
+  /* store formpointer in fields and count pages */
+  for (field_cnt = 0; fields[field_cnt]; field_cnt++)
+    {
+      if (fields[field_cnt]->form)
+	RETURN(E_CONNECTED);
+      if (field_cnt == 0 ||
+	  (fields[field_cnt]->status & _NEWPAGE))
+	page_nr++;
+      fields[field_cnt]->form = form;
+    }
+  if (field_cnt == 0 || (short)field_cnt < 0)
+    RETURN(E_BAD_ARGUMENT);
+
+  /* allocate page structures */
+  if ((pg = typeMalloc(_PAGE, page_nr)) != (_PAGE *) 0)
+    {
+      T((T_CREATE("_PAGE %p"), (void *)pg));
+      form->page = pg;
+    }
+  else
+    RETURN(E_SYSTEM_ERROR);
+
+  /* Cycle through fields and calculate page boundaries as well as
+     size of the form */
+  for (j = 0; j < field_cnt; j++)
+    {
+      if (j == 0)
+	pg->pmin = j;
+      else
+	{
+	  if (fields[j]->status & _NEWPAGE)
+	    {
+	      pg->pmax = j - 1;
+	      pg++;
+	      pg->pmin = j;
+	    }
+	}
+
+      maximum_row_in_field = fields[j]->frow + fields[j]->rows;
+      maximum_col_in_field = fields[j]->fcol + fields[j]->cols;
+
+      if (form->rows < maximum_row_in_field)
+	form->rows = maximum_row_in_field;
+      if (form->cols < maximum_col_in_field)
+	form->cols = maximum_col_in_field;
+    }
+
+  pg->pmax = field_cnt - 1;
+  form->maxfield = field_cnt;
+  form->maxpage = page_nr;
+
+  /* Sort fields on form pages */
+  for (page_nr = 0; page_nr < form->maxpage; page_nr++)
+    {
+      FIELD *fld = (FIELD *)0;
+
+      for (j = form->page[page_nr].pmin; j <= form->page[page_nr].pmax; j++)
+	{
+	  fields[j]->index = j;
+	  fields[j]->page = page_nr;
+	  fld = Insert_Field_By_Position(fields[j], fld);
+	}
+      if (fld)
+	{
+	  form->page[page_nr].smin = fld->index;
+	  form->page[page_nr].smax = fld->sprev->index;
+	}
+      else
+	{
+	  form->page[page_nr].smin = 0;
+	  form->page[page_nr].smax = 0;
+	}
+    }
+  RETURN(E_OK);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int Associate_Fields(FORM *form, FIELD **fields)
+|
+|   Description   :  Set association between form and array of fields.
+|                    If there are fields, position to first active field.
+|
+|   Return Values :  E_OK            - success
+|                    E_BAD_ARGUMENT  - Invalid form pointer or field array
+|                    E_CONNECTED     - a field is already connected
+|                    E_SYSTEM_ERROR  - not enough memory
++--------------------------------------------------------------------------*/
+NCURSES_INLINE static int
+Associate_Fields(FORM *form, FIELD **fields)
+{
+  int res = Connect_Fields(form, fields);
+
+  if (res == E_OK)
+    {
+      if (form->maxpage > 0)
+	{
+	  form->curpage = 0;
+	  form_driver(form, FIRST_ACTIVE_MAGIC);
+	}
+      else
+	{
+	  form->curpage = -1;
+	  form->current = (FIELD *)0;
+	}
+    }
+  return (res);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  FORM *new_form_sp(SCREEN* sp, FIELD** fields )
+|
+|   Description   :  Create new form with given array of fields.
+|
+|   Return Values :  Pointer to form. NULL if error occurred.
+!                    Set errno:
+|                    E_OK            - success
+|                    E_BAD_ARGUMENT  - Invalid form pointer or field array
+|                    E_CONNECTED     - a field is already connected
+|                    E_SYSTEM_ERROR  - not enough memory
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(FORM *)
+NCURSES_SP_NAME(new_form) (NCURSES_SP_DCLx FIELD **fields)
+{
+  int err = E_SYSTEM_ERROR;
+  FORM *form = (FORM *)0;
+
+  T((T_CALLED("new_form(%p,%p)"), (void *)SP_PARM, (void *)fields));
+
+  if (IsValidScreen(SP_PARM))
+    {
+      form = typeMalloc(FORM, 1);
+
+      if (form)
+	{
+	  T((T_CREATE("form %p"), (void *)form));
+	  *form = *_nc_Default_Form;
+	  /* This ensures win and sub are always non-null,
+	     so we can derive always the SCREEN that this form is
+	     running on. */
+	  form->win = StdScreen(SP_PARM);
+	  form->sub = StdScreen(SP_PARM);
+	  if ((err = Associate_Fields(form, fields)) != E_OK)
+	    {
+	      free_form(form);
+	      form = (FORM *)0;
+	    }
+	}
+    }
+
+  if (!form)
+    SET_ERROR(err);
+
+  returnForm(form);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  FORM* new_form(FIELD** fields )
+|
+|   Description   :  Create new form with given array of fields.
+|
+|   Return Values :  Pointer to form. NULL if error occurred.
+!                    Set errno:
+|                    E_OK            - success
+|                    E_BAD_ARGUMENT  - Invalid form pointer or field array
+|                    E_CONNECTED     - a field is already connected
+|                    E_SYSTEM_ERROR  - not enough memory
++--------------------------------------------------------------------------*/
+#if NCURSES_SP_FUNCS
+NCURSES_EXPORT(FORM *)
+new_form(FIELD **fields)
+{
+  return NCURSES_SP_NAME(new_form) (CURRENT_SCREEN, fields);
+}
+#endif
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  int free_form( FORM *form )
+|
+|   Description   :  Release internal memory associated with form.
+|
+|   Return Values :  E_OK           - no error
+|                    E_BAD_ARGUMENT - invalid form pointer
+|                    E_POSTED       - form is posted
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+free_form(FORM *form)
+{
+  T((T_CALLED("free_form(%p)"), (void *)form));
+
+  if (!form)
+    RETURN(E_BAD_ARGUMENT);
+
+  if (form->status & _POSTED)
+    RETURN(E_POSTED);
+
+  Disconnect_Fields(form);
+  if (form->page)
+    free(form->page);
+  free(form);
+
+  RETURN(E_OK);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  int set_form_fields( FORM *form, FIELD **fields )
+|
+|   Description   :  Set a new association of an array of fields to a form
+|
+|   Return Values :  E_OK            - no error
+|                    E_BAD_ARGUMENT  - Invalid form pointer or field array
+|                    E_CONNECTED     - a field is already connected
+|                    E_POSTED        - form is posted
+|                    E_SYSTEM_ERROR  - not enough memory
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+set_form_fields(FORM *form, FIELD **fields)
+{
+  FIELD **old;
+  int res;
+
+  T((T_CALLED("set_form_fields(%p,%p)"), (void *)form, (void *)fields));
+
+  if (!form)
+    RETURN(E_BAD_ARGUMENT);
+
+  if (form->status & _POSTED)
+    RETURN(E_POSTED);
+
+  old = form->field;
+  Disconnect_Fields(form);
+
+  if ((res = Associate_Fields(form, fields)) != E_OK)
+    Connect_Fields(form, old);
+
+  RETURN(res);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  FIELD **form_fields( const FORM *form )
+|
+|   Description   :  Retrieve array of fields
+|
+|   Return Values :  Pointer to field array
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(FIELD **)
+form_fields(const FORM *form)
+{
+  T((T_CALLED("form_field(%p)"), (const void *)form));
+  returnFieldPtr(Normalize_Form(form)->field);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  int field_count( const FORM *form )
+|
+|   Description   :  Retrieve number of fields
+|
+|   Return Values :  Number of fields, -1 if none are defined
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+field_count(const FORM *form)
+{
+  T((T_CALLED("field_count(%p)"), (const void *)form));
+
+  returnCode(Normalize_Form(form)->maxfield);
+}
+
+/* frm_def.c ends here */
diff --git a/apps/lib/curses/pdcurses/form/frm_driver.c b/apps/lib/curses/pdcurses/form/frm_driver.c
new file mode 100644
index 0000000..e0892bf
--- /dev/null
+++ b/apps/lib/curses/pdcurses/form/frm_driver.c
@@ -0,0 +1,4646 @@
+/****************************************************************************
+ * Copyright (c) 1998-2009,2010 Free Software Foundation, Inc.              *
+ *                                                                          *
+ * Permission is hereby granted, free of charge, to any person obtaining a  *
+ * copy of this software and associated documentation files (the            *
+ * "Software"), to deal in the Software without restriction, including      *
+ * without limitation the rights to use, copy, modify, merge, publish,      *
+ * distribute, distribute with modifications, sublicense, and/or sell       *
+ * copies of the Software, and to permit persons to whom the Software is    *
+ * furnished to do so, subject to the following conditions:                 *
+ *                                                                          *
+ * The above copyright notice and this permission notice shall be included  *
+ * in all copies or substantial portions of the Software.                   *
+ *                                                                          *
+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS  *
+ * OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF               *
+ * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.   *
+ * IN NO EVENT SHALL THE ABOVE COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,   *
+ * DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR    *
+ * OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR    *
+ * THE USE OR OTHER DEALINGS IN THE SOFTWARE.                               *
+ *                                                                          *
+ * Except as contained in this notice, the name(s) of the above copyright   *
+ * holders shall not be used in advertising or otherwise to promote the     *
+ * sale, use or other dealings in this Software without prior written       *
+ * authorization.                                                           *
+ ****************************************************************************/
+
+/****************************************************************************
+ *   Author:  Juergen Pfeifer, 1995,1997                                    *
+ ****************************************************************************/
+
+#include "form.priv.h"
+
+MODULE_ID("$Id: frm_driver.c,v 1.98 2010/05/01 21:11:43 tom Exp $")
+
+/*----------------------------------------------------------------------------
+  This is the core module of the form library. It contains the majority
+  of the driver routines as well as the form_driver function.
+
+  Essentially this module is nearly the whole library. This is because
+  all the functions in this module depends on some others in the module,
+  so it makes no sense to split them into separate files because they
+  will always be linked together. The only acceptable concern is turnaround
+  time for this module, but now we have all Pentiums or RISCs, so what!
+
+  The driver routines are grouped into nine generic categories:
+
+   a)   Page Navigation            ( all functions prefixed by PN_ )
+        The current page of the form is left and some new page is
+        entered.
+   b)   Inter-Field Navigation     ( all functions prefixed by FN_ )
+        The current field of the form is left and some new field is
+        entered.
+   c)   Intra-Field Navigation     ( all functions prefixed by IFN_ )
+        The current position in the current field is changed.
+   d)   Vertical Scrolling         ( all functions prefixed by VSC_ )
+        Essentially this is a specialization of Intra-Field navigation.
+        It has to check for a multi-line field.
+   e)   Horizontal Scrolling       ( all functions prefixed by HSC_ )
+        Essentially this is a specialization of Intra-Field navigation.
+        It has to check for a single-line field.
+   f)   Field Editing              ( all functions prefixed by FE_ )
+        The content of the current field is changed
+   g)   Edit Mode requests         ( all functions prefixed by EM_ )
+        Switching between insert and overlay mode
+   h)   Field-Validation requests  ( all functions prefixed by FV_ )
+        Perform verifications of the field.
+   i)   Choice requests            ( all functions prefixed by CR_ )
+        Requests to enumerate possible field values
+  --------------------------------------------------------------------------*/
+
+/*----------------------------------------------------------------------------
+  Some remarks on the placements of assert() macros :
+  I use them only on "strategic" places, i.e. top level entries where
+  I want to make sure that things are set correctly. Throughout subordinate
+  routines I omit them mostly.
+  --------------------------------------------------------------------------*/
+
+/*
+Some options that may effect compatibility in behavior to SVr4 forms,
+but they are here to allow a more intuitive and user friendly behavior of
+our form implementation. This doesn't affect the API, so we feel it is
+uncritical.
+
+The initial implementation tries to stay very close with the behavior
+of the original SVr4 implementation, although in some areas it is quite
+clear that this isn't the most appropriate way. As far as possible this
+sources will allow you to build a forms lib that behaves quite similar
+to SVr4, but now and in the future we will give you better options.
+Perhaps at some time we will make this configurable at runtime.
+*/
+
+/* Implement a more user-friendly previous/next word behavior */
+#define FRIENDLY_PREV_NEXT_WORD (1)
+/* Fix the wrong behavior for forms with all fields inactive */
+#define FIX_FORM_INACTIVE_BUG (1)
+/* Allow dynamic field growth also when navigating past the end */
+#define GROW_IF_NAVIGATE (1)
+
+#if USE_WIDEC_SUPPORT
+#define myADDNSTR(w, s, n) wadd_wchnstr(w, s, n)
+#define myINSNSTR(w, s, n) wins_wchnstr(w, s, n)
+#define myINNSTR(w, s, n)  fix_wchnstr(w, s, n)
+#define myWCWIDTH(w, y, x) cell_width(w, y, x)
+#else
+#define myADDNSTR(w, s, n) waddnstr(w, s, n)
+#define myINSNSTR(w, s, n) winsnstr(w, s, n)
+#define myINNSTR(w, s, n)  winnstr(w, s, n)
+#define myWCWIDTH(w, y, x) 1
+#endif
+
+/*----------------------------------------------------------------------------
+  Forward references to some internally used static functions
+  --------------------------------------------------------------------------*/
+static int Inter_Field_Navigation(int (*const fct) (FORM *), FORM *form);
+static int FN_Next_Field(FORM *form);
+static int FN_Previous_Field(FORM *form);
+static int FE_New_Line(FORM *);
+static int FE_Delete_Previous(FORM *);
+
+/*----------------------------------------------------------------------------
+  Macro Definitions.
+
+  Some Remarks on that: I use the convention to use UPPERCASE for constants
+  defined by Macros. If I provide a macro as a kind of inline routine to
+  provide some logic, I use my Upper_Lower case style.
+  --------------------------------------------------------------------------*/
+
+/* Calculate the position of a single row in a field buffer */
+#define Position_Of_Row_In_Buffer(field,row) ((row)*(field)->dcols)
+
+/* Calculate start address for the fields buffer# N */
+#define Address_Of_Nth_Buffer(field,N) \
+  ((field)->buf + (N)*(1+Buffer_Length(field)))
+
+/* Calculate the start address of the row in the fields specified buffer# N */
+#define Address_Of_Row_In_Nth_Buffer(field,N,row) \
+  (Address_Of_Nth_Buffer(field,N) + Position_Of_Row_In_Buffer(field,row))
+
+/* Calculate the start address of the row in the fields primary buffer */
+#define Address_Of_Row_In_Buffer(field,row) \
+  Address_Of_Row_In_Nth_Buffer(field,0,row)
+
+/* Calculate the start address of the row in the forms current field
+   buffer# N */
+#define Address_Of_Current_Row_In_Nth_Buffer(form,N) \
+   Address_Of_Row_In_Nth_Buffer((form)->current,N,(form)->currow)
+
+/* Calculate the start address of the row in the forms current field
+   primary buffer */
+#define Address_Of_Current_Row_In_Buffer(form) \
+   Address_Of_Current_Row_In_Nth_Buffer(form,0)
+
+/* Calculate the address of the cursor in the forms current field
+   primary buffer */
+#define Address_Of_Current_Position_In_Nth_Buffer(form,N) \
+   (Address_Of_Current_Row_In_Nth_Buffer(form,N) + (form)->curcol)
+
+/* Calculate the address of the cursor in the forms current field
+   buffer# N */
+#define Address_Of_Current_Position_In_Buffer(form) \
+  Address_Of_Current_Position_In_Nth_Buffer(form,0)
+
+/* Logic to decide whether or not a field is actually a field with
+   vertical or horizontal scrolling */
+#define Is_Scroll_Field(field)          \
+   (((field)->drows > (field)->rows) || \
+    ((field)->dcols > (field)->cols))
+
+/* Logic to decide whether or not a field needs to have an individual window
+   instead of a derived window because it contains invisible parts.
+   This is true for non-public fields and for scrollable fields. */
+#define Has_Invisible_Parts(field)     \
+  (!((field)->opts & O_PUBLIC)      || \
+   Is_Scroll_Field(field))
+
+/* Logic to decide whether or not a field needs justification */
+#define Justification_Allowed(field)        \
+   (((field)->just != NO_JUSTIFICATION)  && \
+    (Single_Line_Field(field))           && \
+    (((field)->dcols == (field)->cols)   && \
+    ((field)->opts & O_STATIC))             )
+
+/* Logic to determine whether or not a dynamic field may still grow */
+#define Growable(field) ((field)->status & _MAY_GROW)
+
+/* Macro to set the attributes for a fields window */
+#define Set_Field_Window_Attributes(field,win) \
+(  wbkgdset((win),(chtype)((field)->pad | (field)->back)), \
+   (void) wattrset((win),(field)->fore) )
+
+/* Logic to decide whether or not a field really appears on the form */
+#define Field_Really_Appears(field)         \
+  ((field->form)                          &&\
+   (field->form->status & _POSTED)        &&\
+   (field->opts & O_VISIBLE)              &&\
+   (field->page == field->form->curpage))
+
+/* Logic to determine whether or not we are on the first position in the
+   current field */
+#define First_Position_In_Current_Field(form) \
+  (((form)->currow==0) && ((form)->curcol==0))
+
+#define Minimum(a,b) (((a)<=(b)) ? (a) : (b))
+#define Maximum(a,b) (((a)>=(b)) ? (a) : (b))
+
+/*----------------------------------------------------------------------------
+  Useful constants
+  --------------------------------------------------------------------------*/
+static FIELD_CELL myBLANK = BLANK;
+static FIELD_CELL myZEROS;
+
+#ifdef TRACE
+static void
+check_pos(FORM *form, int lineno)
+{
+  int y, x;
+
+  if (form && form->w)
+    {
+      getyx(form->w, y, x);
+      if (y != form->currow || x != form->curcol)
+	{
+	  T(("CHECKPOS %s@%d have position %d,%d vs want %d,%d",
+	     __FILE__, lineno,
+	     y, x,
+	     form->currow, form->curcol));
+	}
+    }
+}
+#define CHECKPOS(form) check_pos(form, __LINE__)
+#else
+#define CHECKPOS(form)		/* nothing */
+#endif
+
+/*----------------------------------------------------------------------------
+  Wide-character special functions
+  --------------------------------------------------------------------------*/
+#if USE_WIDEC_SUPPORT
+/* like winsnstr */
+static int
+wins_wchnstr(WINDOW *w, cchar_t *s, int n)
+{
+  int code = ERR;
+  int y, x;
+
+  while (n-- > 0)
+    {
+      getyx(w, y, x);
+      if ((code = wins_wch(w, s++)) != OK)
+	break;
+      if ((code = wmove(w, y, x + 1)) != OK)
+	break;
+    }
+  return code;
+}
+
+/* win_wchnstr is inconsistent with winnstr, since it returns OK rather than
+ * the number of items transferred.
+ */
+static int
+fix_wchnstr(WINDOW *w, cchar_t *s, int n)
+{
+  int x;
+
+  win_wchnstr(w, s, n);
+  /*
+   * This function is used to extract the text only from the window.
+   * Strip attributes and color from the string so they will not be added
+   * back when copying the string to the window.
+   */
+  for (x = 0; x < n; ++x)
+    {
+      RemAttr(s[x], A_ATTRIBUTES);
+      SetPair(s[x], 0);
+    }
+  return n;
+}
+
+/*
+ * Returns the column of the base of the given cell.
+ */
+static int
+cell_base(WINDOW *win, int y, int x)
+{
+  int result = x;
+
+  while (LEGALYX(win, y, x))
+    {
+      cchar_t *data = &(win->_line[y].text[x]);
+
+      if (isWidecBase(CHDEREF(data)) || !isWidecExt(CHDEREF(data)))
+	{
+	  result = x;
+	  break;
+	}
+      --x;
+    }
+  return result;
+}
+
+/*
+ * Returns the number of columns needed for the given cell in a window.
+ */
+static int
+cell_width(WINDOW *win, int y, int x)
+{
+  int result = 1;
+
+  if (LEGALYX(win, y, x))
+    {
+      cchar_t *data = &(win->_line[y].text[x]);
+
+      if (isWidecExt(CHDEREF(data)))
+	{
+	  /* recur, providing the number of columns to the next character */
+	  result = cell_width(win, y, x - 1);
+	}
+      else
+	{
+	  result = wcwidth(CharOf(CHDEREF(data)));
+	}
+    }
+  return result;
+}
+
+/*
+ * There is no wide-character function such as wdel_wch(), so we must find
+ * all of the cells that comprise a multi-column character and delete them
+ * one-by-one.
+ */
+static void
+delete_char(FORM *form)
+{
+  int cells = cell_width(form->w, form->currow, form->curcol);
+
+  form->curcol = cell_base(form->w, form->currow, form->curcol);
+  wmove(form->w, form->currow, form->curcol);
+  while (cells-- > 0)
+    {
+      wdelch(form->w);
+    }
+}
+#define DeleteChar(form) delete_char(form)
+#else
+#define DeleteChar(form) \
+	  wmove((form)->w, (form)->currow, (form)->curcol), \
+	  wdelch((form)->w)
+#endif
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static char *Get_Start_Of_Data(char * buf, int blen)
+|
+|   Description   :  Return pointer to first non-blank position in buffer.
+|                    If buffer is empty return pointer to buffer itself.
+|
+|   Return Values :  Pointer to first non-blank position in buffer
++--------------------------------------------------------------------------*/
+NCURSES_INLINE static FIELD_CELL *
+Get_Start_Of_Data(FIELD_CELL *buf, int blen)
+{
+  FIELD_CELL *p = buf;
+  FIELD_CELL *end = &buf[blen];
+
+  assert(buf && blen >= 0);
+  while ((p < end) && ISBLANK(*p))
+    p++;
+  return ((p == end) ? buf : p);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static char *After_End_Of_Data(char * buf, int blen)
+|
+|   Description   :  Return pointer after last non-blank position in buffer.
+|                    If buffer is empty, return pointer to buffer itself.
+|
+|   Return Values :  Pointer to position after last non-blank position in
+|                    buffer.
++--------------------------------------------------------------------------*/
+NCURSES_INLINE static FIELD_CELL *
+After_End_Of_Data(FIELD_CELL *buf, int blen)
+{
+  FIELD_CELL *p = &buf[blen];
+
+  assert(buf && blen >= 0);
+  while ((p > buf) && ISBLANK(p[-1]))
+    p--;
+  return (p);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static char *Get_First_Whitespace_Character(
+|                                     char * buf, int   blen)
+|
+|   Description   :  Position to the first whitespace character.
+|
+|   Return Values :  Pointer to first whitespace character in buffer.
++--------------------------------------------------------------------------*/
+NCURSES_INLINE static FIELD_CELL *
+Get_First_Whitespace_Character(FIELD_CELL *buf, int blen)
+{
+  FIELD_CELL *p = buf;
+  FIELD_CELL *end = &p[blen];
+
+  assert(buf && blen >= 0);
+  while ((p < end) && !ISBLANK(*p))
+    p++;
+  return ((p == end) ? buf : p);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static char *After_Last_Whitespace_Character(
+|                                     char * buf, int blen)
+|
+|   Description   :  Get the position after the last whitespace character.
+|
+|   Return Values :  Pointer to position after last whitespace character in
+|                    buffer.
++--------------------------------------------------------------------------*/
+NCURSES_INLINE static FIELD_CELL *
+After_Last_Whitespace_Character(FIELD_CELL *buf, int blen)
+{
+  FIELD_CELL *p = &buf[blen];
+
+  assert(buf && blen >= 0);
+  while ((p > buf) && !ISBLANK(p[-1]))
+    p--;
+  return (p);
+}
+
+/* Set this to 1 to use the div_t version. This is a good idea if your
+   compiler has an intrinsic div() support. Unfortunately GNU-C has it
+   not yet.
+   N.B.: This only works if form->curcol follows immediately form->currow
+         and both are of type int.
+*/
+#define USE_DIV_T (0)
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static void Adjust_Cursor_Position(
+|                                       FORM * form, const char * pos)
+|
+|   Description   :  Set current row and column of the form to values
+|                    corresponding to the buffer position.
+|
+|   Return Values :  -
++--------------------------------------------------------------------------*/
+NCURSES_INLINE static void
+Adjust_Cursor_Position(FORM *form, const FIELD_CELL *pos)
+{
+  FIELD *field;
+  int idx;
+
+  field = form->current;
+  assert(pos >= field->buf && field->dcols > 0);
+  idx = (int)(pos - field->buf);
+#if USE_DIV_T
+  *((div_t *) & (form->currow)) = div(idx, field->dcols);
+#else
+  form->currow = idx / field->dcols;
+  form->curcol = idx - field->cols * form->currow;
+#endif
+  if (field->drows < form->currow)
+    form->currow = 0;
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static void Buffer_To_Window(
+|                                      const FIELD  * field,
+|                                      WINDOW * win)
+|
+|   Description   :  Copy the buffer to the window. If it is a multi-line
+|                    field, the buffer is split to the lines of the
+|                    window without any editing.
+|
+|   Return Values :  -
++--------------------------------------------------------------------------*/
+static void
+Buffer_To_Window(const FIELD *field, WINDOW *win)
+{
+  int width, height;
+  int y, x;
+  int len;
+  int row;
+  FIELD_CELL *pBuffer;
+
+  assert(win && field);
+
+  getyx(win, y, x);
+  width = getmaxx(win);
+  height = getmaxy(win);
+
+  for (row = 0, pBuffer = field->buf;
+       row < height;
+       row++, pBuffer += width)
+    {
+      if ((len = (int)(After_End_Of_Data(pBuffer, width) - pBuffer)) > 0)
+	{
+	  wmove(win, row, 0);
+	  myADDNSTR(win, pBuffer, len);
+	}
+    }
+  wmove(win, y, x);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  void _nc_get_fieldbuffer(
+|                                          WINDOW * win,
+|                                          FIELD  * field,
+|                                          FIELD_CELL * buf)
+|
+|   Description   :  Copy the content of the window into the buffer.
+|                    The multiple lines of a window are simply
+|                    concatenated into the buffer. Pad characters in
+|                    the window will be replaced by blanks in the buffer.
+|
+|   Return Values :  -
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(void)
+_nc_get_fieldbuffer(FORM *form, FIELD *field, FIELD_CELL *buf)
+{
+  int pad;
+  int len = 0;
+  FIELD_CELL *p;
+  int row, height;
+  WINDOW *win;
+
+  assert(form && field && buf);
+
+  win = form->w;
+  assert(win);
+
+  pad = field->pad;
+  p = buf;
+  height = getmaxy(win);
+
+  for (row = 0; (row < height) && (row < field->drows); row++)
+    {
+      wmove(win, row, 0);
+      len += myINNSTR(win, p + len, field->dcols);
+    }
+  p[len] = myZEROS;
+
+  /* replace visual padding character by blanks in buffer */
+  if (pad != C_BLANK)
+    {
+      int i;
+
+      for (i = 0; i < len; i++, p++)
+	{
+	  if ((unsigned long)CharOf(*p) == ChCharOf(pad)
+#if USE_WIDEC_SUPPORT
+	      && p->chars[1] == 0
+#endif
+	    )
+	    *p = myBLANK;
+	}
+    }
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static void Window_To_Buffer(
+|                                          FORM   * form,
+|                                          FIELD  * field)
+|
+|   Description   :  Copy the content of the window into the buffer.
+|                    The multiple lines of a window are simply
+|                    concatenated into the buffer. Pad characters in
+|                    the window will be replaced by blanks in the buffer.
+|
+|   Return Values :  -
++--------------------------------------------------------------------------*/
+static void
+Window_To_Buffer(FORM *form, FIELD *field)
+{
+  _nc_get_fieldbuffer(form, field, field->buf);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static void Synchronize_Buffer(FORM * form)
+|
+|   Description   :  If there was a change, copy the content of the
+|                    window into the buffer, so the buffer is synchronized
+|                    with the windows content. We have to indicate that the
+|                    buffer needs validation due to the change.
+|
+|   Return Values :  -
++--------------------------------------------------------------------------*/
+NCURSES_INLINE static void
+Synchronize_Buffer(FORM *form)
+{
+  if (form->status & _WINDOW_MODIFIED)
+    {
+      form->status &= ~_WINDOW_MODIFIED;
+      form->status |= _FCHECK_REQUIRED;
+      Window_To_Buffer(form, form->current);
+      wmove(form->w, form->currow, form->curcol);
+    }
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static bool Field_Grown( FIELD *field, int amount)
+|
+|   Description   :  This function is called for growable dynamic fields
+|                    only. It has to increase the buffers and to allocate
+|                    a new window for this field.
+|                    This function has the side effect to set a new
+|                    field-buffer pointer, the dcols and drows values
+|                    as well as a new current Window for the field.
+|
+|   Return Values :  TRUE     - field successfully increased
+|                    FALSE    - there was some error
++--------------------------------------------------------------------------*/
+static bool
+Field_Grown(FIELD *field, int amount)
+{
+  bool result = FALSE;
+
+  if (field && Growable(field))
+    {
+      bool single_line_field = Single_Line_Field(field);
+      int old_buflen = Buffer_Length(field);
+      int new_buflen;
+      int old_dcols = field->dcols;
+      int old_drows = field->drows;
+      FIELD_CELL *oldbuf = field->buf;
+      FIELD_CELL *newbuf;
+
+      int growth;
+      FORM *form = field->form;
+      bool need_visual_update = ((form != (FORM *)0) &&
+				 (form->status & _POSTED) &&
+				 (form->current == field));
+
+      if (need_visual_update)
+	Synchronize_Buffer(form);
+
+      if (single_line_field)
+	{
+	  growth = field->cols * amount;
+	  if (field->maxgrow)
+	    growth = Minimum(field->maxgrow - field->dcols, growth);
+	  field->dcols += growth;
+	  if (field->dcols == field->maxgrow)
+	    field->status &= ~_MAY_GROW;
+	}
+      else
+	{
+	  growth = (field->rows + field->nrow) * amount;
+	  if (field->maxgrow)
+	    growth = Minimum(field->maxgrow - field->drows, growth);
+	  field->drows += growth;
+	  if (field->drows == field->maxgrow)
+	    field->status &= ~_MAY_GROW;
+	}
+      /* drows, dcols changed, so we get really the new buffer length */
+      new_buflen = Buffer_Length(field);
+      newbuf = (FIELD_CELL *)malloc(Total_Buffer_Size(field));
+      if (!newbuf)
+	{
+	  /* restore to previous state */
+	  field->dcols = old_dcols;
+	  field->drows = old_drows;
+	  if ((single_line_field && (field->dcols != field->maxgrow)) ||
+	      (!single_line_field && (field->drows != field->maxgrow)))
+	    field->status |= _MAY_GROW;
+	}
+      else
+	{
+	  /* Copy all the buffers.  This is the reason why we can't just use
+	   * realloc().
+	   */
+	  int i, j;
+	  FIELD_CELL *old_bp;
+	  FIELD_CELL *new_bp;
+
+	  result = TRUE;	/* allow sharing of recovery on failure */
+
+	  T((T_CREATE("fieldcell %p"), (void *)newbuf));
+	  field->buf = newbuf;
+	  for (i = 0; i <= field->nbuf; i++)
+	    {
+	      new_bp = Address_Of_Nth_Buffer(field, i);
+	      old_bp = oldbuf + i * (1 + old_buflen);
+	      for (j = 0; j < old_buflen; ++j)
+		new_bp[j] = old_bp[j];
+	      while (j < new_buflen)
+		new_bp[j++] = myBLANK;
+	      new_bp[new_buflen] = myZEROS;
+	    }
+
+#if USE_WIDEC_SUPPORT && NCURSES_EXT_FUNCS
+	  if (wresize(field->working, 1, Buffer_Length(field) + 1) == ERR)
+	    result = FALSE;
+#endif
+
+	  if (need_visual_update && result)
+	    {
+	      WINDOW *new_window = newpad(field->drows, field->dcols);
+
+	      if (new_window != 0)
+		{
+		  assert(form != (FORM *)0);
+		  if (form->w)
+		    delwin(form->w);
+		  form->w = new_window;
+		  Set_Field_Window_Attributes(field, form->w);
+		  werase(form->w);
+		  Buffer_To_Window(field, form->w);
+		  untouchwin(form->w);
+		  wmove(form->w, form->currow, form->curcol);
+		}
+	      else
+		result = FALSE;
+	    }
+
+	  if (result)
+	    {
+	      free(oldbuf);
+	      /* reflect changes in linked fields */
+	      if (field != field->link)
+		{
+		  FIELD *linked_field;
+
+		  for (linked_field = field->link;
+		       linked_field != field;
+		       linked_field = linked_field->link)
+		    {
+		      linked_field->buf = field->buf;
+		      linked_field->drows = field->drows;
+		      linked_field->dcols = field->dcols;
+		    }
+		}
+	    }
+	  else
+	    {
+	      /* restore old state */
+	      field->dcols = old_dcols;
+	      field->drows = old_drows;
+	      field->buf = oldbuf;
+	      if ((single_line_field &&
+		   (field->dcols != field->maxgrow)) ||
+		  (!single_line_field &&
+		   (field->drows != field->maxgrow)))
+		field->status |= _MAY_GROW;
+	      free(newbuf);
+	    }
+	}
+    }
+  return (result);
+}
+
+#ifdef NCURSES_MOUSE_VERSION
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  int Field_encloses(FIELD *field, int ry, int rx)
+|
+|   Description   :  Check if the given coordinates lie within the given field.
+|
+|   Return Values :  E_OK              - success
+|                    E_BAD_ARGUMENT    - invalid form pointer
+|                    E_SYSTEM_ERROR    - form has no current field or
+|                                        field-window
++--------------------------------------------------------------------------*/
+static int
+Field_encloses(FIELD *field, int ry, int rx)
+{
+  T((T_CALLED("Field_encloses(%p)"), (void *)field));
+  if (field != 0
+      && field->frow <= ry
+      && (field->frow + field->rows) > ry
+      && field->fcol <= rx
+      && (field->fcol + field->cols) > rx)
+    {
+      RETURN(E_OK);
+    }
+  RETURN(E_INVALID_FIELD);
+}
+#endif
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  int _nc_Position_Form_Cursor(FORM * form)
+|
+|   Description   :  Position the cursor in the window for the current
+|                    field to be in sync. with the currow and curcol
+|                    values.
+|
+|   Return Values :  E_OK              - success
+|                    E_BAD_ARGUMENT    - invalid form pointer
+|                    E_SYSTEM_ERROR    - form has no current field or
+|                                        field-window
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+_nc_Position_Form_Cursor(FORM *form)
+{
+  FIELD *field;
+  WINDOW *formwin;
+
+  if (!form)
+    return (E_BAD_ARGUMENT);
+
+  if (!form->w || !form->current)
+    return (E_SYSTEM_ERROR);
+
+  field = form->current;
+  formwin = Get_Form_Window(form);
+
+  wmove(form->w, form->currow, form->curcol);
+  if (Has_Invisible_Parts(field))
+    {
+      /* in this case fieldwin isn't derived from formwin, so we have
+         to move the cursor in formwin by hand... */
+      wmove(formwin,
+	    field->frow + form->currow - form->toprow,
+	    field->fcol + form->curcol - form->begincol);
+      wcursyncup(formwin);
+    }
+  else
+    wcursyncup(form->w);
+  return (E_OK);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  int _nc_Refresh_Current_Field(FORM * form)
+|
+|   Description   :  Propagate the changes in the fields window to the
+|                    window of the form.
+|
+|   Return Values :  E_OK              - on success
+|                    E_BAD_ARGUMENT    - invalid form pointer
+|                    E_SYSTEM_ERROR    - general error
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+_nc_Refresh_Current_Field(FORM *form)
+{
+  WINDOW *formwin;
+  FIELD *field;
+
+  T((T_CALLED("_nc_Refresh_Current_Field(%p)"), (void *)form));
+
+  if (!form)
+    RETURN(E_BAD_ARGUMENT);
+
+  if (!form->w || !form->current)
+    RETURN(E_SYSTEM_ERROR);
+
+  field = form->current;
+  formwin = Get_Form_Window(form);
+
+  if (field->opts & O_PUBLIC)
+    {
+      if (Is_Scroll_Field(field))
+	{
+	  /* Again, in this case the fieldwin isn't derived from formwin,
+	     so we have to perform a copy operation. */
+	  if (Single_Line_Field(field))
+	    {
+	      /* horizontal scrolling */
+	      if (form->curcol < form->begincol)
+		form->begincol = form->curcol;
+	      else
+		{
+		  if (form->curcol >= (form->begincol + field->cols))
+		    form->begincol = form->curcol - field->cols + 1;
+		}
+	      copywin(form->w,
+		      formwin,
+		      0,
+		      form->begincol,
+		      field->frow,
+		      field->fcol,
+		      field->frow,
+		      field->cols + field->fcol - 1,
+		      0);
+	    }
+	  else
+	    {
+	      /* A multi-line, i.e. vertical scrolling field */
+	      int row_after_bottom, first_modified_row, first_unmodified_row;
+
+	      if (field->drows > field->rows)
+		{
+		  row_after_bottom = form->toprow + field->rows;
+		  if (form->currow < form->toprow)
+		    {
+		      form->toprow = form->currow;
+		      field->status |= _NEWTOP;
+		    }
+		  if (form->currow >= row_after_bottom)
+		    {
+		      form->toprow = form->currow - field->rows + 1;
+		      field->status |= _NEWTOP;
+		    }
+		  if (field->status & _NEWTOP)
+		    {
+		      /* means we have to copy whole range */
+		      first_modified_row = form->toprow;
+		      first_unmodified_row = first_modified_row + field->rows;
+		      field->status &= ~_NEWTOP;
+		    }
+		  else
+		    {
+		      /* we try to optimize : finding the range of touched
+		         lines */
+		      first_modified_row = form->toprow;
+		      while (first_modified_row < row_after_bottom)
+			{
+			  if (is_linetouched(form->w, first_modified_row))
+			    break;
+			  first_modified_row++;
+			}
+		      first_unmodified_row = first_modified_row;
+		      while (first_unmodified_row < row_after_bottom)
+			{
+			  if (!is_linetouched(form->w, first_unmodified_row))
+			    break;
+			  first_unmodified_row++;
+			}
+		    }
+		}
+	      else
+		{
+		  first_modified_row = form->toprow;
+		  first_unmodified_row = first_modified_row + field->rows;
+		}
+	      if (first_unmodified_row != first_modified_row)
+		copywin(form->w,
+			formwin,
+			first_modified_row,
+			0,
+			field->frow + first_modified_row - form->toprow,
+			field->fcol,
+			field->frow + first_unmodified_row - form->toprow - 1,
+			field->cols + field->fcol - 1,
+			0);
+	    }
+	  wsyncup(formwin);
+	}
+      else
+	{
+	  /* if the field-window is simply a derived window, i.e. contains no
+	   * invisible parts, the whole thing is trivial
+	   */
+	  wsyncup(form->w);
+	}
+    }
+  untouchwin(form->w);
+  returnCode(_nc_Position_Form_Cursor(form));
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static void Perform_Justification(
+|                                        FIELD  * field,
+|                                        WINDOW * win)
+|
+|   Description   :  Output field with requested justification
+|
+|   Return Values :  -
++--------------------------------------------------------------------------*/
+static void
+Perform_Justification(FIELD *field, WINDOW *win)
+{
+  FIELD_CELL *bp;
+  int len;
+  int col = 0;
+
+  bp = Get_Start_Of_Data(field->buf, Buffer_Length(field));
+  len = (int)(After_End_Of_Data(field->buf, Buffer_Length(field)) - bp);
+
+  if (len > 0)
+    {
+      assert(win && (field->drows == 1) && (field->dcols == field->cols));
+
+      switch (field->just)
+	{
+	case JUSTIFY_LEFT:
+	  break;
+	case JUSTIFY_CENTER:
+	  col = (field->cols - len) / 2;
+	  break;
+	case JUSTIFY_RIGHT:
+	  col = field->cols - len;
+	  break;
+	default:
+	  break;
+	}
+
+      wmove(win, 0, col);
+      myADDNSTR(win, bp, len);
+    }
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static void Undo_Justification(
+|                                     FIELD  * field,
+|                                     WINDOW * win)
+|
+|   Description   :  Display field without any justification, i.e.
+|                    left justified
+|
+|   Return Values :  -
++--------------------------------------------------------------------------*/
+static void
+Undo_Justification(FIELD *field, WINDOW *win)
+{
+  FIELD_CELL *bp;
+  int len;
+
+  bp = Get_Start_Of_Data(field->buf, Buffer_Length(field));
+  len = (int)(After_End_Of_Data(field->buf, Buffer_Length(field)) - bp);
+
+  if (len > 0)
+    {
+      assert(win);
+      wmove(win, 0, 0);
+      myADDNSTR(win, bp, len);
+    }
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static bool Check_Char(FORM  *form,
+|                                           FIELD *field,
+|                                           FIELDTYPE * typ,
+|                                           int ch,
+|                                           TypeArgument *argp)
+|
+|   Description   :  Perform a single character check for character ch
+|                    according to the fieldtype instance.
+|
+|   Return Values :  TRUE             - Character is valid
+|                    FALSE            - Character is invalid
++--------------------------------------------------------------------------*/
+static bool
+Check_Char(FORM *form,
+	   FIELD *field,
+	   FIELDTYPE *typ,
+	   int ch,
+	   TypeArgument *argp)
+{
+  if (typ)
+    {
+      if (typ->status & _LINKED_TYPE)
+	{
+	  assert(argp);
+	  return (
+		   Check_Char(form, field, typ->left, ch, argp->left) ||
+		   Check_Char(form, field, typ->right, ch, argp->right));
+	}
+      else
+	{
+#if NCURSES_INTEROP_FUNCS
+	  if (typ->charcheck.occheck)
+	    {
+	      if (typ->status & _GENERIC)
+		return typ->charcheck.gccheck(ch, form, field, (void *)argp);
+	      else
+		return typ->charcheck.occheck(ch, (void *)argp);
+	    }
+#else
+	  if (typ->ccheck)
+	    return typ->ccheck(ch, (void *)argp);
+#endif
+	}
+    }
+  return (!iscntrl(UChar(ch)) ? TRUE : FALSE);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int Display_Or_Erase_Field(
+|                                           FIELD * field,
+|                                           bool bEraseFlag)
+|
+|   Description   :  Create a subwindow for the field and display the
+|                    buffer contents (apply justification if required)
+|                    or simply erase the field.
+|
+|   Return Values :  E_OK           - on success
+|                    E_SYSTEM_ERROR - some error (typical no memory)
++--------------------------------------------------------------------------*/
+static int
+Display_Or_Erase_Field(FIELD *field, bool bEraseFlag)
+{
+  WINDOW *win;
+  WINDOW *fwin;
+
+  if (!field)
+    return E_SYSTEM_ERROR;
+
+  fwin = Get_Form_Window(field->form);
+  win = derwin(fwin,
+	       field->rows, field->cols, field->frow, field->fcol);
+
+  if (!win)
+    return E_SYSTEM_ERROR;
+  else
+    {
+      if (field->opts & O_VISIBLE)
+	{
+	  Set_Field_Window_Attributes(field, win);
+	}
+      else
+	{
+	  (void)wattrset(win, WINDOW_ATTRS(fwin));
+	}
+      werase(win);
+    }
+
+  if (!bEraseFlag)
+    {
+      if (field->opts & O_PUBLIC)
+	{
+	  if (Justification_Allowed(field))
+	    Perform_Justification(field, win);
+	  else
+	    Buffer_To_Window(field, win);
+	}
+      field->status &= ~_NEWTOP;
+    }
+  wsyncup(win);
+  delwin(win);
+  return E_OK;
+}
+
+/* Macros to preset the bEraseFlag */
+#define Display_Field(field) Display_Or_Erase_Field(field,FALSE)
+#define Erase_Field(field)   Display_Or_Erase_Field(field,TRUE)
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int Synchronize_Field(FIELD * field)
+|
+|   Description   :  Synchronize the windows content with the value in
+|                    the buffer.
+|
+|   Return Values :  E_OK                - success
+|                    E_BAD_ARGUMENT      - invalid field pointer
+|                    E_SYSTEM_ERROR      - some severe basic error
++--------------------------------------------------------------------------*/
+static int
+Synchronize_Field(FIELD *field)
+{
+  FORM *form;
+  int res = E_OK;
+
+  if (!field)
+    return (E_BAD_ARGUMENT);
+
+  if (((form = field->form) != (FORM *)0)
+      && Field_Really_Appears(field))
+    {
+      if (field == form->current)
+	{
+	  form->currow = form->curcol = form->toprow = form->begincol = 0;
+	  werase(form->w);
+
+	  if ((field->opts & O_PUBLIC) && Justification_Allowed(field))
+	    Undo_Justification(field, form->w);
+	  else
+	    Buffer_To_Window(field, form->w);
+
+	  field->status |= _NEWTOP;
+	  res = _nc_Refresh_Current_Field(form);
+	}
+      else
+	res = Display_Field(field);
+    }
+  field->status |= _CHANGED;
+  return (res);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int Synchronize_Linked_Fields(FIELD * field)
+|
+|   Description   :  Propagate the Synchronize_Field function to all linked
+|                    fields. The first error that occurs in the sequence
+|                    of updates is the return value.
+|
+|   Return Values :  E_OK                - success
+|                    E_BAD_ARGUMENT      - invalid field pointer
+|                    E_SYSTEM_ERROR      - some severe basic error
++--------------------------------------------------------------------------*/
+static int
+Synchronize_Linked_Fields(FIELD *field)
+{
+  FIELD *linked_field;
+  int res = E_OK;
+  int syncres;
+
+  if (!field)
+    return (E_BAD_ARGUMENT);
+
+  if (!field->link)
+    return (E_SYSTEM_ERROR);
+
+  for (linked_field = field->link;
+       linked_field != field;
+       linked_field = linked_field->link)
+    {
+      if (((syncres = Synchronize_Field(linked_field)) != E_OK) &&
+	  (res == E_OK))
+	res = syncres;
+    }
+  return (res);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  int _nc_Synchronize_Attributes(FIELD * field)
+|
+|   Description   :  If a fields visual attributes have changed, this
+|                    routine is called to propagate those changes to the
+|                    screen.
+|
+|   Return Values :  E_OK             - success
+|                    E_BAD_ARGUMENT   - invalid field pointer
+|                    E_SYSTEM_ERROR   - some severe basic error
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+_nc_Synchronize_Attributes(FIELD *field)
+{
+  FORM *form;
+  int res = E_OK;
+  WINDOW *formwin;
+
+  T((T_CALLED("_nc_Synchronize_Attributes(%p)"), (void *)field));
+
+  if (!field)
+    returnCode(E_BAD_ARGUMENT);
+
+  CHECKPOS(field->form);
+  if (((form = field->form) != (FORM *)0)
+      && Field_Really_Appears(field))
+    {
+      if (form->current == field)
+	{
+	  Synchronize_Buffer(form);
+	  Set_Field_Window_Attributes(field, form->w);
+	  werase(form->w);
+	  wmove(form->w, form->currow, form->curcol);
+
+	  if (field->opts & O_PUBLIC)
+	    {
+	      if (Justification_Allowed(field))
+		Undo_Justification(field, form->w);
+	      else
+		Buffer_To_Window(field, form->w);
+	    }
+	  else
+	    {
+	      formwin = Get_Form_Window(form);
+	      copywin(form->w, formwin,
+		      0, 0,
+		      field->frow, field->fcol,
+		      field->rows - 1, field->cols - 1, 0);
+	      wsyncup(formwin);
+	      Buffer_To_Window(field, form->w);
+	      field->status |= _NEWTOP;		/* fake refresh to paint all */
+	      _nc_Refresh_Current_Field(form);
+	    }
+	}
+      else
+	{
+	  res = Display_Field(field);
+	}
+    }
+  CHECKPOS(form);
+  returnCode(res);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  int _nc_Synchronize_Options(FIELD * field,
+|                                                Field_Options newopts)
+|
+|   Description   :  If a fields options have changed, this routine is
+|                    called to propagate these changes to the screen and
+|                    to really change the behavior of the field.
+|
+|   Return Values :  E_OK                - success
+|                    E_BAD_ARGUMENT      - invalid field pointer
+|                    E_CURRENT           - field is the current one
+|                    E_SYSTEM_ERROR      - some severe basic error
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+_nc_Synchronize_Options(FIELD *field, Field_Options newopts)
+{
+  Field_Options oldopts;
+  Field_Options changed_opts;
+  FORM *form;
+  int res = E_OK;
+
+  T((T_CALLED("_nc_Synchronize_Options(%p,%#x)"), (void *)field, newopts));
+
+  if (!field)
+    returnCode(E_BAD_ARGUMENT);
+
+  oldopts = field->opts;
+  changed_opts = oldopts ^ newopts;
+  field->opts = newopts;
+  form = field->form;
+
+  if (form)
+    {
+      if (form->status & _POSTED)
+	{
+	  if (form->current == field)
+	    {
+	      field->opts = oldopts;
+	      returnCode(E_CURRENT);
+	    }
+	  if ((form->curpage == field->page))
+	    {
+	      if (changed_opts & O_VISIBLE)
+		{
+		  if (newopts & O_VISIBLE)
+		    res = Display_Field(field);
+		  else
+		    res = Erase_Field(field);
+		}
+	      else
+		{
+		  if ((changed_opts & O_PUBLIC) &&
+		      (newopts & O_VISIBLE))
+		    res = Display_Field(field);
+		}
+	    }
+	}
+    }
+
+  if (changed_opts & O_STATIC)
+    {
+      bool single_line_field = Single_Line_Field(field);
+      int res2 = E_OK;
+
+      if (newopts & O_STATIC)
+	{
+	  /* the field becomes now static */
+	  field->status &= ~_MAY_GROW;
+	  /* if actually we have no hidden columns, justification may
+	     occur again */
+	  if (single_line_field &&
+	      (field->cols == field->dcols) &&
+	      (field->just != NO_JUSTIFICATION) &&
+	      Field_Really_Appears(field))
+	    {
+	      res2 = Display_Field(field);
+	    }
+	}
+      else
+	{
+	  /* field is no longer static */
+	  if ((field->maxgrow == 0) ||
+	      (single_line_field && (field->dcols < field->maxgrow)) ||
+	      (!single_line_field && (field->drows < field->maxgrow)))
+	    {
+	      field->status |= _MAY_GROW;
+	      /* a field with justification now changes its behavior,
+	         so we must redisplay it */
+	      if (single_line_field &&
+		  (field->just != NO_JUSTIFICATION) &&
+		  Field_Really_Appears(field))
+		{
+		  res2 = Display_Field(field);
+		}
+	    }
+	}
+      if (res2 != E_OK)
+	res = res2;
+    }
+
+  returnCode(res);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  int _nc_Set_Current_Field(FORM  * form,
+|                                              FIELD * newfield)
+|
+|   Description   :  Make the newfield the new current field.
+|
+|   Return Values :  E_OK              - success
+|                    E_BAD_ARGUMENT    - invalid form or field pointer
+|                    E_SYSTEM_ERROR    - some severe basic error
+|                    E_NOT_CONNECTED   - no fields are connected to the form
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+_nc_Set_Current_Field(FORM *form, FIELD *newfield)
+{
+  FIELD *field;
+  WINDOW *new_window;
+
+  T((T_CALLED("_nc_Set_Current_Field(%p,%p)"), (void *)form, (void *)newfield));
+
+  if (!form || !newfield || !form->current || (newfield->form != form))
+    returnCode(E_BAD_ARGUMENT);
+
+  if ((form->status & _IN_DRIVER))
+    returnCode(E_BAD_STATE);
+
+  if (!(form->field))
+    returnCode(E_NOT_CONNECTED);
+
+  field = form->current;
+
+  if ((field != newfield) ||
+      !(form->status & _POSTED))
+    {
+      if ((form->w) &&
+	  (field->opts & O_VISIBLE) &&
+	  (field->form->curpage == field->page))
+	{
+	  _nc_Refresh_Current_Field(form);
+	  if (field->opts & O_PUBLIC)
+	    {
+	      if (field->drows > field->rows)
+		{
+		  if (form->toprow == 0)
+		    field->status &= ~_NEWTOP;
+		  else
+		    field->status |= _NEWTOP;
+		}
+	      else
+		{
+		  if (Justification_Allowed(field))
+		    {
+		      Window_To_Buffer(form, field);
+		      werase(form->w);
+		      Perform_Justification(field, form->w);
+		      wsyncup(form->w);
+		    }
+		}
+	    }
+	  delwin(form->w);
+	  form->w = (WINDOW *)0;
+	}
+
+      field = newfield;
+
+      if (Has_Invisible_Parts(field))
+	new_window = newpad(field->drows, field->dcols);
+      else
+	new_window = derwin(Get_Form_Window(form),
+			    field->rows, field->cols, field->frow, field->fcol);
+
+      if (!new_window)
+	returnCode(E_SYSTEM_ERROR);
+
+      form->current = field;
+
+      if (form->w)
+	delwin(form->w);
+      form->w = new_window;
+
+      form->status &= ~_WINDOW_MODIFIED;
+      Set_Field_Window_Attributes(field, form->w);
+
+      if (Has_Invisible_Parts(field))
+	{
+	  werase(form->w);
+	  Buffer_To_Window(field, form->w);
+	}
+      else
+	{
+	  if (Justification_Allowed(field))
+	    {
+	      werase(form->w);
+	      Undo_Justification(field, form->w);
+	      wsyncup(form->w);
+	    }
+	}
+
+      untouchwin(form->w);
+    }
+
+  form->currow = form->curcol = form->toprow = form->begincol = 0;
+  returnCode(E_OK);
+}
+
+/*----------------------------------------------------------------------------
+  Intra-Field Navigation routines
+  --------------------------------------------------------------------------*/
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int IFN_Next_Character(FORM * form)
+|
+|   Description   :  Move to the next character in the field. In a multi-line
+|                    field this wraps at the end of the line.
+|
+|   Return Values :  E_OK                - success
+|                    E_REQUEST_DENIED    - at the rightmost position
++--------------------------------------------------------------------------*/
+static int
+IFN_Next_Character(FORM *form)
+{
+  FIELD *field = form->current;
+  int step = myWCWIDTH(form->w, form->currow, form->curcol);
+
+  T((T_CALLED("IFN_Next_Character(%p)"), (void *)form));
+  if ((form->curcol += step) == field->dcols)
+    {
+      if ((++(form->currow)) == field->drows)
+	{
+#if GROW_IF_NAVIGATE
+	  if (!Single_Line_Field(field) && Field_Grown(field, 1))
+	    {
+	      form->curcol = 0;
+	      returnCode(E_OK);
+	    }
+#endif
+	  form->currow--;
+#if GROW_IF_NAVIGATE
+	  if (Single_Line_Field(field) && Field_Grown(field, 1))
+	    returnCode(E_OK);
+#endif
+	  form->curcol -= step;
+	  returnCode(E_REQUEST_DENIED);
+	}
+      form->curcol = 0;
+    }
+  returnCode(E_OK);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int IFN_Previous_Character(FORM * form)
+|
+|   Description   :  Move to the previous character in the field. In a
+|                    multi-line field this wraps and the beginning of the
+|                    line.
+|
+|   Return Values :  E_OK                - success
+|                    E_REQUEST_DENIED    - at the leftmost position
++--------------------------------------------------------------------------*/
+static int
+IFN_Previous_Character(FORM *form)
+{
+  int amount = myWCWIDTH(form->w, form->currow, form->curcol - 1);
+  int oldcol = form->curcol;
+
+  T((T_CALLED("IFN_Previous_Character(%p)"), (void *)form));
+  if ((form->curcol -= amount) < 0)
+    {
+      if ((--(form->currow)) < 0)
+	{
+	  form->currow++;
+	  form->curcol = oldcol;
+	  returnCode(E_REQUEST_DENIED);
+	}
+      form->curcol = form->current->dcols - 1;
+    }
+  returnCode(E_OK);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int IFN_Next_Line(FORM * form)
+|
+|   Description   :  Move to the beginning of the next line in the field
+|
+|   Return Values :  E_OK                - success
+|                    E_REQUEST_DENIED    - at the last line
++--------------------------------------------------------------------------*/
+static int
+IFN_Next_Line(FORM *form)
+{
+  FIELD *field = form->current;
+
+  T((T_CALLED("IFN_Next_Line(%p)"), (void *)form));
+  if ((++(form->currow)) == field->drows)
+    {
+#if GROW_IF_NAVIGATE
+      if (!Single_Line_Field(field) && Field_Grown(field, 1))
+	returnCode(E_OK);
+#endif
+      form->currow--;
+      returnCode(E_REQUEST_DENIED);
+    }
+  form->curcol = 0;
+  returnCode(E_OK);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int IFN_Previous_Line(FORM * form)
+|
+|   Description   :  Move to the beginning of the previous line in the field
+|
+|   Return Values :  E_OK                - success
+|                    E_REQUEST_DENIED    - at the first line
++--------------------------------------------------------------------------*/
+static int
+IFN_Previous_Line(FORM *form)
+{
+  T((T_CALLED("IFN_Previous_Line(%p)"), (void *)form));
+  if ((--(form->currow)) < 0)
+    {
+      form->currow++;
+      returnCode(E_REQUEST_DENIED);
+    }
+  form->curcol = 0;
+  returnCode(E_OK);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int IFN_Next_Word(FORM * form)
+|
+|   Description   :  Move to the beginning of the next word in the field.
+|
+|   Return Values :  E_OK             - success
+|                    E_REQUEST_DENIED - there is no next word
++--------------------------------------------------------------------------*/
+static int
+IFN_Next_Word(FORM *form)
+{
+  FIELD *field = form->current;
+  FIELD_CELL *bp = Address_Of_Current_Position_In_Buffer(form);
+  FIELD_CELL *s;
+  FIELD_CELL *t;
+
+  T((T_CALLED("IFN_Next_Word(%p)"), (void *)form));
+
+  /* We really need access to the data, so we have to synchronize */
+  Synchronize_Buffer(form);
+
+  /* Go to the first whitespace after the current position (including
+     current position). This is then the starting point to look for the
+     next non-blank data */
+  s = Get_First_Whitespace_Character(bp, Buffer_Length(field) -
+				     (int)(bp - field->buf));
+
+  /* Find the start of the next word */
+  t = Get_Start_Of_Data(s, Buffer_Length(field) -
+			(int)(s - field->buf));
+#if !FRIENDLY_PREV_NEXT_WORD
+  if (s == t)
+    returnCode(E_REQUEST_DENIED);
+  else
+#endif
+    {
+      Adjust_Cursor_Position(form, t);
+      returnCode(E_OK);
+    }
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int IFN_Previous_Word(FORM * form)
+|
+|   Description   :  Move to the beginning of the previous word in the field.
+|
+|   Return Values :  E_OK             - success
+|                    E_REQUEST_DENIED - there is no previous word
++--------------------------------------------------------------------------*/
+static int
+IFN_Previous_Word(FORM *form)
+{
+  FIELD *field = form->current;
+  FIELD_CELL *bp = Address_Of_Current_Position_In_Buffer(form);
+  FIELD_CELL *s;
+  FIELD_CELL *t;
+  bool again = FALSE;
+
+  T((T_CALLED("IFN_Previous_Word(%p)"), (void *)form));
+
+  /* We really need access to the data, so we have to synchronize */
+  Synchronize_Buffer(form);
+
+  s = After_End_Of_Data(field->buf, (int)(bp - field->buf));
+  /* s points now right after the last non-blank in the buffer before bp.
+     If bp was in a word, s equals bp. In this case we must find the last
+     whitespace in the buffer before bp and repeat the game to really find
+     the previous word! */
+  if (s == bp)
+    again = TRUE;
+
+  /* And next call now goes backward to look for the last whitespace
+     before that, pointing right after this, so it points to the begin
+     of the previous word.
+   */
+  t = After_Last_Whitespace_Character(field->buf, (int)(s - field->buf));
+#if !FRIENDLY_PREV_NEXT_WORD
+  if (s == t)
+    returnCode(E_REQUEST_DENIED);
+#endif
+  if (again)
+    {
+      /* and do it again, replacing bp by t */
+      s = After_End_Of_Data(field->buf, (int)(t - field->buf));
+      t = After_Last_Whitespace_Character(field->buf, (int)(s - field->buf));
+#if !FRIENDLY_PREV_NEXT_WORD
+      if (s == t)
+	returnCode(E_REQUEST_DENIED);
+#endif
+    }
+  Adjust_Cursor_Position(form, t);
+  returnCode(E_OK);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int IFN_Beginning_Of_Field(FORM * form)
+|
+|   Description   :  Place the cursor at the first non-pad character in
+|                    the field.
+|
+|   Return Values :  E_OK             - success
++--------------------------------------------------------------------------*/
+static int
+IFN_Beginning_Of_Field(FORM *form)
+{
+  FIELD *field = form->current;
+
+  T((T_CALLED("IFN_Beginning_Of_Field(%p)"), (void *)form));
+  Synchronize_Buffer(form);
+  Adjust_Cursor_Position(form,
+			 Get_Start_Of_Data(field->buf, Buffer_Length(field)));
+  returnCode(E_OK);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int IFN_End_Of_Field(FORM * form)
+|
+|   Description   :  Place the cursor after the last non-pad character in
+|                    the field. If the field occupies the last position in
+|                    the buffer, the cursor is positioned on the last
+|                    character.
+|
+|   Return Values :  E_OK              - success
++--------------------------------------------------------------------------*/
+static int
+IFN_End_Of_Field(FORM *form)
+{
+  FIELD *field = form->current;
+  FIELD_CELL *pos;
+
+  T((T_CALLED("IFN_End_Of_Field(%p)"), (void *)form));
+  Synchronize_Buffer(form);
+  pos = After_End_Of_Data(field->buf, Buffer_Length(field));
+  if (pos == (field->buf + Buffer_Length(field)))
+    pos--;
+  Adjust_Cursor_Position(form, pos);
+  returnCode(E_OK);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int IFN_Beginning_Of_Line(FORM * form)
+|
+|   Description   :  Place the cursor on the first non-pad character in
+|                    the current line of the field.
+|
+|   Return Values :  E_OK         - success
++--------------------------------------------------------------------------*/
+static int
+IFN_Beginning_Of_Line(FORM *form)
+{
+  FIELD *field = form->current;
+
+  T((T_CALLED("IFN_Beginning_Of_Line(%p)"), (void *)form));
+  Synchronize_Buffer(form);
+  Adjust_Cursor_Position(form,
+			 Get_Start_Of_Data(Address_Of_Current_Row_In_Buffer(form),
+					   field->dcols));
+  returnCode(E_OK);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int IFN_End_Of_Line(FORM * form)
+|
+|   Description   :  Place the cursor after the last non-pad character in the
+|                    current line of the field. If the field occupies the
+|                    last column in the line, the cursor is positioned on the
+|                    last character of the line.
+|
+|   Return Values :  E_OK        - success
++--------------------------------------------------------------------------*/
+static int
+IFN_End_Of_Line(FORM *form)
+{
+  FIELD *field = form->current;
+  FIELD_CELL *pos;
+  FIELD_CELL *bp;
+
+  T((T_CALLED("IFN_End_Of_Line(%p)"), (void *)form));
+  Synchronize_Buffer(form);
+  bp = Address_Of_Current_Row_In_Buffer(form);
+  pos = After_End_Of_Data(bp, field->dcols);
+  if (pos == (bp + field->dcols))
+    pos--;
+  Adjust_Cursor_Position(form, pos);
+  returnCode(E_OK);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int IFN_Left_Character(FORM * form)
+|
+|   Description   :  Move one character to the left in the current line.
+|                    This doesn't cycle.
+|
+|   Return Values :  E_OK             - success
+|                    E_REQUEST_DENIED - already in first column
++--------------------------------------------------------------------------*/
+static int
+IFN_Left_Character(FORM *form)
+{
+  int amount = myWCWIDTH(form->w, form->currow, form->curcol - 1);
+  int oldcol = form->curcol;
+
+  T((T_CALLED("IFN_Left_Character(%p)"), (void *)form));
+  if ((form->curcol -= amount) < 0)
+    {
+      form->curcol = oldcol;
+      returnCode(E_REQUEST_DENIED);
+    }
+  returnCode(E_OK);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int IFN_Right_Character(FORM * form)
+|
+|   Description   :  Move one character to the right in the current line.
+|                    This doesn't cycle.
+|
+|   Return Values :  E_OK              - success
+|                    E_REQUEST_DENIED  - already in last column
++--------------------------------------------------------------------------*/
+static int
+IFN_Right_Character(FORM *form)
+{
+  int amount = myWCWIDTH(form->w, form->currow, form->curcol);
+  int oldcol = form->curcol;
+
+  T((T_CALLED("IFN_Right_Character(%p)"), (void *)form));
+  if ((form->curcol += amount) >= form->current->dcols)
+    {
+#if GROW_IF_NAVIGATE
+      FIELD *field = form->current;
+
+      if (Single_Line_Field(field) && Field_Grown(field, 1))
+	returnCode(E_OK);
+#endif
+      form->curcol = oldcol;
+      returnCode(E_REQUEST_DENIED);
+    }
+  returnCode(E_OK);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int IFN_Up_Character(FORM * form)
+|
+|   Description   :  Move one line up. This doesn't cycle through the lines
+|                    of the field.
+|
+|   Return Values :  E_OK              - success
+|                    E_REQUEST_DENIED  - already in last column
++--------------------------------------------------------------------------*/
+static int
+IFN_Up_Character(FORM *form)
+{
+  T((T_CALLED("IFN_Up_Character(%p)"), (void *)form));
+  if ((--(form->currow)) < 0)
+    {
+      form->currow++;
+      returnCode(E_REQUEST_DENIED);
+    }
+  returnCode(E_OK);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int IFN_Down_Character(FORM * form)
+|
+|   Description   :  Move one line down. This doesn't cycle through the
+|                    lines of the field.
+|
+|   Return Values :  E_OK              - success
+|                    E_REQUEST_DENIED  - already in last column
++--------------------------------------------------------------------------*/
+static int
+IFN_Down_Character(FORM *form)
+{
+  FIELD *field = form->current;
+
+  T((T_CALLED("IFN_Down_Character(%p)"), (void *)form));
+  if ((++(form->currow)) == field->drows)
+    {
+#if GROW_IF_NAVIGATE
+      if (!Single_Line_Field(field) && Field_Grown(field, 1))
+	returnCode(E_OK);
+#endif
+      --(form->currow);
+      returnCode(E_REQUEST_DENIED);
+    }
+  returnCode(E_OK);
+}
+/*----------------------------------------------------------------------------
+  END of Intra-Field Navigation routines
+  --------------------------------------------------------------------------*/
+
+/*----------------------------------------------------------------------------
+  Vertical scrolling helper routines
+  --------------------------------------------------------------------------*/
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int VSC_Generic(FORM *form, int nlines)
+|
+|   Description   :  Scroll multi-line field forward (nlines>0) or
+|                    backward (nlines<0) this many lines.
+|
+|   Return Values :  E_OK              - success
+|                    E_REQUEST_DENIED  - can't scroll
++--------------------------------------------------------------------------*/
+static int
+VSC_Generic(FORM *form, int nlines)
+{
+  FIELD *field = form->current;
+  int res = E_REQUEST_DENIED;
+  int rows_to_go = (nlines > 0 ? nlines : -nlines);
+
+  if (nlines > 0)
+    {
+      if ((rows_to_go + form->toprow) > (field->drows - field->rows))
+	rows_to_go = (field->drows - field->rows - form->toprow);
+
+      if (rows_to_go > 0)
+	{
+	  form->currow += rows_to_go;
+	  form->toprow += rows_to_go;
+	  res = E_OK;
+	}
+    }
+  else
+    {
+      if (rows_to_go > form->toprow)
+	rows_to_go = form->toprow;
+
+      if (rows_to_go > 0)
+	{
+	  form->currow -= rows_to_go;
+	  form->toprow -= rows_to_go;
+	  res = E_OK;
+	}
+    }
+  return (res);
+}
+/*----------------------------------------------------------------------------
+  End of Vertical scrolling helper routines
+  --------------------------------------------------------------------------*/
+
+/*----------------------------------------------------------------------------
+  Vertical scrolling routines
+  --------------------------------------------------------------------------*/
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int Vertical_Scrolling(
+|                                           int (* const fct) (FORM *),
+|                                           FORM * form)
+|
+|   Description   :  Performs the generic vertical scrolling routines.
+|                    This has to check for a multi-line field and to set
+|                    the _NEWTOP flag if scrolling really occurred.
+|
+|   Return Values :  Propagated error code from low-level driver calls
++--------------------------------------------------------------------------*/
+static int
+Vertical_Scrolling(int (*const fct) (FORM *), FORM *form)
+{
+  int res = E_REQUEST_DENIED;
+
+  if (!Single_Line_Field(form->current))
+    {
+      res = fct(form);
+      if (res == E_OK)
+	form->current->status |= _NEWTOP;
+    }
+  return (res);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int VSC_Scroll_Line_Forward(FORM * form)
+|
+|   Description   :  Scroll multi-line field forward a line
+|
+|   Return Values :  E_OK                - success
+|                    E_REQUEST_DENIED    - no data ahead
++--------------------------------------------------------------------------*/
+static int
+VSC_Scroll_Line_Forward(FORM *form)
+{
+  T((T_CALLED("VSC_Scroll_Line_Forward(%p)"), (void *)form));
+  returnCode(VSC_Generic(form, 1));
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int VSC_Scroll_Line_Backward(FORM * form)
+|
+|   Description   :  Scroll multi-line field backward a line
+|
+|   Return Values :  E_OK                - success
+|                    E_REQUEST_DENIED    - no data behind
++--------------------------------------------------------------------------*/
+static int
+VSC_Scroll_Line_Backward(FORM *form)
+{
+  T((T_CALLED("VSC_Scroll_Line_Backward(%p)"), (void *)form));
+  returnCode(VSC_Generic(form, -1));
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int VSC_Scroll_Page_Forward(FORM * form)
+|
+|   Description   :  Scroll a multi-line field forward a page
+|
+|   Return Values :  E_OK              - success
+|                    E_REQUEST_DENIED  - no data ahead
++--------------------------------------------------------------------------*/
+static int
+VSC_Scroll_Page_Forward(FORM *form)
+{
+  T((T_CALLED("VSC_Scroll_Page_Forward(%p)"), (void *)form));
+  returnCode(VSC_Generic(form, form->current->rows));
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int VSC_Scroll_Half_Page_Forward(FORM * form)
+|
+|   Description   :  Scroll a multi-line field forward half a page
+|
+|   Return Values :  E_OK              - success
+|                    E_REQUEST_DENIED  - no data ahead
++--------------------------------------------------------------------------*/
+static int
+VSC_Scroll_Half_Page_Forward(FORM *form)
+{
+  T((T_CALLED("VSC_Scroll_Half_Page_Forward(%p)"), (void *)form));
+  returnCode(VSC_Generic(form, (form->current->rows + 1) / 2));
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int VSC_Scroll_Page_Backward(FORM * form)
+|
+|   Description   :  Scroll a multi-line field backward a page
+|
+|   Return Values :  E_OK              - success
+|                    E_REQUEST_DENIED  - no data behind
++--------------------------------------------------------------------------*/
+static int
+VSC_Scroll_Page_Backward(FORM *form)
+{
+  T((T_CALLED("VSC_Scroll_Page_Backward(%p)"), (void *)form));
+  returnCode(VSC_Generic(form, -(form->current->rows)));
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int VSC_Scroll_Half_Page_Backward(FORM * form)
+|
+|   Description   :  Scroll a multi-line field backward half a page
+|
+|   Return Values :  E_OK              - success
+|                    E_REQUEST_DENIED  - no data behind
++--------------------------------------------------------------------------*/
+static int
+VSC_Scroll_Half_Page_Backward(FORM *form)
+{
+  T((T_CALLED("VSC_Scroll_Half_Page_Backward(%p)"), (void *)form));
+  returnCode(VSC_Generic(form, -((form->current->rows + 1) / 2)));
+}
+/*----------------------------------------------------------------------------
+  End of Vertical scrolling routines
+  --------------------------------------------------------------------------*/
+
+/*----------------------------------------------------------------------------
+  Horizontal scrolling helper routines
+  --------------------------------------------------------------------------*/
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int HSC_Generic(FORM *form, int ncolumns)
+|
+|   Description   :  Scroll single-line field forward (ncolumns>0) or
+|                    backward (ncolumns<0) this many columns.
+|
+|   Return Values :  E_OK              - success
+|                    E_REQUEST_DENIED  - can't scroll
++--------------------------------------------------------------------------*/
+static int
+HSC_Generic(FORM *form, int ncolumns)
+{
+  FIELD *field = form->current;
+  int res = E_REQUEST_DENIED;
+  int cols_to_go = (ncolumns > 0 ? ncolumns : -ncolumns);
+
+  if (ncolumns > 0)
+    {
+      if ((cols_to_go + form->begincol) > (field->dcols - field->cols))
+	cols_to_go = field->dcols - field->cols - form->begincol;
+
+      if (cols_to_go > 0)
+	{
+	  form->curcol += cols_to_go;
+	  form->begincol += cols_to_go;
+	  res = E_OK;
+	}
+    }
+  else
+    {
+      if (cols_to_go > form->begincol)
+	cols_to_go = form->begincol;
+
+      if (cols_to_go > 0)
+	{
+	  form->curcol -= cols_to_go;
+	  form->begincol -= cols_to_go;
+	  res = E_OK;
+	}
+    }
+  return (res);
+}
+/*----------------------------------------------------------------------------
+  End of Horizontal scrolling helper routines
+  --------------------------------------------------------------------------*/
+
+/*----------------------------------------------------------------------------
+  Horizontal scrolling routines
+  --------------------------------------------------------------------------*/
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int Horizontal_Scrolling(
+|                                          int (* const fct) (FORM *),
+|                                          FORM * form)
+|
+|   Description   :  Performs the generic horizontal scrolling routines.
+|                    This has to check for a single-line field.
+|
+|   Return Values :  Propagated error code from low-level driver calls
++--------------------------------------------------------------------------*/
+static int
+Horizontal_Scrolling(int (*const fct) (FORM *), FORM *form)
+{
+  if (Single_Line_Field(form->current))
+    return fct(form);
+  else
+    return (E_REQUEST_DENIED);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int HSC_Scroll_Char_Forward(FORM * form)
+|
+|   Description   :  Scroll single-line field forward a character
+|
+|   Return Values :  E_OK                - success
+|                    E_REQUEST_DENIED    - no data ahead
++--------------------------------------------------------------------------*/
+static int
+HSC_Scroll_Char_Forward(FORM *form)
+{
+  T((T_CALLED("HSC_Scroll_Char_Forward(%p)"), (void *)form));
+  returnCode(HSC_Generic(form, 1));
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int HSC_Scroll_Char_Backward(FORM * form)
+|
+|   Description   :  Scroll single-line field backward a character
+|
+|   Return Values :  E_OK                - success
+|                    E_REQUEST_DENIED    - no data behind
++--------------------------------------------------------------------------*/
+static int
+HSC_Scroll_Char_Backward(FORM *form)
+{
+  T((T_CALLED("HSC_Scroll_Char_Backward(%p)"), (void *)form));
+  returnCode(HSC_Generic(form, -1));
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int HSC_Horizontal_Line_Forward(FORM* form)
+|
+|   Description   :  Scroll single-line field forward a line
+|
+|   Return Values :  E_OK                - success
+|                    E_REQUEST_DENIED    - no data ahead
++--------------------------------------------------------------------------*/
+static int
+HSC_Horizontal_Line_Forward(FORM *form)
+{
+  T((T_CALLED("HSC_Horizontal_Line_Forward(%p)"), (void *)form));
+  returnCode(HSC_Generic(form, form->current->cols));
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int HSC_Horizontal_Half_Line_Forward(FORM* form)
+|
+|   Description   :  Scroll single-line field forward half a line
+|
+|   Return Values :  E_OK               - success
+|                    E_REQUEST_DENIED   - no data ahead
++--------------------------------------------------------------------------*/
+static int
+HSC_Horizontal_Half_Line_Forward(FORM *form)
+{
+  T((T_CALLED("HSC_Horizontal_Half_Line_Forward(%p)"), (void *)form));
+  returnCode(HSC_Generic(form, (form->current->cols + 1) / 2));
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int HSC_Horizontal_Line_Backward(FORM* form)
+|
+|   Description   :  Scroll single-line field backward a line
+|
+|   Return Values :  E_OK                - success
+|                    E_REQUEST_DENIED    - no data behind
++--------------------------------------------------------------------------*/
+static int
+HSC_Horizontal_Line_Backward(FORM *form)
+{
+  T((T_CALLED("HSC_Horizontal_Line_Backward(%p)"), (void *)form));
+  returnCode(HSC_Generic(form, -(form->current->cols)));
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int HSC_Horizontal_Half_Line_Backward(FORM* form)
+|
+|   Description   :  Scroll single-line field backward half a line
+|
+|   Return Values :  E_OK                - success
+|                    E_REQUEST_DENIED    - no data behind
++--------------------------------------------------------------------------*/
+static int
+HSC_Horizontal_Half_Line_Backward(FORM *form)
+{
+  T((T_CALLED("HSC_Horizontal_Half_Line_Backward(%p)"), (void *)form));
+  returnCode(HSC_Generic(form, -((form->current->cols + 1) / 2)));
+}
+
+/*----------------------------------------------------------------------------
+  End of Horizontal scrolling routines
+  --------------------------------------------------------------------------*/
+
+/*----------------------------------------------------------------------------
+  Helper routines for Field Editing
+  --------------------------------------------------------------------------*/
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static bool Is_There_Room_For_A_Line(FORM * form)
+|
+|   Description   :  Check whether or not there is enough room in the
+|                    buffer to enter a whole line.
+|
+|   Return Values :  TRUE   - there is enough space
+|                    FALSE  - there is not enough space
++--------------------------------------------------------------------------*/
+NCURSES_INLINE static bool
+Is_There_Room_For_A_Line(FORM *form)
+{
+  FIELD *field = form->current;
+  FIELD_CELL *begin_of_last_line, *s;
+
+  Synchronize_Buffer(form);
+  begin_of_last_line = Address_Of_Row_In_Buffer(field, (field->drows - 1));
+  s = After_End_Of_Data(begin_of_last_line, field->dcols);
+  return ((s == begin_of_last_line) ? TRUE : FALSE);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static bool Is_There_Room_For_A_Char_In_Line(FORM * form)
+|
+|   Description   :  Checks whether or not there is room for a new character
+|                    in the current line.
+|
+|   Return Values :  TRUE    - there is room
+|                    FALSE   - there is not enough room (line full)
++--------------------------------------------------------------------------*/
+NCURSES_INLINE static bool
+Is_There_Room_For_A_Char_In_Line(FORM *form)
+{
+  int last_char_in_line;
+
+  wmove(form->w, form->currow, form->current->dcols - 1);
+  last_char_in_line = (int)(winch(form->w) & A_CHARTEXT);
+  wmove(form->w, form->currow, form->curcol);
+  return (((last_char_in_line == form->current->pad) ||
+	   is_blank(last_char_in_line)) ? TRUE : FALSE);
+}
+
+#define There_Is_No_Room_For_A_Char_In_Line(f) \
+  !Is_There_Room_For_A_Char_In_Line(f)
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int Insert_String(
+|                                             FORM * form,
+|                                             int row,
+|                                             char *txt,
+|                                             int  len )
+|
+|   Description   :  Insert the 'len' characters beginning at pointer 'txt'
+|                    into the 'row' of the 'form'. The insertion occurs
+|                    on the beginning of the row, all other characters are
+|                    moved to the right. After the text a pad character will
+|                    be inserted to separate the text from the rest. If
+|                    necessary the insertion moves characters on the next
+|                    line to make place for the requested insertion string.
+|
+|   Return Values :  E_OK              - success
+|                    E_REQUEST_DENIED  -
+|                    E_SYSTEM_ERROR    - system error
++--------------------------------------------------------------------------*/
+static int
+Insert_String(FORM *form, int row, FIELD_CELL *txt, int len)
+{
+  FIELD *field = form->current;
+  FIELD_CELL *bp = Address_Of_Row_In_Buffer(field, row);
+  int datalen = (int)(After_End_Of_Data(bp, field->dcols) - bp);
+  int freelen = field->dcols - datalen;
+  int requiredlen = len + 1;
+  FIELD_CELL *split;
+  int result = E_REQUEST_DENIED;
+
+  if (freelen >= requiredlen)
+    {
+      wmove(form->w, row, 0);
+      myINSNSTR(form->w, txt, len);
+      wmove(form->w, row, len);
+      myINSNSTR(form->w, &myBLANK, 1);
+      return E_OK;
+    }
+  else
+    {
+      /* we have to move characters on the next line. If we are on the
+         last line this may work, if the field is growable */
+      if ((row == (field->drows - 1)) && Growable(field))
+	{
+	  if (!Field_Grown(field, 1))
+	    return (E_SYSTEM_ERROR);
+	  /* !!!Side-Effect : might be changed due to growth!!! */
+	  bp = Address_Of_Row_In_Buffer(field, row);
+	}
+
+      if (row < (field->drows - 1))
+	{
+	  split =
+	    After_Last_Whitespace_Character(bp,
+					    (int)(Get_Start_Of_Data(bp
+								    + field->dcols
+								    - requiredlen,
+								    requiredlen)
+						  - bp));
+	  /* split points now to the first character of the portion of the
+	     line that must be moved to the next line */
+	  datalen = (int)(split - bp);	/* + freelen has to stay on this line   */
+	  freelen = field->dcols - (datalen + freelen);		/* for the next line */
+
+	  if ((result = Insert_String(form, row + 1, split, freelen)) == E_OK)
+	    {
+	      wmove(form->w, row, datalen);
+	      wclrtoeol(form->w);
+	      wmove(form->w, row, 0);
+	      myINSNSTR(form->w, txt, len);
+	      wmove(form->w, row, len);
+	      myINSNSTR(form->w, &myBLANK, 1);
+	      return E_OK;
+	    }
+	}
+      return (result);
+    }
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int Wrapping_Not_Necessary_Or_Wrapping_Ok(
+|                                             FORM * form)
+|
+|   Description   :  If a character has been entered into a field, it may
+|                    be that wrapping has to occur. This routine checks
+|                    whether or not wrapping is required and if so, performs
+|                    the wrapping.
+|
+|   Return Values :  E_OK              - no wrapping required or wrapping
+|                                        was successful
+|                    E_REQUEST_DENIED  -
+|                    E_SYSTEM_ERROR    - some system error
++--------------------------------------------------------------------------*/
+static int
+Wrapping_Not_Necessary_Or_Wrapping_Ok(FORM *form)
+{
+  FIELD *field = form->current;
+  int result = E_REQUEST_DENIED;
+  bool Last_Row = ((field->drows - 1) == form->currow);
+
+  if ((field->opts & O_WRAP) &&	/* wrapping wanted     */
+      (!Single_Line_Field(field)) &&	/* must be multi-line  */
+      (There_Is_No_Room_For_A_Char_In_Line(form)) &&	/* line is full        */
+      (!Last_Row || Growable(field)))	/* there are more lines */
+    {
+      FIELD_CELL *bp;
+      FIELD_CELL *split;
+      int chars_to_be_wrapped;
+      int chars_to_remain_on_line;
+
+      if (Last_Row)
+	{
+	  /* the above logic already ensures, that in this case the field
+	     is growable */
+	  if (!Field_Grown(field, 1))
+	    return E_SYSTEM_ERROR;
+	}
+      bp = Address_Of_Current_Row_In_Buffer(form);
+      Window_To_Buffer(form, field);
+      split = After_Last_Whitespace_Character(bp, field->dcols);
+      /* split points to the first character of the sequence to be brought
+         on the next line */
+      chars_to_remain_on_line = (int)(split - bp);
+      chars_to_be_wrapped = field->dcols - chars_to_remain_on_line;
+      if (chars_to_remain_on_line > 0)
+	{
+	  if ((result = Insert_String(form, form->currow + 1, split,
+				      chars_to_be_wrapped)) == E_OK)
+	    {
+	      wmove(form->w, form->currow, chars_to_remain_on_line);
+	      wclrtoeol(form->w);
+	      if (form->curcol >= chars_to_remain_on_line)
+		{
+		  form->currow++;
+		  form->curcol -= chars_to_remain_on_line;
+		}
+	      return E_OK;
+	    }
+	}
+      else
+	return E_OK;
+      if (result != E_OK)
+	{
+	  DeleteChar(form);
+	  Window_To_Buffer(form, field);
+	  result = E_REQUEST_DENIED;
+	}
+    }
+  else
+    result = E_OK;		/* wrapping was not necessary */
+  return (result);
+}
+
+/*----------------------------------------------------------------------------
+  Field Editing routines
+  --------------------------------------------------------------------------*/
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int Field_Editing(
+|                                    int (* const fct) (FORM *),
+|                                    FORM * form)
+|
+|   Description   :  Generic routine for field editing requests. The driver
+|                    routines are only called for editable fields, the
+|                    _WINDOW_MODIFIED flag is set if editing occurred.
+|                    This is somewhat special due to the overload semantics
+|                    of the NEW_LINE and DEL_PREV requests.
+|
+|   Return Values :  Error code from low level drivers.
++--------------------------------------------------------------------------*/
+static int
+Field_Editing(int (*const fct) (FORM *), FORM *form)
+{
+  int res = E_REQUEST_DENIED;
+
+  /* We have to deal here with the specific case of the overloaded
+     behavior of New_Line and Delete_Previous requests.
+     They may end up in navigational requests if we are on the first
+     character in a field. But navigation is also allowed on non-
+     editable fields.
+   */
+  if ((fct == FE_Delete_Previous) &&
+      (form->opts & O_BS_OVERLOAD) &&
+      First_Position_In_Current_Field(form))
+    {
+      res = Inter_Field_Navigation(FN_Previous_Field, form);
+    }
+  else
+    {
+      if (fct == FE_New_Line)
+	{
+	  if ((form->opts & O_NL_OVERLOAD) &&
+	      First_Position_In_Current_Field(form))
+	    {
+	      res = Inter_Field_Navigation(FN_Next_Field, form);
+	    }
+	  else
+	    /* FE_New_Line deals itself with the _WINDOW_MODIFIED flag */
+	    res = fct(form);
+	}
+      else
+	{
+	  /* From now on, everything must be editable */
+	  if (form->current->opts & O_EDIT)
+	    {
+	      res = fct(form);
+	      if (res == E_OK)
+		form->status |= _WINDOW_MODIFIED;
+	    }
+	}
+    }
+  return res;
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int FE_New_Line(FORM * form)
+|
+|   Description   :  Perform a new line request. This is rather complex
+|                    compared to other routines in this code due to the
+|                    rather difficult to understand description in the
+|                    manuals.
+|
+|   Return Values :  E_OK               - success
+|                    E_REQUEST_DENIED   - new line not allowed
+|                    E_SYSTEM_ERROR     - system error
++--------------------------------------------------------------------------*/
+static int
+FE_New_Line(FORM *form)
+{
+  FIELD *field = form->current;
+  FIELD_CELL *bp, *t;
+  bool Last_Row = ((field->drows - 1) == form->currow);
+
+  T((T_CALLED("FE_New_Line(%p)"), (void *)form));
+  if (form->status & _OVLMODE)
+    {
+      if (Last_Row &&
+	  (!(Growable(field) && !Single_Line_Field(field))))
+	{
+	  if (!(form->opts & O_NL_OVERLOAD))
+	    returnCode(E_REQUEST_DENIED);
+	  wmove(form->w, form->currow, form->curcol);
+	  wclrtoeol(form->w);
+	  /* we have to set this here, although it is also
+	     handled in the generic routine. The reason is,
+	     that FN_Next_Field may fail, but the form is
+	     definitively changed */
+	  form->status |= _WINDOW_MODIFIED;
+	  returnCode(Inter_Field_Navigation(FN_Next_Field, form));
+	}
+      else
+	{
+	  if (Last_Row && !Field_Grown(field, 1))
+	    {
+	      /* N.B.: due to the logic in the 'if', LastRow==TRUE
+	         means here that the field is growable and not
+	         a single-line field */
+	      returnCode(E_SYSTEM_ERROR);
+	    }
+	  wmove(form->w, form->currow, form->curcol);
+	  wclrtoeol(form->w);
+	  form->currow++;
+	  form->curcol = 0;
+	  form->status |= _WINDOW_MODIFIED;
+	  returnCode(E_OK);
+	}
+    }
+  else
+    {
+      /* Insert Mode */
+      if (Last_Row &&
+	  !(Growable(field) && !Single_Line_Field(field)))
+	{
+	  if (!(form->opts & O_NL_OVERLOAD))
+	    returnCode(E_REQUEST_DENIED);
+	  returnCode(Inter_Field_Navigation(FN_Next_Field, form));
+	}
+      else
+	{
+	  bool May_Do_It = !Last_Row && Is_There_Room_For_A_Line(form);
+
+	  if (!(May_Do_It || Growable(field)))
+	    returnCode(E_REQUEST_DENIED);
+	  if (!May_Do_It && !Field_Grown(field, 1))
+	    returnCode(E_SYSTEM_ERROR);
+
+	  bp = Address_Of_Current_Position_In_Buffer(form);
+	  t = After_End_Of_Data(bp, field->dcols - form->curcol);
+	  wmove(form->w, form->currow, form->curcol);
+	  wclrtoeol(form->w);
+	  form->currow++;
+	  form->curcol = 0;
+	  wmove(form->w, form->currow, form->curcol);
+	  winsertln(form->w);
+	  myADDNSTR(form->w, bp, (int)(t - bp));
+	  form->status |= _WINDOW_MODIFIED;
+	  returnCode(E_OK);
+	}
+    }
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int FE_Insert_Character(FORM * form)
+|
+|   Description   :  Insert blank character at the cursor position
+|
+|   Return Values :  E_OK
+|                    E_REQUEST_DENIED
++--------------------------------------------------------------------------*/
+static int
+FE_Insert_Character(FORM *form)
+{
+  FIELD *field = form->current;
+  int result = E_REQUEST_DENIED;
+
+  T((T_CALLED("FE_Insert_Character(%p)"), (void *)form));
+  if (Check_Char(form, field, field->type, (int)C_BLANK,
+		 (TypeArgument *)(field->arg)))
+    {
+      bool There_Is_Room = Is_There_Room_For_A_Char_In_Line(form);
+
+      if (There_Is_Room ||
+	  ((Single_Line_Field(field) && Growable(field))))
+	{
+	  if (!There_Is_Room && !Field_Grown(field, 1))
+	    result = E_SYSTEM_ERROR;
+	  else
+	    {
+	      winsch(form->w, (chtype)C_BLANK);
+	      result = Wrapping_Not_Necessary_Or_Wrapping_Ok(form);
+	    }
+	}
+    }
+  returnCode(result);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int FE_Insert_Line(FORM * form)
+|
+|   Description   :  Insert a blank line at the cursor position
+|
+|   Return Values :  E_OK               - success
+|                    E_REQUEST_DENIED   - line can not be inserted
++--------------------------------------------------------------------------*/
+static int
+FE_Insert_Line(FORM *form)
+{
+  FIELD *field = form->current;
+  int result = E_REQUEST_DENIED;
+
+  T((T_CALLED("FE_Insert_Line(%p)"), (void *)form));
+  if (Check_Char(form, field,
+		 field->type, (int)C_BLANK, (TypeArgument *)(field->arg)))
+    {
+      bool Maybe_Done = (form->currow != (field->drows - 1)) &&
+      Is_There_Room_For_A_Line(form);
+
+      if (!Single_Line_Field(field) &&
+	  (Maybe_Done || Growable(field)))
+	{
+	  if (!Maybe_Done && !Field_Grown(field, 1))
+	    result = E_SYSTEM_ERROR;
+	  else
+	    {
+	      form->curcol = 0;
+	      winsertln(form->w);
+	      result = E_OK;
+	    }
+	}
+    }
+  returnCode(result);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int FE_Delete_Character(FORM * form)
+|
+|   Description   :  Delete character at the cursor position
+|
+|   Return Values :  E_OK    - success
++--------------------------------------------------------------------------*/
+static int
+FE_Delete_Character(FORM *form)
+{
+  T((T_CALLED("FE_Delete_Character(%p)"), (void *)form));
+  DeleteChar(form);
+  returnCode(E_OK);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int FE_Delete_Previous(FORM * form)
+|
+|   Description   :  Delete character before cursor. Again this is a rather
+|                    difficult piece compared to others due to the overloading
+|                    semantics of backspace.
+|                    N.B.: The case of overloaded BS on first field position
+|                          is already handled in the generic routine.
+|
+|   Return Values :  E_OK                - success
+|                    E_REQUEST_DENIED    - Character can't be deleted
++--------------------------------------------------------------------------*/
+static int
+FE_Delete_Previous(FORM *form)
+{
+  FIELD *field = form->current;
+
+  T((T_CALLED("FE_Delete_Previous(%p)"), (void *)form));
+  if (First_Position_In_Current_Field(form))
+    returnCode(E_REQUEST_DENIED);
+
+  if ((--(form->curcol)) < 0)
+    {
+      FIELD_CELL *this_line, *prev_line, *prev_end, *this_end;
+      int this_row = form->currow;
+
+      form->curcol++;
+      if (form->status & _OVLMODE)
+	returnCode(E_REQUEST_DENIED);
+
+      prev_line = Address_Of_Row_In_Buffer(field, (form->currow - 1));
+      this_line = Address_Of_Row_In_Buffer(field, (form->currow));
+      Synchronize_Buffer(form);
+      prev_end = After_End_Of_Data(prev_line, field->dcols);
+      this_end = After_End_Of_Data(this_line, field->dcols);
+      if ((int)(this_end - this_line) >
+	  (field->cols - (int)(prev_end - prev_line)))
+	returnCode(E_REQUEST_DENIED);
+      wmove(form->w, form->currow, form->curcol);
+      wdeleteln(form->w);
+      Adjust_Cursor_Position(form, prev_end);
+      /*
+       * If we did not really move to the previous line, help the user a
+       * little.  It is however a little inconsistent.  Normally, when
+       * backspacing around the point where text wraps to a new line in a
+       * multi-line form, we absorb one keystroke for the wrapping point.  That
+       * is consistent with SVr4 forms.  However, SVr4 does not allow typing
+       * into the last column of the field, and requires the user to enter a
+       * newline to move to the next line.  Therefore it can consistently eat
+       * that keystroke.  Since ncurses allows the last column, it wraps
+       * automatically (given the proper options).  But we cannot eat the
+       * keystroke to back over the wrapping point, since that would put the
+       * cursor past the end of the form field.  In this case, just delete the
+       * character at the end of the field.
+       */
+      if (form->currow == this_row && this_row > 0)
+	{
+	  form->currow -= 1;
+	  form->curcol = field->dcols - 1;
+	  DeleteChar(form);
+	}
+      else
+	{
+	  wmove(form->w, form->currow, form->curcol);
+	  myADDNSTR(form->w, this_line, (int)(this_end - this_line));
+	}
+    }
+  else
+    {
+      DeleteChar(form);
+    }
+  returnCode(E_OK);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int FE_Delete_Line(FORM * form)
+|
+|   Description   :  Delete line at cursor position.
+|
+|   Return Values :  E_OK  - success
++--------------------------------------------------------------------------*/
+static int
+FE_Delete_Line(FORM *form)
+{
+  T((T_CALLED("FE_Delete_Line(%p)"), (void *)form));
+  form->curcol = 0;
+  wdeleteln(form->w);
+  returnCode(E_OK);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int FE_Delete_Word(FORM * form)
+|
+|   Description   :  Delete word at cursor position
+|
+|   Return Values :  E_OK               - success
+|                    E_REQUEST_DENIED   - failure
++--------------------------------------------------------------------------*/
+static int
+FE_Delete_Word(FORM *form)
+{
+  FIELD *field = form->current;
+  FIELD_CELL *bp = Address_Of_Current_Row_In_Buffer(form);
+  FIELD_CELL *ep = bp + field->dcols;
+  FIELD_CELL *cp = bp + form->curcol;
+  FIELD_CELL *s;
+
+  T((T_CALLED("FE_Delete_Word(%p)"), (void *)form));
+  Synchronize_Buffer(form);
+  if (ISBLANK(*cp))
+    returnCode(E_REQUEST_DENIED);	/* not in word */
+
+  /* move cursor to begin of word and erase to end of screen-line */
+  Adjust_Cursor_Position(form,
+			 After_Last_Whitespace_Character(bp, form->curcol));
+  wmove(form->w, form->currow, form->curcol);
+  wclrtoeol(form->w);
+
+  /* skip over word in buffer */
+  s = Get_First_Whitespace_Character(cp, (int)(ep - cp));
+  /* to begin of next word    */
+  s = Get_Start_Of_Data(s, (int)(ep - s));
+  if ((s != cp) && !ISBLANK(*s))
+    {
+      /* copy remaining line to window */
+      myADDNSTR(form->w, s, (int)(s - After_End_Of_Data(s, (int)(ep - s))));
+    }
+  returnCode(E_OK);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int FE_Clear_To_End_Of_Line(FORM * form)
+|
+|   Description   :  Clear to end of current line.
+|
+|   Return Values :  E_OK   - success
++--------------------------------------------------------------------------*/
+static int
+FE_Clear_To_End_Of_Line(FORM *form)
+{
+  T((T_CALLED("FE_Clear_To_End_Of_Line(%p)"), (void *)form));
+  wmove(form->w, form->currow, form->curcol);
+  wclrtoeol(form->w);
+  returnCode(E_OK);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int FE_Clear_To_End_Of_Field(FORM * form)
+|
+|   Description   :  Clear to end of field.
+|
+|   Return Values :  E_OK   - success
++--------------------------------------------------------------------------*/
+static int
+FE_Clear_To_End_Of_Field(FORM *form)
+{
+  T((T_CALLED("FE_Clear_To_End_Of_Field(%p)"), (void *)form));
+  wmove(form->w, form->currow, form->curcol);
+  wclrtobot(form->w);
+  returnCode(E_OK);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int FE_Clear_Field(FORM * form)
+|
+|   Description   :  Clear entire field.
+|
+|   Return Values :  E_OK   - success
++--------------------------------------------------------------------------*/
+static int
+FE_Clear_Field(FORM *form)
+{
+  T((T_CALLED("FE_Clear_Field(%p)"), (void *)form));
+  form->currow = form->curcol = 0;
+  werase(form->w);
+  returnCode(E_OK);
+}
+/*----------------------------------------------------------------------------
+  END of Field Editing routines
+  --------------------------------------------------------------------------*/
+
+/*----------------------------------------------------------------------------
+  Edit Mode routines
+  --------------------------------------------------------------------------*/
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int EM_Overlay_Mode(FORM * form)
+|
+|   Description   :  Switch to overlay mode.
+|
+|   Return Values :  E_OK   - success
++--------------------------------------------------------------------------*/
+static int
+EM_Overlay_Mode(FORM *form)
+{
+  T((T_CALLED("EM_Overlay_Mode(%p)"), (void *)form));
+  form->status |= _OVLMODE;
+  returnCode(E_OK);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int EM_Insert_Mode(FORM * form)
+|
+|   Description   :  Switch to insert mode
+|
+|   Return Values :  E_OK   - success
++--------------------------------------------------------------------------*/
+static int
+EM_Insert_Mode(FORM *form)
+{
+  T((T_CALLED("EM_Insert_Mode(%p)"), (void *)form));
+  form->status &= ~_OVLMODE;
+  returnCode(E_OK);
+}
+
+/*----------------------------------------------------------------------------
+  END of Edit Mode routines
+  --------------------------------------------------------------------------*/
+
+/*----------------------------------------------------------------------------
+  Helper routines for Choice Requests
+  --------------------------------------------------------------------------*/
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static bool Next_Choice(FORM * form,
+|                                            FIELDTYPE * typ,
+|                                            FIELD * field,
+|                                            TypeArgument *argp)
+|
+|   Description   :  Get the next field choice. For linked types this is
+|                    done recursively.
+|
+|   Return Values :  TRUE    - next choice successfully retrieved
+|                    FALSE   - couldn't retrieve next choice
++--------------------------------------------------------------------------*/
+static bool
+Next_Choice(FORM *form, FIELDTYPE *typ, FIELD *field, TypeArgument *argp)
+{
+  if (!typ || !(typ->status & _HAS_CHOICE))
+    return FALSE;
+
+  if (typ->status & _LINKED_TYPE)
+    {
+      assert(argp);
+      return (
+	       Next_Choice(form, typ->left, field, argp->left) ||
+	       Next_Choice(form, typ->right, field, argp->right));
+    }
+  else
+    {
+#if NCURSES_INTEROP_FUNCS
+      assert(typ->enum_next.onext);
+      if (typ->status & _GENERIC)
+	return typ->enum_next.gnext(form, field, (void *)argp);
+      else
+	return typ->enum_next.onext(field, (void *)argp);
+#else
+      assert(typ->next);
+      return typ->next(field, (void *)argp);
+#endif
+    }
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static bool Previous_Choice(FORM * form,
+|                                                FIELDTYPE * typ,
+|                                                FIELD * field,
+|                                                TypeArgument *argp)
+|
+|   Description   :  Get the previous field choice. For linked types this
+|                    is done recursively.
+|
+|   Return Values :  TRUE    - previous choice successfully retrieved
+|                    FALSE   - couldn't retrieve previous choice
++--------------------------------------------------------------------------*/
+static bool
+Previous_Choice(FORM *form, FIELDTYPE *typ, FIELD *field, TypeArgument *argp)
+{
+  if (!typ || !(typ->status & _HAS_CHOICE))
+    return FALSE;
+
+  if (typ->status & _LINKED_TYPE)
+    {
+      assert(argp);
+      return (
+	       Previous_Choice(form, typ->left, field, argp->left) ||
+	       Previous_Choice(form, typ->right, field, argp->right));
+    }
+  else
+    {
+#if NCURSES_INTEROP_FUNCS
+      assert(typ->enum_prev.oprev);
+      if (typ->status & _GENERIC)
+	return typ->enum_prev.gprev(form, field, (void *)argp);
+      else
+	return typ->enum_prev.oprev(field, (void *)argp);
+#else
+      assert(typ->prev);
+      return typ->prev(field, (void *)argp);
+#endif
+    }
+}
+/*----------------------------------------------------------------------------
+  End of Helper routines for Choice Requests
+  --------------------------------------------------------------------------*/
+
+/*----------------------------------------------------------------------------
+  Routines for Choice Requests
+  --------------------------------------------------------------------------*/
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int CR_Next_Choice(FORM * form)
+|
+|   Description   :  Get the next field choice.
+|
+|   Return Values :  E_OK              - success
+|                    E_REQUEST_DENIED  - next choice couldn't be retrieved
++--------------------------------------------------------------------------*/
+static int
+CR_Next_Choice(FORM *form)
+{
+  FIELD *field = form->current;
+
+  T((T_CALLED("CR_Next_Choice(%p)"), (void *)form));
+  Synchronize_Buffer(form);
+  returnCode((Next_Choice(form, field->type, field, (TypeArgument *)(field->arg)))
+	     ? E_OK
+	     : E_REQUEST_DENIED);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int CR_Previous_Choice(FORM * form)
+|
+|   Description   :  Get the previous field choice.
+|
+|   Return Values :  E_OK              - success
+|                    E_REQUEST_DENIED  - prev. choice couldn't be retrieved
++--------------------------------------------------------------------------*/
+static int
+CR_Previous_Choice(FORM *form)
+{
+  FIELD *field = form->current;
+
+  T((T_CALLED("CR_Previous_Choice(%p)"), (void *)form));
+  Synchronize_Buffer(form);
+  returnCode((Previous_Choice(form, field->type, field, (TypeArgument *)(field->arg)))
+	     ? E_OK
+	     : E_REQUEST_DENIED);
+}
+/*----------------------------------------------------------------------------
+  End of Routines for Choice Requests
+  --------------------------------------------------------------------------*/
+
+/*----------------------------------------------------------------------------
+  Helper routines for Field Validations.
+  --------------------------------------------------------------------------*/
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static bool Check_Field(FORM* form,
+|                                            FIELDTYPE * typ,
+|                                            FIELD * field,
+|                                            TypeArgument * argp)
+|
+|   Description   :  Check the field according to its fieldtype and its
+|                    actual arguments. For linked fieldtypes this is done
+|                    recursively.
+|
+|   Return Values :  TRUE       - field is valid
+|                    FALSE      - field is invalid.
++--------------------------------------------------------------------------*/
+static bool
+Check_Field(FORM *form, FIELDTYPE *typ, FIELD *field, TypeArgument *argp)
+{
+  if (typ)
+    {
+      if (field->opts & O_NULLOK)
+	{
+	  FIELD_CELL *bp = field->buf;
+
+	  assert(bp);
+	  while (ISBLANK(*bp))
+	    {
+	      bp++;
+	    }
+	  if (CharOf(*bp) == 0)
+	    return TRUE;
+	}
+
+      if (typ->status & _LINKED_TYPE)
+	{
+	  assert(argp);
+	  return (
+		   Check_Field(form, typ->left, field, argp->left) ||
+		   Check_Field(form, typ->right, field, argp->right));
+	}
+      else
+	{
+#if NCURSES_INTEROP_FUNCS
+	  if (typ->fieldcheck.ofcheck)
+	    {
+	      if (typ->status & _GENERIC)
+		return typ->fieldcheck.gfcheck(form, field, (void *)argp);
+	      else
+		return typ->fieldcheck.ofcheck(field, (void *)argp);
+	    }
+#else
+	  if (typ->fcheck)
+	    return typ->fcheck(field, (void *)argp);
+#endif
+	}
+    }
+  return TRUE;
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  bool _nc_Internal_Validation(FORM * form )
+|
+|   Description   :  Validate the current field of the form.
+|
+|   Return Values :  TRUE  - field is valid
+|                    FALSE - field is invalid
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(bool)
+_nc_Internal_Validation(FORM *form)
+{
+  FIELD *field;
+
+  field = form->current;
+
+  Synchronize_Buffer(form);
+  if ((form->status & _FCHECK_REQUIRED) ||
+      (!(field->opts & O_PASSOK)))
+    {
+      if (!Check_Field(form, field->type, field, (TypeArgument *)(field->arg)))
+	return FALSE;
+      form->status &= ~_FCHECK_REQUIRED;
+      field->status |= _CHANGED;
+      Synchronize_Linked_Fields(field);
+    }
+  return TRUE;
+}
+/*----------------------------------------------------------------------------
+  End of Helper routines for Field Validations.
+  --------------------------------------------------------------------------*/
+
+/*----------------------------------------------------------------------------
+  Routines for Field Validation.
+  --------------------------------------------------------------------------*/
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int FV_Validation(FORM * form)
+|
+|   Description   :  Validate the current field of the form.
+|
+|   Return Values :  E_OK             - field valid
+|                    E_INVALID_FIELD  - field not valid
++--------------------------------------------------------------------------*/
+static int
+FV_Validation(FORM *form)
+{
+  T((T_CALLED("FV_Validation(%p)"), (void *)form));
+  if (_nc_Internal_Validation(form))
+    returnCode(E_OK);
+  else
+    returnCode(E_INVALID_FIELD);
+}
+/*----------------------------------------------------------------------------
+  End of routines for Field Validation.
+  --------------------------------------------------------------------------*/
+
+/*----------------------------------------------------------------------------
+  Helper routines for Inter-Field Navigation
+  --------------------------------------------------------------------------*/
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static FIELD *Next_Field_On_Page(FIELD * field)
+|
+|   Description   :  Get the next field after the given field on the current
+|                    page. The order of fields is the one defined by the
+|                    fields array. Only visible and active fields are
+|                    counted.
+|
+|   Return Values :  Pointer to the next field.
++--------------------------------------------------------------------------*/
+NCURSES_INLINE static FIELD *
+Next_Field_On_Page(FIELD *field)
+{
+  FORM *form = field->form;
+  FIELD **field_on_page = &form->field[field->index];
+  FIELD **first_on_page = &form->field[form->page[form->curpage].pmin];
+  FIELD **last_on_page = &form->field[form->page[form->curpage].pmax];
+
+  do
+    {
+      field_on_page =
+	(field_on_page == last_on_page) ? first_on_page : field_on_page + 1;
+      if (Field_Is_Selectable(*field_on_page))
+	break;
+    }
+  while (field != (*field_on_page));
+  return (*field_on_page);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  FIELD* _nc_First_Active_Field(FORM * form)
+|
+|   Description   :  Get the first active field on the current page,
+|                    if there are such. If there are none, get the first
+|                    visible field on the page. If there are also none,
+|                    we return the first field on page and hope the best.
+|
+|   Return Values :  Pointer to calculated field.
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(FIELD *)
+_nc_First_Active_Field(FORM *form)
+{
+  FIELD **last_on_page = &form->field[form->page[form->curpage].pmax];
+  FIELD *proposed = Next_Field_On_Page(*last_on_page);
+
+  if (proposed == *last_on_page)
+    {
+      /* there might be the special situation, where there is no
+         active and visible field on the current page. We then select
+         the first visible field on this readonly page
+       */
+      if (Field_Is_Not_Selectable(proposed))
+	{
+	  FIELD **field = &form->field[proposed->index];
+	  FIELD **first = &form->field[form->page[form->curpage].pmin];
+
+	  do
+	    {
+	      field = (field == last_on_page) ? first : field + 1;
+	      if (((*field)->opts & O_VISIBLE))
+		break;
+	    }
+	  while (proposed != (*field));
+
+	  proposed = *field;
+
+	  if ((proposed == *last_on_page) && !(proposed->opts & O_VISIBLE))
+	    {
+	      /* This means, there is also no visible field on the page.
+	         So we propose the first one and hope the very best...
+	         Some very clever user has designed a readonly and invisible
+	         page on this form.
+	       */
+	      proposed = *first;
+	    }
+	}
+    }
+  return (proposed);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static FIELD *Previous_Field_On_Page(FIELD * field)
+|
+|   Description   :  Get the previous field before the given field on the
+|                    current page. The order of fields is the one defined by
+|                    the fields array. Only visible and active fields are
+|                    counted.
+|
+|   Return Values :  Pointer to the previous field.
++--------------------------------------------------------------------------*/
+NCURSES_INLINE static FIELD *
+Previous_Field_On_Page(FIELD *field)
+{
+  FORM *form = field->form;
+  FIELD **field_on_page = &form->field[field->index];
+  FIELD **first_on_page = &form->field[form->page[form->curpage].pmin];
+  FIELD **last_on_page = &form->field[form->page[form->curpage].pmax];
+
+  do
+    {
+      field_on_page =
+	(field_on_page == first_on_page) ? last_on_page : field_on_page - 1;
+      if (Field_Is_Selectable(*field_on_page))
+	break;
+    }
+  while (field != (*field_on_page));
+
+  return (*field_on_page);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static FIELD *Sorted_Next_Field(FIELD * field)
+|
+|   Description   :  Get the next field after the given field on the current
+|                    page. The order of fields is the one defined by the
+|                    (row,column) geometry, rows are major.
+|
+|   Return Values :  Pointer to the next field.
++--------------------------------------------------------------------------*/
+NCURSES_INLINE static FIELD *
+Sorted_Next_Field(FIELD *field)
+{
+  FIELD *field_on_page = field;
+
+  do
+    {
+      field_on_page = field_on_page->snext;
+      if (Field_Is_Selectable(field_on_page))
+	break;
+    }
+  while (field_on_page != field);
+
+  return (field_on_page);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static FIELD *Sorted_Previous_Field(FIELD * field)
+|
+|   Description   :  Get the previous field before the given field on the
+|                    current page. The order of fields is the one defined
+|                    by the (row,column) geometry, rows are major.
+|
+|   Return Values :  Pointer to the previous field.
++--------------------------------------------------------------------------*/
+NCURSES_INLINE static FIELD *
+Sorted_Previous_Field(FIELD *field)
+{
+  FIELD *field_on_page = field;
+
+  do
+    {
+      field_on_page = field_on_page->sprev;
+      if (Field_Is_Selectable(field_on_page))
+	break;
+    }
+  while (field_on_page != field);
+
+  return (field_on_page);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static FIELD *Left_Neighbor_Field(FIELD * field)
+|
+|   Description   :  Get the left neighbor of the field on the same line
+|                    and the same page. Cycles through the line.
+|
+|   Return Values :  Pointer to left neighbor field.
++--------------------------------------------------------------------------*/
+NCURSES_INLINE static FIELD *
+Left_Neighbor_Field(FIELD *field)
+{
+  FIELD *field_on_page = field;
+
+  /* For a field that has really a left neighbor, the while clause
+     immediately fails and the loop is left, positioned at the right
+     neighbor. Otherwise we cycle backwards through the sorted field list
+     until we enter the same line (from the right end).
+   */
+  do
+    {
+      field_on_page = Sorted_Previous_Field(field_on_page);
+    }
+  while (field_on_page->frow != field->frow);
+
+  return (field_on_page);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static FIELD *Right_Neighbor_Field(FIELD * field)
+|
+|   Description   :  Get the right neighbor of the field on the same line
+|                    and the same page.
+|
+|   Return Values :  Pointer to right neighbor field.
++--------------------------------------------------------------------------*/
+NCURSES_INLINE static FIELD *
+Right_Neighbor_Field(FIELD *field)
+{
+  FIELD *field_on_page = field;
+
+  /* See the comments on Left_Neighbor_Field to understand how it works */
+  do
+    {
+      field_on_page = Sorted_Next_Field(field_on_page);
+    }
+  while (field_on_page->frow != field->frow);
+
+  return (field_on_page);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static FIELD *Upper_Neighbor_Field(FIELD * field)
+|
+|   Description   :  Because of the row-major nature of sorting the fields,
+|                    it is more difficult to define whats the upper neighbor
+|                    field really means. We define that it must be on a
+|                    'previous' line (cyclic order!) and is the rightmost
+|                    field laying on the left side of the given field. If
+|                    this set is empty, we take the first field on the line.
+|
+|   Return Values :  Pointer to the upper neighbor field.
++--------------------------------------------------------------------------*/
+static FIELD *
+Upper_Neighbor_Field(FIELD *field)
+{
+  FIELD *field_on_page = field;
+  int frow = field->frow;
+  int fcol = field->fcol;
+
+  /* Walk back to the 'previous' line. The second term in the while clause
+     just guarantees that we stop if we cycled through the line because
+     there might be no 'previous' line if the page has just one line.
+   */
+  do
+    {
+      field_on_page = Sorted_Previous_Field(field_on_page);
+    }
+  while (field_on_page->frow == frow && field_on_page->fcol != fcol);
+
+  if (field_on_page->frow != frow)
+    {
+      /* We really found a 'previous' line. We are positioned at the
+         rightmost field on this line */
+      frow = field_on_page->frow;
+
+      /* We walk to the left as long as we are really right of the
+         field. */
+      while (field_on_page->frow == frow && field_on_page->fcol > fcol)
+	field_on_page = Sorted_Previous_Field(field_on_page);
+
+      /* If we wrapped, just go to the right which is the first field on
+         the row */
+      if (field_on_page->frow != frow)
+	field_on_page = Sorted_Next_Field(field_on_page);
+    }
+
+  return (field_on_page);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static FIELD *Down_Neighbor_Field(FIELD * field)
+|
+|   Description   :  Because of the row-major nature of sorting the fields,
+|                    its more difficult to define whats the down neighbor
+|                    field really means. We define that it must be on a
+|                    'next' line (cyclic order!) and is the leftmost
+|                    field laying on the right side of the given field. If
+|                    this set is empty, we take the last field on the line.
+|
+|   Return Values :  Pointer to the upper neighbor field.
++--------------------------------------------------------------------------*/
+static FIELD *
+Down_Neighbor_Field(FIELD *field)
+{
+  FIELD *field_on_page = field;
+  int frow = field->frow;
+  int fcol = field->fcol;
+
+  /* Walk forward to the 'next' line. The second term in the while clause
+     just guarantees that we stop if we cycled through the line because
+     there might be no 'next' line if the page has just one line.
+   */
+  do
+    {
+      field_on_page = Sorted_Next_Field(field_on_page);
+    }
+  while (field_on_page->frow == frow && field_on_page->fcol != fcol);
+
+  if (field_on_page->frow != frow)
+    {
+      /* We really found a 'next' line. We are positioned at the rightmost
+         field on this line */
+      frow = field_on_page->frow;
+
+      /* We walk to the right as long as we are really left of the
+         field. */
+      while (field_on_page->frow == frow && field_on_page->fcol < fcol)
+	field_on_page = Sorted_Next_Field(field_on_page);
+
+      /* If we wrapped, just go to the left which is the last field on
+         the row */
+      if (field_on_page->frow != frow)
+	field_on_page = Sorted_Previous_Field(field_on_page);
+    }
+
+  return (field_on_page);
+}
+
+/*----------------------------------------------------------------------------
+  Inter-Field Navigation routines
+  --------------------------------------------------------------------------*/
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int Inter_Field_Navigation(
+|                                           int (* const fct) (FORM *),
+|                                           FORM * form)
+|
+|   Description   :  Generic behavior for changing the current field, the
+|                    field is left and a new field is entered. So the field
+|                    must be validated and the field init/term hooks must
+|                    be called.
+|
+|   Return Values :  E_OK                - success
+|                    E_INVALID_FIELD     - field is invalid
+|                    some other          - error from subordinate call
++--------------------------------------------------------------------------*/
+static int
+Inter_Field_Navigation(int (*const fct) (FORM *), FORM *form)
+{
+  int res;
+
+  if (!_nc_Internal_Validation(form))
+    res = E_INVALID_FIELD;
+  else
+    {
+      Call_Hook(form, fieldterm);
+      res = fct(form);
+      Call_Hook(form, fieldinit);
+    }
+  return res;
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int FN_Next_Field(FORM * form)
+|
+|   Description   :  Move to the next field on the current page of the form
+|
+|   Return Values :  E_OK                 - success
+|                    != E_OK              - error from subordinate call
++--------------------------------------------------------------------------*/
+static int
+FN_Next_Field(FORM *form)
+{
+  T((T_CALLED("FN_Next_Field(%p)"), (void *)form));
+  returnCode(_nc_Set_Current_Field(form,
+				   Next_Field_On_Page(form->current)));
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int FN_Previous_Field(FORM * form)
+|
+|   Description   :  Move to the previous field on the current page of the
+|                    form
+|
+|   Return Values :  E_OK                 - success
+|                    != E_OK              - error from subordinate call
++--------------------------------------------------------------------------*/
+static int
+FN_Previous_Field(FORM *form)
+{
+  T((T_CALLED("FN_Previous_Field(%p)"), (void *)form));
+  returnCode(_nc_Set_Current_Field(form,
+				   Previous_Field_On_Page(form->current)));
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int FN_First_Field(FORM * form)
+|
+|   Description   :  Move to the first field on the current page of the form
+|
+|   Return Values :  E_OK                 - success
+|                    != E_OK              - error from subordinate call
++--------------------------------------------------------------------------*/
+static int
+FN_First_Field(FORM *form)
+{
+  T((T_CALLED("FN_First_Field(%p)"), (void *)form));
+  returnCode(_nc_Set_Current_Field(form,
+				   Next_Field_On_Page(form->field[form->page[form->curpage].pmax])));
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int FN_Last_Field(FORM * form)
+|
+|   Description   :  Move to the last field on the current page of the form
+|
+|   Return Values :  E_OK                 - success
+|                    != E_OK              - error from subordinate call
++--------------------------------------------------------------------------*/
+static int
+FN_Last_Field(FORM *form)
+{
+  T((T_CALLED("FN_Last_Field(%p)"), (void *)form));
+  returnCode(
+	      _nc_Set_Current_Field(form,
+				    Previous_Field_On_Page(form->field[form->page[form->curpage].pmin])));
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int FN_Sorted_Next_Field(FORM * form)
+|
+|   Description   :  Move to the sorted next field on the current page
+|                    of the form.
+|
+|   Return Values :  E_OK            - success
+|                    != E_OK         - error from subordinate call
++--------------------------------------------------------------------------*/
+static int
+FN_Sorted_Next_Field(FORM *form)
+{
+  T((T_CALLED("FN_Sorted_Next_Field(%p)"), (void *)form));
+  returnCode(_nc_Set_Current_Field(form,
+				   Sorted_Next_Field(form->current)));
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int FN_Sorted_Previous_Field(FORM * form)
+|
+|   Description   :  Move to the sorted previous field on the current page
+|                    of the form.
+|
+|   Return Values :  E_OK            - success
+|                    != E_OK         - error from subordinate call
++--------------------------------------------------------------------------*/
+static int
+FN_Sorted_Previous_Field(FORM *form)
+{
+  T((T_CALLED("FN_Sorted_Previous_Field(%p)"), (void *)form));
+  returnCode(_nc_Set_Current_Field(form,
+				   Sorted_Previous_Field(form->current)));
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int FN_Sorted_First_Field(FORM * form)
+|
+|   Description   :  Move to the sorted first field on the current page
+|                    of the form.
+|
+|   Return Values :  E_OK            - success
+|                    != E_OK         - error from subordinate call
++--------------------------------------------------------------------------*/
+static int
+FN_Sorted_First_Field(FORM *form)
+{
+  T((T_CALLED("FN_Sorted_First_Field(%p)"), (void *)form));
+  returnCode(_nc_Set_Current_Field(form,
+				   Sorted_Next_Field(form->field[form->page[form->curpage].smax])));
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int FN_Sorted_Last_Field(FORM * form)
+|
+|   Description   :  Move to the sorted last field on the current page
+|                    of the form.
+|
+|   Return Values :  E_OK            - success
+|                    != E_OK         - error from subordinate call
++--------------------------------------------------------------------------*/
+static int
+FN_Sorted_Last_Field(FORM *form)
+{
+  T((T_CALLED("FN_Sorted_Last_Field(%p)"), (void *)form));
+  returnCode(_nc_Set_Current_Field(form,
+				   Sorted_Previous_Field(form->field[form->page[form->curpage].smin])));
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int FN_Left_Field(FORM * form)
+|
+|   Description   :  Get the field on the left of the current field on the
+|                    same line and the same page. Cycles through the line.
+|
+|   Return Values :  E_OK            - success
+|                    != E_OK         - error from subordinate call
++--------------------------------------------------------------------------*/
+static int
+FN_Left_Field(FORM *form)
+{
+  T((T_CALLED("FN_Left_Field(%p)"), (void *)form));
+  returnCode(_nc_Set_Current_Field(form,
+				   Left_Neighbor_Field(form->current)));
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int FN_Right_Field(FORM * form)
+|
+|   Description   :  Get the field on the right of the current field on the
+|                    same line and the same page. Cycles through the line.
+|
+|   Return Values :  E_OK            - success
+|                    != E_OK         - error from subordinate call
++--------------------------------------------------------------------------*/
+static int
+FN_Right_Field(FORM *form)
+{
+  T((T_CALLED("FN_Right_Field(%p)"), (void *)form));
+  returnCode(_nc_Set_Current_Field(form,
+				   Right_Neighbor_Field(form->current)));
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int FN_Up_Field(FORM * form)
+|
+|   Description   :  Get the upper neighbor of the current field. This
+|                    cycles through the page. See the comments of the
+|                    Upper_Neighbor_Field function to understand how
+|                    'upper' is defined.
+|
+|   Return Values :  E_OK            - success
+|                    != E_OK         - error from subordinate call
++--------------------------------------------------------------------------*/
+static int
+FN_Up_Field(FORM *form)
+{
+  T((T_CALLED("FN_Up_Field(%p)"), (void *)form));
+  returnCode(_nc_Set_Current_Field(form,
+				   Upper_Neighbor_Field(form->current)));
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int FN_Down_Field(FORM * form)
+|
+|   Description   :  Get the down neighbor of the current field. This
+|                    cycles through the page. See the comments of the
+|                    Down_Neighbor_Field function to understand how
+|                    'down' is defined.
+|
+|   Return Values :  E_OK            - success
+|                    != E_OK         - error from subordinate call
++--------------------------------------------------------------------------*/
+static int
+FN_Down_Field(FORM *form)
+{
+  T((T_CALLED("FN_Down_Field(%p)"), (void *)form));
+  returnCode(_nc_Set_Current_Field(form,
+				   Down_Neighbor_Field(form->current)));
+}
+/*----------------------------------------------------------------------------
+  END of Field Navigation routines
+  --------------------------------------------------------------------------*/
+
+/*----------------------------------------------------------------------------
+  Helper routines for Page Navigation
+  --------------------------------------------------------------------------*/
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  int _nc_Set_Form_Page(FORM * form,
+|                                          int page,
+|                                          FIELD * field)
+|
+|   Description   :  Make the given page number the current page and make
+|                    the given field the current field on the page. If
+|                    for the field NULL is given, make the first field on
+|                    the page the current field. The routine acts only
+|                    if the requested page is not the current page.
+|
+|   Return Values :  E_OK                - success
+|                    != E_OK             - error from subordinate call
+|                    E_BAD_ARGUMENT      - invalid field pointer
+|                    E_SYSTEM_ERROR      - some severe basic error
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+_nc_Set_Form_Page(FORM *form, int page, FIELD *field)
+{
+  int res = E_OK;
+
+  if ((form->curpage != page))
+    {
+      FIELD *last_field, *field_on_page;
+
+      werase(Get_Form_Window(form));
+      form->curpage = page;
+      last_field = field_on_page = form->field[form->page[page].smin];
+      do
+	{
+	  if (field_on_page->opts & O_VISIBLE)
+	    if ((res = Display_Field(field_on_page)) != E_OK)
+	      return (res);
+	  field_on_page = field_on_page->snext;
+	}
+      while (field_on_page != last_field);
+
+      if (field)
+	res = _nc_Set_Current_Field(form, field);
+      else
+	/* N.B.: we don't encapsulate this by Inter_Field_Navigation(),
+	   because this is already executed in a page navigation
+	   context that contains field navigation
+	 */
+	res = FN_First_Field(form);
+    }
+  return (res);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int Next_Page_Number(const FORM * form)
+|
+|   Description   :  Calculate the page number following the current page
+|                    number. This cycles if the highest page number is
+|                    reached.
+|
+|   Return Values :  The next page number
++--------------------------------------------------------------------------*/
+NCURSES_INLINE static int
+Next_Page_Number(const FORM *form)
+{
+  return (form->curpage + 1) % form->maxpage;
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int Previous_Page_Number(const FORM * form)
+|
+|   Description   :  Calculate the page number before the current page
+|                    number. This cycles if the first page number is
+|                    reached.
+|
+|   Return Values :  The previous page number
++--------------------------------------------------------------------------*/
+NCURSES_INLINE static int
+Previous_Page_Number(const FORM *form)
+{
+  return (form->curpage != 0 ? form->curpage - 1 : form->maxpage - 1);
+}
+
+/*----------------------------------------------------------------------------
+  Page Navigation routines
+  --------------------------------------------------------------------------*/
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int Page_Navigation(
+|                                               int (* const fct) (FORM *),
+|                                               FORM * form)
+|
+|   Description   :  Generic behavior for changing a page. This means
+|                    that the field is left and a new field is entered.
+|                    So the field must be validated and the field init/term
+|                    hooks must be called. Because also the page is changed,
+|                    the forms init/term hooks must be called also.
+|
+|   Return Values :  E_OK                - success
+|                    E_INVALID_FIELD     - field is invalid
+|                    some other          - error from subordinate call
++--------------------------------------------------------------------------*/
+static int
+Page_Navigation(int (*const fct) (FORM *), FORM *form)
+{
+  int res;
+
+  if (!_nc_Internal_Validation(form))
+    res = E_INVALID_FIELD;
+  else
+    {
+      Call_Hook(form, fieldterm);
+      Call_Hook(form, formterm);
+      res = fct(form);
+      Call_Hook(form, forminit);
+      Call_Hook(form, fieldinit);
+    }
+  return res;
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int PN_Next_Page(FORM * form)
+|
+|   Description   :  Move to the next page of the form
+|
+|   Return Values :  E_OK                - success
+|                    != E_OK             - error from subordinate call
++--------------------------------------------------------------------------*/
+static int
+PN_Next_Page(FORM *form)
+{
+  T((T_CALLED("PN_Next_Page(%p)"), (void *)form));
+  returnCode(_nc_Set_Form_Page(form, Next_Page_Number(form), (FIELD *)0));
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int PN_Previous_Page(FORM * form)
+|
+|   Description   :  Move to the previous page of the form
+|
+|   Return Values :  E_OK              - success
+|                    != E_OK           - error from subordinate call
++--------------------------------------------------------------------------*/
+static int
+PN_Previous_Page(FORM *form)
+{
+  T((T_CALLED("PN_Previous_Page(%p)"), (void *)form));
+  returnCode(_nc_Set_Form_Page(form, Previous_Page_Number(form), (FIELD *)0));
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int PN_First_Page(FORM * form)
+|
+|   Description   :  Move to the first page of the form
+|
+|   Return Values :  E_OK              - success
+|                    != E_OK           - error from subordinate call
++--------------------------------------------------------------------------*/
+static int
+PN_First_Page(FORM *form)
+{
+  T((T_CALLED("PN_First_Page(%p)"), (void *)form));
+  returnCode(_nc_Set_Form_Page(form, 0, (FIELD *)0));
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int PN_Last_Page(FORM * form)
+|
+|   Description   :  Move to the last page of the form
+|
+|   Return Values :  E_OK              - success
+|                    != E_OK           - error from subordinate call
++--------------------------------------------------------------------------*/
+static int
+PN_Last_Page(FORM *form)
+{
+  T((T_CALLED("PN_Last_Page(%p)"), (void *)form));
+  returnCode(_nc_Set_Form_Page(form, form->maxpage - 1, (FIELD *)0));
+}
+
+/*----------------------------------------------------------------------------
+  END of Field Navigation routines
+  --------------------------------------------------------------------------*/
+
+/*----------------------------------------------------------------------------
+  Helper routines for the core form driver.
+  --------------------------------------------------------------------------*/
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int Data_Entry(FORM * form,int c)
+|
+|   Description   :  Enter character c into at the current position of the
+|                    current field of the form.
+|
+|   Return Values :  E_OK              - success
+|                    E_REQUEST_DENIED  - driver could not process the request
+|                    E_SYSTEM_ERROR    -
++--------------------------------------------------------------------------*/
+static int
+Data_Entry(FORM *form, int c)
+{
+  FIELD *field = form->current;
+  int result = E_REQUEST_DENIED;
+
+  T((T_CALLED("Data_Entry(%p,%s)"), (void *)form, _tracechtype((chtype)c)));
+  if ((field->opts & O_EDIT)
+#if FIX_FORM_INACTIVE_BUG
+      && (field->opts & O_ACTIVE)
+#endif
+    )
+    {
+      if ((field->opts & O_BLANK) &&
+	  First_Position_In_Current_Field(form) &&
+	  !(form->status & _FCHECK_REQUIRED) &&
+	  !(form->status & _WINDOW_MODIFIED))
+	werase(form->w);
+
+      if (form->status & _OVLMODE)
+	{
+	  waddch(form->w, (chtype)c);
+	}
+      else
+	/* no _OVLMODE */
+	{
+	  bool There_Is_Room = Is_There_Room_For_A_Char_In_Line(form);
+
+	  if (!(There_Is_Room ||
+		((Single_Line_Field(field) && Growable(field)))))
+	    RETURN(E_REQUEST_DENIED);
+
+	  if (!There_Is_Room && !Field_Grown(field, 1))
+	    RETURN(E_SYSTEM_ERROR);
+
+	  winsch(form->w, (chtype)c);
+	}
+
+      if ((result = Wrapping_Not_Necessary_Or_Wrapping_Ok(form)) == E_OK)
+	{
+	  bool End_Of_Field = (((field->drows - 1) == form->currow) &&
+			       ((field->dcols - 1) == form->curcol));
+
+	  form->status |= _WINDOW_MODIFIED;
+	  if (End_Of_Field && !Growable(field) && (field->opts & O_AUTOSKIP))
+	    result = Inter_Field_Navigation(FN_Next_Field, form);
+	  else
+	    {
+	      if (End_Of_Field && Growable(field) && !Field_Grown(field, 1))
+		result = E_SYSTEM_ERROR;
+	      else
+		{
+#if USE_WIDEC_SUPPORT
+		  /*
+		   * We have just added a byte to the form field.  It may have
+		   * been part of a multibyte character.  If it was, the
+		   * addch_used field is nonzero and we should not try to move
+		   * to a new column.
+		   */
+		  if (WINDOW_EXT(form->w, addch_used) == 0)
+		    IFN_Next_Character(form);
+#else
+		  IFN_Next_Character(form);
+#endif
+		  result = E_OK;
+		}
+	    }
+	}
+    }
+  RETURN(result);
+}
+
+/* Structure to describe the binding of a request code to a function.
+   The member keycode codes the request value as well as the generic
+   routine to use for the request. The code for the generic routine
+   is coded in the upper 16 Bits while the request code is coded in
+   the lower 16 bits.
+
+   In terms of C++ you might think of a request as a class with a
+   virtual method "perform". The different types of request are
+   derived from this base class and overload (or not) the base class
+   implementation of perform.
+*/
+typedef struct
+{
+  int keycode;			/* must be at least 32 bit: hi:mode, lo: key */
+  int (*cmd) (FORM *);		/* low level driver routine for this key     */
+}
+Binding_Info;
+
+/* You may see this is the class-id of the request type class */
+#define ID_PN    (0x00000000)	/* Page navigation           */
+#define ID_FN    (0x00010000)	/* Inter-Field navigation    */
+#define ID_IFN   (0x00020000)	/* Intra-Field navigation    */
+#define ID_VSC   (0x00030000)	/* Vertical Scrolling        */
+#define ID_HSC   (0x00040000)	/* Horizontal Scrolling      */
+#define ID_FE    (0x00050000)	/* Field Editing             */
+#define ID_EM    (0x00060000)	/* Edit Mode                 */
+#define ID_FV    (0x00070000)	/* Field Validation          */
+#define ID_CH    (0x00080000)	/* Choice                    */
+#define ID_Mask  (0xffff0000)
+#define Key_Mask (0x0000ffff)
+#define ID_Shft  (16)
+
+/* This array holds all the Binding Infos */
+/* *INDENT-OFF* */
+static const Binding_Info bindings[MAX_FORM_COMMAND - MIN_FORM_COMMAND + 1] =
+{
+  { REQ_NEXT_PAGE    |ID_PN  ,PN_Next_Page},
+  { REQ_PREV_PAGE    |ID_PN  ,PN_Previous_Page},
+  { REQ_FIRST_PAGE   |ID_PN  ,PN_First_Page},
+  { REQ_LAST_PAGE    |ID_PN  ,PN_Last_Page},
+
+  { REQ_NEXT_FIELD   |ID_FN  ,FN_Next_Field},
+  { REQ_PREV_FIELD   |ID_FN  ,FN_Previous_Field},
+  { REQ_FIRST_FIELD  |ID_FN  ,FN_First_Field},
+  { REQ_LAST_FIELD   |ID_FN  ,FN_Last_Field},
+  { REQ_SNEXT_FIELD  |ID_FN  ,FN_Sorted_Next_Field},
+  { REQ_SPREV_FIELD  |ID_FN  ,FN_Sorted_Previous_Field},
+  { REQ_SFIRST_FIELD |ID_FN  ,FN_Sorted_First_Field},
+  { REQ_SLAST_FIELD  |ID_FN  ,FN_Sorted_Last_Field},
+  { REQ_LEFT_FIELD   |ID_FN  ,FN_Left_Field},
+  { REQ_RIGHT_FIELD  |ID_FN  ,FN_Right_Field},
+  { REQ_UP_FIELD     |ID_FN  ,FN_Up_Field},
+  { REQ_DOWN_FIELD   |ID_FN  ,FN_Down_Field},
+
+  { REQ_NEXT_CHAR    |ID_IFN ,IFN_Next_Character},
+  { REQ_PREV_CHAR    |ID_IFN ,IFN_Previous_Character},
+  { REQ_NEXT_LINE    |ID_IFN ,IFN_Next_Line},
+  { REQ_PREV_LINE    |ID_IFN ,IFN_Previous_Line},
+  { REQ_NEXT_WORD    |ID_IFN ,IFN_Next_Word},
+  { REQ_PREV_WORD    |ID_IFN ,IFN_Previous_Word},
+  { REQ_BEG_FIELD    |ID_IFN ,IFN_Beginning_Of_Field},
+  { REQ_END_FIELD    |ID_IFN ,IFN_End_Of_Field},
+  { REQ_BEG_LINE     |ID_IFN ,IFN_Beginning_Of_Line},
+  { REQ_END_LINE     |ID_IFN ,IFN_End_Of_Line},
+  { REQ_LEFT_CHAR    |ID_IFN ,IFN_Left_Character},
+  { REQ_RIGHT_CHAR   |ID_IFN ,IFN_Right_Character},
+  { REQ_UP_CHAR      |ID_IFN ,IFN_Up_Character},
+  { REQ_DOWN_CHAR    |ID_IFN ,IFN_Down_Character},
+
+  { REQ_NEW_LINE     |ID_FE  ,FE_New_Line},
+  { REQ_INS_CHAR     |ID_FE  ,FE_Insert_Character},
+  { REQ_INS_LINE     |ID_FE  ,FE_Insert_Line},
+  { REQ_DEL_CHAR     |ID_FE  ,FE_Delete_Character},
+  { REQ_DEL_PREV     |ID_FE  ,FE_Delete_Previous},
+  { REQ_DEL_LINE     |ID_FE  ,FE_Delete_Line},
+  { REQ_DEL_WORD     |ID_FE  ,FE_Delete_Word},
+  { REQ_CLR_EOL      |ID_FE  ,FE_Clear_To_End_Of_Line},
+  { REQ_CLR_EOF      |ID_FE  ,FE_Clear_To_End_Of_Field},
+  { REQ_CLR_FIELD    |ID_FE  ,FE_Clear_Field},
+
+  { REQ_OVL_MODE     |ID_EM  ,EM_Overlay_Mode},
+  { REQ_INS_MODE     |ID_EM  ,EM_Insert_Mode},
+
+  { REQ_SCR_FLINE    |ID_VSC ,VSC_Scroll_Line_Forward},
+  { REQ_SCR_BLINE    |ID_VSC ,VSC_Scroll_Line_Backward},
+  { REQ_SCR_FPAGE    |ID_VSC ,VSC_Scroll_Page_Forward},
+  { REQ_SCR_BPAGE    |ID_VSC ,VSC_Scroll_Page_Backward},
+  { REQ_SCR_FHPAGE   |ID_VSC ,VSC_Scroll_Half_Page_Forward},
+  { REQ_SCR_BHPAGE   |ID_VSC ,VSC_Scroll_Half_Page_Backward},
+
+  { REQ_SCR_FCHAR    |ID_HSC ,HSC_Scroll_Char_Forward},
+  { REQ_SCR_BCHAR    |ID_HSC ,HSC_Scroll_Char_Backward},
+  { REQ_SCR_HFLINE   |ID_HSC ,HSC_Horizontal_Line_Forward},
+  { REQ_SCR_HBLINE   |ID_HSC ,HSC_Horizontal_Line_Backward},
+  { REQ_SCR_HFHALF   |ID_HSC ,HSC_Horizontal_Half_Line_Forward},
+  { REQ_SCR_HBHALF   |ID_HSC ,HSC_Horizontal_Half_Line_Backward},
+
+  { REQ_VALIDATION   |ID_FV  ,FV_Validation},
+
+  { REQ_NEXT_CHOICE  |ID_CH  ,CR_Next_Choice},
+  { REQ_PREV_CHOICE  |ID_CH  ,CR_Previous_Choice}
+};
+/* *INDENT-ON* */
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  int form_driver(FORM * form,int  c)
+|
+|   Description   :  This is the workhorse of the forms system. It checks
+|                    to determine whether the character c is a request or
+|                    data. If it is a request, the form driver executes
+|                    the request and returns the result. If it is data
+|                    (printable character), it enters the data into the
+|                    current position in the current field. If it is not
+|                    recognized, the form driver assumes it is an application
+|                    defined command and returns E_UNKNOWN_COMMAND.
+|                    Application defined command should be defined relative
+|                    to MAX_FORM_COMMAND, the maximum value of a request.
+|
+|   Return Values :  E_OK              - success
+|                    E_SYSTEM_ERROR    - system error
+|                    E_BAD_ARGUMENT    - an argument is incorrect
+|                    E_NOT_POSTED      - form is not posted
+|                    E_INVALID_FIELD   - field contents are invalid
+|                    E_BAD_STATE       - called from inside a hook routine
+|                    E_REQUEST_DENIED  - request failed
+|                    E_NOT_CONNECTED   - no fields are connected to the form
+|                    E_UNKNOWN_COMMAND - command not known
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+form_driver(FORM *form, int c)
+{
+  const Binding_Info *BI = (Binding_Info *) 0;
+  int res = E_UNKNOWN_COMMAND;
+
+  T((T_CALLED("form_driver(%p,%d)"), (void *)form, c));
+
+  if (!form)
+    RETURN(E_BAD_ARGUMENT);
+
+  if (!(form->field))
+    RETURN(E_NOT_CONNECTED);
+
+  assert(form->page);
+
+  if (c == FIRST_ACTIVE_MAGIC)
+    {
+      form->current = _nc_First_Active_Field(form);
+      RETURN(E_OK);
+    }
+
+  assert(form->current &&
+	 form->current->buf &&
+	 (form->current->form == form)
+    );
+
+  if (form->status & _IN_DRIVER)
+    RETURN(E_BAD_STATE);
+
+  if (!(form->status & _POSTED))
+    RETURN(E_NOT_POSTED);
+
+  if ((c >= MIN_FORM_COMMAND && c <= MAX_FORM_COMMAND) &&
+      ((bindings[c - MIN_FORM_COMMAND].keycode & Key_Mask) == c))
+    BI = &(bindings[c - MIN_FORM_COMMAND]);
+
+  if (BI)
+    {
+      typedef int (*Generic_Method) (int (*const) (FORM *), FORM *);
+      static const Generic_Method Generic_Methods[] =
+      {
+	Page_Navigation,	/* overloaded to call field&form hooks */
+	Inter_Field_Navigation,	/* overloaded to call field hooks      */
+	NULL,			/* Intra-Field is generic              */
+	Vertical_Scrolling,	/* Overloaded to check multi-line      */
+	Horizontal_Scrolling,	/* Overloaded to check single-line     */
+	Field_Editing,		/* Overloaded to mark modification     */
+	NULL,			/* Edit Mode is generic                */
+	NULL,			/* Field Validation is generic         */
+	NULL			/* Choice Request is generic           */
+      };
+      size_t nMethods = (sizeof(Generic_Methods) / sizeof(Generic_Methods[0]));
+      size_t method = (BI->keycode >> ID_Shft) & 0xffff;	/* see ID_Mask */
+
+      if ((method >= nMethods) || !(BI->cmd))
+	res = E_SYSTEM_ERROR;
+      else
+	{
+	  Generic_Method fct = Generic_Methods[method];
+
+	  if (fct)
+	    res = fct(BI->cmd, form);
+	  else
+	    res = (BI->cmd) (form);
+	}
+    }
+#ifdef NCURSES_MOUSE_VERSION
+  else if (KEY_MOUSE == c)
+    {
+      MEVENT event;
+      WINDOW *win = form->win ? form->win : StdScreen(Get_Form_Screen(form));
+      WINDOW *sub = form->sub ? form->sub : win;
+
+      getmouse(&event);
+      if ((event.bstate & (BUTTON1_CLICKED |
+			   BUTTON1_DOUBLE_CLICKED |
+			   BUTTON1_TRIPLE_CLICKED))
+	  && wenclose(win, event.y, event.x))
+	{			/* we react only if the click was in the userwin, that means
+				 * inside the form display area or at the decoration window.
+				 */
+	  int ry = event.y, rx = event.x;	/* screen coordinates */
+
+	  res = E_REQUEST_DENIED;
+	  if (mouse_trafo(&ry, &rx, FALSE))
+	    {			/* rx, ry are now "curses" coordinates */
+	      if (ry < sub->_begy)
+		{		/* we clicked above the display region; this is
+				 * interpreted as "scroll up" request
+				 */
+		  if (event.bstate & BUTTON1_CLICKED)
+		    res = form_driver(form, REQ_PREV_FIELD);
+		  else if (event.bstate & BUTTON1_DOUBLE_CLICKED)
+		    res = form_driver(form, REQ_PREV_PAGE);
+		  else if (event.bstate & BUTTON1_TRIPLE_CLICKED)
+		    res = form_driver(form, REQ_FIRST_FIELD);
+		}
+	      else if (ry > sub->_begy + sub->_maxy)
+		{		/* we clicked below the display region; this is
+				 * interpreted as "scroll down" request
+				 */
+		  if (event.bstate & BUTTON1_CLICKED)
+		    res = form_driver(form, REQ_NEXT_FIELD);
+		  else if (event.bstate & BUTTON1_DOUBLE_CLICKED)
+		    res = form_driver(form, REQ_NEXT_PAGE);
+		  else if (event.bstate & BUTTON1_TRIPLE_CLICKED)
+		    res = form_driver(form, REQ_LAST_FIELD);
+		}
+	      else if (wenclose(sub, event.y, event.x))
+		{		/* Inside the area we try to find the hit item */
+		  int i;
+
+		  ry = event.y;
+		  rx = event.x;
+		  if (wmouse_trafo(sub, &ry, &rx, FALSE))
+		    {
+		      int min_field = form->page[form->curpage].pmin;
+		      int max_field = form->page[form->curpage].pmax;
+
+		      for (i = min_field; i <= max_field; ++i)
+			{
+			  FIELD *field = form->field[i];
+
+			  if (Field_Is_Selectable(field)
+			      && Field_encloses(field, ry, rx) == E_OK)
+			    {
+			      res = _nc_Set_Current_Field(form, field);
+			      if (res == E_OK)
+				res = _nc_Position_Form_Cursor(form);
+			      if (res == E_OK
+				  && (event.bstate & BUTTON1_DOUBLE_CLICKED))
+				res = E_UNKNOWN_COMMAND;
+			      break;
+			    }
+			}
+		    }
+		}
+	    }
+	}
+      else
+	res = E_REQUEST_DENIED;
+    }
+#endif /* NCURSES_MOUSE_VERSION */
+  else if (!(c & (~(int)MAX_REGULAR_CHARACTER)))
+    {
+      /*
+       * If we're using 8-bit characters, iscntrl+isprint cover the whole set.
+       * But with multibyte characters, there is a third possibility, i.e.,
+       * parts of characters that build up into printable characters which are
+       * not considered printable.
+       *
+       * FIXME: the wide-character branch should also use Check_Char().
+       */
+#if USE_WIDEC_SUPPORT
+      if (!iscntrl(UChar(c)))
+#else
+      if (isprint(UChar(c)) &&
+	  Check_Char(form, form->current, form->current->type, c,
+		     (TypeArgument *)(form->current->arg)))
+#endif
+	res = Data_Entry(form, c);
+    }
+  _nc_Refresh_Current_Field(form);
+  RETURN(res);
+}
+
+/*----------------------------------------------------------------------------
+  Field-Buffer manipulation routines.
+  The effects of setting a buffer are tightly coupled to the core of the form
+  driver logic. This is especially true in the case of growable fields.
+  So I don't separate this into a separate module.
+  --------------------------------------------------------------------------*/
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  int set_field_buffer(FIELD *field,
+|                                         int buffer, char *value)
+|
+|   Description   :  Set the given buffer of the field to the given value.
+|                    Buffer 0 stores the displayed content of the field.
+|                    For dynamic fields this may grow the fieldbuffers if
+|                    the length of the value exceeds the current buffer
+|                    length. For buffer 0 only printable values are allowed.
+|                    For static fields, the value needs not to be zero ter-
+|                    minated. It is copied up to the length of the buffer.
+|
+|   Return Values :  E_OK            - success
+|                    E_BAD_ARGUMENT  - invalid argument
+|                    E_SYSTEM_ERROR  - system error
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+set_field_buffer(FIELD *field, int buffer, const char *value)
+{
+  FIELD_CELL *p;
+  int res = E_OK;
+  unsigned int i;
+  unsigned int len;
+
+#if USE_WIDEC_SUPPORT
+  FIELD_CELL *widevalue = 0;
+#endif
+
+  T((T_CALLED("set_field_buffer(%p,%d,%s)"), (void *)field, buffer, _nc_visbuf(value)));
+
+  if (!field || !value || ((buffer < 0) || (buffer > field->nbuf)))
+    RETURN(E_BAD_ARGUMENT);
+
+  len = Buffer_Length(field);
+
+  if (Growable(field))
+    {
+      /* for a growable field we must assume zero terminated strings, because
+         somehow we have to detect the length of what should be copied.
+       */
+      unsigned int vlen = strlen(value);
+
+      if (vlen > len)
+	{
+	  if (!Field_Grown(field,
+			   (int)(1 + (vlen - len) / ((field->rows + field->nrow)
+						     * field->cols))))
+	    RETURN(E_SYSTEM_ERROR);
+
+#if !USE_WIDEC_SUPPORT
+	  len = vlen;
+#endif
+	}
+    }
+
+  p = Address_Of_Nth_Buffer(field, buffer);
+
+#if USE_WIDEC_SUPPORT
+  /*
+   * Use addstr's logic for converting a string to an array of cchar_t's.
+   * There should be a better way, but this handles nonspacing characters
+   * and other special cases that we really do not want to handle here.
+   */
+#if NCURSES_EXT_FUNCS
+  if (wresize(field->working, 1, Buffer_Length(field) + 1) == ERR)
+#endif
+    {
+      delwin(field->working);
+      field->working = newpad(1, Buffer_Length(field) + 1);
+    }
+  len = Buffer_Length(field);
+  wclear(field->working);
+  (void)mvwaddstr(field->working, 0, 0, value);
+
+  if ((widevalue = typeCalloc(FIELD_CELL, len + 1)) == 0)
+    {
+      RETURN(E_SYSTEM_ERROR);
+    }
+  else
+    {
+      for (i = 0; i < (unsigned)field->drows; ++i)
+	{
+	  (void)mvwin_wchnstr(field->working, 0, i * field->dcols,
+			      widevalue + (i * field->dcols),
+			      field->dcols);
+	}
+      for (i = 0; i < len; ++i)
+	{
+	  if (CharEq(myZEROS, widevalue[i]))
+	    {
+	      while (i < len)
+		p[i++] = myBLANK;
+	      break;
+	    }
+	  p[i] = widevalue[i];
+	}
+      free(widevalue);
+    }
+#else
+  for (i = 0; i < len; ++i)
+    {
+      if (value[i] == '\0')
+	{
+	  while (i < len)
+	    p[i++] = myBLANK;
+	  break;
+	}
+      p[i] = value[i];
+    }
+#endif
+
+  if (buffer == 0)
+    {
+      int syncres;
+
+      if (((syncres = Synchronize_Field(field)) != E_OK) &&
+	  (res == E_OK))
+	res = syncres;
+      if (((syncres = Synchronize_Linked_Fields(field)) != E_OK) &&
+	  (res == E_OK))
+	res = syncres;
+    }
+  RETURN(res);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  char *field_buffer(const FIELD *field,int buffer)
+|
+|   Description   :  Return the address of the buffer for the field.
+|
+|   Return Values :  Pointer to buffer or NULL if arguments were invalid.
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(char *)
+field_buffer(const FIELD *field, int buffer)
+{
+  char *result = 0;
+
+  T((T_CALLED("field_buffer(%p,%d)"), (const void *)field, buffer));
+
+  if (field && (buffer >= 0) && (buffer <= field->nbuf))
+    {
+#if USE_WIDEC_SUPPORT
+      FIELD_CELL *data = Address_Of_Nth_Buffer(field, buffer);
+      unsigned need = 0;
+      int size = Buffer_Length(field);
+      int n;
+
+      /* determine the number of bytes needed to store the expanded string */
+      for (n = 0; n < size; ++n)
+	{
+	  if (!isWidecExt(data[n]) && data[n].chars[0] != L'\0')
+	    {
+	      mbstate_t state;
+	      size_t next;
+
+	      init_mb(state);
+	      next = _nc_wcrtomb(0, data[n].chars[0], &state);
+	      if (!isEILSEQ(next))
+		need += next;
+	    }
+	}
+
+      /* allocate a place to store the expanded string */
+      if (field->expanded[buffer] != 0)
+	free(field->expanded[buffer]);
+      field->expanded[buffer] = typeMalloc(char, need + 1);
+
+      /*
+       * Expand the multibyte data.
+       *
+       * It may also be multi-column data.  In that case, the data for a row
+       * may be null-padded to align to the dcols/drows layout (or it may
+       * contain embedded wide-character extensions).  Change the null-padding
+       * to blanks as needed.
+       */
+      if ((result = field->expanded[buffer]) != 0)
+	{
+	  wclear(field->working);
+	  wmove(field->working, 0, 0);
+	  for (n = 0; n < size; ++n)
+	    {
+	      if (!isWidecExt(data[n]) && data[n].chars[0] != L'\0')
+		wadd_wch(field->working, &data[n]);
+	    }
+	  wmove(field->working, 0, 0);
+	  winnstr(field->working, result, (int)need);
+	}
+#else
+      result = Address_Of_Nth_Buffer(field, buffer);
+#endif
+    }
+  returnPtr(result);
+}
+
+#if USE_WIDEC_SUPPORT
+
+/*---------------------------------------------------------------------------
+| Convert a multibyte string to a wide-character string.  The result must be
+| freed by the caller.
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(wchar_t *)
+_nc_Widen_String(char *source, int *lengthp)
+{
+  wchar_t *result = 0;
+  wchar_t wch;
+  size_t given = strlen(source);
+  size_t tries;
+  int pass;
+  int status;
+
+#ifndef state_unused
+  mbstate_t state;
+#endif
+
+  for (pass = 0; pass < 2; ++pass)
+    {
+      unsigned need = 0;
+      size_t passed = 0;
+
+      while (passed < given)
+	{
+	  bool found = FALSE;
+
+	  for (tries = 1, status = 0; tries <= (given - passed); ++tries)
+	    {
+	      int save = source[passed + tries];
+
+	      source[passed + tries] = 0;
+	      reset_mbytes(state);
+	      status = check_mbytes(wch, source + passed, tries, state);
+	      source[passed + tries] = (char)save;
+
+	      if (status > 0)
+		{
+		  found = TRUE;
+		  break;
+		}
+	    }
+	  if (found)
+	    {
+	      if (pass)
+		{
+		  result[need] = wch;
+		}
+	      passed += status;
+	      ++need;
+	    }
+	  else
+	    {
+	      if (pass)
+		{
+		  result[need] = source[passed];
+		}
+	      ++need;
+	      ++passed;
+	    }
+	}
+
+      if (!pass)
+	{
+	  if (!need)
+	    break;
+	  result = typeCalloc(wchar_t, need);
+
+	  *lengthp = need;
+	  if (result == 0)
+	    break;
+	}
+    }
+
+  return result;
+}
+#endif
+
+/* frm_driver.c ends here */
diff --git a/apps/lib/curses/pdcurses/form/frm_hook.c b/apps/lib/curses/pdcurses/form/frm_hook.c
new file mode 100644
index 0000000..7daa396
--- /dev/null
+++ b/apps/lib/curses/pdcurses/form/frm_hook.c
@@ -0,0 +1,142 @@
+/****************************************************************************
+ * Copyright (c) 1998-2004,2010 Free Software Foundation, Inc.              *
+ *                                                                          *
+ * Permission is hereby granted, free of charge, to any person obtaining a  *
+ * copy of this software and associated documentation files (the            *
+ * "Software"), to deal in the Software without restriction, including      *
+ * without limitation the rights to use, copy, modify, merge, publish,      *
+ * distribute, distribute with modifications, sublicense, and/or sell       *
+ * copies of the Software, and to permit persons to whom the Software is    *
+ * furnished to do so, subject to the following conditions:                 *
+ *                                                                          *
+ * The above copyright notice and this permission notice shall be included  *
+ * in all copies or substantial portions of the Software.                   *
+ *                                                                          *
+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS  *
+ * OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF               *
+ * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.   *
+ * IN NO EVENT SHALL THE ABOVE COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,   *
+ * DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR    *
+ * OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR    *
+ * THE USE OR OTHER DEALINGS IN THE SOFTWARE.                               *
+ *                                                                          *
+ * Except as contained in this notice, the name(s) of the above copyright   *
+ * holders shall not be used in advertising or otherwise to promote the     *
+ * sale, use or other dealings in this Software without prior written       *
+ * authorization.                                                           *
+ ****************************************************************************/
+
+/****************************************************************************
+ *   Author:  Juergen Pfeifer, 1995,1997                                    *
+ ****************************************************************************/
+
+#include "form.priv.h"
+
+MODULE_ID("$Id: frm_hook.c,v 1.15 2010/01/23 21:12:08 tom Exp $")
+
+/* "Template" macro to generate function to set application specific hook */
+#define GEN_HOOK_SET_FUNCTION( typ, name ) \
+NCURSES_IMPEXP int NCURSES_API set_ ## typ ## _ ## name (FORM *form, Form_Hook func)\
+{\
+   T((T_CALLED("set_" #typ"_"#name"(%p,%p)"), form, func));\
+   (Normalize_Form( form ) -> typ ## name) = func ;\
+   RETURN(E_OK);\
+}
+
+/* "Template" macro to generate function to get application specific hook */
+#define GEN_HOOK_GET_FUNCTION( typ, name ) \
+NCURSES_IMPEXP Form_Hook NCURSES_API typ ## _ ## name ( const FORM *form )\
+{\
+   T((T_CALLED(#typ "_" #name "(%p)"), (const void *) form));\
+   returnFormHook( Normalize_Form( form ) -> typ ## name );\
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  int set_field_init(FORM *form, Form_Hook f)
+|
+|   Description   :  Assigns an application defined initialization function
+|                    to be called when the form is posted and just after
+|                    the current field changes.
+|
+|   Return Values :  E_OK      - success
++--------------------------------------------------------------------------*/
+GEN_HOOK_SET_FUNCTION(field, init)
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  Form_Hook field_init(const FORM *form)
+|
+|   Description   :  Retrieve field initialization routine address.
+|
+|   Return Values :  The address or NULL if no hook defined.
++--------------------------------------------------------------------------*/
+GEN_HOOK_GET_FUNCTION(field, init)
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  int set_field_term(FORM *form, Form_Hook f)
+|
+|   Description   :  Assigns an application defined finalization function
+|                    to be called when the form is unposted and just before
+|                    the current field changes.
+|
+|   Return Values :  E_OK      - success
++--------------------------------------------------------------------------*/
+GEN_HOOK_SET_FUNCTION(field, term)
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  Form_Hook field_term(const FORM *form)
+|
+|   Description   :  Retrieve field finalization routine address.
+|
+|   Return Values :  The address or NULL if no hook defined.
++--------------------------------------------------------------------------*/
+GEN_HOOK_GET_FUNCTION(field, term)
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  int set_form_init(FORM *form, Form_Hook f)
+|
+|   Description   :  Assigns an application defined initialization function
+|                    to be called when the form is posted and just after
+|                    a page change.
+|
+|   Return Values :  E_OK       - success
++--------------------------------------------------------------------------*/
+GEN_HOOK_SET_FUNCTION(form, init)
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  Form_Hook form_init(const FORM *form)
+|
+|   Description   :  Retrieve form initialization routine address.
+|
+|   Return Values :  The address or NULL if no hook defined.
++--------------------------------------------------------------------------*/
+GEN_HOOK_GET_FUNCTION(form, init)
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  int set_form_term(FORM *form, Form_Hook f)
+|
+|   Description   :  Assigns an application defined finalization function
+|                    to be called when the form is unposted and just before
+|                    a page change.
+|
+|   Return Values :  E_OK       - success
++--------------------------------------------------------------------------*/
+GEN_HOOK_SET_FUNCTION(form, term)
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  Form_Hook form_term(const FORM *form)
+|
+|   Description   :  Retrieve form finalization routine address.
+|
+|   Return Values :  The address or NULL if no hook defined.
++--------------------------------------------------------------------------*/
+GEN_HOOK_GET_FUNCTION(form, term)
+
+/* frm_hook.c ends here */
diff --git a/apps/lib/curses/pdcurses/form/frm_opts.c b/apps/lib/curses/pdcurses/form/frm_opts.c
new file mode 100644
index 0000000..d51f345
--- /dev/null
+++ b/apps/lib/curses/pdcurses/form/frm_opts.c
@@ -0,0 +1,127 @@
+/****************************************************************************
+ * Copyright (c) 1998-2005,2010 Free Software Foundation, Inc.              *
+ *                                                                          *
+ * Permission is hereby granted, free of charge, to any person obtaining a  *
+ * copy of this software and associated documentation files (the            *
+ * "Software"), to deal in the Software without restriction, including      *
+ * without limitation the rights to use, copy, modify, merge, publish,      *
+ * distribute, distribute with modifications, sublicense, and/or sell       *
+ * copies of the Software, and to permit persons to whom the Software is    *
+ * furnished to do so, subject to the following conditions:                 *
+ *                                                                          *
+ * The above copyright notice and this permission notice shall be included  *
+ * in all copies or substantial portions of the Software.                   *
+ *                                                                          *
+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS  *
+ * OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF               *
+ * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.   *
+ * IN NO EVENT SHALL THE ABOVE COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,   *
+ * DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR    *
+ * OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR    *
+ * THE USE OR OTHER DEALINGS IN THE SOFTWARE.                               *
+ *                                                                          *
+ * Except as contained in this notice, the name(s) of the above copyright   *
+ * holders shall not be used in advertising or otherwise to promote the     *
+ * sale, use or other dealings in this Software without prior written       *
+ * authorization.                                                           *
+ ****************************************************************************/
+
+/****************************************************************************
+ *   Author:  Juergen Pfeifer, 1995,1997                                    *
+ ****************************************************************************/
+
+#include "form.priv.h"
+
+MODULE_ID("$Id: frm_opts.c,v 1.15 2010/01/23 21:14:36 tom Exp $")
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  int set_form_opts(FORM *form, Form_Options opts)
+|
+|   Description   :  Turns on the named options and turns off all the
+|                    remaining options for that form.
+|
+|   Return Values :  E_OK              - success
+|                    E_BAD_ARGUMENT    - invalid options
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+set_form_opts(FORM *form, Form_Options opts)
+{
+  T((T_CALLED("set_form_opts(%p,%d)"), (void *)form, opts));
+
+  opts &= ALL_FORM_OPTS;
+  if (opts & ~ALL_FORM_OPTS)
+    RETURN(E_BAD_ARGUMENT);
+  else
+    {
+      Normalize_Form(form)->opts = opts;
+      RETURN(E_OK);
+    }
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  Form_Options form_opts(const FORM *)
+|
+|   Description   :  Retrieves the current form options.
+|
+|   Return Values :  The option flags.
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(Form_Options)
+form_opts(const FORM *form)
+{
+  T((T_CALLED("form_opts(%p)"), (const void *)form));
+  returnCode((int)(Normalize_Form(form)->opts & ALL_FORM_OPTS));
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  int form_opts_on(FORM *form, Form_Options opts)
+|
+|   Description   :  Turns on the named options; no other options are
+|                    changed.
+|
+|   Return Values :  E_OK            - success
+|                    E_BAD_ARGUMENT  - invalid options
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+form_opts_on(FORM *form, Form_Options opts)
+{
+  T((T_CALLED("form_opts_on(%p,%d)"), (void *)form, opts));
+
+  opts &= ALL_FORM_OPTS;
+  if (opts & ~ALL_FORM_OPTS)
+    RETURN(E_BAD_ARGUMENT);
+  else
+    {
+      Normalize_Form(form)->opts |= opts;
+      RETURN(E_OK);
+    }
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  int form_opts_off(FORM *form, Form_Options opts)
+|
+|   Description   :  Turns off the named options; no other options are
+|                    changed.
+|
+|   Return Values :  E_OK            - success
+|                    E_BAD_ARGUMENT  - invalid options
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+form_opts_off(FORM *form, Form_Options opts)
+{
+  T((T_CALLED("form_opts_off(%p,%d)"), (void *)form, opts));
+
+  opts &= ALL_FORM_OPTS;
+  if (opts & ~ALL_FORM_OPTS)
+    RETURN(E_BAD_ARGUMENT);
+  else
+    {
+      Normalize_Form(form)->opts &= ~opts;
+      RETURN(E_OK);
+    }
+}
+
+/* frm_opts.c ends here */
diff --git a/apps/lib/curses/pdcurses/form/frm_page.c b/apps/lib/curses/pdcurses/form/frm_page.c
new file mode 100644
index 0000000..fdbc94c
--- /dev/null
+++ b/apps/lib/curses/pdcurses/form/frm_page.c
@@ -0,0 +1,106 @@
+/****************************************************************************
+ * Copyright (c) 1998-2004,2010 Free Software Foundation, Inc.              *
+ *                                                                          *
+ * Permission is hereby granted, free of charge, to any person obtaining a  *
+ * copy of this software and associated documentation files (the            *
+ * "Software"), to deal in the Software without restriction, including      *
+ * without limitation the rights to use, copy, modify, merge, publish,      *
+ * distribute, distribute with modifications, sublicense, and/or sell       *
+ * copies of the Software, and to permit persons to whom the Software is    *
+ * furnished to do so, subject to the following conditions:                 *
+ *                                                                          *
+ * The above copyright notice and this permission notice shall be included  *
+ * in all copies or substantial portions of the Software.                   *
+ *                                                                          *
+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS  *
+ * OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF               *
+ * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.   *
+ * IN NO EVENT SHALL THE ABOVE COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,   *
+ * DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR    *
+ * OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR    *
+ * THE USE OR OTHER DEALINGS IN THE SOFTWARE.                               *
+ *                                                                          *
+ * Except as contained in this notice, the name(s) of the above copyright   *
+ * holders shall not be used in advertising or otherwise to promote the     *
+ * sale, use or other dealings in this Software without prior written       *
+ * authorization.                                                           *
+ ****************************************************************************/
+
+/****************************************************************************
+ *   Author:  Juergen Pfeifer, 1995,1997                                    *
+ ****************************************************************************/
+
+#include "form.priv.h"
+
+MODULE_ID("$Id: frm_page.c,v 1.11 2010/01/23 21:14:36 tom Exp $")
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  int set_form_page(FORM * form,int  page)
+|
+|   Description   :  Set the page number of the form.
+|
+|   Return Values :  E_OK              - success
+|                    E_BAD_ARGUMENT    - invalid form pointer or page number
+|                    E_BAD_STATE       - called from a hook routine
+|                    E_INVALID_FIELD   - current field can't be left
+|                    E_SYSTEM_ERROR    - system error
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+set_form_page(FORM *form, int page)
+{
+  int err = E_OK;
+
+  T((T_CALLED("set_form_page(%p,%d)"), (void *)form, page));
+
+  if (!form || (page < 0) || (page >= form->maxpage))
+    RETURN(E_BAD_ARGUMENT);
+
+  if (!(form->status & _POSTED))
+    {
+      form->curpage = page;
+      form->current = _nc_First_Active_Field(form);
+    }
+  else
+    {
+      if (form->status & _IN_DRIVER)
+	err = E_BAD_STATE;
+      else
+	{
+	  if (form->curpage != page)
+	    {
+	      if (!_nc_Internal_Validation(form))
+		err = E_INVALID_FIELD;
+	      else
+		{
+		  Call_Hook(form, fieldterm);
+		  Call_Hook(form, formterm);
+		  err = _nc_Set_Form_Page(form, page, (FIELD *)0);
+		  Call_Hook(form, forminit);
+		  Call_Hook(form, fieldinit);
+		  _nc_Refresh_Current_Field(form);
+		}
+	    }
+	}
+    }
+  RETURN(err);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  int form_page(const FORM * form)
+|
+|   Description   :  Return the current page of the form.
+|
+|   Return Values :  >= 0  : current page number
+|                    -1    : invalid form pointer
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+form_page(const FORM *form)
+{
+  T((T_CALLED("form_page(%p)"), (const void *)form));
+
+  returnCode(Normalize_Form(form)->curpage);
+}
+
+/* frm_page.c ends here */
diff --git a/apps/lib/curses/pdcurses/form/frm_post.c b/apps/lib/curses/pdcurses/form/frm_post.c
new file mode 100644
index 0000000..5e9501e
--- /dev/null
+++ b/apps/lib/curses/pdcurses/form/frm_post.c
@@ -0,0 +1,124 @@
+/****************************************************************************
+ * Copyright (c) 1998-2004,2010 Free Software Foundation, Inc.              *
+ *                                                                          *
+ * Permission is hereby granted, free of charge, to any person obtaining a  *
+ * copy of this software and associated documentation files (the            *
+ * "Software"), to deal in the Software without restriction, including      *
+ * without limitation the rights to use, copy, modify, merge, publish,      *
+ * distribute, distribute with modifications, sublicense, and/or sell       *
+ * copies of the Software, and to permit persons to whom the Software is    *
+ * furnished to do so, subject to the following conditions:                 *
+ *                                                                          *
+ * The above copyright notice and this permission notice shall be included  *
+ * in all copies or substantial portions of the Software.                   *
+ *                                                                          *
+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS  *
+ * OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF               *
+ * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.   *
+ * IN NO EVENT SHALL THE ABOVE COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,   *
+ * DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR    *
+ * OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR    *
+ * THE USE OR OTHER DEALINGS IN THE SOFTWARE.                               *
+ *                                                                          *
+ * Except as contained in this notice, the name(s) of the above copyright   *
+ * holders shall not be used in advertising or otherwise to promote the     *
+ * sale, use or other dealings in this Software without prior written       *
+ * authorization.                                                           *
+ ****************************************************************************/
+
+/****************************************************************************
+ *   Author:  Juergen Pfeifer, 1995,1997                                    *
+ ****************************************************************************/
+
+#include "form.priv.h"
+
+MODULE_ID("$Id: frm_post.c,v 1.10 2010/01/23 21:14:36 tom Exp $")
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  int post_form(FORM * form)
+|
+|   Description   :  Writes the form into its associated subwindow.
+|
+|   Return Values :  E_OK              - success
+|                    E_BAD_ARGUMENT    - invalid form pointer
+|                    E_POSTED          - form already posted
+|                    E_NOT_CONNECTED   - no fields connected to form
+|                    E_NO_ROOM         - form doesn't fit into subwindow
+|                    E_SYSTEM_ERROR    - system error
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+post_form(FORM *form)
+{
+  WINDOW *formwin;
+  int err;
+  int page;
+
+  T((T_CALLED("post_form(%p)"), (void *)form));
+
+  if (!form)
+    RETURN(E_BAD_ARGUMENT);
+
+  if (form->status & _POSTED)
+    RETURN(E_POSTED);
+
+  if (!(form->field))
+    RETURN(E_NOT_CONNECTED);
+
+  formwin = Get_Form_Window(form);
+  if ((form->cols > getmaxx(formwin)) || (form->rows > getmaxy(formwin)))
+    RETURN(E_NO_ROOM);
+
+  /* reset form->curpage to an invald value. This forces Set_Form_Page
+     to do the page initialization which is required by post_form.
+   */
+  page = form->curpage;
+  form->curpage = -1;
+  if ((err = _nc_Set_Form_Page(form, page, form->current)) != E_OK)
+    RETURN(err);
+
+  form->status |= _POSTED;
+
+  Call_Hook(form, forminit);
+  Call_Hook(form, fieldinit);
+
+  _nc_Refresh_Current_Field(form);
+  RETURN(E_OK);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  int unpost_form(FORM * form)
+|
+|   Description   :  Erase form from its associated subwindow.
+|
+|   Return Values :  E_OK            - success
+|                    E_BAD_ARGUMENT  - invalid form pointer
+|                    E_NOT_POSTED    - form isn't posted
+|                    E_BAD_STATE     - called from a hook routine
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+unpost_form(FORM *form)
+{
+  T((T_CALLED("unpost_form(%p)"), (void *)form));
+
+  if (!form)
+    RETURN(E_BAD_ARGUMENT);
+
+  if (!(form->status & _POSTED))
+    RETURN(E_NOT_POSTED);
+
+  if (form->status & _IN_DRIVER)
+    RETURN(E_BAD_STATE);
+
+  Call_Hook(form, fieldterm);
+  Call_Hook(form, formterm);
+
+  werase(Get_Form_Window(form));
+  delwin(form->w);
+  form->w = (WINDOW *)0;
+  form->status &= ~_POSTED;
+  RETURN(E_OK);
+}
+
+/* frm_post.c ends here */
diff --git a/apps/lib/curses/pdcurses/form/frm_req_name.c b/apps/lib/curses/pdcurses/form/frm_req_name.c
new file mode 100644
index 0000000..dbef6d7
--- /dev/null
+++ b/apps/lib/curses/pdcurses/form/frm_req_name.c
@@ -0,0 +1,170 @@
+/****************************************************************************
+ * Copyright (c) 1998-2008,2009 Free Software Foundation, Inc.              *
+ *                                                                          *
+ * Permission is hereby granted, free of charge, to any person obtaining a  *
+ * copy of this software and associated documentation files (the            *
+ * "Software"), to deal in the Software without restriction, including      *
+ * without limitation the rights to use, copy, modify, merge, publish,      *
+ * distribute, distribute with modifications, sublicense, and/or sell       *
+ * copies of the Software, and to permit persons to whom the Software is    *
+ * furnished to do so, subject to the following conditions:                 *
+ *                                                                          *
+ * The above copyright notice and this permission notice shall be included  *
+ * in all copies or substantial portions of the Software.                   *
+ *                                                                          *
+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS  *
+ * OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF               *
+ * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.   *
+ * IN NO EVENT SHALL THE ABOVE COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,   *
+ * DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR    *
+ * OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR    *
+ * THE USE OR OTHER DEALINGS IN THE SOFTWARE.                               *
+ *                                                                          *
+ * Except as contained in this notice, the name(s) of the above copyright   *
+ * holders shall not be used in advertising or otherwise to promote the     *
+ * sale, use or other dealings in this Software without prior written       *
+ * authorization.                                                           *
+ ****************************************************************************/
+
+/****************************************************************************
+ *   Author:  Juergen Pfeifer, 1995,1997                                    *
+ ****************************************************************************/
+
+/***************************************************************************
+* Module form_request_name                                                 *
+* Routines to handle external names of menu requests                       *
+***************************************************************************/
+
+#include "form.priv.h"
+
+MODULE_ID("$Id: frm_req_name.c,v 1.17 2009/10/10 16:17:01 tom Exp $")
+
+static const char *request_names[MAX_FORM_COMMAND - MIN_FORM_COMMAND + 1] =
+{
+  "NEXT_PAGE",
+  "PREV_PAGE",
+  "FIRST_PAGE",
+  "LAST_PAGE",
+
+  "NEXT_FIELD",
+  "PREV_FIELD",
+  "FIRST_FIELD",
+  "LAST_FIELD",
+  "SNEXT_FIELD",
+  "SPREV_FIELD",
+  "SFIRST_FIELD",
+  "SLAST_FIELD",
+  "LEFT_FIELD",
+  "RIGHT_FIELD",
+  "UP_FIELD",
+  "DOWN_FIELD",
+
+  "NEXT_CHAR",
+  "PREV_CHAR",
+  "NEXT_LINE",
+  "PREV_LINE",
+  "NEXT_WORD",
+  "PREV_WORD",
+  "BEG_FIELD",
+  "END_FIELD",
+  "BEG_LINE",
+  "END_LINE",
+  "LEFT_CHAR",
+  "RIGHT_CHAR",
+  "UP_CHAR",
+  "DOWN_CHAR",
+
+  "NEW_LINE",
+  "INS_CHAR",
+  "INS_LINE",
+  "DEL_CHAR",
+  "DEL_PREV",
+  "DEL_LINE",
+  "DEL_WORD",
+  "CLR_EOL",
+  "CLR_EOF",
+  "CLR_FIELD",
+  "OVL_MODE",
+  "INS_MODE",
+  "SCR_FLINE",
+  "SCR_BLINE",
+  "SCR_FPAGE",
+  "SCR_BPAGE",
+  "SCR_FHPAGE",
+  "SCR_BHPAGE",
+  "SCR_FCHAR",
+  "SCR_BCHAR",
+  "SCR_HFLINE",
+  "SCR_HBLINE",
+  "SCR_HFHALF",
+  "SCR_HBHALF",
+
+  "VALIDATION",
+  "NEXT_CHOICE",
+  "PREV_CHOICE"
+};
+
+#define A_SIZE (sizeof(request_names)/sizeof(request_names[0]))
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  const char * form_request_name (int request);
+|
+|   Description   :  Get the external name of a form request.
+|
+|   Return Values :  Pointer to name      - on success
+|                    NULL                 - on invalid request code
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(const char *)
+form_request_name(int request)
+{
+  T((T_CALLED("form_request_name(%d)"), request));
+
+  if ((request < MIN_FORM_COMMAND) || (request > MAX_FORM_COMMAND))
+    {
+      SET_ERROR(E_BAD_ARGUMENT);
+      returnCPtr((const char *)0);
+    }
+  else
+    returnCPtr(request_names[request - MIN_FORM_COMMAND]);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  int form_request_by_name (const char *str);
+|
+|   Description   :  Search for a request with this name.
+|
+|   Return Values :  Request Id       - on success
+|                    E_NO_MATCH       - request not found
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+form_request_by_name(const char *str)
+{
+  /* because the table is so small, it doesn't really hurt
+     to run sequentially through it.
+   */
+  unsigned int i = 0;
+  char buf[16];
+
+  T((T_CALLED("form_request_by_name(%s)"), _nc_visbuf(str)));
+
+  if (str)
+    {
+      strncpy(buf, str, sizeof(buf));
+      while ((i < sizeof(buf)) && (buf[i] != '\0'))
+	{
+	  buf[i] = (char)toupper(UChar(buf[i]));
+	  i++;
+	}
+
+      for (i = 0; i < A_SIZE; i++)
+	{
+	  if (strncmp(request_names[i], buf, sizeof(buf)) == 0)
+	    returnCode(MIN_FORM_COMMAND + (int)i);
+	}
+    }
+  RETURN(E_NO_MATCH);
+}
+
+/* frm_req_name.c ends here */
diff --git a/apps/lib/curses/pdcurses/form/frm_scale.c b/apps/lib/curses/pdcurses/form/frm_scale.c
new file mode 100644
index 0000000..18a565e
--- /dev/null
+++ b/apps/lib/curses/pdcurses/form/frm_scale.c
@@ -0,0 +1,69 @@
+/****************************************************************************
+ * Copyright (c) 1998-2004,2010 Free Software Foundation, Inc.              *
+ *                                                                          *
+ * Permission is hereby granted, free of charge, to any person obtaining a  *
+ * copy of this software and associated documentation files (the            *
+ * "Software"), to deal in the Software without restriction, including      *
+ * without limitation the rights to use, copy, modify, merge, publish,      *
+ * distribute, distribute with modifications, sublicense, and/or sell       *
+ * copies of the Software, and to permit persons to whom the Software is    *
+ * furnished to do so, subject to the following conditions:                 *
+ *                                                                          *
+ * The above copyright notice and this permission notice shall be included  *
+ * in all copies or substantial portions of the Software.                   *
+ *                                                                          *
+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS  *
+ * OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF               *
+ * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.   *
+ * IN NO EVENT SHALL THE ABOVE COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,   *
+ * DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR    *
+ * OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR    *
+ * THE USE OR OTHER DEALINGS IN THE SOFTWARE.                               *
+ *                                                                          *
+ * Except as contained in this notice, the name(s) of the above copyright   *
+ * holders shall not be used in advertising or otherwise to promote the     *
+ * sale, use or other dealings in this Software without prior written       *
+ * authorization.                                                           *
+ ****************************************************************************/
+
+/****************************************************************************
+ *   Author:  Juergen Pfeifer, 1995,1997                                    *
+ ****************************************************************************/
+
+#include "form.priv.h"
+
+MODULE_ID("$Id: frm_scale.c,v 1.10 2010/01/23 21:14:36 tom Exp $")
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  int scale_form( const FORM *form, int *rows, int *cols )
+|
+|   Description   :  Retrieve size of form
+|
+|   Return Values :  E_OK              - no error
+|                    E_BAD_ARGUMENT    - invalid form pointer
+|                    E_NOT_CONNECTED   - no fields connected to form
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+scale_form(const FORM *form, int *rows, int *cols)
+{
+  T((T_CALLED("scale_form(%p,%p,%p)"),
+     (const void *)form,
+     (void *)rows,
+     (void *)cols));
+
+  if (!form)
+    RETURN(E_BAD_ARGUMENT);
+
+  if (!(form->field))
+    RETURN(E_NOT_CONNECTED);
+
+  if (rows)
+    *rows = form->rows;
+  if (cols)
+    *cols = form->cols;
+
+  RETURN(E_OK);
+}
+
+/* frm_scale.c ends here */
diff --git a/apps/lib/curses/pdcurses/form/frm_sub.c b/apps/lib/curses/pdcurses/form/frm_sub.c
new file mode 100644
index 0000000..cf5b82f
--- /dev/null
+++ b/apps/lib/curses/pdcurses/form/frm_sub.c
@@ -0,0 +1,86 @@
+/****************************************************************************
+ * Copyright (c) 1998-2009,2010 Free Software Foundation, Inc.              *
+ *                                                                          *
+ * Permission is hereby granted, free of charge, to any person obtaining a  *
+ * copy of this software and associated documentation files (the            *
+ * "Software"), to deal in the Software without restriction, including      *
+ * without limitation the rights to use, copy, modify, merge, publish,      *
+ * distribute, distribute with modifications, sublicense, and/or sell       *
+ * copies of the Software, and to permit persons to whom the Software is    *
+ * furnished to do so, subject to the following conditions:                 *
+ *                                                                          *
+ * The above copyright notice and this permission notice shall be included  *
+ * in all copies or substantial portions of the Software.                   *
+ *                                                                          *
+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS  *
+ * OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF               *
+ * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.   *
+ * IN NO EVENT SHALL THE ABOVE COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,   *
+ * DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR    *
+ * OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR    *
+ * THE USE OR OTHER DEALINGS IN THE SOFTWARE.                               *
+ *                                                                          *
+ * Except as contained in this notice, the name(s) of the above copyright   *
+ * holders shall not be used in advertising or otherwise to promote the     *
+ * sale, use or other dealings in this Software without prior written       *
+ * authorization.                                                           *
+ ****************************************************************************/
+
+/****************************************************************************
+ *   Author:  Juergen Pfeifer, 1995-1997,2009                               *
+ ****************************************************************************/
+
+#include "form.priv.h"
+
+MODULE_ID("$Id: frm_sub.c,v 1.12 2010/01/23 21:14:36 tom Exp $")
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  int set_form_sub(FORM *form, WINDOW *win)
+|
+|   Description   :  Set the subwindow of the form to win.
+|
+|   Return Values :  E_OK       - success
+|                    E_POSTED   - form is posted
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+set_form_sub(FORM *form, WINDOW *win)
+{
+  T((T_CALLED("set_form_sub(%p,%p)"), (void *)form, (void *)win));
+
+  if (form && (form->status & _POSTED))
+    RETURN(E_POSTED);
+  else
+    {
+#if NCURSES_SP_FUNCS
+      FORM *f = Normalize_Form(form);
+
+      f->sub = win ? win : StdScreen(Get_Form_Screen(f));
+      RETURN(E_OK);
+#else
+      Normalize_Form(form)->sub = win;
+      RETURN(E_OK);
+#endif
+    }
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  WINDOW *form_sub(const FORM *)
+|
+|   Description   :  Retrieve the window of the form.
+|
+|   Return Values :  The pointer to the Subwindow.
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(WINDOW *)
+form_sub(const FORM *form)
+{
+  const FORM *f;
+
+  T((T_CALLED("form_sub(%p)"), (const void *)form));
+
+  f = Normalize_Form(form);
+  returnWin(Get_Form_Window(f));
+}
+
+/* frm_sub.c ends here */
diff --git a/apps/lib/curses/pdcurses/form/frm_user.c b/apps/lib/curses/pdcurses/form/frm_user.c
new file mode 100644
index 0000000..5cab224
--- /dev/null
+++ b/apps/lib/curses/pdcurses/form/frm_user.c
@@ -0,0 +1,72 @@
+/****************************************************************************
+ * Copyright (c) 1998-2004,2010 Free Software Foundation, Inc.              *
+ *                                                                          *
+ * Permission is hereby granted, free of charge, to any person obtaining a  *
+ * copy of this software and associated documentation files (the            *
+ * "Software"), to deal in the Software without restriction, including      *
+ * without limitation the rights to use, copy, modify, merge, publish,      *
+ * distribute, distribute with modifications, sublicense, and/or sell       *
+ * copies of the Software, and to permit persons to whom the Software is    *
+ * furnished to do so, subject to the following conditions:                 *
+ *                                                                          *
+ * The above copyright notice and this permission notice shall be included  *
+ * in all copies or substantial portions of the Software.                   *
+ *                                                                          *
+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS  *
+ * OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF               *
+ * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.   *
+ * IN NO EVENT SHALL THE ABOVE COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,   *
+ * DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR    *
+ * OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR    *
+ * THE USE OR OTHER DEALINGS IN THE SOFTWARE.                               *
+ *                                                                          *
+ * Except as contained in this notice, the name(s) of the above copyright   *
+ * holders shall not be used in advertising or otherwise to promote the     *
+ * sale, use or other dealings in this Software without prior written       *
+ * authorization.                                                           *
+ ****************************************************************************/
+
+/****************************************************************************
+ *   Author:  Juergen Pfeifer, 1995,1997                                    *
+ ****************************************************************************/
+
+#include "form.priv.h"
+
+MODULE_ID("$Id: frm_user.c,v 1.15 2010/01/23 21:14:36 tom Exp $")
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  int set_form_userptr(FORM *form, void *usrptr)
+|
+|   Description   :  Set the pointer that is reserved in any form to store
+|                    application relevant informations
+|
+|   Return Values :  E_OK         - on success
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+set_form_userptr(FORM *form, void *usrptr)
+{
+  T((T_CALLED("set_form_userptr(%p,%p)"), (void *)form, (void *)usrptr));
+
+  Normalize_Form(form)->usrptr = usrptr;
+  RETURN(E_OK);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  void *form_userptr(const FORM *form)
+|
+|   Description   :  Return the pointer that is reserved in any form to
+|                    store application relevant informations.
+|
+|   Return Values :  Value of pointer. If no such pointer has been set,
+|                    NULL is returned
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(void *)
+form_userptr(const FORM *form)
+{
+  T((T_CALLED("form_userptr(%p)"), (const void *)form));
+  returnVoidPtr(Normalize_Form(form)->usrptr);
+}
+
+/* frm_user.c ends here */
diff --git a/apps/lib/curses/pdcurses/form/frm_win.c b/apps/lib/curses/pdcurses/form/frm_win.c
new file mode 100644
index 0000000..82cf2d3
--- /dev/null
+++ b/apps/lib/curses/pdcurses/form/frm_win.c
@@ -0,0 +1,92 @@
+/****************************************************************************
+ * Copyright (c) 1998-2009,2010 Free Software Foundation, Inc.              *
+ *                                                                          *
+ * Permission is hereby granted, free of charge, to any person obtaining a  *
+ * copy of this software and associated documentation files (the            *
+ * "Software"), to deal in the Software without restriction, including      *
+ * without limitation the rights to use, copy, modify, merge, publish,      *
+ * distribute, distribute with modifications, sublicense, and/or sell       *
+ * copies of the Software, and to permit persons to whom the Software is    *
+ * furnished to do so, subject to the following conditions:                 *
+ *                                                                          *
+ * The above copyright notice and this permission notice shall be included  *
+ * in all copies or substantial portions of the Software.                   *
+ *                                                                          *
+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS  *
+ * OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF               *
+ * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.   *
+ * IN NO EVENT SHALL THE ABOVE COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,   *
+ * DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR    *
+ * OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR    *
+ * THE USE OR OTHER DEALINGS IN THE SOFTWARE.                               *
+ *                                                                          *
+ * Except as contained in this notice, the name(s) of the above copyright   *
+ * holders shall not be used in advertising or otherwise to promote the     *
+ * sale, use or other dealings in this Software without prior written       *
+ * authorization.                                                           *
+ ****************************************************************************/
+
+/****************************************************************************
+ *   Author:  Juergen Pfeifer, 1995,1997                                    *
+ ****************************************************************************/
+
+#include "form.priv.h"
+
+MODULE_ID("$Id: frm_win.c,v 1.16 2010/01/23 21:14:36 tom Exp $")
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  int set_form_win(FORM *form,WINDOW *win)
+|
+|   Description   :  Set the window of the form to win.
+|
+|   Return Values :  E_OK       - success
+|                    E_POSTED   - form is posted
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+set_form_win(FORM *form, WINDOW *win)
+{
+  T((T_CALLED("set_form_win(%p,%p)"), (void *)form, (void *)win));
+
+  if (form && (form->status & _POSTED))
+    RETURN(E_POSTED);
+  else
+    {
+#if NCURSES_SP_FUNCS
+      FORM *f = Normalize_Form(form);
+
+      f->win = win ? win : StdScreen(Get_Form_Screen(f));
+      RETURN(E_OK);
+#else
+      Normalize_Form(form)->win = win;
+      RETURN(E_OK);
+#endif
+    }
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  WINDOW *form_win(const FORM *)
+|
+|   Description   :  Retrieve the window of the form.
+|
+|   Return Values :  The pointer to the Window or stdscr if there is none.
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(WINDOW *)
+form_win(const FORM *form)
+{
+  WINDOW *result;
+  const FORM *f;
+
+  T((T_CALLED("form_win(%p)"), (const void *)form));
+
+  f = Normalize_Form(form);
+#if NCURSES_SP_FUNCS
+  result = (f->win ? f->win : StdScreen(Get_Form_Screen(f)));
+#else
+  result = (f->win ? f->win : stdscr);
+#endif
+  returnWin(result);
+}
+
+/* frm_win.c ends here */
diff --git a/apps/lib/curses/pdcurses/form/fty_alnum.c b/apps/lib/curses/pdcurses/form/fty_alnum.c
new file mode 100644
index 0000000..cda23dc
--- /dev/null
+++ b/apps/lib/curses/pdcurses/form/fty_alnum.c
@@ -0,0 +1,202 @@
+/****************************************************************************
+ * Copyright (c) 1998-2009,2010 Free Software Foundation, Inc.              *
+ *                                                                          *
+ * Permission is hereby granted, free of charge, to any person obtaining a  *
+ * copy of this software and associated documentation files (the            *
+ * "Software"), to deal in the Software without restriction, including      *
+ * without limitation the rights to use, copy, modify, merge, publish,      *
+ * distribute, distribute with modifications, sublicense, and/or sell       *
+ * copies of the Software, and to permit persons to whom the Software is    *
+ * furnished to do so, subject to the following conditions:                 *
+ *                                                                          *
+ * The above copyright notice and this permission notice shall be included  *
+ * in all copies or substantial portions of the Software.                   *
+ *                                                                          *
+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS  *
+ * OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF               *
+ * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.   *
+ * IN NO EVENT SHALL THE ABOVE COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,   *
+ * DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR    *
+ * OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR    *
+ * THE USE OR OTHER DEALINGS IN THE SOFTWARE.                               *
+ *                                                                          *
+ * Except as contained in this notice, the name(s) of the above copyright   *
+ * holders shall not be used in advertising or otherwise to promote the     *
+ * sale, use or other dealings in this Software without prior written       *
+ * authorization.                                                           *
+ ****************************************************************************/
+
+/***************************************************************************
+*                                                                          *
+*  Author : Juergen Pfeifer                                                *
+*                                                                          *
+***************************************************************************/
+
+#include "form.priv.h"
+
+MODULE_ID("$Id: fty_alnum.c,v 1.24 2010/01/23 21:14:36 tom Exp $")
+
+#define thisARG alnumARG
+
+typedef struct
+  {
+    int width;
+  }
+thisARG;
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static void *Generic_This_Type(void *arg)
+|
+|   Description   :  Allocate structure for alphanumeric type argument.
+|
+|   Return Values :  Pointer to argument structure or NULL on error
++--------------------------------------------------------------------------*/
+static void *
+Generic_This_Type(void *arg)
+{
+  thisARG *argp = (thisARG *) 0;
+
+  if (arg)
+    {
+      argp = typeMalloc(thisARG, 1);
+
+      if (argp)
+	{
+	  T((T_CREATE("thisARG %p"), (void *)argp));
+	  argp->width = *((int *)arg);
+	}
+    }
+  return ((void *)argp);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static void *Make_This_Type(va_list *ap)
+|
+|   Description   :  Allocate structure for alphanumeric type argument.
+|
+|   Return Values :  Pointer to argument structure or NULL on error
++--------------------------------------------------------------------------*/
+static void *
+Make_This_Type(va_list *ap)
+{
+  int w = va_arg(*ap, int);
+
+  return Generic_This_Type((void *)&w);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static void *Copy_ThisType(const void *argp)
+|
+|   Description   :  Copy structure for alphanumeric type argument.
+|
+|   Return Values :  Pointer to argument structure or NULL on error.
++--------------------------------------------------------------------------*/
+static void *
+Copy_This_Type(const void *argp)
+{
+  const thisARG *ap = (const thisARG *)argp;
+  thisARG *result = typeMalloc(thisARG, 1);
+
+  if (result)
+    {
+      T((T_CREATE("thisARG %p"), (void *)result));
+      *result = *ap;
+    }
+
+  return ((void *)result);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static void Free_This_Type(void *argp)
+|
+|   Description   :  Free structure for alphanumeric type argument.
+|
+|   Return Values :  -
++--------------------------------------------------------------------------*/
+static void
+Free_This_Type(void *argp)
+{
+  if (argp)
+    free(argp);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static bool Check_This_Character(
+|                                      int c,
+|                                      const void *argp)
+|
+|   Description   :  Check a character for the alphanumeric type.
+|
+|   Return Values :  TRUE  - character is valid
+|                    FALSE - character is invalid
++--------------------------------------------------------------------------*/
+static bool
+Check_This_Character(int c, const void *argp GCC_UNUSED)
+{
+#if USE_WIDEC_SUPPORT
+  if (iswalnum((wint_t) c))
+    return TRUE;
+#endif
+  return (isalnum(UChar(c)) ? TRUE : FALSE);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static bool Check_This_Field(
+|                                      FIELD *field,
+|                                      const void *argp)
+|
+|   Description   :  Validate buffer content to be a valid alphanumeric value
+|
+|   Return Values :  TRUE  - field is valid
+|                    FALSE - field is invalid
++--------------------------------------------------------------------------*/
+static bool
+Check_This_Field(FIELD *field, const void *argp)
+{
+  int width = ((const thisARG *)argp)->width;
+  unsigned char *bp = (unsigned char *)field_buffer(field, 0);
+  bool result = (width < 0);
+
+  Check_CTYPE_Field(result, bp, width, Check_This_Character);
+  return (result);
+}
+
+static FIELDTYPE typeTHIS =
+{
+  _HAS_ARGS | _RESIDENT,
+  1,				/* this is mutable, so we can't be const */
+  (FIELDTYPE *)0,
+  (FIELDTYPE *)0,
+  Make_This_Type,
+  Copy_This_Type,
+  Free_This_Type,
+  INIT_FT_FUNC(Check_This_Field),
+  INIT_FT_FUNC(Check_This_Character),
+  INIT_FT_FUNC(NULL),
+  INIT_FT_FUNC(NULL),
+#if NCURSES_INTEROP_FUNCS
+  Generic_This_Type
+#endif
+};
+
+NCURSES_EXPORT_VAR(FIELDTYPE*) TYPE_ALNUM = &typeTHIS;
+
+#if NCURSES_INTEROP_FUNCS
+/* The next routines are to simplify the use of ncurses from
+   programming languages with restictions on interop with C level
+   constructs (e.g. variable access or va_list + ellipsis constructs)
+*/
+NCURSES_EXPORT(FIELDTYPE *)
+_nc_TYPE_ALNUM(void)
+{
+  return TYPE_ALNUM;
+}
+#endif
+
+/* fty_alnum.c ends here */
diff --git a/apps/lib/curses/pdcurses/form/fty_alpha.c b/apps/lib/curses/pdcurses/form/fty_alpha.c
new file mode 100644
index 0000000..917a9e0
--- /dev/null
+++ b/apps/lib/curses/pdcurses/form/fty_alpha.c
@@ -0,0 +1,202 @@
+/****************************************************************************
+ * Copyright (c) 1998-2009,2010 Free Software Foundation, Inc.              *
+ *                                                                          *
+ * Permission is hereby granted, free of charge, to any person obtaining a  *
+ * copy of this software and associated documentation files (the            *
+ * "Software"), to deal in the Software without restriction, including      *
+ * without limitation the rights to use, copy, modify, merge, publish,      *
+ * distribute, distribute with modifications, sublicense, and/or sell       *
+ * copies of the Software, and to permit persons to whom the Software is    *
+ * furnished to do so, subject to the following conditions:                 *
+ *                                                                          *
+ * The above copyright notice and this permission notice shall be included  *
+ * in all copies or substantial portions of the Software.                   *
+ *                                                                          *
+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS  *
+ * OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF               *
+ * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.   *
+ * IN NO EVENT SHALL THE ABOVE COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,   *
+ * DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR    *
+ * OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR    *
+ * THE USE OR OTHER DEALINGS IN THE SOFTWARE.                               *
+ *                                                                          *
+ * Except as contained in this notice, the name(s) of the above copyright   *
+ * holders shall not be used in advertising or otherwise to promote the     *
+ * sale, use or other dealings in this Software without prior written       *
+ * authorization.                                                           *
+ ****************************************************************************/
+
+/***************************************************************************
+*                                                                          *
+*  Author : Juergen Pfeifer                                                *
+*                                                                          *
+***************************************************************************/
+
+#include "form.priv.h"
+
+MODULE_ID("$Id: fty_alpha.c,v 1.26 2010/01/23 21:14:36 tom Exp $")
+
+#define thisARG alphaARG
+
+typedef struct
+  {
+    int width;
+  }
+thisARG;
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static void *Generic_This_Type(va_list *ap)
+|
+|   Description   :  Allocate structure for alpha type argument.
+|
+|   Return Values :  Pointer to argument structure or NULL on error
++--------------------------------------------------------------------------*/
+static void *
+Generic_This_Type(void *arg)
+{
+  thisARG *argp = (thisARG *) 0;
+
+  if (arg)
+    {
+      argp = typeMalloc(thisARG, 1);
+
+      if (argp)
+	{
+	  T((T_CREATE("thisARG %p"), (void *)argp));
+	  argp->width = *((int *)arg);
+	}
+    }
+  return ((void *)argp);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static void *Make_This_Type(va_list *ap)
+|
+|   Description   :  Allocate structure for alpha type argument.
+|
+|   Return Values :  Pointer to argument structure or NULL on error
++--------------------------------------------------------------------------*/
+static void *
+Make_This_Type(va_list *ap)
+{
+  int w = va_arg(*ap, int);
+
+  return Generic_This_Type((void *)&w);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static void *Copy_This_Type(const void * argp)
+|
+|   Description   :  Copy structure for alpha type argument.
+|
+|   Return Values :  Pointer to argument structure or NULL on error.
++--------------------------------------------------------------------------*/
+static void *
+Copy_This_Type(const void *argp)
+{
+  const thisARG *ap = (const thisARG *)argp;
+  thisARG *result = typeMalloc(thisARG, 1);
+
+  if (result)
+    {
+      T((T_CREATE("thisARG %p"), (void *)result));
+      *result = *ap;
+    }
+
+  return ((void *)result);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static void Free_This_Type(void *argp)
+|
+|   Description   :  Free structure for alpha type argument.
+|
+|   Return Values :  -
++--------------------------------------------------------------------------*/
+static void
+Free_This_Type(void *argp)
+{
+  if (argp)
+    free(argp);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static bool Check_This_Character(
+|                                      int c,
+|                                      const void *argp)
+|
+|   Description   :  Check a character for the alpha type.
+|
+|   Return Values :  TRUE  - character is valid
+|                    FALSE - character is invalid
++--------------------------------------------------------------------------*/
+static bool
+Check_This_Character(int c, const void *argp GCC_UNUSED)
+{
+#if USE_WIDEC_SUPPORT
+  if (iswalpha((wint_t) c))
+    return TRUE;
+#endif
+  return (isalpha(UChar(c)) ? TRUE : FALSE);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static bool Check_This_Field(
+|                                      FIELD *field,
+|                                      const void *argp)
+|
+|   Description   :  Validate buffer content to be a valid alpha value
+|
+|   Return Values :  TRUE  - field is valid
+|                    FALSE - field is invalid
++--------------------------------------------------------------------------*/
+static bool
+Check_This_Field(FIELD *field, const void *argp)
+{
+  int width = ((const thisARG *)argp)->width;
+  unsigned char *bp = (unsigned char *)field_buffer(field, 0);
+  bool result = (width < 0);
+
+  Check_CTYPE_Field(result, bp, width, Check_This_Character);
+  return (result);
+}
+
+static FIELDTYPE typeTHIS =
+{
+  _HAS_ARGS | _RESIDENT,
+  1,				/* this is mutable, so we can't be const */
+  (FIELDTYPE *)0,
+  (FIELDTYPE *)0,
+  Make_This_Type,
+  Copy_This_Type,
+  Free_This_Type,
+  INIT_FT_FUNC(Check_This_Field),
+  INIT_FT_FUNC(Check_This_Character),
+  INIT_FT_FUNC(NULL),
+  INIT_FT_FUNC(NULL),
+#if NCURSES_INTEROP_FUNCS
+  Generic_This_Type
+#endif
+};
+
+NCURSES_EXPORT_VAR(FIELDTYPE*) TYPE_ALPHA = &typeTHIS;
+
+#if NCURSES_INTEROP_FUNCS
+/* The next routines are to simplify the use of ncurses from
+   programming languages with restictions on interop with C level
+   constructs (e.g. variable access or va_list + ellipsis constructs)
+*/
+NCURSES_EXPORT(FIELDTYPE *)
+_nc_TYPE_ALPHA(void)
+{
+  return TYPE_ALPHA;
+}
+#endif
+
+/* fty_alpha.c ends here */
diff --git a/apps/lib/curses/pdcurses/form/fty_enum.c b/apps/lib/curses/pdcurses/form/fty_enum.c
new file mode 100644
index 0000000..2fd96f0
--- /dev/null
+++ b/apps/lib/curses/pdcurses/form/fty_enum.c
@@ -0,0 +1,442 @@
+/****************************************************************************
+ * Copyright (c) 1998-2009,2010 Free Software Foundation, Inc.              *
+ *                                                                          *
+ * Permission is hereby granted, free of charge, to any person obtaining a  *
+ * copy of this software and associated documentation files (the            *
+ * "Software"), to deal in the Software without restriction, including      *
+ * without limitation the rights to use, copy, modify, merge, publish,      *
+ * distribute, distribute with modifications, sublicense, and/or sell       *
+ * copies of the Software, and to permit persons to whom the Software is    *
+ * furnished to do so, subject to the following conditions:                 *
+ *                                                                          *
+ * The above copyright notice and this permission notice shall be included  *
+ * in all copies or substantial portions of the Software.                   *
+ *                                                                          *
+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS  *
+ * OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF               *
+ * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.   *
+ * IN NO EVENT SHALL THE ABOVE COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,   *
+ * DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR    *
+ * OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR    *
+ * THE USE OR OTHER DEALINGS IN THE SOFTWARE.                               *
+ *                                                                          *
+ * Except as contained in this notice, the name(s) of the above copyright   *
+ * holders shall not be used in advertising or otherwise to promote the     *
+ * sale, use or other dealings in this Software without prior written       *
+ * authorization.                                                           *
+ ****************************************************************************/
+
+/***************************************************************************
+*                                                                          *
+*  Author : Juergen Pfeifer                                                *
+*                                                                          *
+***************************************************************************/
+
+#include "form.priv.h"
+
+MODULE_ID("$Id: fty_enum.c,v 1.26 2010/05/01 21:11:07 tom Exp $")
+
+typedef struct
+  {
+    char **kwds;
+    int count;
+    bool checkcase;
+    bool checkunique;
+  }
+enumARG;
+
+typedef struct
+  {
+    char **kwds;
+    int ccase;
+    int cunique;
+  }
+enumParams;
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static void *Generic_Enum_Type(void * arg)
+|
+|   Description   :  Allocate structure for enumeration type argument.
+|
+|   Return Values :  Pointer to argument structure or NULL on error
++--------------------------------------------------------------------------*/
+static void *
+Generic_Enum_Type(void *arg)
+{
+  enumARG *argp = (enumARG *)0;
+  enumParams *params = (enumParams *) arg;
+
+  if (params)
+    {
+      argp = typeMalloc(enumARG, 1);
+
+      if (argp)
+	{
+	  int cnt = 0;
+	  char **kp = (char **)0;
+	  char **kwds = (char **)0;
+	  char **kptarget;
+	  int ccase, cunique;
+
+	  T((T_CREATE("enumARG %p"), (void *)argp));
+	  kwds = params->kwds;
+	  ccase = params->ccase;
+	  cunique = params->cunique;
+
+	  argp->checkcase = ccase ? TRUE : FALSE;
+	  argp->checkunique = cunique ? TRUE : FALSE;
+	  argp->kwds = (char **)0;
+
+	  kp = kwds;
+	  while (kp && (*kp++))
+	    cnt++;
+	  argp->count = cnt;
+
+	  if (cnt > 0)
+	    {
+	      /* We copy the keywords, because we can't rely on the fact
+	         that the caller doesn't relocate or free the memory used
+	         for the keywords (maybe he has GC)
+	       */
+	      argp->kwds = typeMalloc(char *, cnt + 1);
+
+	      kp = kwds;
+	      if ((kptarget = argp->kwds) != 0)
+		{
+		  while (kp && (*kp))
+		    {
+		      (*kptarget++) = strdup(*kp++);
+		    }
+		  *kptarget = (char *)0;
+		}
+	    }
+	}
+    }
+  return (void *)argp;
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static void *Make_Enum_Type( va_list * ap )
+|
+|   Description   :  Allocate structure for enumeration type argument.
+|
+|   Return Values :  Pointer to argument structure or NULL on error
++--------------------------------------------------------------------------*/
+static void *
+Make_Enum_Type(va_list *ap)
+{
+  enumParams params;
+
+  params.kwds = va_arg(*ap, char **);
+  params.ccase = va_arg(*ap, int);
+  params.cunique = va_arg(*ap, int);
+
+  return Generic_Enum_Type((void *)&params);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static void *Copy_Enum_Type( const void * argp )
+|
+|   Description   :  Copy structure for enumeration type argument.
+|
+|   Return Values :  Pointer to argument structure or NULL on error.
++--------------------------------------------------------------------------*/
+static void *
+Copy_Enum_Type(const void *argp)
+{
+  enumARG *result = (enumARG *)0;
+
+  if (argp)
+    {
+      const enumARG *ap = (const enumARG *)argp;
+
+      result = typeMalloc(enumARG, 1);
+
+      if (result)
+	{
+	  T((T_CREATE("enumARG %p"), (void *)result));
+	  *result = *ap;
+
+	  if (ap->count > 0)
+	    {
+	      char **kptarget;
+	      char **kp = ap->kwds;
+	      result->kwds = typeMalloc(char *, 1 + ap->count);
+
+	      if ((kptarget = result->kwds) != 0)
+		{
+		  while (kp && (*kp))
+		    {
+		      (*kptarget++) = strdup(*kp++);
+		    }
+		  *kptarget = (char *)0;
+		}
+	    }
+	}
+    }
+  return (void *)result;
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static void Free_Enum_Type( void * argp )
+|
+|   Description   :  Free structure for enumeration type argument.
+|
+|   Return Values :  -
++--------------------------------------------------------------------------*/
+static void
+Free_Enum_Type(void *argp)
+{
+  if (argp)
+    {
+      const enumARG *ap = (const enumARG *)argp;
+
+      if (ap->kwds && ap->count > 0)
+	{
+	  char **kp = ap->kwds;
+	  int cnt = 0;
+
+	  while (kp && (*kp))
+	    {
+	      free(*kp++);
+	      cnt++;
+	    }
+	  assert(cnt == ap->count);
+	  free(ap->kwds);
+	}
+      free(argp);
+    }
+}
+
+#define SKIP_SPACE(x) while(((*(x))!='\0') && (is_blank(*(x)))) (x)++
+#define NOMATCH 0
+#define PARTIAL 1
+#define EXACT   2
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static int Compare(const unsigned char * s,
+|                                       const unsigned char * buf,
+|                                       bool  ccase )
+|
+|   Description   :  Check whether or not the text in 'buf' matches the
+|                    text in 's', at least partial.
+|
+|   Return Values :  NOMATCH   - buffer doesn't match
+|                    PARTIAL   - buffer matches partially
+|                    EXACT     - buffer matches exactly
++--------------------------------------------------------------------------*/
+static int
+Compare(const unsigned char *s, const unsigned char *buf,
+	bool ccase)
+{
+  SKIP_SPACE(buf);		/* Skip leading spaces in both texts */
+  SKIP_SPACE(s);
+
+  if (*buf == '\0')
+    {
+      return (((*s) != '\0') ? NOMATCH : EXACT);
+    }
+  else
+    {
+      if (ccase)
+	{
+	  while (*s++ == *buf)
+	    {
+	      if (*buf++ == '\0')
+		return EXACT;
+	    }
+	}
+      else
+	{
+	  while (toupper(*s++) == toupper(*buf))
+	    {
+	      if (*buf++ == '\0')
+		return EXACT;
+	    }
+	}
+    }
+  /* At this location buf points to the first character where it no longer
+     matches with s. So if only blanks are following, we have a partial
+     match otherwise there is no match */
+  SKIP_SPACE(buf);
+  if (*buf)
+    return NOMATCH;
+
+  /* If it happens that the reference buffer is at its end, the partial
+     match is actually an exact match. */
+  return ((s[-1] != '\0') ? PARTIAL : EXACT);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static bool Check_Enum_Field(
+|                                      FIELD * field,
+|                                      const void  * argp)
+|
+|   Description   :  Validate buffer content to be a valid enumeration value
+|
+|   Return Values :  TRUE  - field is valid
+|                    FALSE - field is invalid
++--------------------------------------------------------------------------*/
+static bool
+Check_Enum_Field(FIELD *field, const void *argp)
+{
+  char **kwds = ((const enumARG *)argp)->kwds;
+  bool ccase = ((const enumARG *)argp)->checkcase;
+  bool unique = ((const enumARG *)argp)->checkunique;
+  unsigned char *bp = (unsigned char *)field_buffer(field, 0);
+  char *s, *t, *p;
+  int res;
+
+  while (kwds && (s = (*kwds++)))
+    {
+      if ((res = Compare((unsigned char *)s, bp, ccase)) != NOMATCH)
+	{
+	  p = t = s;		/* t is at least a partial match */
+	  if ((unique && res != EXACT))
+	    {
+	      while (kwds && (p = *kwds++))
+		{
+		  if ((res = Compare((unsigned char *)p, bp, ccase)) != NOMATCH)
+		    {
+		      if (res == EXACT)
+			{
+			  t = p;
+			  break;
+			}
+		      else
+			t = (char *)0;
+		    }
+		}
+	    }
+	  if (t)
+	    {
+	      set_field_buffer(field, 0, t);
+	      return TRUE;
+	    }
+	  if (!p)
+	    break;
+	}
+    }
+  return FALSE;
+}
+
+static const char *dummy[] =
+{(char *)0};
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static bool Next_Enum(FIELD * field,
+|                                          const void * argp)
+|
+|   Description   :  Check for the next enumeration value
+|
+|   Return Values :  TRUE  - next value found and loaded
+|                    FALSE - no next value loaded
++--------------------------------------------------------------------------*/
+static bool
+Next_Enum(FIELD *field, const void *argp)
+{
+  const enumARG *args = (const enumARG *)argp;
+  char **kwds = args->kwds;
+  bool ccase = args->checkcase;
+  int cnt = args->count;
+  unsigned char *bp = (unsigned char *)field_buffer(field, 0);
+
+  if (kwds)
+    {
+      while (cnt--)
+	{
+	  if (Compare((unsigned char *)(*kwds++), bp, ccase) == EXACT)
+	    break;
+	}
+      if (cnt <= 0)
+	kwds = args->kwds;
+      if ((cnt >= 0) || (Compare((const unsigned char *)dummy, bp, ccase) == EXACT))
+	{
+	  set_field_buffer(field, 0, *kwds);
+	  return TRUE;
+	}
+    }
+  return FALSE;
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static bool Previous_Enum(
+|                                          FIELD * field,
+|                                          const void * argp)
+|
+|   Description   :  Check for the previous enumeration value
+|
+|   Return Values :  TRUE  - previous value found and loaded
+|                    FALSE - no previous value loaded
++--------------------------------------------------------------------------*/
+static bool
+Previous_Enum(FIELD *field, const void *argp)
+{
+  const enumARG *args = (const enumARG *)argp;
+  int cnt = args->count;
+  char **kwds = &args->kwds[cnt - 1];
+  bool ccase = args->checkcase;
+  unsigned char *bp = (unsigned char *)field_buffer(field, 0);
+
+  if (kwds)
+    {
+      while (cnt--)
+	{
+	  if (Compare((unsigned char *)(*kwds--), bp, ccase) == EXACT)
+	    break;
+	}
+
+      if (cnt <= 0)
+	kwds = &args->kwds[args->count - 1];
+
+      if ((cnt >= 0) || (Compare((const unsigned char *)dummy, bp, ccase) == EXACT))
+	{
+	  set_field_buffer(field, 0, *kwds);
+	  return TRUE;
+	}
+    }
+  return FALSE;
+}
+
+static FIELDTYPE typeENUM =
+{
+  _HAS_ARGS | _HAS_CHOICE | _RESIDENT,
+  1,				/* this is mutable, so we can't be const */
+  (FIELDTYPE *)0,
+  (FIELDTYPE *)0,
+  Make_Enum_Type,
+  Copy_Enum_Type,
+  Free_Enum_Type,
+  INIT_FT_FUNC(Check_Enum_Field),
+  INIT_FT_FUNC(NULL),
+  INIT_FT_FUNC(Next_Enum),
+  INIT_FT_FUNC(Previous_Enum),
+#if NCURSES_INTEROP_FUNCS
+  Generic_Enum_Type
+#endif
+};
+
+NCURSES_EXPORT_VAR(FIELDTYPE *)
+TYPE_ENUM = &typeENUM;
+
+#if NCURSES_INTEROP_FUNCS
+/* The next routines are to simplify the use of ncurses from
+   programming languages with restictions on interop with C level
+   constructs (e.g. variable access or va_list + ellipsis constructs)
+*/
+NCURSES_EXPORT(FIELDTYPE *)
+_nc_TYPE_ENUM(void)
+{
+  return TYPE_ENUM;
+}
+#endif
+
+/* fty_enum.c ends here */
diff --git a/apps/lib/curses/pdcurses/form/fty_generic.c b/apps/lib/curses/pdcurses/form/fty_generic.c
new file mode 100644
index 0000000..439afcc
--- /dev/null
+++ b/apps/lib/curses/pdcurses/form/fty_generic.c
@@ -0,0 +1,297 @@
+/****************************************************************************
+ * Copyright (c) 2008-2009,2010 Free Software Foundation, Inc.              *
+ *                                                                          *
+ * Permission is hereby granted, free of charge, to any person obtaining a  *
+ * copy of this software and associated documentation files (the            *
+ * "Software"), to deal in the Software without restriction, including      *
+ * without limitation the rights to use, copy, modify, merge, publish,      *
+ * distribute, distribute with modifications, sublicense, and/or sell       *
+ * copies of the Software, and to permit persons to whom the Software is    *
+ * furnished to do so, subject to the following conditions:                 *
+ *                                                                          *
+ * The above copyright notice and this permission notice shall be included  *
+ * in all copies or substantial portions of the Software.                   *
+ *                                                                          *
+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS  *
+ * OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF               *
+ * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.   *
+ * IN NO EVENT SHALL THE ABOVE COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,   *
+ * DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR    *
+ * OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR    *
+ * THE USE OR OTHER DEALINGS IN THE SOFTWARE.                               *
+ *                                                                          *
+ * Except as contained in this notice, the name(s) of the above copyright   *
+ * holders shall not be used in advertising or otherwise to promote the     *
+ * sale, use or other dealings in this Software without prior written       *
+ * authorization.                                                           *
+ ****************************************************************************/
+
+/***************************************************************************
+*                                                                          *
+*  Author : Juergen Pfeifer                                                *
+*                                                                          *
+***************************************************************************/
+
+#include "form.priv.h"
+
+MODULE_ID("$Id: fty_generic.c,v 1.5 2010/01/23 21:14:36 tom Exp $")
+
+/*
+ * This is not a full implementation of a field type, but adds some
+ * support for higher level languages with some restrictions to interop
+ * with C language. Especially the collection of arguments for the
+ * various fieldtypes is not based on the vararg C mechanism, but on a
+ * iterator based callback mechanism that allowes the high level language
+ * to provide the arguments as a structure. Most languages have mechanisms
+ * to layout structures so that they can be passed to C.
+ * The languages can register a new generic fieldtype dynamically and store
+ * a handle (key) to the calling object as an argument. Together with that
+ * it can register a freearg callback, so that the high level language
+ * remains in control of the memory management of the arguments they pass.
+ * The design idea is, that the high-level language - typically a OO
+ * language like C# or Java, uses it's own dispatching mechanisms
+ * (polymorphism) to call the proper check routines responsible for the
+ * argument type. So these language implement typically only one generic
+ * fieldtype they register with the forms library using this call.
+ *
+ * For that purpose we have extended the fieldtype struc by a new element
+ * that gets the arguments from a single struct passed by the caller.
+ *
+ */
+#if NCURSES_INTEROP_FUNCS
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static void *Generic_This_Type( void * arg )
+|
+|   Description   :  We interpret the passed arg just as a handle the
+|                    calling language uses to keep track of its allocated
+|                    argument structures. We can simply copy it back.
+|
+|   Return Values :  Pointer to argument structure
++--------------------------------------------------------------------------*/
+static void *
+Generic_This_Type(void *arg)
+{
+  return (arg);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  FIELDTYPE *_nc_generic_fieldtype(
+|                       bool (* const field_check)(FIELD *,const void *),
+|                       bool (* const char_check) (int, const void *),
+|   		        bool (*const next)(FORM*,FIELD*,const void*),
+|		        bool (*const prev)(FORM*,FIELD*,const void*),
+|                       void (*freecallback)(void*))
+|
+|   Description   :  Create a new fieldtype. The application programmer must
+|                    write a field_check and a char_check function and give
+|                    them as input to this call. A callback to allow the
+|                    release of the allocated memory must also be provided.
+|                    For generic field types, we provide some more
+|                    information about the field as parameters.
+|
+|                    If an error occurs, errno is set to
+|                       E_BAD_ARGUMENT  - invalid arguments
+|                       E_SYSTEM_ERROR  - system error (no memory)
+|
+|   Return Values :  Fieldtype pointer or NULL if error occurred
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(FIELDTYPE *)
+_nc_generic_fieldtype(bool (*const field_check) (FORM *, FIELD *, const void *),
+		      bool (*const char_check) (int, FORM *, FIELD *, const
+						void *),
+		      bool (*const next) (FORM *, FIELD *, const void *),
+		      bool (*const prev) (FORM *, FIELD *, const void *),
+		      void (*freecallback) (void *))
+{
+  int code = E_SYSTEM_ERROR;
+  FIELDTYPE *res = (FIELDTYPE *)0;
+
+  T((T_CALLED("_nc_generic_fieldtype(%p,%p,%p,%p,%p)"),
+     field_check, char_check, next, prev, freecallback));
+
+  if (field_check || char_check)
+    {
+      res = typeMalloc(FIELDTYPE, 1);
+
+      if (res)
+	{
+	  *res = *_nc_Default_FieldType;
+	  res->status |= (_HAS_ARGS | _GENERIC);
+	  res->fieldcheck.gfcheck = field_check;
+	  res->charcheck.gccheck = char_check;
+	  res->genericarg = Generic_This_Type;
+	  res->freearg = freecallback;
+	  res->enum_next.gnext = next;
+	  res->enum_prev.gprev = prev;
+	  code = E_OK;
+	}
+    }
+  else
+    code = E_BAD_ARGUMENT;
+
+  if (E_OK != code)
+    SET_ERROR(code);
+
+  returnFieldType(res);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static TypeArgument *GenericArgument(
+|                      const FIELDTYPE* typ,
+|                      int (*argiterator)(void**),
+|                      int* err)
+|
+|   Description   :  The iterator callback must browse through all fieldtype
+|                    parameters that have an argument associated with the
+|                    type. The iterator returns 1 if the operation to get
+|                    the next element was successfull, 0 otherwise. If the
+|                    iterator could move to the next argument, it fills
+|                    the void* pointer representing the argument into the
+|                    location provided as argument to the iterator.
+|                    The err reference is used to keep track of errors.
+|
+|   Return Values :  Pointer to argument structure
++--------------------------------------------------------------------------*/
+static TypeArgument *
+GenericArgument(const FIELDTYPE *typ,
+		int (*argiterator) (void **), int *err)
+{
+  TypeArgument *res = (TypeArgument *)0;
+
+  if (typ != 0 && (typ->status & _HAS_ARGS) != 0 && err != 0 && argiterator != 0)
+    {
+      if (typ->status & _LINKED_TYPE)
+	{
+	  /* Composite fieldtypes keep track internally of their own memory */
+	  TypeArgument *p = typeMalloc(TypeArgument, 1);
+
+	  if (p)
+	    {
+	      p->left = GenericArgument(typ->left, argiterator, err);
+	      p->right = GenericArgument(typ->right, argiterator, err);
+	      return p;
+	    }
+	  else
+	    *err += 1;
+	}
+      else
+	{
+	  assert(typ->genericarg != (void *)0);
+	  if (typ->genericarg == 0)
+	    *err += 1;
+	  else
+	    {
+	      void *argp;
+	      int valid = argiterator(&argp);
+
+	      if (valid == 0 || argp == 0 ||
+		  !(res = (TypeArgument *)typ->genericarg(argp)))
+		{
+		  *err += 1;
+		}
+	    }
+	}
+    }
+  return res;
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  int _nc_set_generic_fieldtype(
+|                      FIELD* field,
+|                      FIELDTYPE* ftyp,
+|                      int (*argiterator)(void**))
+|
+|   Description   :  Assign the fieldtype to the field and use the iterator
+|                    mechanism to get the arguments when a check is
+|                    performed.
+|
+|   Return Values :  E_OK if all went well
+|                    E_SYSTEM_ERROR if an error occurred
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+_nc_set_generic_fieldtype(FIELD *field,
+			  FIELDTYPE *ftyp,
+			  int (*argiterator) (void **))
+{
+  int code = E_SYSTEM_ERROR;
+  int err = 0;
+
+  if (field)
+    {
+      if (field && field->type)
+	_nc_Free_Type(field);
+
+      field->type = ftyp;
+      if (ftyp)
+	{
+	  if (argiterator)
+	    {
+	      /* The precondition is that the iterator is reset */
+	      field->arg = (void *)GenericArgument(field->type, argiterator, &err);
+
+	      if (err)
+		{
+		  _nc_Free_Argument(field->type, (TypeArgument *)(field->arg));
+		  field->type = (FIELDTYPE *)0;
+		  field->arg = (void *)0;
+		}
+	      else
+		{
+		  code = E_OK;
+		  if (field->type)
+		    field->type->ref++;
+		}
+	    }
+	}
+      else
+	{
+	  field->arg = (void *)0;
+	  code = E_OK;
+	}
+    }
+  return code;
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  WINDOW* _nc_form_cursor(
+|                      FORM* form,
+|                      int *pRow, int *pCol)
+|
+|   Description   :  Get the current position of the form cursor position
+|                    We also return the field window
+|
+|   Return Values :  The fields Window or NULL on error
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(WINDOW *)
+_nc_form_cursor(const FORM *form, int *pRow, int *pCol)
+{
+  int code = E_SYSTEM_ERROR;
+  WINDOW *res = (WINDOW *)0;
+
+  if (!(form == 0 || pRow == 0 || pCol == 0))
+    {
+      *pRow = form->currow;
+      *pCol = form->curcol;
+      res = form->w;
+      code = E_OK;
+    }
+  if (code != E_OK)
+    SET_ERROR(code);
+  return res;
+}
+
+#else
+extern void _nc_fty_generic(void);
+void
+_nc_fty_generic(void)
+{
+}
+#endif
+
+/* fty_generic.c ends here */
diff --git a/apps/lib/curses/pdcurses/form/fty_int.c b/apps/lib/curses/pdcurses/form/fty_int.c
new file mode 100644
index 0000000..0eddedf
--- /dev/null
+++ b/apps/lib/curses/pdcurses/form/fty_int.c
@@ -0,0 +1,293 @@
+/****************************************************************************
+ * Copyright (c) 1998-2009,2010 Free Software Foundation, Inc.              *
+ *                                                                          *
+ * Permission is hereby granted, free of charge, to any person obtaining a  *
+ * copy of this software and associated documentation files (the            *
+ * "Software"), to deal in the Software without restriction, including      *
+ * without limitation the rights to use, copy, modify, merge, publish,      *
+ * distribute, distribute with modifications, sublicense, and/or sell       *
+ * copies of the Software, and to permit persons to whom the Software is    *
+ * furnished to do so, subject to the following conditions:                 *
+ *                                                                          *
+ * The above copyright notice and this permission notice shall be included  *
+ * in all copies or substantial portions of the Software.                   *
+ *                                                                          *
+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS  *
+ * OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF               *
+ * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.   *
+ * IN NO EVENT SHALL THE ABOVE COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,   *
+ * DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR    *
+ * OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR    *
+ * THE USE OR OTHER DEALINGS IN THE SOFTWARE.                               *
+ *                                                                          *
+ * Except as contained in this notice, the name(s) of the above copyright   *
+ * holders shall not be used in advertising or otherwise to promote the     *
+ * sale, use or other dealings in this Software without prior written       *
+ * authorization.                                                           *
+ ****************************************************************************/
+
+/***************************************************************************
+*                                                                          *
+*  Author : Juergen Pfeifer                                                *
+*                                                                          *
+***************************************************************************/
+
+#include "form.priv.h"
+
+MODULE_ID("$Id: fty_int.c,v 1.25 2010/01/23 21:14:36 tom Exp $")
+
+#if USE_WIDEC_SUPPORT
+#define isDigit(c) (iswdigit((wint_t)(c)) || isdigit(UChar(c)))
+#else
+#define isDigit(c) isdigit(UChar(c))
+#endif
+
+#define thisARG integerARG
+
+typedef struct
+  {
+    int precision;
+    long low;
+    long high;
+  }
+thisARG;
+
+typedef struct
+  {
+    int precision;
+    long low;
+    long high;
+  }
+integerPARM;
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static void *Generic_This_Type( void * arg )
+|
+|   Description   :  Allocate structure for integer type argument.
+|
+|   Return Values :  Pointer to argument structure or NULL on error
++--------------------------------------------------------------------------*/
+static void *
+Generic_This_Type(void *arg)
+{
+  thisARG *argp = (thisARG *) 0;
+  thisARG *param = (thisARG *) arg;
+
+  if (param)
+    {
+      argp = typeMalloc(thisARG, 1);
+
+      if (argp)
+	{
+	  T((T_CREATE("thisARG %p"), (void *)argp));
+	  *argp = *param;
+	}
+    }
+  return (void *)argp;
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static void *Make_This_Type( va_list * ap )
+|
+|   Description   :  Allocate structure for integer type argument.
+|
+|   Return Values :  Pointer to argument structure or NULL on error
++--------------------------------------------------------------------------*/
+static void *
+Make_This_Type(va_list *ap)
+{
+  thisARG arg;
+
+  arg.precision = va_arg(*ap, int);
+  arg.low = va_arg(*ap, long);
+  arg.high = va_arg(*ap, long);
+
+  return Generic_This_Type((void *)&arg);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static void *Copy_This_Type(const void * argp)
+|
+|   Description   :  Copy structure for integer type argument.
+|
+|   Return Values :  Pointer to argument structure or NULL on error.
++--------------------------------------------------------------------------*/
+static void *
+Copy_This_Type(const void *argp)
+{
+  const thisARG *ap = (const thisARG *)argp;
+  thisARG *result = (thisARG *) 0;
+
+  if (argp)
+    {
+      result = typeMalloc(thisARG, 1);
+      if (result)
+	{
+	  T((T_CREATE("thisARG %p"), (void *)result));
+	  *result = *ap;
+	}
+    }
+  return (void *)result;
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static void Free_This_Type(void * argp)
+|
+|   Description   :  Free structure for integer type argument.
+|
+|   Return Values :  -
++--------------------------------------------------------------------------*/
+static void
+Free_This_Type(void *argp)
+{
+  if (argp)
+    free(argp);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static bool Check_This_Field(
+|                                                 FIELD * field,
+|                                                 const void * argp)
+|
+|   Description   :  Validate buffer content to be a valid integer value
+|
+|   Return Values :  TRUE  - field is valid
+|                    FALSE - field is invalid
++--------------------------------------------------------------------------*/
+static bool
+Check_This_Field(FIELD *field, const void *argp)
+{
+  const thisARG *argi = (const thisARG *)argp;
+  long low = argi->low;
+  long high = argi->high;
+  int prec = argi->precision;
+  unsigned char *bp = (unsigned char *)field_buffer(field, 0);
+  char *s = (char *)bp;
+  long val;
+  char buf[100];
+  bool result = FALSE;
+
+  while (*bp && *bp == ' ')
+    bp++;
+  if (*bp)
+    {
+      if (*bp == '-')
+	bp++;
+#if USE_WIDEC_SUPPORT
+      if (*bp)
+	{
+	  bool blank = FALSE;
+	  int len;
+	  int n;
+	  wchar_t *list = _nc_Widen_String((char *)bp, &len);
+
+	  if (list != 0)
+	    {
+	      result = TRUE;
+	      for (n = 0; n < len; ++n)
+		{
+		  if (blank)
+		    {
+		      if (list[n] != ' ')
+			{
+			  result = FALSE;
+			  break;
+			}
+		    }
+		  else if (list[n] == ' ')
+		    {
+		      blank = TRUE;
+		    }
+		  else if (!isDigit(list[n]))
+		    {
+		      result = FALSE;
+		      break;
+		    }
+		}
+	      free(list);
+	    }
+	}
+#else
+      while (*bp)
+	{
+	  if (!isdigit(UChar(*bp)))
+	    break;
+	  bp++;
+	}
+      while (*bp && *bp == ' ')
+	bp++;
+      result = (*bp == '\0');
+#endif
+      if (result)
+	{
+	  val = atol(s);
+	  if (low < high)
+	    {
+	      if (val < low || val > high)
+		result = FALSE;
+	    }
+	  if (result)
+	    {
+	      sprintf(buf, "%.*ld", (prec > 0 ? prec : 0), val);
+	      set_field_buffer(field, 0, buf);
+	    }
+	}
+    }
+  return (result);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static bool Check_This_Character(
+|                                      int c,
+|                                      const void * argp)
+|
+|   Description   :  Check a character for the integer type.
+|
+|   Return Values :  TRUE  - character is valid
+|                    FALSE - character is invalid
++--------------------------------------------------------------------------*/
+static bool
+Check_This_Character(int c, const void *argp GCC_UNUSED)
+{
+  return ((isDigit(UChar(c)) || (c == '-')) ? TRUE : FALSE);
+}
+
+static FIELDTYPE typeTHIS =
+{
+  _HAS_ARGS | _RESIDENT,
+  1,				/* this is mutable, so we can't be const */
+  (FIELDTYPE *)0,
+  (FIELDTYPE *)0,
+  Make_This_Type,
+  Copy_This_Type,
+  Free_This_Type,
+  INIT_FT_FUNC(Check_This_Field),
+  INIT_FT_FUNC(Check_This_Character),
+  INIT_FT_FUNC(NULL),
+  INIT_FT_FUNC(NULL),
+#if NCURSES_INTEROP_FUNCS
+  Generic_This_Type
+#endif
+};
+
+NCURSES_EXPORT_VAR(FIELDTYPE*) TYPE_INTEGER = &typeTHIS;
+
+#if NCURSES_INTEROP_FUNCS
+/* The next routines are to simplify the use of ncurses from
+   programming languages with restictions on interop with C level
+   constructs (e.g. variable access or va_list + ellipsis constructs)
+*/
+NCURSES_EXPORT(FIELDTYPE *)
+_nc_TYPE_INTEGER(void)
+{
+  return TYPE_INTEGER;
+}
+#endif
+
+/* fty_int.c ends here */
diff --git a/apps/lib/curses/pdcurses/form/fty_ipv4.c b/apps/lib/curses/pdcurses/form/fty_ipv4.c
new file mode 100644
index 0000000..3def259
--- /dev/null
+++ b/apps/lib/curses/pdcurses/form/fty_ipv4.c
@@ -0,0 +1,120 @@
+/****************************************************************************
+ * Copyright (c) 1998-2006,2009 Free Software Foundation, Inc.              *
+ *                                                                          *
+ * Permission is hereby granted, free of charge, to any person obtaining a  *
+ * copy of this software and associated documentation files (the            *
+ * "Software"), to deal in the Software without restriction, including      *
+ * without limitation the rights to use, copy, modify, merge, publish,      *
+ * distribute, distribute with modifications, sublicense, and/or sell       *
+ * copies of the Software, and to permit persons to whom the Software is    *
+ * furnished to do so, subject to the following conditions:                 *
+ *                                                                          *
+ * The above copyright notice and this permission notice shall be included  *
+ * in all copies or substantial portions of the Software.                   *
+ *                                                                          *
+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS  *
+ * OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF               *
+ * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.   *
+ * IN NO EVENT SHALL THE ABOVE COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,   *
+ * DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR    *
+ * OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR    *
+ * THE USE OR OTHER DEALINGS IN THE SOFTWARE.                               *
+ *                                                                          *
+ * Except as contained in this notice, the name(s) of the above copyright   *
+ * holders shall not be used in advertising or otherwise to promote the     *
+ * sale, use or other dealings in this Software without prior written       *
+ * authorization.                                                           *
+ ****************************************************************************/
+
+/***************************************************************************
+*                                                                          *
+*  Author : Per Foreby, perf@efd.lth.se                                    *
+*                                                                          *
+***************************************************************************/
+
+#include "form.priv.h"
+
+MODULE_ID("$Id: fty_ipv4.c,v 1.10 2009/11/07 20:17:58 tom Exp $")
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static bool Check_IPV4_Field(
+|                                      FIELD * field,
+|                                      const void * argp)
+|
+|   Description   :  Validate buffer content to be a valid IP number (Ver. 4)
+|
+|   Return Values :  TRUE  - field is valid
+|                    FALSE - field is invalid
++--------------------------------------------------------------------------*/
+static bool
+Check_IPV4_Field(FIELD *field, const void *argp GCC_UNUSED)
+{
+  char *bp = field_buffer(field, 0);
+  int num = 0, len;
+  unsigned int d1, d2, d3, d4;
+
+  if (isdigit(UChar(*bp)))	/* Must start with digit */
+    {
+      num = sscanf(bp, "%u.%u.%u.%u%n", &d1, &d2, &d3, &d4, &len);
+      if (num == 4)
+	{
+	  bp += len;		/* Make bp point to what sscanf() left */
+	  while (isspace(UChar(*bp)))
+	    bp++;		/* Allow trailing whitespace */
+	}
+    }
+  return ((num != 4 || *bp || d1 > 255 || d2 > 255
+	   || d3 > 255 || d4 > 255) ? FALSE : TRUE);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static bool Check_IPV4_Character(
+|                                      int c,
+|                                      const void *argp )
+|
+|   Description   :  Check a character for unsigned type or period.
+|
+|   Return Values :  TRUE  - character is valid
+|                    FALSE - character is invalid
++--------------------------------------------------------------------------*/
+static bool
+Check_IPV4_Character(int c, const void *argp GCC_UNUSED)
+{
+  return ((isdigit(UChar(c)) || (c == '.')) ? TRUE : FALSE);
+}
+
+static FIELDTYPE typeIPV4 =
+{
+  _RESIDENT,
+  1,				/* this is mutable, so we can't be const */
+  (FIELDTYPE *)0,
+  (FIELDTYPE *)0,
+  NULL,
+  NULL,
+  NULL,
+  INIT_FT_FUNC(Check_IPV4_Field),
+  INIT_FT_FUNC(Check_IPV4_Character),
+  INIT_FT_FUNC(NULL),
+  INIT_FT_FUNC(NULL),
+#if NCURSES_INTEROP_FUNCS
+  NULL
+#endif
+};
+
+NCURSES_EXPORT_VAR(FIELDTYPE*) TYPE_IPV4 = &typeIPV4;
+
+#if NCURSES_INTEROP_FUNCS
+/* The next routines are to simplify the use of ncurses from
+   programming languages with restictions on interop with C level
+   constructs (e.g. variable access or va_list + ellipsis constructs)
+*/
+NCURSES_EXPORT(FIELDTYPE *)
+_nc_TYPE_IPV4(void)
+{
+  return TYPE_IPV4;
+}
+#endif
+
+/* fty_ipv4.c ends here */
diff --git a/apps/lib/curses/pdcurses/form/fty_num.c b/apps/lib/curses/pdcurses/form/fty_num.c
new file mode 100644
index 0000000..4bd7132
--- /dev/null
+++ b/apps/lib/curses/pdcurses/form/fty_num.c
@@ -0,0 +1,339 @@
+/****************************************************************************
+ * Copyright (c) 1998-2009,2010 Free Software Foundation, Inc.              *
+ *                                                                          *
+ * Permission is hereby granted, free of charge, to any person obtaining a  *
+ * copy of this software and associated documentation files (the            *
+ * "Software"), to deal in the Software without restriction, including      *
+ * without limitation the rights to use, copy, modify, merge, publish,      *
+ * distribute, distribute with modifications, sublicense, and/or sell       *
+ * copies of the Software, and to permit persons to whom the Software is    *
+ * furnished to do so, subject to the following conditions:                 *
+ *                                                                          *
+ * The above copyright notice and this permission notice shall be included  *
+ * in all copies or substantial portions of the Software.                   *
+ *                                                                          *
+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS  *
+ * OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF               *
+ * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.   *
+ * IN NO EVENT SHALL THE ABOVE COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,   *
+ * DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR    *
+ * OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR    *
+ * THE USE OR OTHER DEALINGS IN THE SOFTWARE.                               *
+ *                                                                          *
+ * Except as contained in this notice, the name(s) of the above copyright   *
+ * holders shall not be used in advertising or otherwise to promote the     *
+ * sale, use or other dealings in this Software without prior written       *
+ * authorization.                                                           *
+ ****************************************************************************/
+
+/***************************************************************************
+*                                                                          *
+*  Author : Juergen Pfeifer                                                *
+*                                                                          *
+***************************************************************************/
+
+#include "form.priv.h"
+
+MODULE_ID("$Id: fty_num.c,v 1.28 2010/01/23 21:14:36 tom Exp $")
+
+#if HAVE_LOCALE_H
+#include <locale.h>
+#endif
+
+#if HAVE_LOCALE_H
+#define isDecimalPoint(c) ((c) == ((L && L->decimal_point) ? *(L->decimal_point) : '.'))
+#else
+#define isDecimalPoint(c) ((c) == '.')
+#endif
+
+#if USE_WIDEC_SUPPORT
+#define isDigit(c) (iswdigit((wint_t)(c)) || isdigit(UChar(c)))
+#else
+#define isDigit(c) isdigit(UChar(c))
+#endif
+
+#define thisARG numericARG
+
+typedef struct
+  {
+    int precision;
+    double low;
+    double high;
+    struct lconv *L;
+  }
+thisARG;
+
+typedef struct
+  {
+    int precision;
+    double low;
+    double high;
+  }
+thisPARM;
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static void *Generic_This_Type(void * arg)
+|
+|   Description   :  Allocate structure for numeric type argument.
+|
+|   Return Values :  Pointer to argument structure or NULL on error
++--------------------------------------------------------------------------*/
+static void *
+Generic_This_Type(void *arg)
+{
+  thisARG *argn = (thisARG *) 0;
+  thisPARM *args = (thisPARM *) arg;
+
+  if (args)
+    {
+      argn = typeMalloc(thisARG, 1);
+
+      if (argn)
+	{
+	  T((T_CREATE("thisARG %p"), (void *)argn));
+	  argn->precision = args->precision;
+	  argn->low = args->low;
+	  argn->high = args->high;
+
+#if HAVE_LOCALE_H
+	  argn->L = localeconv();
+#else
+	  argn->L = NULL;
+#endif
+	}
+    }
+  return (void *)argn;
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static void *Make_This_Type(va_list * ap)
+|
+|   Description   :  Allocate structure for numeric type argument.
+|
+|   Return Values :  Pointer to argument structure or NULL on error
++--------------------------------------------------------------------------*/
+static void *
+Make_This_Type(va_list *ap)
+{
+  thisPARM arg;
+
+  arg.precision = va_arg(*ap, int);
+  arg.low = va_arg(*ap, double);
+  arg.high = va_arg(*ap, double);
+
+  return Generic_This_Type((void *)&arg);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static void *Copy_This_Type(const void * argp)
+|
+|   Description   :  Copy structure for numeric type argument.
+|
+|   Return Values :  Pointer to argument structure or NULL on error.
++--------------------------------------------------------------------------*/
+static void *
+Copy_This_Type(const void *argp)
+{
+  const thisARG *ap = (const thisARG *)argp;
+  thisARG *result = (thisARG *) 0;
+
+  if (argp)
+    {
+      result = typeMalloc(thisARG, 1);
+      if (result)
+	{
+	  T((T_CREATE("thisARG %p"), (void *)result));
+	  *result = *ap;
+	}
+    }
+  return (void *)result;
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static void Free_This_Type(void * argp)
+|
+|   Description   :  Free structure for numeric type argument.
+|
+|   Return Values :  -
++--------------------------------------------------------------------------*/
+static void
+Free_This_Type(void *argp)
+{
+  if (argp)
+    free(argp);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static bool Check_This_Field(FIELD * field,
+|                                                 const void * argp)
+|
+|   Description   :  Validate buffer content to be a valid numeric value
+|
+|   Return Values :  TRUE  - field is valid
+|                    FALSE - field is invalid
++--------------------------------------------------------------------------*/
+static bool
+Check_This_Field(FIELD *field, const void *argp)
+{
+  const thisARG *argn = (const thisARG *)argp;
+  double low = argn->low;
+  double high = argn->high;
+  int prec = argn->precision;
+  unsigned char *bp = (unsigned char *)field_buffer(field, 0);
+  char *s = (char *)bp;
+  double val = 0.0;
+  struct lconv *L = argn->L;
+  char buf[64];
+  bool result = FALSE;
+
+  while (*bp && *bp == ' ')
+    bp++;
+  if (*bp)
+    {
+      if (*bp == '-' || *bp == '+')
+	bp++;
+#if USE_WIDEC_SUPPORT
+      if (*bp)
+	{
+	  bool blank = FALSE;
+	  int state = 0;
+	  int len;
+	  int n;
+	  wchar_t *list = _nc_Widen_String((char *)bp, &len);
+
+	  if (list != 0)
+	    {
+	      result = TRUE;
+	      for (n = 0; n < len; ++n)
+		{
+		  if (blank)
+		    {
+		      if (list[n] != ' ')
+			{
+			  result = FALSE;
+			  break;
+			}
+		    }
+		  else if (list[n] == ' ')
+		    {
+		      blank = TRUE;
+		    }
+		  else if (isDecimalPoint(list[n]))
+		    {
+		      if (++state > 1)
+			{
+			  result = FALSE;
+			  break;
+			}
+		    }
+		  else if (!isDigit(list[n]))
+		    {
+		      result = FALSE;
+		      break;
+		    }
+		}
+	      free(list);
+	    }
+	}
+#else
+      while (*bp)
+	{
+	  if (!isdigit(UChar(*bp)))
+	    break;
+	  bp++;
+	}
+      if (isDecimalPoint(*bp))
+	{
+	  bp++;
+	  while (*bp)
+	    {
+	      if (!isdigit(UChar(*bp)))
+		break;
+	      bp++;
+	    }
+	}
+      while (*bp && *bp == ' ')
+	bp++;
+      result = (*bp == '\0');
+#endif
+      if (result)
+	{
+	  val = atof(s);
+	  if (low < high)
+	    {
+	      if (val < low || val > high)
+		result = FALSE;
+	    }
+	  if (result)
+	    {
+	      sprintf(buf, "%.*f", (prec > 0 ? prec : 0), val);
+	      set_field_buffer(field, 0, buf);
+	    }
+	}
+    }
+  return (result);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static bool Check_This_Character(
+|                                      int c,
+|                                      const void * argp)
+|
+|   Description   :  Check a character for the numeric type.
+|
+|   Return Values :  TRUE  - character is valid
+|                    FALSE - character is invalid
++--------------------------------------------------------------------------*/
+static bool
+Check_This_Character(int c, const void *argp)
+{
+  const thisARG *argn = (const thisARG *)argp;
+  struct lconv *L = argn->L;
+
+  return ((isDigit(c) ||
+	   c == '+' ||
+	   c == '-' ||
+	   isDecimalPoint(c))
+	  ? TRUE
+	  : FALSE);
+}
+
+static FIELDTYPE typeTHIS =
+{
+  _HAS_ARGS | _RESIDENT,
+  1,				/* this is mutable, so we can't be const */
+  (FIELDTYPE *)0,
+  (FIELDTYPE *)0,
+  Make_This_Type,
+  Copy_This_Type,
+  Free_This_Type,
+  INIT_FT_FUNC(Check_This_Field),
+  INIT_FT_FUNC(Check_This_Character),
+  INIT_FT_FUNC(NULL),
+  INIT_FT_FUNC(NULL),
+#if NCURSES_INTEROP_FUNCS
+  Generic_This_Type
+#endif
+};
+
+NCURSES_EXPORT_VAR(FIELDTYPE*) TYPE_NUMERIC = &typeTHIS;
+
+#if NCURSES_INTEROP_FUNCS
+/* The next routines are to simplify the use of ncurses from
+   programming languages with restictions on interop with C level
+   constructs (e.g. variable access or va_list + ellipsis constructs)
+*/
+NCURSES_EXPORT(FIELDTYPE *)
+_nc_TYPE_NUMERIC(void)
+{
+  return TYPE_NUMERIC;
+}
+#endif
+
+/* fty_num.c ends here */
diff --git a/apps/lib/curses/pdcurses/form/fty_regex.c b/apps/lib/curses/pdcurses/form/fty_regex.c
new file mode 100644
index 0000000..2c0a4ca
--- /dev/null
+++ b/apps/lib/curses/pdcurses/form/fty_regex.c
@@ -0,0 +1,350 @@
+/****************************************************************************
+ * Copyright (c) 1998-2009,2010 Free Software Foundation, Inc.              *
+ *                                                                          *
+ * Permission is hereby granted, free of charge, to any person obtaining a  *
+ * copy of this software and associated documentation files (the            *
+ * "Software"), to deal in the Software without restriction, including      *
+ * without limitation the rights to use, copy, modify, merge, publish,      *
+ * distribute, distribute with modifications, sublicense, and/or sell       *
+ * copies of the Software, and to permit persons to whom the Software is    *
+ * furnished to do so, subject to the following conditions:                 *
+ *                                                                          *
+ * The above copyright notice and this permission notice shall be included  *
+ * in all copies or substantial portions of the Software.                   *
+ *                                                                          *
+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS  *
+ * OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF               *
+ * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.   *
+ * IN NO EVENT SHALL THE ABOVE COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,   *
+ * DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR    *
+ * OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR    *
+ * THE USE OR OTHER DEALINGS IN THE SOFTWARE.                               *
+ *                                                                          *
+ * Except as contained in this notice, the name(s) of the above copyright   *
+ * holders shall not be used in advertising or otherwise to promote the     *
+ * sale, use or other dealings in this Software without prior written       *
+ * authorization.                                                           *
+ ****************************************************************************/
+
+/***************************************************************************
+*                                                                          *
+*  Author : Juergen Pfeifer                                                *
+*                                                                          *
+***************************************************************************/
+
+#include "form.priv.h"
+
+MODULE_ID("$Id: fty_regex.c,v 1.24 2010/01/23 21:14:37 tom Exp $")
+
+#if HAVE_REGEX_H_FUNCS		/* We prefer POSIX regex */
+#include <regex.h>
+
+typedef struct
+  {
+    regex_t *pRegExp;
+    unsigned long *refCount;
+  }
+RegExp_Arg;
+
+#elif HAVE_REGEXP_H_FUNCS | HAVE_REGEXPR_H_FUNCS
+#undef RETURN
+static int reg_errno;
+
+static char *
+RegEx_Init(char *instring)
+{
+  reg_errno = 0;
+  return instring;
+}
+
+static char *
+RegEx_Error(int code)
+{
+  reg_errno = code;
+  return 0;
+}
+
+#define INIT 		register char *sp = RegEx_Init(instring);
+#define GETC()		(*sp++)
+#define PEEKC()		(*sp)
+#define UNGETC(c)	(--sp)
+#define RETURN(c)	return(c)
+#define ERROR(c)	return RegEx_Error(c)
+
+#if HAVE_REGEXP_H_FUNCS
+#include <regexp.h>
+#else
+#include <regexpr.h>
+#endif
+
+typedef struct
+{
+  char *compiled_expression;
+  unsigned long *refCount;
+}
+RegExp_Arg;
+
+/* Maximum Length we allow for a compiled regular expression */
+#define MAX_RX_LEN   (2048)
+#define RX_INCREMENT (256)
+
+#endif
+
+#if HAVE_REGEX_H_FUNCS | HAVE_REGEXP_H_FUNCS | HAVE_REGEXPR_H_FUNCS
+# define MAYBE_UNUSED
+#else
+# define MAYBE_UNUSED GCC_UNUSED
+#endif
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static void *Generic_RegularExpression_Type(void * arg)
+|
+|   Description   :  Allocate structure for regex type argument.
+|
+|   Return Values :  Pointer to argument structure or NULL on error
++--------------------------------------------------------------------------*/
+static void *
+Generic_RegularExpression_Type(void *arg MAYBE_UNUSED)
+{
+#if HAVE_REGEX_H_FUNCS
+  char *rx = (char *)arg;
+  RegExp_Arg *preg = (RegExp_Arg *)0;
+
+  if (rx)
+    {
+      preg = typeMalloc(RegExp_Arg, 1);
+
+      if (preg)
+	{
+	  T((T_CREATE("RegExp_Arg %p"), (void *)preg));
+	  if (((preg->pRegExp = typeMalloc(regex_t, 1)) != 0)
+	      && !regcomp(preg->pRegExp, rx,
+			  (REG_EXTENDED | REG_NOSUB | REG_NEWLINE)))
+	    {
+	      T((T_CREATE("regex_t %p"), (void *)preg->pRegExp));
+	      preg->refCount = typeMalloc(unsigned long, 1);
+
+	      *(preg->refCount) = 1;
+	    }
+	  else
+	    {
+	      if (preg->pRegExp)
+		free(preg->pRegExp);
+	      free(preg);
+	      preg = (RegExp_Arg *)0;
+	    }
+	}
+    }
+  return ((void *)preg);
+#elif HAVE_REGEXP_H_FUNCS | HAVE_REGEXPR_H_FUNCS
+  char *rx = (char *)arg;
+  RegExp_Arg *pArg = (RegExp_Arg *)0;
+
+  if (rx)
+    {
+      pArg = typeMalloc(RegExp_Arg, 1);
+
+      if (pArg)
+	{
+	  int blen = RX_INCREMENT;
+
+	  T((T_CREATE("RegExp_Arg %p"), pArg));
+	  pArg->compiled_expression = NULL;
+	  pArg->refCount = typeMalloc(unsigned long, 1);
+
+	  *(pArg->refCount) = 1;
+
+	  do
+	    {
+	      char *buf = typeMalloc(char, blen);
+
+	      if (buf)
+		{
+#if HAVE_REGEXP_H_FUNCS
+		  char *last_pos = compile(rx, buf, &buf[blen], '\0');
+
+#else /* HAVE_REGEXPR_H_FUNCS */
+		  char *last_pos = compile(rx, buf, &buf[blen]);
+#endif
+		  if (reg_errno)
+		    {
+		      free(buf);
+		      if (reg_errno == 50)
+			blen += RX_INCREMENT;
+		      else
+			{
+			  free(pArg);
+			  pArg = NULL;
+			  break;
+			}
+		    }
+		  else
+		    {
+		      pArg->compiled_expression = buf;
+		      break;
+		    }
+		}
+	    }
+	  while (blen <= MAX_RX_LEN);
+	}
+      if (pArg && !pArg->compiled_expression)
+	{
+	  free(pArg);
+	  pArg = NULL;
+	}
+    }
+  return (void *)pArg;
+#else
+  return 0;
+#endif
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static void *Make_RegularExpression_Type(va_list * ap)
+|
+|   Description   :  Allocate structure for regex type argument.
+|
+|   Return Values :  Pointer to argument structure or NULL on error
++--------------------------------------------------------------------------*/
+static void *
+Make_RegularExpression_Type(va_list *ap)
+{
+  char *rx = va_arg(*ap, char *);
+
+  return Generic_RegularExpression_Type((void *)rx);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static void *Copy_RegularExpression_Type(
+|                                      const void * argp)
+|
+|   Description   :  Copy structure for regex type argument.
+|
+|   Return Values :  Pointer to argument structure or NULL on error.
++--------------------------------------------------------------------------*/
+static void *
+Copy_RegularExpression_Type(const void *argp MAYBE_UNUSED)
+{
+#if (HAVE_REGEX_H_FUNCS | HAVE_REGEXP_H_FUNCS | HAVE_REGEXPR_H_FUNCS)
+  const RegExp_Arg *ap = (const RegExp_Arg *)argp;
+  const RegExp_Arg *result = (const RegExp_Arg *)0;
+
+  if (ap)
+    {
+      *(ap->refCount) += 1;
+      result = ap;
+    }
+  return (void *)result;
+#else
+  return 0;
+#endif
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static void Free_RegularExpression_Type(void * argp)
+|
+|   Description   :  Free structure for regex type argument.
+|
+|   Return Values :  -
++--------------------------------------------------------------------------*/
+static void
+Free_RegularExpression_Type(void *argp MAYBE_UNUSED)
+{
+#if HAVE_REGEX_H_FUNCS | HAVE_REGEXP_H_FUNCS | HAVE_REGEXPR_H_FUNCS
+  RegExp_Arg *ap = (RegExp_Arg *)argp;
+
+  if (ap)
+    {
+      if (--(*(ap->refCount)) == 0)
+	{
+#if HAVE_REGEX_H_FUNCS
+	  if (ap->pRegExp)
+	    {
+	      free(ap->refCount);
+	      regfree(ap->pRegExp);
+	    }
+#elif HAVE_REGEXP_H_FUNCS | HAVE_REGEXPR_H_FUNCS
+	  if (ap->compiled_expression)
+	    {
+	      free(ap->refCount);
+	      free(ap->compiled_expression);
+	    }
+#endif
+	  free(ap);
+	}
+    }
+#endif
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnform
+|   Function      :  static bool Check_RegularExpression_Field(
+|                                      FIELD * field,
+|                                      const void  * argp)
+|
+|   Description   :  Validate buffer content to be a valid regular expression
+|
+|   Return Values :  TRUE  - field is valid
+|                    FALSE - field is invalid
++--------------------------------------------------------------------------*/
+static bool
+Check_RegularExpression_Field(FIELD *field MAYBE_UNUSED,
+			      const void *argp MAYBE_UNUSED)
+{
+  bool match = FALSE;
+
+#if HAVE_REGEX_H_FUNCS
+  const RegExp_Arg *ap = (const RegExp_Arg *)argp;
+
+  if (ap && ap->pRegExp)
+    match = (regexec(ap->pRegExp, field_buffer(field, 0), 0, NULL, 0)
+	     ? FALSE
+	     : TRUE);
+#elif HAVE_REGEXP_H_FUNCS | HAVE_REGEXPR_H_FUNCS
+  RegExp_Arg *ap = (RegExp_Arg *)argp;
+
+  if (ap && ap->compiled_expression)
+    match = (step(field_buffer(field, 0), ap->compiled_expression)
+	     ? TRUE
+	     : FALSE);
+#endif
+  return match;
+}
+
+static FIELDTYPE typeREGEXP =
+{
+  _HAS_ARGS | _RESIDENT,
+  1,				/* this is mutable, so we can't be const */
+  (FIELDTYPE *)0,
+  (FIELDTYPE *)0,
+  Make_RegularExpression_Type,
+  Copy_RegularExpression_Type,
+  Free_RegularExpression_Type,
+  INIT_FT_FUNC(Check_RegularExpression_Field),
+  INIT_FT_FUNC(NULL),
+  INIT_FT_FUNC(NULL),
+  INIT_FT_FUNC(NULL),
+#if NCURSES_INTEROP_FUNCS
+  Generic_RegularExpression_Type
+#endif
+};
+
+NCURSES_EXPORT_VAR(FIELDTYPE*) TYPE_REGEXP = &typeREGEXP;
+
+#if NCURSES_INTEROP_FUNCS
+/* The next routines are to simplify the use of ncurses from
+   programming languages with restictions on interop with C level
+   constructs (e.g. variable access or va_list + ellipsis constructs)
+*/
+NCURSES_EXPORT(FIELDTYPE *)
+_nc_TYPE_REGEXP(void)
+{
+  return TYPE_REGEXP;
+}
+#endif
+
+/* fty_regex.c ends here */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
