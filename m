Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo4.mail-out.ovh.net ([178.33.104.253]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UDAjp-0000Z0-IT
 for barebox@lists.infradead.org; Wed, 06 Mar 2013 09:35:55 +0000
Received: from mail413.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id B7583104E686
 for <barebox@lists.infradead.org>; Wed,  6 Mar 2013 10:45:19 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed,  6 Mar 2013 10:29:44 +0100
Message-Id: <1362562189-17783-15-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 15/20] app: pdcurses: add libmenu
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 apps/lib/curses/Kconfig                        |    4 +
 apps/lib/curses/pdcurses/Makefile.include      |    1 +
 apps/lib/curses/pdcurses/include/nc_alloc.h    |    4 +
 apps/lib/curses/pdcurses/include/ncurses_cfg.h |   40 ++
 apps/lib/curses/pdcurses/menu/Makefile         |   26 ++
 apps/lib/curses/pdcurses/menu/READ.ME          |   42 ++
 apps/lib/curses/pdcurses/menu/eti.h            |   54 +++
 apps/lib/curses/pdcurses/menu/m_attribs.c      |  144 ++++++
 apps/lib/curses/pdcurses/menu/m_cursor.c       |  112 +++++
 apps/lib/curses/pdcurses/menu/m_driver.c       |  556 ++++++++++++++++++++++
 apps/lib/curses/pdcurses/menu/m_format.c       |  131 ++++++
 apps/lib/curses/pdcurses/menu/m_global.c       |  598 ++++++++++++++++++++++++
 apps/lib/curses/pdcurses/menu/m_hook.c         |  151 ++++++
 apps/lib/curses/pdcurses/menu/m_item_cur.c     |  113 +++++
 apps/lib/curses/pdcurses/menu/m_item_nam.c     |   72 +++
 apps/lib/curses/pdcurses/menu/m_item_new.c     |  275 +++++++++++
 apps/lib/curses/pdcurses/menu/m_item_opt.c     |  159 +++++++
 apps/lib/curses/pdcurses/menu/m_item_top.c     |  107 +++++
 apps/lib/curses/pdcurses/menu/m_item_use.c     |   76 +++
 apps/lib/curses/pdcurses/menu/m_item_val.c     |  104 +++++
 apps/lib/curses/pdcurses/menu/m_item_vis.c     |   68 +++
 apps/lib/curses/pdcurses/menu/m_items.c        |  110 +++++
 apps/lib/curses/pdcurses/menu/m_new.c          |  142 ++++++
 apps/lib/curses/pdcurses/menu/m_opts.c         |  183 ++++++++
 apps/lib/curses/pdcurses/menu/m_pad.c          |   95 ++++
 apps/lib/curses/pdcurses/menu/m_pattern.c      |  124 +++++
 apps/lib/curses/pdcurses/menu/m_post.c         |  377 +++++++++++++++
 apps/lib/curses/pdcurses/menu/m_req_name.c     |  125 +++++
 apps/lib/curses/pdcurses/menu/m_scale.c        |   76 +++
 apps/lib/curses/pdcurses/menu/m_spacing.c      |  113 +++++
 apps/lib/curses/pdcurses/menu/m_sub.c          |  100 ++++
 apps/lib/curses/pdcurses/menu/m_trace.c        |   77 +++
 apps/lib/curses/pdcurses/menu/m_userptr.c      |   76 +++
 apps/lib/curses/pdcurses/menu/m_win.c          |  100 ++++
 apps/lib/curses/pdcurses/menu/menu.h           |  261 +++++++++++
 apps/lib/curses/pdcurses/menu/menu.priv.h      |  157 +++++++
 apps/lib/curses/pdcurses/menu/mf_common.h      |   95 ++++
 37 files changed, 5048 insertions(+)
 create mode 100644 apps/lib/curses/pdcurses/include/nc_alloc.h
 create mode 100644 apps/lib/curses/pdcurses/include/ncurses_cfg.h
 create mode 100644 apps/lib/curses/pdcurses/menu/Makefile
 create mode 100644 apps/lib/curses/pdcurses/menu/READ.ME
 create mode 100644 apps/lib/curses/pdcurses/menu/eti.h
 create mode 100644 apps/lib/curses/pdcurses/menu/m_attribs.c
 create mode 100644 apps/lib/curses/pdcurses/menu/m_cursor.c
 create mode 100644 apps/lib/curses/pdcurses/menu/m_driver.c
 create mode 100644 apps/lib/curses/pdcurses/menu/m_format.c
 create mode 100644 apps/lib/curses/pdcurses/menu/m_global.c
 create mode 100644 apps/lib/curses/pdcurses/menu/m_hook.c
 create mode 100644 apps/lib/curses/pdcurses/menu/m_item_cur.c
 create mode 100644 apps/lib/curses/pdcurses/menu/m_item_nam.c
 create mode 100644 apps/lib/curses/pdcurses/menu/m_item_new.c
 create mode 100644 apps/lib/curses/pdcurses/menu/m_item_opt.c
 create mode 100644 apps/lib/curses/pdcurses/menu/m_item_top.c
 create mode 100644 apps/lib/curses/pdcurses/menu/m_item_use.c
 create mode 100644 apps/lib/curses/pdcurses/menu/m_item_val.c
 create mode 100644 apps/lib/curses/pdcurses/menu/m_item_vis.c
 create mode 100644 apps/lib/curses/pdcurses/menu/m_items.c
 create mode 100644 apps/lib/curses/pdcurses/menu/m_new.c
 create mode 100644 apps/lib/curses/pdcurses/menu/m_opts.c
 create mode 100644 apps/lib/curses/pdcurses/menu/m_pad.c
 create mode 100644 apps/lib/curses/pdcurses/menu/m_pattern.c
 create mode 100644 apps/lib/curses/pdcurses/menu/m_post.c
 create mode 100644 apps/lib/curses/pdcurses/menu/m_req_name.c
 create mode 100644 apps/lib/curses/pdcurses/menu/m_scale.c
 create mode 100644 apps/lib/curses/pdcurses/menu/m_spacing.c
 create mode 100644 apps/lib/curses/pdcurses/menu/m_sub.c
 create mode 100644 apps/lib/curses/pdcurses/menu/m_trace.c
 create mode 100644 apps/lib/curses/pdcurses/menu/m_userptr.c
 create mode 100644 apps/lib/curses/pdcurses/menu/m_win.c
 create mode 100644 apps/lib/curses/pdcurses/menu/menu.h
 create mode 100644 apps/lib/curses/pdcurses/menu/menu.priv.h
 create mode 100644 apps/lib/curses/pdcurses/menu/mf_common.h

diff --git a/apps/lib/curses/Kconfig b/apps/lib/curses/Kconfig
index 7852afb..5950385 100644
--- a/apps/lib/curses/Kconfig
+++ b/apps/lib/curses/Kconfig
@@ -18,4 +18,8 @@ config APP_LIB_PANEL
 	bool "panel"
 	depends on APP_LIB_PDCURSES
 
+config APP_LIB_MENU
+	bool "menu"
+	depends on APP_LIB_PDCURSES
+
 endif
diff --git a/apps/lib/curses/pdcurses/Makefile.include b/apps/lib/curses/pdcurses/Makefile.include
index 822f12f..7a0061e 100644
--- a/apps/lib/curses/pdcurses/Makefile.include
+++ b/apps/lib/curses/pdcurses/Makefile.include
@@ -1 +1,2 @@
 APP_CPPFLAGS-y += -I$(srctree)/apps/lib/curses/pdcurses/include/ -D_LP64=0
+APP_CPPFLAGS-$(CONFIG_APP_LIB_MENU) += -I$(srctree)/apps/lib/curses/pdcurses/menu
diff --git a/apps/lib/curses/pdcurses/include/nc_alloc.h b/apps/lib/curses/pdcurses/include/nc_alloc.h
new file mode 100644
index 0000000..95d41f9
--- /dev/null
+++ b/apps/lib/curses/pdcurses/include/nc_alloc.h
@@ -0,0 +1,4 @@
+#define typeMalloc(type,elts) (type *)malloc((elts)*sizeof(type))
+#define typeCalloc(type,elts) (type *)calloc((elts),sizeof(type))
+#define typeRealloc(type,elts,ptr) (type *)_nc_doalloc(ptr, (elts)*sizeof(type))
+
diff --git a/apps/lib/curses/pdcurses/include/ncurses_cfg.h b/apps/lib/curses/pdcurses/include/ncurses_cfg.h
new file mode 100644
index 0000000..c6184be
--- /dev/null
+++ b/apps/lib/curses/pdcurses/include/ncurses_cfg.h
@@ -0,0 +1,40 @@
+#define USE_RCS_IDS 0
+#define USE_WIDEC_SUPPORT 0
+#define NCURSES_SP_FUNCS 0
+#define DECL_ERRNO 0
+#define NCURSES_INTEROP_FUNCS 0
+
+#define NCURSES_API
+#define NCURSES_IMPEXP
+#define NCURSES_INLINE
+#define NCURSES_SP_DCLx
+#define NCURSES_SP_NAME(x) x
+#define NCURSES_EXPORT_VAR(x) x
+#define NCURSES_EXPORT(x) x
+
+#define SP_PARM SP
+#define CURRENT_SCREEN SP
+#define StdScreen(x) stdscr
+
+#define T(x)
+#define T_CALLED(x...)
+
+#define GCC_UNUSED __attribute__((unused))
+
+#define BLANK           (' '|A_NORMAL)
+#define ZEROS           ('\0'|A_NORMAL)
+#define ISBLANK	isblank
+
+#define ChCharOf(c)	((c) & (chtype)A_CHARTEXT)
+#define CharOf(c)	ChCharOf(c)
+
+#define WINDOW_ATTRS(x) ((x)->_attrs)
+#define IsValidScreen(x) 1
+
+#define returnCode return
+#define returnWin return
+#define returnCPtr return
+#define returnVoidPtr return
+#define returnPtr return
+#define returnAttr return
+#define returnBool return
diff --git a/apps/lib/curses/pdcurses/menu/Makefile b/apps/lib/curses/pdcurses/menu/Makefile
new file mode 100644
index 0000000..f45f385
--- /dev/null
+++ b/apps/lib/curses/pdcurses/menu/Makefile
@@ -0,0 +1,26 @@
+app-y += m_req_name.o
+app-y += m_item_nam.o
+app-y += m_pad.o
+app-y += m_cursor.o
+app-y += m_item_new.o
+app-y += m_attribs.o
+app-y += m_item_opt.o
+app-y += m_format.o
+app-y += m_post.o
+app-y += m_userptr.o
+app-y += m_item_cur.o
+app-y += m_driver.o
+app-y += m_sub.o
+app-y += m_win.o
+app-y += m_global.o
+app-y += m_item_vis.o
+app-y += m_new.o
+app-y += m_scale.o
+app-y += m_spacing.o
+app-y += m_opts.o
+app-y += m_pattern.o
+app-y += m_item_val.o
+app-y += m_hook.o
+app-y += m_item_use.o
+app-y += m_items.o
+app-y += m_item_top.o
diff --git a/apps/lib/curses/pdcurses/menu/READ.ME b/apps/lib/curses/pdcurses/menu/READ.ME
new file mode 100644
index 0000000..10ff5b0
--- /dev/null
+++ b/apps/lib/curses/pdcurses/menu/READ.ME
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
+-- $Id: READ.ME,v 1.9 2006/04/22 23:13:05 tom Exp $
+-------------------------------------------------------------------------------
+
+This is a clone of the menu library that is available with typical
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
diff --git a/apps/lib/curses/pdcurses/menu/eti.h b/apps/lib/curses/pdcurses/menu/eti.h
new file mode 100644
index 0000000..baa6190
--- /dev/null
+++ b/apps/lib/curses/pdcurses/menu/eti.h
@@ -0,0 +1,54 @@
+/****************************************************************************
+ * Copyright (c) 1998-2002,2003 Free Software Foundation, Inc.              *
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
+/* $Id: eti.h,v 1.8 2003/10/25 15:24:29 tom Exp $ */
+
+#ifndef NCURSES_ETI_H_incl
+#define NCURSES_ETI_H_incl 1
+
+#define	E_OK			(0)
+#define	E_SYSTEM_ERROR	 	(-1)
+#define	E_BAD_ARGUMENT	 	(-2)
+#define	E_POSTED	 	(-3)
+#define	E_CONNECTED	 	(-4)
+#define	E_BAD_STATE	 	(-5)
+#define	E_NO_ROOM	 	(-6)
+#define	E_NOT_POSTED		(-7)
+#define	E_UNKNOWN_COMMAND	(-8)
+#define	E_NO_MATCH		(-9)
+#define	E_NOT_SELECTABLE	(-10)
+#define	E_NOT_CONNECTED	        (-11)
+#define	E_REQUEST_DENIED	(-12)
+#define	E_INVALID_FIELD	        (-13)
+#define	E_CURRENT		(-14)
+
+#endif
diff --git a/apps/lib/curses/pdcurses/menu/m_attribs.c b/apps/lib/curses/pdcurses/menu/m_attribs.c
new file mode 100644
index 0000000..1ea5c7a
--- /dev/null
+++ b/apps/lib/curses/pdcurses/menu/m_attribs.c
@@ -0,0 +1,144 @@
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
+/***************************************************************************
+* Module m_attribs                                                         *
+* Control menus display attributes                                         *
+***************************************************************************/
+
+#include "menu.priv.h"
+
+MODULE_ID("$Id: m_attribs.c,v 1.16 2010/01/23 21:16:54 tom Exp $")
+
+/* Macro to redraw menu if it is posted and changed */
+#define Refresh_Menu(menu) \
+   if ( (menu) && ((menu)->status & _POSTED) )\
+   {\
+      _nc_Draw_Menu( menu );\
+      _nc_Show_Menu( menu );\
+   }
+
+/* "Template" macro to generate a function to set a menus attribute */
+#define GEN_MENU_ATTR_SET_FCT( name ) \
+NCURSES_IMPEXP int NCURSES_API set_menu_ ## name (MENU* menu, chtype attr) \
+{\
+  T((T_CALLED("set_menu_" #name "(%p,%s)"), menu, _traceattr(attr))); \
+   if (!(attr==A_NORMAL || (attr & A_ATTRIBUTES)==attr))\
+      RETURN(E_BAD_ARGUMENT);\
+   if (menu && ( menu -> name != attr))\
+     {\
+       (menu -> name) = attr;\
+       Refresh_Menu(menu);\
+     }\
+   Normalize_Menu( menu ) -> name = attr;\
+   RETURN(E_OK);\
+}
+
+/* "Template" macro to generate a function to get a menu's attribute */
+#define GEN_MENU_ATTR_GET_FCT( name ) \
+NCURSES_IMPEXP chtype NCURSES_API menu_ ## name (const MENU * menu)\
+{\
+   T((T_CALLED("menu_" #name "(%p)"), (const void *) menu));\
+   returnAttr(Normalize_Menu( menu ) -> name);\
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  int set_menu_fore(MENU *menu, chtype attr)
+|
+|   Description   :  Set the attribute for selectable items. In single-
+|                    valued menus this is used to highlight the current
+|                    item ((i.e. where the cursor is), in multi-valued
+|                    menus this is used to highlight the selected items.
+|
+|   Return Values :  E_OK              - success
+|                    E_BAD_ARGUMENT    - an invalid value has been passed
++--------------------------------------------------------------------------*/
+GEN_MENU_ATTR_SET_FCT(fore)
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  chtype menu_fore(const MENU* menu)
+|
+|   Description   :  Return the attribute used for selectable items that
+|                    are current (single-valued menu) or selected (multi-
+|                    valued menu).
+|
+|   Return Values :  Attribute value
++--------------------------------------------------------------------------*/
+GEN_MENU_ATTR_GET_FCT(fore)
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  int set_menu_back(MENU *menu, chtype attr)
+|
+|   Description   :  Set the attribute for selectable but not yet selected
+|                    items.
+|
+|   Return Values :  E_OK             - success
+|                    E_BAD_ARGUMENT   - an invalid value has been passed
++--------------------------------------------------------------------------*/
+GEN_MENU_ATTR_SET_FCT(back)
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  chtype menu_back(const MENU *menu)
+|
+|   Description   :  Return the attribute used for selectable but not yet
+|                    selected items.
+|
+|   Return Values :  Attribute value
++--------------------------------------------------------------------------*/
+GEN_MENU_ATTR_GET_FCT(back)
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  int set_menu_grey(MENU *menu, chtype attr)
+|
+|   Description   :  Set the attribute for unselectable items.
+|
+|   Return Values :  E_OK             - success
+|                    E_BAD_ARGUMENT   - an invalid value has been passed
++--------------------------------------------------------------------------*/
+GEN_MENU_ATTR_SET_FCT(grey)
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  chtype menu_grey(const MENU *menu)
+|
+|   Description   :  Return the attribute used for non-selectable items
+|
+|   Return Values :  Attribute value
++--------------------------------------------------------------------------*/
+GEN_MENU_ATTR_GET_FCT(grey)
+
+/* m_attribs.c ends here */
diff --git a/apps/lib/curses/pdcurses/menu/m_cursor.c b/apps/lib/curses/pdcurses/menu/m_cursor.c
new file mode 100644
index 0000000..9891de4
--- /dev/null
+++ b/apps/lib/curses/pdcurses/menu/m_cursor.c
@@ -0,0 +1,112 @@
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
+/***************************************************************************
+* Module m_cursor                                                          *
+* Correctly position a menu's cursor                                       *
+***************************************************************************/
+
+#include "menu.priv.h"
+
+MODULE_ID("$Id: m_cursor.c,v 1.22 2010/01/23 21:20:10 tom Exp $")
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  _nc_menu_cursor_pos
+|
+|   Description   :  Return position of logical cursor to current item
+|
+|   Return Values :  E_OK            - success
+|                    E_BAD_ARGUMENT  - invalid menu
+|                    E_NOT_POSTED    - Menu is not posted
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+_nc_menu_cursor_pos(const MENU * menu, const ITEM * item, int *pY, int *pX)
+{
+  if (!menu || !pX || !pY)
+    return (E_BAD_ARGUMENT);
+  else
+    {
+      if ((ITEM *) 0 == item)
+	item = menu->curitem;
+      assert(item != (ITEM *) 0);
+
+      if (!(menu->status & _POSTED))
+	return (E_NOT_POSTED);
+
+      *pX = item->x * (menu->spc_cols + menu->itemlen);
+      *pY = (item->y - menu->toprow) * menu->spc_rows;
+    }
+  return (E_OK);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  pos_menu_cursor
+|
+|   Description   :  Position logical cursor to current item in menu
+|
+|   Return Values :  E_OK            - success
+|                    E_BAD_ARGUMENT  - invalid menu
+|                    E_NOT_POSTED    - Menu is not posted
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+pos_menu_cursor(const MENU * menu)
+{
+  WINDOW *win, *sub;
+  int x = 0, y = 0;
+  int err = _nc_menu_cursor_pos(menu, (ITEM *) 0, &y, &x);
+
+  T((T_CALLED("pos_menu_cursor(%p)"), (const void *)menu));
+
+  if (E_OK == err)
+    {
+      win = Get_Menu_UserWin(menu);
+      sub = menu->usersub ? menu->usersub : win;
+      assert(win && sub);
+
+      if ((menu->opt & O_SHOWMATCH) && (menu->pindex > 0))
+	x += (menu->pindex + menu->marklen - 1);
+
+      wmove(sub, y, x);
+
+      if (win != sub)
+	{
+	  wcursyncup(sub);
+	  wsyncup(sub);
+	  untouchwin(sub);
+	}
+    }
+  RETURN(err);
+}
+
+/* m_cursor.c ends here */
diff --git a/apps/lib/curses/pdcurses/menu/m_driver.c b/apps/lib/curses/pdcurses/menu/m_driver.c
new file mode 100644
index 0000000..deeff47
--- /dev/null
+++ b/apps/lib/curses/pdcurses/menu/m_driver.c
@@ -0,0 +1,556 @@
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
+/***************************************************************************
+* Module m_driver                                                          *
+* Central dispatching routine                                              *
+***************************************************************************/
+
+#include "menu.priv.h"
+
+MODULE_ID("$Id: m_driver.c,v 1.29 2010/01/23 21:20:10 tom Exp $")
+
+/* Macros */
+
+/* Remove the last character from the match pattern buffer */
+#define Remove_Character_From_Pattern(menu) \
+  (menu)->pattern[--((menu)->pindex)] = '\0'
+
+/* Add a new character to the match pattern buffer */
+#define Add_Character_To_Pattern(menu,ch) \
+  { (menu)->pattern[((menu)->pindex)++] = (ch);\
+    (menu)->pattern[(menu)->pindex] = '\0'; }
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  static bool Is_Sub_String(
+|                           bool IgnoreCaseFlag,
+|                           const char *part,
+|                           const char *string)
+|
+|   Description   :  Checks whether or not part is a substring of string.
+|
+|   Return Values :  TRUE   - if it is a substring
+|                    FALSE  - if it is not a substring
++--------------------------------------------------------------------------*/
+static bool
+Is_Sub_String(
+	       bool IgnoreCaseFlag,
+	       const char *part,
+	       const char *string
+)
+{
+  assert(part && string);
+  if (IgnoreCaseFlag)
+    {
+      while (*string && *part)
+	{
+	  if (toupper(UChar(*string++)) != toupper(UChar(*part)))
+	    break;
+	  part++;
+	}
+    }
+  else
+    {
+      while (*string && *part)
+	if (*part != *string++)
+	  break;
+      part++;
+    }
+  return ((*part) ? FALSE : TRUE);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  int _nc_Match_Next_Character_In_Item_Name(
+|                           MENU *menu,
+|                           int  ch,
+|                           ITEM **item)
+|
+|   Description   :  This internal routine is called for a menu positioned
+|                    at an item with three different classes of characters:
+|                       - a printable character; the character is added to
+|                         the current pattern and the next item matching
+|                         this pattern is searched.
+|                       - NUL; the pattern stays as it is and the next item
+|                         matching the pattern is searched
+|                       - BS; the pattern stays as it is and the previous
+|                         item matching the pattern is searched
+|
+|                       The item parameter contains on call a pointer to
+|                       the item where the search starts. On return - if
+|                       a match was found - it contains a pointer to the
+|                       matching item.
+|
+|   Return Values :  E_OK        - an item matching the pattern was found
+|                    E_NO_MATCH  - nothing found
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+_nc_Match_Next_Character_In_Item_Name
+(MENU * menu, int ch, ITEM ** item)
+{
+  bool found = FALSE, passed = FALSE;
+  int idx, last;
+
+  T((T_CALLED("_nc_Match_Next_Character(%p,%d,%p)"),
+     (void *)menu, ch, (void *)item));
+
+  assert(menu && item && *item);
+  idx = (*item)->index;
+
+  if (ch && ch != BS)
+    {
+      /* if we become to long, we need no further checking : there can't be
+         a match ! */
+      if ((menu->pindex + 1) > menu->namelen)
+	RETURN(E_NO_MATCH);
+
+      Add_Character_To_Pattern(menu, ch);
+      /* we artificially position one item back, because in the do...while
+         loop we start with the next item. This means, that with a new
+         pattern search we always start the scan with the actual item. If
+         we do a NEXT_PATTERN oder PREV_PATTERN search, we start with the
+         one after or before the actual item. */
+      if (--idx < 0)
+	idx = menu->nitems - 1;
+    }
+
+  last = idx;			/* this closes the cycle */
+
+  do
+    {
+      if (ch == BS)
+	{			/* we have to go backward */
+	  if (--idx < 0)
+	    idx = menu->nitems - 1;
+	}
+      else
+	{			/* otherwise we always go forward */
+	  if (++idx >= menu->nitems)
+	    idx = 0;
+	}
+      if (Is_Sub_String((bool)((menu->opt & O_IGNORECASE) != 0),
+			menu->pattern,
+			menu->items[idx]->name.str)
+	)
+	found = TRUE;
+      else
+	passed = TRUE;
+    }
+  while (!found && (idx != last));
+
+  if (found)
+    {
+      if (!((idx == (*item)->index) && passed))
+	{
+	  *item = menu->items[idx];
+	  RETURN(E_OK);
+	}
+      /* This point is reached, if we fully cycled through the item list
+         and the only match we found is the starting item. With a NEXT_PATTERN
+         or PREV_PATTERN scan this means, that there was no additional match.
+         If we searched with an expanded new pattern, we should never reach
+         this point, because if the expanded pattern matches also the actual
+         item we will find it in the first attempt (passed==FALSE) and we
+         will never cycle through the whole item array.
+       */
+      assert(ch == 0 || ch == BS);
+    }
+  else
+    {
+      if (ch && ch != BS && menu->pindex > 0)
+	{
+	  /* if we had no match with a new pattern, we have to restore it */
+	  Remove_Character_From_Pattern(menu);
+	}
+    }
+  RETURN(E_NO_MATCH);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  int menu_driver(MENU* menu, int c)
+|
+|   Description   :  Central dispatcher for the menu. Translates the logical
+|                    request 'c' into a menu action.
+|
+|   Return Values :  E_OK            - success
+|                    E_BAD_ARGUMENT  - invalid menu pointer
+|                    E_BAD_STATE     - menu is in user hook routine
+|                    E_NOT_POSTED    - menu is not posted
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+menu_driver(MENU * menu, int c)
+{
+#define NAVIGATE(dir) \
+  if (!item->dir)\
+     result = E_REQUEST_DENIED;\
+  else\
+     item = item->dir
+
+  int result = E_OK;
+  ITEM *item;
+  int my_top_row, rdiff;
+
+  T((T_CALLED("menu_driver(%p,%d)"), (void *)menu, c));
+
+  if (!menu)
+    RETURN(E_BAD_ARGUMENT);
+
+  if (menu->status & _IN_DRIVER)
+    RETURN(E_BAD_STATE);
+  if (!(menu->status & _POSTED))
+    RETURN(E_NOT_POSTED);
+
+  item = menu->curitem;
+
+  my_top_row = menu->toprow;
+  assert(item);
+
+  if ((c > KEY_MAX) && (c <= MAX_MENU_COMMAND))
+    {
+      if (!((c == REQ_BACK_PATTERN)
+	    || (c == REQ_NEXT_MATCH) || (c == REQ_PREV_MATCH)))
+	{
+	  assert(menu->pattern);
+	  Reset_Pattern(menu);
+	}
+
+      switch (c)
+	{
+	case REQ_LEFT_ITEM:
+	    /*=================*/
+	  NAVIGATE(left);
+	  break;
+
+	case REQ_RIGHT_ITEM:
+	    /*==================*/
+	  NAVIGATE(right);
+	  break;
+
+	case REQ_UP_ITEM:
+	    /*===============*/
+	  NAVIGATE(up);
+	  break;
+
+	case REQ_DOWN_ITEM:
+	    /*=================*/
+	  NAVIGATE(down);
+	  break;
+
+	case REQ_SCR_ULINE:
+	    /*=================*/
+	  if (my_top_row == 0 || !(item->up))
+	    result = E_REQUEST_DENIED;
+	  else
+	    {
+	      --my_top_row;
+	      item = item->up;
+	    }
+	  break;
+
+	case REQ_SCR_DLINE:
+	    /*=================*/
+	  if ((my_top_row + menu->arows >= menu->rows) || !(item->down))
+	    {
+	      /* only if the menu has less items than rows, we can deny the
+	         request. Otherwise the epilogue of this routine adjusts the
+	         top row if necessary */
+	      result = E_REQUEST_DENIED;
+	    }
+	  else
+	    {
+	      my_top_row++;
+	      item = item->down;
+	    }
+	  break;
+
+	case REQ_SCR_DPAGE:
+	    /*=================*/
+	  rdiff = menu->rows - (menu->arows + my_top_row);
+	  if (rdiff > menu->arows)
+	    rdiff = menu->arows;
+	  if (rdiff <= 0)
+	    result = E_REQUEST_DENIED;
+	  else
+	    {
+	      my_top_row += rdiff;
+	      while (rdiff-- > 0 && item != 0 && item->down != 0)
+		item = item->down;
+	    }
+	  break;
+
+	case REQ_SCR_UPAGE:
+	    /*=================*/
+	  rdiff = (menu->arows < my_top_row) ? menu->arows : my_top_row;
+	  if (rdiff <= 0)
+	    result = E_REQUEST_DENIED;
+	  else
+	    {
+	      my_top_row -= rdiff;
+	      while (rdiff-- > 0 && item != 0 && item->up != 0)
+		item = item->up;
+	    }
+	  break;
+
+	case REQ_FIRST_ITEM:
+	    /*==================*/
+	  item = menu->items[0];
+	  break;
+
+	case REQ_LAST_ITEM:
+	    /*=================*/
+	  item = menu->items[menu->nitems - 1];
+	  break;
+
+	case REQ_NEXT_ITEM:
+	    /*=================*/
+	  if ((item->index + 1) >= menu->nitems)
+	    {
+	      if (menu->opt & O_NONCYCLIC)
+		result = E_REQUEST_DENIED;
+	      else
+		item = menu->items[0];
+	    }
+	  else
+	    item = menu->items[item->index + 1];
+	  break;
+
+	case REQ_PREV_ITEM:
+	    /*=================*/
+	  if (item->index <= 0)
+	    {
+	      if (menu->opt & O_NONCYCLIC)
+		result = E_REQUEST_DENIED;
+	      else
+		item = menu->items[menu->nitems - 1];
+	    }
+	  else
+	    item = menu->items[item->index - 1];
+	  break;
+
+	case REQ_TOGGLE_ITEM:
+	    /*===================*/
+	  if (menu->opt & O_ONEVALUE)
+	    {
+	      result = E_REQUEST_DENIED;
+	    }
+	  else
+	    {
+	      if (menu->curitem->opt & O_SELECTABLE)
+		{
+		  menu->curitem->value = !menu->curitem->value;
+		  Move_And_Post_Item(menu, menu->curitem);
+		  _nc_Show_Menu(menu);
+		}
+	      else
+		result = E_NOT_SELECTABLE;
+	    }
+	  break;
+
+	case REQ_CLEAR_PATTERN:
+	    /*=====================*/
+	  /* already cleared in prologue */
+	  break;
+
+	case REQ_BACK_PATTERN:
+	    /*====================*/
+	  if (menu->pindex > 0)
+	    {
+	      assert(menu->pattern);
+	      Remove_Character_From_Pattern(menu);
+	      pos_menu_cursor(menu);
+	    }
+	  else
+	    result = E_REQUEST_DENIED;
+	  break;
+
+	case REQ_NEXT_MATCH:
+	    /*==================*/
+	  assert(menu->pattern);
+	  if (menu->pattern[0])
+	    result = _nc_Match_Next_Character_In_Item_Name(menu, 0, &item);
+	  else
+	    {
+	      if ((item->index + 1) < menu->nitems)
+		item = menu->items[item->index + 1];
+	      else
+		{
+		  if (menu->opt & O_NONCYCLIC)
+		    result = E_REQUEST_DENIED;
+		  else
+		    item = menu->items[0];
+		}
+	    }
+	  break;
+
+	case REQ_PREV_MATCH:
+	    /*==================*/
+	  assert(menu->pattern);
+	  if (menu->pattern[0])
+	    result = _nc_Match_Next_Character_In_Item_Name(menu, BS, &item);
+	  else
+	    {
+	      if (item->index)
+		item = menu->items[item->index - 1];
+	      else
+		{
+		  if (menu->opt & O_NONCYCLIC)
+		    result = E_REQUEST_DENIED;
+		  else
+		    item = menu->items[menu->nitems - 1];
+		}
+	    }
+	  break;
+
+	default:
+	    /*======*/
+	  result = E_UNKNOWN_COMMAND;
+	  break;
+	}
+    }
+  else
+    {				/* not a command */
+      if (!(c & ~((int)MAX_REGULAR_CHARACTER)) && isprint(UChar(c)))
+	result = _nc_Match_Next_Character_In_Item_Name(menu, c, &item);
+#ifdef NCURSES_MOUSE_VERSION
+      else if (KEY_MOUSE == c)
+	{
+	  MEVENT event;
+	  WINDOW *uwin = Get_Menu_UserWin(menu);
+
+	  getmouse(&event);
+	  if ((event.bstate & (BUTTON1_CLICKED |
+			       BUTTON1_DOUBLE_CLICKED |
+			       BUTTON1_TRIPLE_CLICKED))
+	      && wenclose(uwin, event.y, event.x))
+	    {			/* we react only if the click was in the userwin, that means
+				 * inside the menu display area or at the decoration window.
+				 */
+	      WINDOW *sub = Get_Menu_Window(menu);
+	      int ry = event.y, rx = event.x;	/* screen coordinates */
+
+	      result = E_REQUEST_DENIED;
+	      if (mouse_trafo(&ry, &rx, FALSE))
+		{		/* rx, ry are now "curses" coordinates */
+		  if (ry < sub->_begy)
+		    {		/* we clicked above the display region; this is
+				 * interpreted as "scroll up" request
+				 */
+		      if (event.bstate & BUTTON1_CLICKED)
+			result = menu_driver(menu, REQ_SCR_ULINE);
+		      else if (event.bstate & BUTTON1_DOUBLE_CLICKED)
+			result = menu_driver(menu, REQ_SCR_UPAGE);
+		      else if (event.bstate & BUTTON1_TRIPLE_CLICKED)
+			result = menu_driver(menu, REQ_FIRST_ITEM);
+		      RETURN(result);
+		    }
+		  else if (ry > sub->_begy + sub->_maxy)
+		    {		/* we clicked below the display region; this is
+				 * interpreted as "scroll down" request
+				 */
+		      if (event.bstate & BUTTON1_CLICKED)
+			result = menu_driver(menu, REQ_SCR_DLINE);
+		      else if (event.bstate & BUTTON1_DOUBLE_CLICKED)
+			result = menu_driver(menu, REQ_SCR_DPAGE);
+		      else if (event.bstate & BUTTON1_TRIPLE_CLICKED)
+			result = menu_driver(menu, REQ_LAST_ITEM);
+		      RETURN(result);
+		    }
+		  else if (wenclose(sub, event.y, event.x))
+		    {		/* Inside the area we try to find the hit item */
+		      int i, x, y, err;
+
+		      ry = event.y;
+		      rx = event.x;
+		      if (wmouse_trafo(sub, &ry, &rx, FALSE))
+			{
+			  for (i = 0; i < menu->nitems; i++)
+			    {
+			      err = _nc_menu_cursor_pos(menu, menu->items[i],
+							&y, &x);
+			      if (E_OK == err)
+				{
+				  if ((ry == y) &&
+				      (rx >= x) &&
+				      (rx < x + menu->itemlen))
+				    {
+				      item = menu->items[i];
+				      result = E_OK;
+				      break;
+				    }
+				}
+			    }
+			  if (E_OK == result)
+			    {	/* We found an item, now we can handle the click.
+				 * A single click just positions the menu cursor
+				 * to the clicked item. A double click toggles
+				 * the item.
+				 */
+			      if (event.bstate & BUTTON1_DOUBLE_CLICKED)
+				{
+				  _nc_New_TopRow_and_CurrentItem(menu,
+								 my_top_row,
+								 item);
+				  menu_driver(menu, REQ_TOGGLE_ITEM);
+				  result = E_UNKNOWN_COMMAND;
+				}
+			    }
+			}
+		    }
+		}
+	    }
+	  else
+	    result = E_REQUEST_DENIED;
+	}
+#endif /* NCURSES_MOUSE_VERSION */
+      else
+	result = E_UNKNOWN_COMMAND;
+    }
+
+  if (E_OK == result)
+    {
+      /* Adjust the top row if it turns out that the current item unfortunately
+         doesn't appear in the menu window */
+      if (item->y < my_top_row)
+	my_top_row = item->y;
+      else if (item->y >= (my_top_row + menu->arows))
+	my_top_row = item->y - menu->arows + 1;
+
+      _nc_New_TopRow_and_CurrentItem(menu, my_top_row, item);
+
+    }
+
+  RETURN(result);
+}
+
+/* m_driver.c ends here */
diff --git a/apps/lib/curses/pdcurses/menu/m_format.c b/apps/lib/curses/pdcurses/menu/m_format.c
new file mode 100644
index 0000000..8e68a03
--- /dev/null
+++ b/apps/lib/curses/pdcurses/menu/m_format.c
@@ -0,0 +1,131 @@
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
+/***************************************************************************
+* Module m_format                                                          *
+* Set and get maximum numbers of rows and columns in menus                 *
+***************************************************************************/
+
+#include "menu.priv.h"
+
+MODULE_ID("$Id: m_format.c,v 1.16 2010/01/23 21:20:10 tom Exp $")
+
+#define minimum(a,b) ((a)<(b) ? (a): (b))
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  int set_menu_format(MENU *menu, int rows, int cols)
+|
+|   Description   :  Sets the maximum number of rows and columns of items
+|                    that may be displayed at one time on a menu. If the
+|                    menu contains more items than can be displayed at
+|                    once, the menu will be scrollable.
+|
+|   Return Values :  E_OK                   - success
+|                    E_BAD_ARGUMENT         - invalid values passed
+|                    E_NOT_CONNECTED        - there are no items connected
+|                    E_POSTED               - the menu is already posted
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+set_menu_format(MENU * menu, int rows, int cols)
+{
+  int total_rows, total_cols;
+
+  T((T_CALLED("set_menu_format(%p,%d,%d)"), (void *)menu, rows, cols));
+
+  if (rows < 0 || cols < 0)
+    RETURN(E_BAD_ARGUMENT);
+
+  if (menu)
+    {
+      if (menu->status & _POSTED)
+	RETURN(E_POSTED);
+
+      if (!(menu->items))
+	RETURN(E_NOT_CONNECTED);
+
+      if (rows == 0)
+	rows = menu->frows;
+      if (cols == 0)
+	cols = menu->fcols;
+
+      if (menu->pattern)
+	Reset_Pattern(menu);
+
+      menu->frows = rows;
+      menu->fcols = cols;
+
+      assert(rows > 0 && cols > 0);
+      total_rows = (menu->nitems - 1) / cols + 1;
+      total_cols = (menu->opt & O_ROWMAJOR) ?
+	minimum(menu->nitems, cols) :
+	(menu->nitems - 1) / total_rows + 1;
+
+      menu->rows = total_rows;
+      menu->cols = total_cols;
+      menu->arows = minimum(total_rows, rows);
+      menu->toprow = 0;
+      menu->curitem = *(menu->items);
+      assert(menu->curitem);
+      menu->status |= _LINK_NEEDED;
+      _nc_Calculate_Item_Length_and_Width(menu);
+    }
+  else
+    {
+      if (rows > 0)
+	_nc_Default_Menu.frows = rows;
+      if (cols > 0)
+	_nc_Default_Menu.fcols = cols;
+    }
+
+  RETURN(E_OK);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  void menu_format(const MENU *menu, int *rows, int *cols)
+|
+|   Description   :  Returns the maximum number of rows and columns that may
+|                    be displayed at one time on menu.
+|
+|   Return Values :  -
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(void)
+menu_format(const MENU * menu, int *rows, int *cols)
+{
+  if (rows)
+    *rows = Normalize_Menu(menu)->frows;
+  if (cols)
+    *cols = Normalize_Menu(menu)->fcols;
+}
+
+/* m_format.c ends here */
diff --git a/apps/lib/curses/pdcurses/menu/m_global.c b/apps/lib/curses/pdcurses/menu/m_global.c
new file mode 100644
index 0000000..73227f3
--- /dev/null
+++ b/apps/lib/curses/pdcurses/menu/m_global.c
@@ -0,0 +1,598 @@
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
+/***************************************************************************
+* Module m_global                                                          *
+* Globally used internal routines and the default menu and item structures *
+***************************************************************************/
+
+#include "menu.priv.h"
+
+MODULE_ID("$Id: m_global.c,v 1.25 2010/01/23 21:20:10 tom Exp $")
+
+static char mark[] = "-";
+/* *INDENT-OFF* */
+NCURSES_EXPORT_VAR(MENU) _nc_Default_Menu = {
+  16,				  /* Nr. of chars high */
+  1,				  /* Nr. of chars wide */
+  16,				  /* Nr. of items high */
+  1,			          /* Nr. of items wide */
+  16,				  /* Nr. of formatted items high */
+  1,				  /* Nr. of formatted items wide */
+  16,				  /* Nr. of items high (actual) */
+  0,				  /* length of widest name */
+  0,				  /* length of widest description */
+  1,				  /* length of mark */
+  1,				  /* length of one item */
+  1,                              /* Spacing for descriptor */
+  1,                              /* Spacing for columns */
+  1,                              /* Spacing for rows */
+  (char *)0,			  /* buffer used to store match chars */
+  0,				  /* Index into pattern buffer */
+  (WINDOW *)0,			  /* Window containing entire menu */
+  (WINDOW *)0,			  /* Portion of menu displayed */
+  (WINDOW *)0,			  /* User's window */
+  (WINDOW *)0,			  /* User's subwindow */
+  (ITEM **)0,			  /* List of items */
+  0,				  /* Total Nr. of items in menu */
+  (ITEM *)0,			  /* Current item */
+  0,				  /* Top row of menu */
+  (chtype)A_REVERSE,		  /* Attribute for selection */
+  (chtype)A_NORMAL,		  /* Attribute for nonselection */
+  (chtype)A_UNDERLINE,		  /* Attribute for inactive */
+  ' ',  			  /* Pad character */
+  (Menu_Hook)0,			  /* Menu init */
+  (Menu_Hook)0,			  /* Menu term */
+  (Menu_Hook)0,			  /* Item init */
+  (Menu_Hook)0,			  /* Item term */
+  (void *)0,			  /* userptr */
+  mark,				  /* mark */
+  ALL_MENU_OPTS,                  /* options */
+  0			          /* status */
+};
+
+NCURSES_EXPORT_VAR(ITEM) _nc_Default_Item = {
+  { (char *)0, 0 },		  /* name */
+  { (char *)0, 0 },		  /* description */
+  (MENU *)0,		          /* Pointer to parent menu */
+  (char *)0,			  /* Userpointer */
+  ALL_ITEM_OPTS,		  /* options */
+  0,				  /* Item Nr. */
+  0,				  /* y */
+  0,				  /* x */
+  FALSE,			  /* value */
+  (ITEM *)0,		          /* left */
+  (ITEM *)0,		          /* right */
+  (ITEM *)0,		          /* up */
+  (ITEM *)0		          /* down */
+  };
+/* *INDENT-ON* */
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  static void ComputeMaximum_NameDesc_Lenths(MENU *menu)
+|
+|   Description   :  Calculates the maximum name and description lengths
+|                    of the items connected to the menu
+|
+|   Return Values :  -
++--------------------------------------------------------------------------*/
+NCURSES_INLINE static void
+ComputeMaximum_NameDesc_Lengths(MENU * menu)
+{
+  unsigned MaximumNameLength = 0;
+  unsigned MaximumDescriptionLength = 0;
+  ITEM **items;
+  unsigned check;
+
+  assert(menu && menu->items);
+  for (items = menu->items; *items; items++)
+    {
+      check = _nc_Calculate_Text_Width(&((*items)->name));
+      if (check > MaximumNameLength)
+	MaximumNameLength = check;
+
+      check = _nc_Calculate_Text_Width(&((*items)->description));
+      if (check > MaximumDescriptionLength)
+	MaximumDescriptionLength = check;
+    }
+
+  menu->namelen = MaximumNameLength;
+  menu->desclen = MaximumDescriptionLength;
+  T(("ComputeMaximum_NameDesc_Lengths %d,%d", menu->namelen, menu->desclen));
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  static void ResetConnectionInfo(MENU *, ITEM **)
+|
+|   Description   :  Reset all informations in the menu and the items in
+|                    the item array that indicates a connection
+|
+|   Return Values :  -
++--------------------------------------------------------------------------*/
+NCURSES_INLINE static void
+ResetConnectionInfo(MENU * menu, ITEM ** items)
+{
+  ITEM **item;
+
+  assert(menu && items);
+  for (item = items; *item; item++)
+    {
+      (*item)->index = 0;
+      (*item)->imenu = (MENU *) 0;
+    }
+  if (menu->pattern)
+    free(menu->pattern);
+  menu->pattern = (char *)0;
+  menu->pindex = 0;
+  menu->items = (ITEM **) 0;
+  menu->nitems = 0;
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  bool _nc_Connect_Items(MENU *menu, ITEM **items)
+|
+|   Description   :  Connect the items in the item array to the menu.
+|                    Decorate all the items with a number and a backward
+|                    pointer to the menu.
+|
+|   Return Values :  TRUE       - successful connection
+|                    FALSE      - connection failed
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(bool)
+_nc_Connect_Items(MENU * menu, ITEM ** items)
+{
+  ITEM **item;
+  unsigned int ItemCount = 0;
+
+  if (menu && items)
+    {
+      for (item = items; *item; item++)
+	{
+	  if ((*item)->imenu)
+	    {
+	      /* if a item is already connected, reject connection */
+	      break;
+	    }
+	}
+      if (!(*item))
+	/* we reached the end, so there was no connected item */
+	{
+	  for (item = items; *item; item++)
+	    {
+	      if (menu->opt & O_ONEVALUE)
+		{
+		  (*item)->value = FALSE;
+		}
+	      (*item)->index = ItemCount++;
+	      (*item)->imenu = menu;
+	    }
+	}
+    }
+  else
+    return (FALSE);
+
+  if (ItemCount != 0)
+    {
+      menu->items = items;
+      menu->nitems = ItemCount;
+      ComputeMaximum_NameDesc_Lengths(menu);
+      if ((menu->pattern = typeMalloc(char, (unsigned)(1 + menu->namelen))))
+	{
+	  Reset_Pattern(menu);
+	  set_menu_format(menu, menu->frows, menu->fcols);
+	  menu->curitem = *items;
+	  menu->toprow = 0;
+	  return (TRUE);
+	}
+    }
+
+  /* If we fall through to this point, we have to reset all items connection
+     and inform about a reject connection */
+  ResetConnectionInfo(menu, items);
+  return (FALSE);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  void _nc_Disconnect_Items(MENU *menu)
+|
+|   Description   :  Disconnect the menus item array from the menu
+|
+|   Return Values :  -
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(void)
+_nc_Disconnect_Items(MENU * menu)
+{
+  if (menu && menu->items)
+    ResetConnectionInfo(menu, menu->items);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  int _nc_Calculate_Text_Width(const TEXT * item)
+|
+|   Description   :  Calculate the number of columns for a TEXT.
+|
+|   Return Values :  the width
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+_nc_Calculate_Text_Width(const TEXT * item /*FIXME: limit length */ )
+{
+#if USE_WIDEC_SUPPORT
+  int result = item->length;
+
+  T((T_CALLED("_nc_menu_text_width(%p)"), (const void *)item));
+  if (result != 0 && item->str != 0)
+    {
+      int count = mbstowcs(0, item->str, 0);
+      wchar_t *temp = 0;
+
+      if (count > 0
+	  && (temp = typeMalloc(wchar_t, 2 + count)) != 0)
+	{
+	  int n;
+
+	  result = 0;
+	  mbstowcs(temp, item->str, (unsigned)count);
+	  for (n = 0; n < count; ++n)
+	    {
+	      int test = wcwidth(temp[n]);
+
+	      if (test <= 0)
+		test = 1;
+	      result += test;
+	    }
+	  free(temp);
+	}
+    }
+  returnCode(result);
+#else
+  return item->length;
+#endif
+}
+
+/*
+ * Calculate the actual width of a menu entry for wide-characters.
+ */
+#if USE_WIDEC_SUPPORT
+static int
+calculate_actual_width(MENU * menu, bool name)
+{
+  int width = 0;
+  int check = 0;
+  ITEM **items;
+
+  assert(menu && menu->items);
+
+  if (menu->items != 0)
+    {
+      for (items = menu->items; *items; items++)
+	{
+	  if (name)
+	    {
+	      check = _nc_Calculate_Text_Width(&((*items)->name));
+	    }
+	  else
+	    {
+	      check = _nc_Calculate_Text_Width(&((*items)->description));
+	    }
+	  if (check > width)
+	    width = check;
+	}
+    }
+  else
+    {
+      width = (name ? menu->namelen : menu->desclen);
+    }
+
+  T(("calculate_actual_width %s = %d/%d",
+     name ? "name" : "desc",
+     width,
+     name ? menu->namelen : menu->desclen));
+  return width;
+}
+#else
+#define calculate_actual_width(menu, name) (name ? menu->namelen : menu->desclen)
+#endif
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  void _nc_Calculate_Item_Length_and_Width(MENU *menu)
+|
+|   Description   :  Calculate the length of an item and the width of the
+|                    whole menu.
+|
+|   Return Values :  -
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(void)
+_nc_Calculate_Item_Length_and_Width(MENU * menu)
+{
+  int l;
+
+  assert(menu);
+
+  menu->height = 1 + menu->spc_rows * (menu->arows - 1);
+
+  l = calculate_actual_width(menu, TRUE);
+  l += menu->marklen;
+
+  if ((menu->opt & O_SHOWDESC) && (menu->desclen > 0))
+    {
+      l += calculate_actual_width(menu, FALSE);
+      l += menu->spc_desc;
+    }
+
+  menu->itemlen = l;
+  l *= menu->cols;
+  l += (menu->cols - 1) * menu->spc_cols;	/* for the padding between the columns */
+  menu->width = l;
+
+  T(("_nc_CalculateItem_Length_and_Width columns %d, item %d, width %d",
+     menu->cols,
+     menu->itemlen,
+     menu->width));
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  void _nc_Link_Item(MENU *menu)
+|
+|   Description   :  Statically calculate for every item its four neighbors.
+|                    This depends on the orientation of the menu. This
+|                    static approach simplifies navigation in the menu a lot.
+|
+|   Return Values :  -
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(void)
+_nc_Link_Items(MENU * menu)
+{
+  if (menu && menu->items && *(menu->items))
+    {
+      int i, j;
+      ITEM *item;
+      int Number_Of_Items = menu->nitems;
+      int col = 0, row = 0;
+      int Last_in_Row;
+      int Last_in_Column;
+      bool cycle = (menu->opt & O_NONCYCLIC) ? FALSE : TRUE;
+
+      menu->status &= ~_LINK_NEEDED;
+
+      if (menu->opt & O_ROWMAJOR)
+	{
+	  int Number_Of_Columns = menu->cols;
+
+	  for (i = 0; i < Number_Of_Items; i++)
+	    {
+	      item = menu->items[i];
+
+	      Last_in_Row = row * Number_Of_Columns + (Number_Of_Columns - 1);
+
+	      item->left = (col) ?
+	      /* if we are not in the leftmost column, we can use the
+	         predecessor in the items array */
+		menu->items[i - 1] :
+		(cycle ? menu->items[(Last_in_Row >= Number_Of_Items) ?
+				     Number_Of_Items - 1 :
+				     Last_in_Row] :
+		 (ITEM *) 0);
+
+	      item->right = ((col < (Number_Of_Columns - 1)) &&
+			     ((i + 1) < Number_Of_Items)
+		)?
+		menu->items[i + 1] :
+		(cycle ? menu->items[row * Number_Of_Columns] :
+		 (ITEM *) 0
+		);
+
+	      Last_in_Column = (menu->rows - 1) * Number_Of_Columns + col;
+
+	      item->up = (row) ? menu->items[i - Number_Of_Columns] :
+		(cycle ? menu->items[(Last_in_Column >= Number_Of_Items) ?
+				     Number_Of_Items - 1 :
+				     Last_in_Column] :
+		 (ITEM *) 0);
+
+	      item->down = ((i + Number_Of_Columns) < Number_Of_Items)
+		?
+		menu->items[i + Number_Of_Columns] :
+		(cycle ? menu->items[(row + 1) < menu->rows ?
+				     Number_Of_Items - 1 : col] :
+		 (ITEM *) 0);
+	      item->x = col;
+	      item->y = row;
+	      if (++col == Number_Of_Columns)
+		{
+		  row++;
+		  col = 0;
+		}
+	    }
+	}
+      else
+	{
+	  int Number_Of_Rows = menu->rows;
+
+	  for (j = 0; j < Number_Of_Items; j++)
+	    {
+	      item = menu->items[i = (col * Number_Of_Rows + row)];
+
+	      Last_in_Column = (menu->cols - 1) * Number_Of_Rows + row;
+
+	      item->left = (col) ?
+		menu->items[i - Number_Of_Rows] :
+		(cycle ? (Last_in_Column >= Number_Of_Items) ?
+		 menu->items[Last_in_Column - Number_Of_Rows] :
+		 menu->items[Last_in_Column] :
+		 (ITEM *) 0);
+
+	      item->right = ((i + Number_Of_Rows) < Number_Of_Items)
+		?
+		menu->items[i + Number_Of_Rows] :
+		(cycle ? menu->items[row] : (ITEM *) 0);
+
+	      Last_in_Row = col * Number_Of_Rows + (Number_Of_Rows - 1);
+
+	      item->up = (row) ?
+		menu->items[i - 1] :
+		(cycle ?
+		 menu->items[(Last_in_Row >= Number_Of_Items) ?
+			     Number_Of_Items - 1 :
+			     Last_in_Row] :
+		 (ITEM *) 0);
+
+	      item->down = (row < (Number_Of_Rows - 1))
+		?
+		(menu->items[((i + 1) < Number_Of_Items) ?
+			     i + 1 :
+			     (col - 1) * Number_Of_Rows + row + 1]) :
+		(cycle ?
+		 menu->items[col * Number_Of_Rows] :
+		 (ITEM *) 0
+		);
+
+	      item->x = col;
+	      item->y = row;
+	      if ((++row) == Number_Of_Rows)
+		{
+		  col++;
+		  row = 0;
+		}
+	    }
+	}
+    }
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  void _nc_Show_Menu(const MENU* menu)
+|
+|   Description   :  Update the window that is associated with the menu
+|
+|   Return Values :  -
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(void)
+_nc_Show_Menu(const MENU * menu)
+{
+  WINDOW *win;
+  int maxy, maxx;
+
+  assert(menu);
+  if ((menu->status & _POSTED) && !(menu->status & _IN_DRIVER))
+    {
+      /* adjust the internal subwindow to start on the current top */
+      assert(menu->sub);
+      mvderwin(menu->sub, menu->spc_rows * menu->toprow, 0);
+      win = Get_Menu_Window(menu);
+
+      maxy = getmaxy(win);
+      maxx = getmaxx(win);
+
+      if (menu->height < maxy)
+	maxy = menu->height;
+      if (menu->width < maxx)
+	maxx = menu->width;
+
+      copywin(menu->sub, win, 0, 0, 0, 0, maxy - 1, maxx - 1, 0);
+      pos_menu_cursor(menu);
+    }
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  void _nc_New_TopRow_and_CurrentItem(
+|                            MENU *menu,
+|                            int new_toprow,
+|                            ITEM *new_current_item)
+|
+|   Description   :  Redisplay the menu so that the given row becomes the
+|                    top row and the given item becomes the new current
+|                    item.
+|
+|   Return Values :  -
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(void)
+_nc_New_TopRow_and_CurrentItem(
+				MENU * menu,
+				int new_toprow,
+				ITEM * new_current_item)
+{
+  ITEM *cur_item;
+  bool mterm_called = FALSE;
+  bool iterm_called = FALSE;
+
+  assert(menu);
+  if (menu->status & _POSTED)
+    {
+      if (new_current_item != menu->curitem)
+	{
+	  Call_Hook(menu, itemterm);
+	  iterm_called = TRUE;
+	}
+      if (new_toprow != menu->toprow)
+	{
+	  Call_Hook(menu, menuterm);
+	  mterm_called = TRUE;
+	}
+
+      cur_item = menu->curitem;
+      assert(cur_item);
+      menu->toprow = new_toprow;
+      menu->curitem = new_current_item;
+
+      if (mterm_called)
+	{
+	  Call_Hook(menu, menuinit);
+	}
+      if (iterm_called)
+	{
+	  /* this means, move from the old current_item to the new one... */
+	  Move_To_Current_Item(menu, cur_item);
+	  Call_Hook(menu, iteminit);
+	}
+      if (mterm_called || iterm_called)
+	{
+	  _nc_Show_Menu(menu);
+	}
+      else
+	pos_menu_cursor(menu);
+    }
+  else
+    {				/* if we are not posted, this is quite simple */
+      menu->toprow = new_toprow;
+      menu->curitem = new_current_item;
+    }
+}
+
+/* m_global.c ends here */
diff --git a/apps/lib/curses/pdcurses/menu/m_hook.c b/apps/lib/curses/pdcurses/menu/m_hook.c
new file mode 100644
index 0000000..df78d0a
--- /dev/null
+++ b/apps/lib/curses/pdcurses/menu/m_hook.c
@@ -0,0 +1,151 @@
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
+/***************************************************************************
+* Module m_hook                                                            *
+* Assign application specific routines for automatic invocation by menus   *
+***************************************************************************/
+
+#include "menu.priv.h"
+
+MODULE_ID("$Id: m_hook.c,v 1.15 2010/01/23 21:16:54 tom Exp $")
+
+/* "Template" macro to generate function to set application specific hook */
+#define GEN_HOOK_SET_FUNCTION( typ, name ) \
+NCURSES_IMPEXP int NCURSES_API set_ ## typ ## _ ## name (MENU *menu, Menu_Hook func )\
+{\
+   T((T_CALLED("set_" #typ "_" #name "(%p,%p)"), menu, func));\
+   (Normalize_Menu(menu) -> typ ## name = func );\
+   RETURN(E_OK);\
+}
+
+/* "Template" macro to generate function to get application specific hook */
+#define GEN_HOOK_GET_FUNCTION( typ, name ) \
+NCURSES_IMPEXP Menu_Hook NCURSES_API typ ## _ ## name ( const MENU *menu )\
+{\
+   T((T_CALLED(#typ "_" #name "(%p)"), (const void *) menu));\
+   returnMenuHook(Normalize_Menu(menu) -> typ ## name);\
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  int set_menu_init(MENU *menu, void (*f)(MENU *))
+|
+|   Description   :  Set user-exit which is called when menu is posted
+|                    or just after the top row changes.
+|
+|   Return Values :  E_OK               - success
++--------------------------------------------------------------------------*/
+GEN_HOOK_SET_FUNCTION(menu, init)
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  void (*)(MENU *) menu_init(const MENU *menu)
+|
+|   Description   :  Return address of user-exit function which is called
+|                    when a menu is posted or just after the top row
+|                    changes.
+|
+|   Return Values :  Menu init function address or NULL
++--------------------------------------------------------------------------*/
+GEN_HOOK_GET_FUNCTION(menu, init)
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  int set_menu_term (MENU *menu, void (*f)(MENU *))
+|
+|   Description   :  Set user-exit which is called when menu is unposted
+|                    or just before the top row changes.
+|
+|   Return Values :  E_OK               - success
++--------------------------------------------------------------------------*/
+GEN_HOOK_SET_FUNCTION(menu, term)
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  void (*)(MENU *) menu_term(const MENU *menu)
+|
+|   Description   :  Return address of user-exit function which is called
+|                    when a menu is unposted or just before the top row
+|                    changes.
+|
+|   Return Values :  Menu finalization function address or NULL
++--------------------------------------------------------------------------*/
+GEN_HOOK_GET_FUNCTION(menu, term)
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  int set_item_init (MENU *menu, void (*f)(MENU *))
+|
+|   Description   :  Set user-exit which is called when menu is posted
+|                    or just after the current item changes.
+|
+|   Return Values :  E_OK               - success
++--------------------------------------------------------------------------*/
+GEN_HOOK_SET_FUNCTION(item, init)
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  void (*)(MENU *) item_init (const MENU *menu)
+|
+|   Description   :  Return address of user-exit function which is called
+|                    when a menu is posted or just after the current item
+|                    changes.
+|
+|   Return Values :  Item init function address or NULL
++--------------------------------------------------------------------------*/
+GEN_HOOK_GET_FUNCTION(item, init)
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  int set_item_term (MENU *menu, void (*f)(MENU *))
+|
+|   Description   :  Set user-exit which is called when menu is unposted
+|                    or just before the current item changes.
+|
+|   Return Values :  E_OK               - success
++--------------------------------------------------------------------------*/
+GEN_HOOK_SET_FUNCTION(item, term)
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  void (*)(MENU *) item_init (const MENU *menu)
+|
+|   Description   :  Return address of user-exit function which is called
+|                    when a menu is unposted or just before the current item
+|                    changes.
+|
+|   Return Values :  Item finalization function address or NULL
++--------------------------------------------------------------------------*/
+GEN_HOOK_GET_FUNCTION(item, term)
+
+/* m_hook.c ends here */
diff --git a/apps/lib/curses/pdcurses/menu/m_item_cur.c b/apps/lib/curses/pdcurses/menu/m_item_cur.c
new file mode 100644
index 0000000..189e61b
--- /dev/null
+++ b/apps/lib/curses/pdcurses/menu/m_item_cur.c
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
+/***************************************************************************
+* Module m_item_cur                                                        *
+* Set and get current menus item                                           *
+***************************************************************************/
+
+#include "menu.priv.h"
+
+MODULE_ID("$Id: m_item_cur.c,v 1.18 2010/01/23 21:20:10 tom Exp $")
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  int set_current_item(MENU *menu, const ITEM *item)
+|
+|   Description   :  Make the item the current item
+|
+|   Return Values :  E_OK                - success
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+set_current_item(MENU * menu, ITEM * item)
+{
+  T((T_CALLED("set_current_item(%p,%p)"), (void *)menu, (void *)item));
+
+  if (menu && item && (item->imenu == menu))
+    {
+      if (menu->status & _IN_DRIVER)
+	RETURN(E_BAD_STATE);
+
+      assert(menu->curitem);
+      if (item != menu->curitem)
+	{
+	  if (menu->status & _LINK_NEEDED)
+	    {
+	      /*
+	       * Items are available, but they are not linked together.
+	       * So we have to link here.
+	       */
+	      _nc_Link_Items(menu);
+	    }
+	  assert(menu->pattern);
+	  Reset_Pattern(menu);
+	  /* adjust the window to make item visible and update the menu */
+	  Adjust_Current_Item(menu, menu->toprow, item);
+	}
+    }
+  else
+    RETURN(E_BAD_ARGUMENT);
+
+  RETURN(E_OK);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  ITEM *current_item(const MENU *menu)
+|
+|   Description   :  Return the menus current item
+|
+|   Return Values :  Item pointer or NULL if failure
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(ITEM *)
+current_item(const MENU * menu)
+{
+  T((T_CALLED("current_item(%p)"), (const void *)menu));
+  returnItem((menu && menu->items) ? menu->curitem : (ITEM *) 0);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  int item_index(const ITEM *)
+|
+|   Description   :  Return the logical index of this item.
+|
+|   Return Values :  The index or ERR if this is an invalid item pointer
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+item_index(const ITEM * item)
+{
+  T((T_CALLED("item_index(%p)"), (const void *)item));
+  returnCode((item && item->imenu) ? item->index : ERR);
+}
+
+/* m_item_cur.c ends here */
diff --git a/apps/lib/curses/pdcurses/menu/m_item_nam.c b/apps/lib/curses/pdcurses/menu/m_item_nam.c
new file mode 100644
index 0000000..eb6f58a
--- /dev/null
+++ b/apps/lib/curses/pdcurses/menu/m_item_nam.c
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
+/***************************************************************************
+* Module m_item_nam                                                        *
+* Get menus item name and description                                      *
+***************************************************************************/
+
+#include "menu.priv.h"
+
+MODULE_ID("$Id: m_item_nam.c,v 1.15 2010/01/23 21:20:10 tom Exp $")
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  char *item_name(const ITEM *item)
+|
+|   Description   :  Return name of menu item
+|
+|   Return Values :  See above; returns NULL if item is invalid
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(const char *)
+item_name(const ITEM * item)
+{
+  T((T_CALLED("item_name(%p)"), (const void *)item));
+  returnCPtr((item) ? item->name.str : (char *)0);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  char *item_description(const ITEM *item)
+|
+|   Description   :  Returns description of item
+|
+|   Return Values :  See above; Returns NULL if item is invalid
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(const char *)
+item_description(const ITEM * item)
+{
+  T((T_CALLED("item_description(%p)"), (const void *)item));
+  returnCPtr((item) ? item->description.str : (char *)0);
+}
+
+/* m_item_nam.c ends here */
diff --git a/apps/lib/curses/pdcurses/menu/m_item_new.c b/apps/lib/curses/pdcurses/menu/m_item_new.c
new file mode 100644
index 0000000..a10ec4b
--- /dev/null
+++ b/apps/lib/curses/pdcurses/menu/m_item_new.c
@@ -0,0 +1,275 @@
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
+/***************************************************************************
+* Module m_item_new                                                        *
+* Create and destroy menu items                                            *
+* Set and get marker string for menu                                       *
+***************************************************************************/
+
+#include "menu.priv.h"
+
+#if USE_WIDEC_SUPPORT
+#if HAVE_WCTYPE_H
+#include <wctype.h>
+#endif
+#endif
+
+MODULE_ID("$Id: m_item_new.c,v 1.30 2010/01/23 21:20:11 tom Exp $")
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  bool Is_Printable_String(const char *s)
+|
+|   Description   :  Checks whether or not the string contains only printable
+|                    characters.
+|
+|   Return Values :  TRUE     - if string is printable
+|                    FALSE    - if string contains non-printable characters
++--------------------------------------------------------------------------*/
+static bool
+Is_Printable_String(const char *s)
+{
+  int result = TRUE;
+
+#if USE_WIDEC_SUPPORT
+  int count = mbstowcs(0, s, 0);
+  wchar_t *temp = 0;
+
+  assert(s);
+
+  if (count > 0
+      && (temp = typeCalloc(wchar_t, (2 + (unsigned)count))) != 0)
+    {
+      int n;
+
+      mbstowcs(temp, s, (unsigned)count);
+      for (n = 0; n < count; ++n)
+	if (!iswprint((wint_t) temp[n]))
+	  {
+	    result = FALSE;
+	    break;
+	  }
+      free(temp);
+    }
+#else
+  assert(s);
+  while (*s)
+    {
+      if (!isprint(UChar(*s)))
+	{
+	  result = FALSE;
+	  break;
+	}
+      s++;
+    }
+#endif
+  return result;
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  ITEM *new_item(char *name, char *description)
+|
+|   Description   :  Create a new item with name and description. Return
+|                    a pointer to this new item.
+|                    N.B.: an item must(!) have a name.
+|
+|   Return Values :  The item pointer or NULL if creation failed.
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(ITEM *)
+new_item(const char *name, const char *description)
+{
+  ITEM *item;
+
+  T((T_CALLED("new_item(\"%s\", \"%s\")"),
+     name ? name : "",
+     description ? description : ""));
+
+  if (!name || (*name == '\0') || !Is_Printable_String(name))
+    {
+      item = (ITEM *) 0;
+      SET_ERROR(E_BAD_ARGUMENT);
+    }
+  else
+    {
+      item = typeCalloc(ITEM, 1);
+      if (item)
+	{
+	  *item = _nc_Default_Item;	/* hope we have struct assignment */
+
+	  item->name.length = strlen(name);
+	  item->name.str = name;
+
+	  if (description && (*description != '\0') &&
+	      Is_Printable_String(description))
+	    {
+	      item->description.length = strlen(description);
+	      item->description.str = description;
+	    }
+	  else
+	    {
+	      item->description.length = 0;
+	      item->description.str = (char *)0;
+	    }
+	}
+      else
+	SET_ERROR(E_SYSTEM_ERROR);
+    }
+  returnItem(item);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  int free_item(ITEM *item)
+|
+|   Description   :  Free the allocated storage for this item.
+|                    N.B.: a connected item can't be freed.
+|
+|   Return Values :  E_OK              - success
+|                    E_BAD_ARGUMENT    - invalid value has been passed
+|                    E_CONNECTED       - item is still connected to a menu
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+free_item(ITEM * item)
+{
+  T((T_CALLED("free_item(%p)"), (void *)item));
+
+  if (!item)
+    RETURN(E_BAD_ARGUMENT);
+
+  if (item->imenu)
+    RETURN(E_CONNECTED);
+
+  free(item);
+
+  RETURN(E_OK);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  int set_menu_mark( MENU *menu, const char *mark )
+|
+|   Description   :  Set the mark string used to indicate the current
+|                    item (single-valued menu) or the selected items
+|                    (multi-valued menu).
+|                    The mark argument may be NULL, in which case no
+|                    marker is used.
+|                    This might be a little bit tricky, because this may
+|                    affect the geometry of the menu, which we don't allow
+|                    if it is already posted.
+|
+|   Return Values :  E_OK               - success
+|                    E_BAD_ARGUMENT     - an invalid value has been passed
+|                    E_SYSTEM_ERROR     - no memory to store mark
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+set_menu_mark(MENU * menu, const char *mark)
+{
+  unsigned l;
+
+  T((T_CALLED("set_menu_mark(%p,%s)"), (void *)menu, _nc_visbuf(mark)));
+
+  if (mark && (*mark != '\0') && Is_Printable_String(mark))
+    l = strlen(mark);
+  else
+    l = 0;
+
+  if (menu)
+    {
+      char *old_mark = menu->mark;
+      unsigned short old_status = menu->status;
+
+      if (menu->status & _POSTED)
+	{
+	  /* If the menu is already posted, the geometry is fixed. Then
+	     we can only accept a mark with exactly the same length */
+	  if (menu->marklen != (int)l)
+	    RETURN(E_BAD_ARGUMENT);
+	}
+      menu->marklen = l;
+      if (l)
+	{
+	  menu->mark = strdup(mark);
+	  if (menu->mark)
+	    {
+	      strcpy(menu->mark, mark);
+	      if (menu != &_nc_Default_Menu)
+		menu->status |= _MARK_ALLOCATED;
+	    }
+	  else
+	    {
+	      menu->mark = old_mark;
+	      menu->marklen = (old_mark != 0) ? strlen(old_mark) : 0;
+	      RETURN(E_SYSTEM_ERROR);
+	    }
+	}
+      else
+	menu->mark = (char *)0;
+
+      if ((old_status & _MARK_ALLOCATED) && old_mark)
+	free(old_mark);
+
+      if (menu->status & _POSTED)
+	{
+	  _nc_Draw_Menu(menu);
+	  _nc_Show_Menu(menu);
+	}
+      else
+	{
+	  /* Recalculate the geometry */
+	  _nc_Calculate_Item_Length_and_Width(menu);
+	}
+    }
+  else
+    {
+      returnCode(set_menu_mark(&_nc_Default_Menu, mark));
+    }
+  RETURN(E_OK);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  char *menu_mark(const MENU *menu)
+|
+|   Description   :  Return a pointer to the marker string
+|
+|   Return Values :  The marker string pointer or NULL if no marker defined
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(const char *)
+menu_mark(const MENU * menu)
+{
+  T((T_CALLED("menu_mark(%p)"), (const void *)menu));
+  returnPtr(Normalize_Menu(menu)->mark);
+}
+
+/* m_item_new.c */
diff --git a/apps/lib/curses/pdcurses/menu/m_item_opt.c b/apps/lib/curses/pdcurses/menu/m_item_opt.c
new file mode 100644
index 0000000..de5eb8d
--- /dev/null
+++ b/apps/lib/curses/pdcurses/menu/m_item_opt.c
@@ -0,0 +1,159 @@
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
+/***************************************************************************
+* Module m_item_opt                                                        *
+* Menus item option routines                                               *
+***************************************************************************/
+
+#include "menu.priv.h"
+
+MODULE_ID("$Id: m_item_opt.c,v 1.18 2010/01/23 21:20:10 tom Exp $")
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  int set_item_opts(ITEM *item, Item_Options opts)
+|
+|   Description   :  Set the options of the item. If there are relevant
+|                    changes, the item is connected and the menu is posted,
+|                    the menu will be redisplayed.
+|
+|   Return Values :  E_OK            - success
+|                    E_BAD_ARGUMENT  - invalid item options
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+set_item_opts(ITEM * item, Item_Options opts)
+{
+  T((T_CALLED("set_menu_opts(%p,%d)"), (void *)item, opts));
+
+  opts &= ALL_ITEM_OPTS;
+
+  if (opts & ~ALL_ITEM_OPTS)
+    RETURN(E_BAD_ARGUMENT);
+
+  if (item)
+    {
+      if (item->opt != opts)
+	{
+	  MENU *menu = item->imenu;
+
+	  item->opt = opts;
+
+	  if ((!(opts & O_SELECTABLE)) && item->value)
+	    item->value = FALSE;
+
+	  if (menu && (menu->status & _POSTED))
+	    {
+	      Move_And_Post_Item(menu, item);
+	      _nc_Show_Menu(menu);
+	    }
+	}
+    }
+  else
+    _nc_Default_Item.opt = opts;
+
+  RETURN(E_OK);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  int item_opts_off(ITEM *item, Item_Options opts)
+|
+|   Description   :  Switch of the options for this item.
+|
+|   Return Values :  E_OK            - success
+|                    E_BAD_ARGUMENT  - invalid options
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+item_opts_off(ITEM * item, Item_Options opts)
+{
+  ITEM *citem = item;		/* use a copy because set_item_opts must detect
+
+				   NULL item itself to adjust its behavior */
+
+  T((T_CALLED("item_opts_off(%p,%d)"), (void *)item, opts));
+
+  if (opts & ~ALL_ITEM_OPTS)
+    RETURN(E_BAD_ARGUMENT);
+  else
+    {
+      Normalize_Item(citem);
+      opts = citem->opt & ~(opts & ALL_ITEM_OPTS);
+      returnCode(set_item_opts(item, opts));
+    }
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  int item_opts_on(ITEM *item, Item_Options opts)
+|
+|   Description   :  Switch on the options for this item.
+|
+|   Return Values :  E_OK            - success
+|                    E_BAD_ARGUMENT  - invalid options
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+item_opts_on(ITEM * item, Item_Options opts)
+{
+  ITEM *citem = item;		/* use a copy because set_item_opts must detect
+
+				   NULL item itself to adjust its behavior */
+
+  T((T_CALLED("item_opts_on(%p,%d)"), (void *)item, opts));
+
+  opts &= ALL_ITEM_OPTS;
+  if (opts & ~ALL_ITEM_OPTS)
+    RETURN(E_BAD_ARGUMENT);
+  else
+    {
+      Normalize_Item(citem);
+      opts = citem->opt | opts;
+      returnCode(set_item_opts(item, opts));
+    }
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  Item_Options item_opts(const ITEM *item)
+|
+|   Description   :  Switch of the options for this item.
+|
+|   Return Values :  Items options
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(Item_Options)
+item_opts(const ITEM * item)
+{
+  T((T_CALLED("item_opts(%p)"), (const void *)item));
+  returnItemOpts(ALL_ITEM_OPTS & Normalize_Item(item)->opt);
+}
+
+/* m_item_opt.c ends here */
diff --git a/apps/lib/curses/pdcurses/menu/m_item_top.c b/apps/lib/curses/pdcurses/menu/m_item_top.c
new file mode 100644
index 0000000..89f8316
--- /dev/null
+++ b/apps/lib/curses/pdcurses/menu/m_item_top.c
@@ -0,0 +1,107 @@
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
+/***************************************************************************
+* Module m_item_top                                                        *
+* Set and get top menus item                                               *
+***************************************************************************/
+
+#include "menu.priv.h"
+
+MODULE_ID("$Id: m_item_top.c,v 1.11 2010/01/23 21:20:10 tom Exp $")
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  int set_top_row(MENU *menu, int row)
+|
+|   Description   :  Makes the specified row the top row in the menu
+|
+|   Return Values :  E_OK             - success
+|                    E_BAD_ARGUMENT   - not a menu pointer or invalid row
+|                    E_NOT_CONNECTED  - there are no items for the menu
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+set_top_row(MENU * menu, int row)
+{
+  ITEM *item;
+
+  T((T_CALLED("set_top_row(%p,%d)"), (void *)menu, row));
+
+  if (menu)
+    {
+      if (menu->status & _IN_DRIVER)
+	RETURN(E_BAD_STATE);
+      if (menu->items == (ITEM **) 0)
+	RETURN(E_NOT_CONNECTED);
+
+      if ((row < 0) || (row > (menu->rows - menu->arows)))
+	RETURN(E_BAD_ARGUMENT);
+    }
+  else
+    RETURN(E_BAD_ARGUMENT);
+
+  if (row != menu->toprow)
+    {
+      if (menu->status & _LINK_NEEDED)
+	_nc_Link_Items(menu);
+
+      item = menu->items[(menu->opt & O_ROWMAJOR) ? (row * menu->cols) : row];
+      assert(menu->pattern);
+      Reset_Pattern(menu);
+      _nc_New_TopRow_and_CurrentItem(menu, row, item);
+    }
+
+  RETURN(E_OK);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  int top_row(const MENU *)
+|
+|   Description   :  Return the top row of the menu
+|
+|   Return Values :  The row number or ERR if there is no row
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+top_row(const MENU * menu)
+{
+  T((T_CALLED("top_row(%p)"), (const void *)menu));
+  if (menu && menu->items && *(menu->items))
+    {
+      assert((menu->toprow >= 0) && (menu->toprow < menu->rows));
+      returnCode(menu->toprow);
+    }
+  else
+    returnCode(ERR);
+}
+
+/* m_item_top.c ends here */
diff --git a/apps/lib/curses/pdcurses/menu/m_item_use.c b/apps/lib/curses/pdcurses/menu/m_item_use.c
new file mode 100644
index 0000000..4a25a85
--- /dev/null
+++ b/apps/lib/curses/pdcurses/menu/m_item_use.c
@@ -0,0 +1,76 @@
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
+/***************************************************************************
+* Module m_item_use                                                        *
+* Associate application data with menu items                               *
+***************************************************************************/
+
+#include "menu.priv.h"
+
+MODULE_ID("$Id: m_item_use.c,v 1.17 2010/01/23 21:20:10 tom Exp $")
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  int set_item_userptr(ITEM *item, void *userptr)
+|
+|   Description   :  Set the pointer that is reserved in any item to store
+|                    application relevant informations.
+|
+|   Return Values :  E_OK               - success
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+set_item_userptr(ITEM * item, void *userptr)
+{
+  T((T_CALLED("set_item_userptr(%p,%p)"), (void *)item, (void *)userptr));
+  Normalize_Item(item)->userptr = userptr;
+  RETURN(E_OK);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  void *item_userptr(const ITEM *item)
+|
+|   Description   :  Return the pointer that is reserved in any item to store
+|                    application relevant informations.
+|
+|   Return Values :  Value of the pointer. If no such pointer has been set,
+|                    NULL is returned.
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(void *)
+item_userptr(const ITEM * item)
+{
+  T((T_CALLED("item_userptr(%p)"), (const void *)item));
+  returnVoidPtr(Normalize_Item(item)->userptr);
+}
+
+/* m_item_use.c */
diff --git a/apps/lib/curses/pdcurses/menu/m_item_val.c b/apps/lib/curses/pdcurses/menu/m_item_val.c
new file mode 100644
index 0000000..c628338
--- /dev/null
+++ b/apps/lib/curses/pdcurses/menu/m_item_val.c
@@ -0,0 +1,104 @@
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
+/***************************************************************************
+* Module m_item_val                                                        *
+* Set and get menus item values                                            *
+***************************************************************************/
+
+#include "menu.priv.h"
+
+MODULE_ID("$Id: m_item_val.c,v 1.15 2010/01/23 21:20:10 tom Exp $")
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  int set_item_value(ITEM *item, int value)
+|
+|   Description   :  Programmatically set the item's selection value. This is
+|                    only allowed if the item is selectable at all and if
+|                    it is not connected to a single-valued menu.
+|                    If the item is connected to a posted menu, the menu
+|                    will be redisplayed.
+|
+|   Return Values :  E_OK              - success
+|                    E_REQUEST_DENIED  - not selectable or single valued menu
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+set_item_value(ITEM * item, bool value)
+{
+  MENU *menu;
+
+  T((T_CALLED("set_item_value(%p,%d)"), (void *)item, value));
+  if (item)
+    {
+      menu = item->imenu;
+
+      if ((!(item->opt & O_SELECTABLE)) ||
+	  (menu && (menu->opt & O_ONEVALUE)))
+	RETURN(E_REQUEST_DENIED);
+
+      if (item->value ^ value)
+	{
+	  item->value = value ? TRUE : FALSE;
+	  if (menu)
+	    {
+	      if (menu->status & _POSTED)
+		{
+		  Move_And_Post_Item(menu, item);
+		  _nc_Show_Menu(menu);
+		}
+	    }
+	}
+    }
+  else
+    _nc_Default_Item.value = value;
+
+  RETURN(E_OK);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  bool item_value(const ITEM *item)
+|
+|   Description   :  Return the selection value of the item
+|
+|   Return Values :  TRUE   - if item is selected
+|                    FALSE  - if item is not selected
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(bool)
+item_value(const ITEM * item)
+{
+  T((T_CALLED("item_value(%p)"), (const void *)item));
+  returnBool((Normalize_Item(item)->value) ? TRUE : FALSE);
+}
+
+/* m_item_val.c ends here */
diff --git a/apps/lib/curses/pdcurses/menu/m_item_vis.c b/apps/lib/curses/pdcurses/menu/m_item_vis.c
new file mode 100644
index 0000000..312f0a0
--- /dev/null
+++ b/apps/lib/curses/pdcurses/menu/m_item_vis.c
@@ -0,0 +1,68 @@
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
+/***************************************************************************
+* Module m_item_vis                                                        *
+* Tell if menu item is visible                                             *
+***************************************************************************/
+
+#include "menu.priv.h"
+
+MODULE_ID("$Id: m_item_vis.c,v 1.16 2010/01/23 21:20:10 tom Exp $")
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  bool item_visible(const ITEM *item)
+|
+|   Description   :  A item is visible if it currently appears in the
+|                    subwindow of a posted menu.
+|
+|   Return Values :  TRUE  if visible
+|                    FALSE if invisible
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(bool)
+item_visible(const ITEM * item)
+{
+  MENU *menu;
+
+  T((T_CALLED("item_visible(%p)"), (const void *)item));
+  if (item &&
+      (menu = item->imenu) &&
+      (menu->status & _POSTED) &&
+      ((menu->toprow + menu->arows) > (item->y)) &&
+      (item->y >= menu->toprow))
+    returnBool(TRUE);
+  else
+    returnBool(FALSE);
+}
+
+/* m_item_vis.c ends here */
diff --git a/apps/lib/curses/pdcurses/menu/m_items.c b/apps/lib/curses/pdcurses/menu/m_items.c
new file mode 100644
index 0000000..e1755f1
--- /dev/null
+++ b/apps/lib/curses/pdcurses/menu/m_items.c
@@ -0,0 +1,110 @@
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
+/***************************************************************************
+* Module m_items                                                           *
+* Connect and disconnect items to and from menus                           *
+***************************************************************************/
+
+#include "menu.priv.h"
+
+MODULE_ID("$Id: m_items.c,v 1.17 2010/01/23 21:20:10 tom Exp $")
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  int set_menu_items(MENU *menu, ITEM **items)
+|
+|   Description   :  Sets the item pointer array connected to menu.
+|
+|   Return Values :  E_OK           - success
+|                    E_POSTED       - menu is already posted
+|                    E_CONNECTED    - one or more items are already connected
+|                                     to another menu.
+|                    E_BAD_ARGUMENT - An incorrect menu or item array was
+|                                     passed to the function
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+set_menu_items(MENU * menu, ITEM ** items)
+{
+  T((T_CALLED("set_menu_items(%p,%p)"), (void *)menu, (void *)items));
+
+  if (!menu || (items && !(*items)))
+    RETURN(E_BAD_ARGUMENT);
+
+  if (menu->status & _POSTED)
+    RETURN(E_POSTED);
+
+  if (menu->items)
+    _nc_Disconnect_Items(menu);
+
+  if (items)
+    {
+      if (!_nc_Connect_Items(menu, items))
+	RETURN(E_CONNECTED);
+    }
+
+  menu->items = items;
+  RETURN(E_OK);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  ITEM **menu_items(const MENU *menu)
+|
+|   Description   :  Returns a pointer to the item pointer array of the menu
+|
+|   Return Values :  NULL on error
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(ITEM **)
+menu_items(const MENU * menu)
+{
+  T((T_CALLED("menu_items(%p)"), (const void *)menu));
+  returnItemPtr(menu ? menu->items : (ITEM **) 0);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  int item_count(const MENU *menu)
+|
+|   Description   :  Get the number of items connected to the menu. If the
+|                    menu pointer is NULL we return -1.
+|
+|   Return Values :  Number of items or -1 to indicate error.
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+item_count(const MENU * menu)
+{
+  T((T_CALLED("item_count(%p)"), (const void *)menu));
+  returnCode(menu ? menu->nitems : -1);
+}
+
+/* m_items.c ends here */
diff --git a/apps/lib/curses/pdcurses/menu/m_new.c b/apps/lib/curses/pdcurses/menu/m_new.c
new file mode 100644
index 0000000..2f9fe55
--- /dev/null
+++ b/apps/lib/curses/pdcurses/menu/m_new.c
@@ -0,0 +1,142 @@
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
+/***************************************************************************
+* Module m_new                                                             *
+* Creation and destruction of new menus                                    *
+***************************************************************************/
+
+#include "menu.priv.h"
+
+MODULE_ID("$Id: m_new.c,v 1.21 2010/01/23 21:20:11 tom Exp $")
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  MENU* _nc_new_menu(SCREEN*, ITEM **items)
+|
+|   Description   :  Creates a new menu connected to the item pointer
+|                    array items and returns a pointer to the new menu.
+|                    The new menu is initialized with the values from the
+|                    default menu.
+|
+|   Return Values :  NULL on error
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(MENU *)
+NCURSES_SP_NAME(new_menu) (NCURSES_SP_DCLx ITEM ** items)
+{
+  int err = E_SYSTEM_ERROR;
+  MENU *menu = typeCalloc(MENU, 1);
+
+  T((T_CALLED("new_menu(%p,%p)"), (void *)SP_PARM, (void *)items));
+  if (menu)
+    {
+      *menu = _nc_Default_Menu;
+      menu->status = 0;
+      menu->rows = menu->frows;
+      menu->cols = menu->fcols;
+#if NCURSES_SP_FUNCS
+      /* This ensures userwin and usersub are always non-null,
+         so we can derive always the SCREEN that this menu is
+         running on. */
+      menu->userwin = SP_PARM->_stdscr;
+      menu->usersub = SP_PARM->_stdscr;
+#endif
+      if (items && *items)
+	{
+	  if (!_nc_Connect_Items(menu, items))
+	    {
+	      err = E_NOT_CONNECTED;
+	      free(menu);
+	      menu = (MENU *) 0;
+	    }
+	  else
+	    err = E_OK;
+	}
+    }
+
+  if (!menu)
+    SET_ERROR(err);
+
+  returnMenu(menu);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  MENU *new_menu(ITEM **items)
+|
+|   Description   :  Creates a new menu connected to the item pointer
+|                    array items and returns a pointer to the new menu.
+|                    The new menu is initialized with the values from the
+|                    default menu.
+|
+|   Return Values :  NULL on error
++--------------------------------------------------------------------------*/
+#if NCURSES_SP_FUNCS
+NCURSES_EXPORT(MENU *)
+new_menu(ITEM ** items)
+{
+  return NCURSES_SP_NAME(new_menu) (CURRENT_SCREEN, items);
+}
+#endif
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  int free_menu(MENU *menu)
+|
+|   Description   :  Disconnects menu from its associated item pointer
+|                    array and frees the storage allocated for the menu.
+|
+|   Return Values :  E_OK               - success
+|                    E_BAD_ARGUMENT     - Invalid menu pointer passed
+|                    E_POSTED           - Menu is already posted
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+free_menu(MENU * menu)
+{
+  T((T_CALLED("free_menu(%p)"), (void *)menu));
+  if (!menu)
+    RETURN(E_BAD_ARGUMENT);
+
+  if (menu->status & _POSTED)
+    RETURN(E_POSTED);
+
+  if (menu->items)
+    _nc_Disconnect_Items(menu);
+
+  if ((menu->status & _MARK_ALLOCATED) && menu->mark)
+    free(menu->mark);
+
+  free(menu);
+  RETURN(E_OK);
+}
+
+/* m_new.c ends here */
diff --git a/apps/lib/curses/pdcurses/menu/m_opts.c b/apps/lib/curses/pdcurses/menu/m_opts.c
new file mode 100644
index 0000000..bc6924b
--- /dev/null
+++ b/apps/lib/curses/pdcurses/menu/m_opts.c
@@ -0,0 +1,183 @@
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
+/***************************************************************************
+* Module m_opts                                                            *
+* Menus option routines                                                    *
+***************************************************************************/
+
+#include "menu.priv.h"
+
+MODULE_ID("$Id: m_opts.c,v 1.20 2010/01/23 21:20:10 tom Exp $")
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  int set_menu_opts(MENU *menu, Menu_Options opts)
+|
+|   Description   :  Set the options for this menu. If the new settings
+|                    end up in a change of the geometry of the menu, it
+|                    will be recalculated. This operation is forbidden if
+|                    the menu is already posted.
+|
+|   Return Values :  E_OK           - success
+|                    E_BAD_ARGUMENT - invalid menu options
+|                    E_POSTED       - menu is already posted
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+set_menu_opts(MENU * menu, Menu_Options opts)
+{
+  T((T_CALLED("set_menu_opts(%p,%d)"), (void *)menu, opts));
+
+  opts &= ALL_MENU_OPTS;
+
+  if (opts & ~ALL_MENU_OPTS)
+    RETURN(E_BAD_ARGUMENT);
+
+  if (menu)
+    {
+      if (menu->status & _POSTED)
+	RETURN(E_POSTED);
+
+      if ((opts & O_ROWMAJOR) != (menu->opt & O_ROWMAJOR))
+	{
+	  /* we need this only if the layout really changed ... */
+	  if (menu->items && menu->items[0])
+	    {
+	      menu->toprow = 0;
+	      menu->curitem = menu->items[0];
+	      assert(menu->curitem);
+	      set_menu_format(menu, menu->frows, menu->fcols);
+	    }
+	}
+
+      menu->opt = opts;
+
+      if (opts & O_ONEVALUE)
+	{
+	  ITEM **item;
+
+	  if (((item = menu->items) != (ITEM **) 0))
+	    for (; *item; item++)
+	      (*item)->value = FALSE;
+	}
+
+      if (opts & O_SHOWDESC)	/* this also changes the geometry */
+	_nc_Calculate_Item_Length_and_Width(menu);
+    }
+  else
+    _nc_Default_Menu.opt = opts;
+
+  RETURN(E_OK);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  int menu_opts_off(MENU *menu, Menu_Options opts)
+|
+|   Description   :  Switch off the options for this menu. If the new settings
+|                    end up in a change of the geometry of the menu, it
+|                    will be recalculated. This operation is forbidden if
+|                    the menu is already posted.
+|
+|   Return Values :  E_OK           - success
+|                    E_BAD_ARGUMENT - invalid options
+|                    E_POSTED       - menu is already posted
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+menu_opts_off(MENU * menu, Menu_Options opts)
+{
+  MENU *cmenu = menu;		/* use a copy because set_menu_opts must detect
+
+				   NULL menu itself to adjust its behavior */
+
+  T((T_CALLED("menu_opts_off(%p,%d)"), (void *)menu, opts));
+
+  opts &= ALL_MENU_OPTS;
+  if (opts & ~ALL_MENU_OPTS)
+    RETURN(E_BAD_ARGUMENT);
+  else
+    {
+      Normalize_Menu(cmenu);
+      opts = cmenu->opt & ~opts;
+      returnCode(set_menu_opts(menu, opts));
+    }
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  int menu_opts_on(MENU *menu, Menu_Options opts)
+|
+|   Description   :  Switch on the options for this menu. If the new settings
+|                    end up in a change of the geometry of the menu, it
+|                    will be recalculated. This operation is forbidden if
+|                    the menu is already posted.
+|
+|   Return Values :  E_OK           - success
+|                    E_BAD_ARGUMENT - invalid menu options
+|                    E_POSTED       - menu is already posted
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+menu_opts_on(MENU * menu, Menu_Options opts)
+{
+  MENU *cmenu = menu;		/* use a copy because set_menu_opts must detect
+
+				   NULL menu itself to adjust its behavior */
+
+  T((T_CALLED("menu_opts_on(%p,%d)"), (void *)menu, opts));
+
+  opts &= ALL_MENU_OPTS;
+  if (opts & ~ALL_MENU_OPTS)
+    RETURN(E_BAD_ARGUMENT);
+  else
+    {
+      Normalize_Menu(cmenu);
+      opts = cmenu->opt | opts;
+      returnCode(set_menu_opts(menu, opts));
+    }
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  Menu_Options menu_opts(const MENU *menu)
+|
+|   Description   :  Return the options for this menu.
+|
+|   Return Values :  Menu options
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(Menu_Options)
+menu_opts(const MENU * menu)
+{
+  T((T_CALLED("menu_opts(%p)"), (const void *)menu));
+  returnMenuOpts(ALL_MENU_OPTS & Normalize_Menu(menu)->opt);
+}
+
+/* m_opts.c ends here */
diff --git a/apps/lib/curses/pdcurses/menu/m_pad.c b/apps/lib/curses/pdcurses/menu/m_pad.c
new file mode 100644
index 0000000..379ce7c
--- /dev/null
+++ b/apps/lib/curses/pdcurses/menu/m_pad.c
@@ -0,0 +1,95 @@
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
+/***************************************************************************
+* Module m_pad                                                             *
+* Control menus padding character                                          *
+***************************************************************************/
+
+#include "menu.priv.h"
+
+MODULE_ID("$Id: m_pad.c,v 1.12 2010/01/23 21:20:10 tom Exp $")
+
+/* Macro to redraw menu if it is posted and changed */
+#define Refresh_Menu(menu) \
+   if ( (menu) && ((menu)->status & _POSTED) )\
+   {\
+      _nc_Draw_Menu( menu );\
+      _nc_Show_Menu( menu ); \
+   }
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  int set_menu_pad(MENU* menu, int pad)
+|
+|   Description   :  Set the character to be used to separate the item name
+|                    from its description. This must be a printable
+|                    character.
+|
+|   Return Values :  E_OK              - success
+|                    E_BAD_ARGUMENT    - an invalid value has been passed
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+set_menu_pad(MENU * menu, int pad)
+{
+  bool do_refresh = (menu != (MENU *) 0);
+
+  T((T_CALLED("set_menu_pad(%p,%d)"), (void *)menu, pad));
+
+  if (!isprint(UChar(pad)))
+    RETURN(E_BAD_ARGUMENT);
+
+  Normalize_Menu(menu);
+  menu->pad = pad;
+
+  if (do_refresh)
+    Refresh_Menu(menu);
+
+  RETURN(E_OK);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  int menu_pad(const MENU *menu)
+|
+|   Description   :  Return the value of the padding character
+|
+|   Return Values :  The pad character
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+menu_pad(const MENU * menu)
+{
+  T((T_CALLED("menu_pad(%p)"), (const void *)menu));
+  returnCode(Normalize_Menu(menu)->pad);
+}
+
+/* m_pad.c ends here */
diff --git a/apps/lib/curses/pdcurses/menu/m_pattern.c b/apps/lib/curses/pdcurses/menu/m_pattern.c
new file mode 100644
index 0000000..ebede0a
--- /dev/null
+++ b/apps/lib/curses/pdcurses/menu/m_pattern.c
@@ -0,0 +1,124 @@
+/****************************************************************************
+ * Copyright (c) 1998-2006,2010 Free Software Foundation, Inc.              *
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
+* Module m_pattern                                                         *
+* Pattern matching handling                                                *
+***************************************************************************/
+
+#include "menu.priv.h"
+
+MODULE_ID("$Id: m_pattern.c,v 1.16 2010/01/23 21:20:10 tom Exp $")
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  char *menu_pattern(const MENU *menu)
+|
+|   Description   :  Return the value of the pattern buffer.
+|
+|   Return Values :  NULL          - if there is no pattern buffer allocated
+|                    EmptyString   - if there is a pattern buffer but no
+|                                    pattern is stored
+|                    PatternString - as expected
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(char *)
+menu_pattern(const MENU * menu)
+{
+  static char empty[] = "";
+
+  T((T_CALLED("menu_pattern(%p)"), (const void *)menu));
+  returnPtr(menu ? (menu->pattern ? menu->pattern : empty) : 0);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  int set_menu_pattern(MENU *menu, const char *p)
+|
+|   Description   :  Set the match pattern for a menu and position to the
+|                    first item that matches.
+|
+|   Return Values :  E_OK              - success
+|                    E_BAD_ARGUMENT    - invalid menu or pattern pointer
+|                    E_BAD_STATE       - menu in user hook routine
+|                    E_NOT_CONNECTED   - no items connected to menu
+|                    E_NO_MATCH        - no item matches pattern
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+set_menu_pattern(MENU * menu, const char *p)
+{
+  ITEM *matchitem;
+  int matchpos;
+
+  T((T_CALLED("set_menu_pattern(%p,%s)"), (void *)menu, _nc_visbuf(p)));
+
+  if (!menu || !p)
+    RETURN(E_BAD_ARGUMENT);
+
+  if (!(menu->items))
+    RETURN(E_NOT_CONNECTED);
+
+  if (menu->status & _IN_DRIVER)
+    RETURN(E_BAD_STATE);
+
+  Reset_Pattern(menu);
+
+  if (!(*p))
+    {
+      pos_menu_cursor(menu);
+      RETURN(E_OK);
+    }
+
+  if (menu->status & _LINK_NEEDED)
+    _nc_Link_Items(menu);
+
+  matchpos = menu->toprow;
+  matchitem = menu->curitem;
+  assert(matchitem);
+
+  while (*p)
+    {
+      if (!isprint(UChar(*p)) ||
+	  (_nc_Match_Next_Character_In_Item_Name(menu, *p, &matchitem) != E_OK))
+	{
+	  Reset_Pattern(menu);
+	  pos_menu_cursor(menu);
+	  RETURN(E_NO_MATCH);
+	}
+      p++;
+    }
+
+  /* This is reached if there was a match. So we position to the new item */
+  Adjust_Current_Item(menu, matchpos, matchitem);
+  RETURN(E_OK);
+}
+
+/* m_pattern.c ends here */
diff --git a/apps/lib/curses/pdcurses/menu/m_post.c b/apps/lib/curses/pdcurses/menu/m_post.c
new file mode 100644
index 0000000..007476b
--- /dev/null
+++ b/apps/lib/curses/pdcurses/menu/m_post.c
@@ -0,0 +1,377 @@
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
+/***************************************************************************
+* Module m_post                                                            *
+* Write or erase menus from associated subwindows                          *
+***************************************************************************/
+
+#include "menu.priv.h"
+
+MODULE_ID("$Id: m_post.c,v 1.29 2010/05/01 19:18:27 tom Exp $")
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  void _nc_Post_Item(MENU *menu, ITEM *item)
+|
+|   Description   :  Draw the item in the menus window at the current
+|                    window position
+|
+|   Return Values :  -
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(void)
+_nc_Post_Item(const MENU * menu, const ITEM * item)
+{
+  int i;
+  chtype ch;
+  int item_x, item_y;
+  int count = 0;
+  bool isfore = FALSE, isback = FALSE, isgrey = FALSE;
+  int name_len;
+  int desc_len;
+
+  assert(menu->win);
+
+  getyx(menu->win, item_y, item_x);
+
+  /* We need a marker iff
+     - it is a onevalued menu and it is the current item
+     - or it has a selection value
+   */
+  wattron(menu->win, menu->back);
+  if (item->value || (item == menu->curitem))
+    {
+      if (menu->marklen)
+	{
+	  /* In a multi selection menu we use the fore attribute
+	     for a selected marker that is not the current one.
+	     This improves visualization of the menu, because now
+	     always the 'normal' marker denotes the current
+	     item. */
+	  if (!(menu->opt & O_ONEVALUE) && item->value && item != menu->curitem)
+	    {
+	      wattron(menu->win, menu->fore);
+	      isfore = TRUE;
+	    }
+	  waddstr(menu->win, menu->mark);
+	  if (isfore)
+	    {
+	      wattron(menu->win, menu->fore);
+	      isfore = FALSE;
+	    }
+	}
+    }
+  else				/* otherwise we have to wipe out the marker area */
+    for (ch = ' ', i = menu->marklen; i > 0; i--)
+      waddch(menu->win, ch);
+  wattroff(menu->win, menu->back);
+  count += menu->marklen;
+
+  /* First we have to calculate the attribute depending on selectability
+     and selection status
+   */
+  if (!(item->opt & O_SELECTABLE))
+    {
+      wattron(menu->win, menu->grey);
+      isgrey = TRUE;
+    }
+  else
+    {
+      if (item->value || item == menu->curitem)
+	{
+	  wattron(menu->win, menu->fore);
+	  isfore = TRUE;
+	}
+      else
+	{
+	  wattron(menu->win, menu->back);
+	  isback = TRUE;
+	}
+    }
+
+  waddnstr(menu->win, item->name.str, item->name.length);
+  name_len = _nc_Calculate_Text_Width(&(item->name));
+  for (ch = ' ', i = menu->namelen - name_len; i > 0; i--)
+    {
+      waddch(menu->win, ch);
+    }
+  count += menu->namelen;
+
+  /* Show description if required and available */
+  if ((menu->opt & O_SHOWDESC) && menu->desclen > 0)
+    {
+      int m = menu->spc_desc / 2;
+      int cy = -1, cx = -1;
+
+      for (ch = ' ', i = 0; i < menu->spc_desc; i++)
+	{
+	  if (i == m)
+	    {
+	      waddch(menu->win, menu->pad);
+	      getyx(menu->win, cy, cx);
+	    }
+	  else
+	    waddch(menu->win, ch);
+	}
+      if (item->description.length)
+	waddnstr(menu->win, item->description.str, item->description.length);
+      desc_len = _nc_Calculate_Text_Width(&(item->description));
+      for (ch = ' ', i = menu->desclen - desc_len; i > 0; i--)
+	{
+	  waddch(menu->win, ch);
+	}
+      count += menu->desclen + menu->spc_desc;
+
+      if (menu->spc_rows > 1)
+	{
+	  int j, k, ncy, ncx;
+
+	  assert(cx >= 0 && cy >= 0);
+	  getyx(menu->win, ncy, ncx);
+	  if (isgrey)
+	    wattroff(menu->win, menu->grey);
+	  else if (isfore)
+	    wattroff(menu->win, menu->fore);
+	  wattron(menu->win, menu->back);
+	  for (j = 1; j < menu->spc_rows; j++)
+	    {
+	      if ((item_y + j) < getmaxy(menu->win))
+		{
+		  wmove(menu->win, item_y + j, item_x);
+		  for (k = 0; k < count; k++)
+		    waddch(menu->win, ' ');
+		}
+	      if ((cy + j) < getmaxy(menu->win))
+		(void)mvwaddch(menu->win, cy + j, cx - 1, menu->pad);
+	    }
+	  wmove(menu->win, ncy, ncx);
+	  if (!isback)
+	    wattroff(menu->win, menu->back);
+	}
+    }
+
+  /* Remove attributes */
+  if (isfore)
+    wattroff(menu->win, menu->fore);
+  if (isback)
+    wattroff(menu->win, menu->back);
+  if (isgrey)
+    wattroff(menu->win, menu->grey);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  void _nc_Draw_Menu(const MENU *)
+|
+|   Description   :  Display the menu in its windows
+|
+|   Return Values :  -
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(void)
+_nc_Draw_Menu(const MENU * menu)
+{
+  ITEM *item = menu->items[0];
+  ITEM *lasthor, *lastvert;
+  ITEM *hitem;
+  int y = 0;
+  chtype s_bkgd;
+
+  assert(item && menu->win);
+
+  s_bkgd = getbkgd(menu->win);
+  wbkgdset(menu->win, menu->back);
+  werase(menu->win);
+  wbkgdset(menu->win, s_bkgd);
+
+  lastvert = (menu->opt & O_NONCYCLIC) ? (ITEM *) 0 : item;
+
+  do
+    {
+      wmove(menu->win, y, 0);
+
+      hitem = item;
+      lasthor = (menu->opt & O_NONCYCLIC) ? (ITEM *) 0 : hitem;
+
+      do
+	{
+	  _nc_Post_Item(menu, hitem);
+
+	  wattron(menu->win, menu->back);
+	  if (((hitem = hitem->right) != lasthor) && hitem)
+	    {
+	      int i, j, cy, cx;
+	      chtype ch = ' ';
+
+	      getyx(menu->win, cy, cx);
+	      for (j = 0; j < menu->spc_rows; j++)
+		{
+		  wmove(menu->win, cy + j, cx);
+		  for (i = 0; i < menu->spc_cols; i++)
+		    {
+		      waddch(menu->win, ch);
+		    }
+		}
+	      wmove(menu->win, cy, cx + menu->spc_cols);
+	    }
+	}
+      while (hitem && (hitem != lasthor));
+      wattroff(menu->win, menu->back);
+
+      item = item->down;
+      y += menu->spc_rows;
+
+    }
+  while (item && (item != lastvert));
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  int post_menu(MENU* menu)
+|
+|   Description   :  Post a menu to the screen. This makes it visible.
+|
+|   Return Values :  E_OK                - success
+|                    E_BAD_ARGUMENT      - not a valid menu pointer
+|                    E_SYSTEM_ERROR      - error in lower layers
+|                    E_NOT_CONNECTED     - No items connected to menu
+|                    E_BAD_STATE         - Menu in userexit routine
+|                    E_POSTED            - Menu already posted
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+post_menu(MENU * menu)
+{
+  T((T_CALLED("post_menu(%p)"), (void *)menu));
+
+  if (!menu)
+    RETURN(E_BAD_ARGUMENT);
+
+  if (menu->status & _IN_DRIVER)
+    RETURN(E_BAD_STATE);
+
+  if (menu->status & _POSTED)
+    RETURN(E_POSTED);
+
+  if (menu->items && *(menu->items))
+    {
+      int y;
+      int h = 1 + menu->spc_rows * (menu->rows - 1);
+
+      WINDOW *win = Get_Menu_Window(menu);
+      int maxy = getmaxy(win);
+
+      if ((menu->win = newpad(h+2, menu->width+2)))
+	{
+	  y = (maxy >= h) ? h : maxy;
+	  if (y >= menu->height)
+	    y = menu->height;
+	  if (!(menu->sub = subpad(menu->win, y, menu->width, 0, 0)))
+	    RETURN(E_SYSTEM_ERROR);
+	}
+      else
+	RETURN(E_SYSTEM_ERROR);
+
+      if (menu->status & _LINK_NEEDED)
+	_nc_Link_Items(menu);
+    }
+  else
+    RETURN(E_NOT_CONNECTED);
+
+  menu->status |= _POSTED;
+
+  if (!(menu->opt & O_ONEVALUE))
+    {
+      ITEM **items;
+
+      for (items = menu->items; *items; items++)
+	{
+	  (*items)->value = FALSE;
+	}
+    }
+
+  _nc_Draw_Menu(menu);
+
+  Call_Hook(menu, menuinit);
+  Call_Hook(menu, iteminit);
+
+  _nc_Show_Menu(menu);
+
+  RETURN(E_OK);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  int unpost_menu(MENU*)
+|
+|   Description   :  Detach menu from screen
+|
+|   Return Values :  E_OK              - success
+|                    E_BAD_ARGUMENT    - not a valid menu pointer
+|                    E_BAD_STATE       - menu in userexit routine
+|                    E_NOT_POSTED      - menu is not posted
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+unpost_menu(MENU * menu)
+{
+  WINDOW *win;
+
+  T((T_CALLED("unpost_menu(%p)"), (void *)menu));
+
+  if (!menu)
+    RETURN(E_BAD_ARGUMENT);
+
+  if (menu->status & _IN_DRIVER)
+    RETURN(E_BAD_STATE);
+
+  if (!(menu->status & _POSTED))
+    RETURN(E_NOT_POSTED);
+
+  Call_Hook(menu, itemterm);
+  Call_Hook(menu, menuterm);
+
+  win = Get_Menu_Window(menu);
+  werase(win);
+  wsyncup(win);
+
+  assert(menu->sub);
+  delwin(menu->sub);
+  menu->sub = (WINDOW *)0;
+
+  assert(menu->win);
+  delwin(menu->win);
+  menu->win = (WINDOW *)0;
+
+  menu->status &= ~_POSTED;
+
+  RETURN(E_OK);
+}
+
+/* m_post.c ends here */
diff --git a/apps/lib/curses/pdcurses/menu/m_req_name.c b/apps/lib/curses/pdcurses/menu/m_req_name.c
new file mode 100644
index 0000000..50c0c68
--- /dev/null
+++ b/apps/lib/curses/pdcurses/menu/m_req_name.c
@@ -0,0 +1,125 @@
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
+* Module m_request_name                                                    *
+* Routines to handle external names of menu requests                       *
+***************************************************************************/
+
+#include "menu.priv.h"
+
+MODULE_ID("$Id: m_req_name.c,v 1.21 2009/10/10 16:17:23 tom Exp $")
+
+static const char *request_names[MAX_MENU_COMMAND - MIN_MENU_COMMAND + 1] =
+{
+  "LEFT_ITEM",
+  "RIGHT_ITEM",
+  "UP_ITEM",
+  "DOWN_ITEM",
+  "SCR_ULINE",
+  "SCR_DLINE",
+  "SCR_DPAGE",
+  "SCR_UPAGE",
+  "FIRST_ITEM",
+  "LAST_ITEM",
+  "NEXT_ITEM",
+  "PREV_ITEM",
+  "TOGGLE_ITEM",
+  "CLEAR_PATTERN",
+  "BACK_PATTERN",
+  "NEXT_MATCH",
+  "PREV_MATCH"
+};
+
+#define A_SIZE (sizeof(request_names)/sizeof(request_names[0]))
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  const char * menu_request_name (int request);
+|
+|   Description   :  Get the external name of a menu request.
+|
+|   Return Values :  Pointer to name      - on success
+|                    NULL                 - on invalid request code
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(const char *)
+menu_request_name(int request)
+{
+  T((T_CALLED("menu_request_name(%d)"), request));
+  if ((request < MIN_MENU_COMMAND) || (request > MAX_MENU_COMMAND))
+    {
+      SET_ERROR(E_BAD_ARGUMENT);
+      returnCPtr((const char *)0);
+    }
+  else
+    returnCPtr(request_names[request - MIN_MENU_COMMAND]);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  int menu_request_by_name (const char *str);
+|
+|   Description   :  Search for a request with this name.
+|
+|   Return Values :  Request Id       - on success
+|                    E_NO_MATCH       - request not found
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+menu_request_by_name(const char *str)
+{
+  /* because the table is so small, it doesn't really hurt
+     to run sequentially through it.
+   */
+  unsigned int i = 0;
+  char buf[16];
+
+  T((T_CALLED("menu_request_by_name(%s)"), _nc_visbuf(str)));
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
+	    returnCode(MIN_MENU_COMMAND + (int)i);
+	}
+    }
+  RETURN(E_NO_MATCH);
+}
+
+/* m_req_name.c ends here */
diff --git a/apps/lib/curses/pdcurses/menu/m_scale.c b/apps/lib/curses/pdcurses/menu/m_scale.c
new file mode 100644
index 0000000..26a560e
--- /dev/null
+++ b/apps/lib/curses/pdcurses/menu/m_scale.c
@@ -0,0 +1,76 @@
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
+/***************************************************************************
+* Module m_scale                                                           *
+* Menu scaling routine                                                     *
+***************************************************************************/
+
+#include "menu.priv.h"
+
+MODULE_ID("$Id: m_scale.c,v 1.10 2010/01/23 21:20:10 tom Exp $")
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  int scale_menu(const MENU *menu)
+|
+|   Description   :  Returns the minimum window size necessary for the
+|                    subwindow of menu.
+|
+|   Return Values :  E_OK                  - success
+|                    E_BAD_ARGUMENT        - invalid menu pointer
+|                    E_NOT_CONNECTED       - no items are connected to menu
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+scale_menu(const MENU * menu, int *rows, int *cols)
+{
+  T((T_CALLED("scale_menu(%p,%p,%p)"),
+     (const void *)menu,
+     (void *)rows,
+     (void *)cols));
+
+  if (!menu)
+    RETURN(E_BAD_ARGUMENT);
+
+  if (menu->items && *(menu->items))
+    {
+      if (rows)
+	*rows = menu->height;
+      if (cols)
+	*cols = menu->width;
+      RETURN(E_OK);
+    }
+  else
+    RETURN(E_NOT_CONNECTED);
+}
+
+/* m_scale.c ends here */
diff --git a/apps/lib/curses/pdcurses/menu/m_spacing.c b/apps/lib/curses/pdcurses/menu/m_spacing.c
new file mode 100644
index 0000000..1cfa2e1
--- /dev/null
+++ b/apps/lib/curses/pdcurses/menu/m_spacing.c
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
+/***************************************************************************
+* Module m_spacing                                                         *
+* Routines to handle spacing between entries                               *
+***************************************************************************/
+
+#include "menu.priv.h"
+
+MODULE_ID("$Id: m_spacing.c,v 1.18 2010/01/23 21:20:10 tom Exp $")
+
+#define MAX_SPC_DESC ((TABSIZE) ? (TABSIZE) : 8)
+#define MAX_SPC_COLS ((TABSIZE) ? (TABSIZE) : 8)
+#define MAX_SPC_ROWS (3)
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  int set_menu_spacing(MENU *menu,int desc, int r, int c);
+|
+|   Description   :  Set the spacing between entries
+|
+|   Return Values :  E_OK                 - on success
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+set_menu_spacing(MENU * menu, int s_desc, int s_row, int s_col)
+{
+  MENU *m;			/* split for ATAC workaround */
+
+  T((T_CALLED("set_menu_spacing(%p,%d,%d,%d)"),
+     (void *)menu, s_desc, s_row, s_col));
+
+  m = Normalize_Menu(menu);
+
+  assert(m);
+  if (m->status & _POSTED)
+    RETURN(E_POSTED);
+
+  if (((s_desc < 0) || (s_desc > MAX_SPC_DESC)) ||
+      ((s_row < 0) || (s_row > MAX_SPC_ROWS)) ||
+      ((s_col < 0) || (s_col > MAX_SPC_COLS)))
+    RETURN(E_BAD_ARGUMENT);
+
+  m->spc_desc = s_desc ? s_desc : 1;
+  m->spc_rows = s_row ? s_row : 1;
+  m->spc_cols = s_col ? s_col : 1;
+  _nc_Calculate_Item_Length_and_Width(m);
+
+  RETURN(E_OK);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  int menu_spacing (const MENU *,int *,int *,int *);
+|
+|   Description   :  Retrieve info about spacing between the entries
+|
+|   Return Values :  E_OK             - on success
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+menu_spacing(const MENU * menu, int *s_desc, int *s_row, int *s_col)
+{
+  const MENU *m;		/* split for ATAC workaround */
+
+  T((T_CALLED("menu_spacing(%p,%p,%p,%p)"),
+     (const void *)menu,
+     (void *)s_desc,
+     (void *)s_row,
+     (void *)s_col));
+
+  m = Normalize_Menu(menu);
+
+  assert(m);
+  if (s_desc)
+    *s_desc = m->spc_desc;
+  if (s_row)
+    *s_row = m->spc_rows;
+  if (s_col)
+    *s_col = m->spc_cols;
+
+  RETURN(E_OK);
+}
+
+/* m_spacing.c ends here */
diff --git a/apps/lib/curses/pdcurses/menu/m_sub.c b/apps/lib/curses/pdcurses/menu/m_sub.c
new file mode 100644
index 0000000..4bb373f
--- /dev/null
+++ b/apps/lib/curses/pdcurses/menu/m_sub.c
@@ -0,0 +1,100 @@
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
+/***************************************************************************
+* Module m_sub                                                             *
+* Menus subwindow association routines                                     *
+***************************************************************************/
+
+#include "menu.priv.h"
+
+MODULE_ID("$Id: m_sub.c,v 1.12 2010/01/23 21:20:11 tom Exp $")
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  int set_menu_sub(MENU *menu, WINDOW *win)
+|
+|   Description   :  Sets the subwindow of the menu.
+|
+|   Return Values :  E_OK           - success
+|                    E_POSTED       - menu is already posted
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+set_menu_sub(MENU * menu, WINDOW *win)
+{
+  T((T_CALLED("set_menu_sub(%p,%p)"), (void *)menu, (void *)win));
+
+  if (menu)
+    {
+      if (menu->status & _POSTED)
+	RETURN(E_POSTED);
+      else
+#if NCURSES_SP_FUNCS
+	{
+	  /* We ensure that usersub is never null. So even if a null
+	     WINDOW parameter is passed, we store the SCREENS stdscr.
+	     The only MENU that can have a null usersub is the static
+	     _nc_default_Menu.
+	   */
+	  SCREEN *sp = _nc_screen_of(menu->usersub);
+
+	  menu->usersub = win ? win : stdscr;
+	  _nc_Calculate_Item_Length_and_Width(menu);
+	}
+#else
+	menu->usersub = win;
+#endif
+    }
+  else
+    _nc_Default_Menu.usersub = win;
+
+  RETURN(E_OK);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  WINDOW* menu_sub(const MENU *menu)
+|
+|   Description   :  Returns a pointer to the subwindow of the menu
+|
+|   Return Values :  NULL on error, otherwise a pointer to the window
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(WINDOW *)
+menu_sub(const MENU * menu)
+{
+  const MENU *m = Normalize_Menu(menu);
+
+  T((T_CALLED("menu_sub(%p)"), (const void *)menu));
+  returnWin(Get_Menu_Window(m));
+}
+
+/* m_sub.c ends here */
diff --git a/apps/lib/curses/pdcurses/menu/m_trace.c b/apps/lib/curses/pdcurses/menu/m_trace.c
new file mode 100644
index 0000000..094ff86
--- /dev/null
+++ b/apps/lib/curses/pdcurses/menu/m_trace.c
@@ -0,0 +1,77 @@
+/****************************************************************************
+ * Copyright (c) 2004-2005,2010 Free Software Foundation, Inc.              *
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
+#include "menu.priv.h"
+
+MODULE_ID("$Id: m_trace.c,v 1.4 2010/01/23 21:20:10 tom Exp $")
+
+NCURSES_EXPORT(ITEM *)
+_nc_retrace_item(ITEM * code)
+{
+  T((T_RETURN("%p"), (void *)code));
+  return code;
+}
+
+NCURSES_EXPORT(ITEM **)
+_nc_retrace_item_ptr(ITEM ** code)
+{
+  T((T_RETURN("%p"), (void *)code));
+  return code;
+}
+
+NCURSES_EXPORT(Item_Options)
+_nc_retrace_item_opts(Item_Options code)
+{
+  T((T_RETURN("%d"), code));
+  return code;
+}
+
+NCURSES_EXPORT(MENU *)
+_nc_retrace_menu(MENU * code)
+{
+  T((T_RETURN("%p"), (void *)code));
+  return code;
+}
+
+NCURSES_EXPORT(Menu_Hook)
+_nc_retrace_menu_hook(Menu_Hook code)
+{
+  T((T_RETURN("%p"), code));
+  return code;
+}
+
+NCURSES_EXPORT(Menu_Options)
+_nc_retrace_menu_opts(Menu_Options code)
+{
+  T((T_RETURN("%d"), code));
+  return code;
+}
diff --git a/apps/lib/curses/pdcurses/menu/m_userptr.c b/apps/lib/curses/pdcurses/menu/m_userptr.c
new file mode 100644
index 0000000..67d6ecd
--- /dev/null
+++ b/apps/lib/curses/pdcurses/menu/m_userptr.c
@@ -0,0 +1,76 @@
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
+/***************************************************************************
+* Module m_userptr                                                         *
+* Associate application data with menus                                    *
+***************************************************************************/
+
+#include "menu.priv.h"
+
+MODULE_ID("$Id: m_userptr.c,v 1.17 2010/01/23 21:20:10 tom Exp $")
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  int set_menu_userptr(MENU *menu, void *userptr)
+|
+|   Description   :  Set the pointer that is reserved in any menu to store
+|                    application relevant informations.
+|
+|   Return Values :  E_OK         - success
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+set_menu_userptr(MENU * menu, void *userptr)
+{
+  T((T_CALLED("set_menu_userptr(%p,%p)"), (void *)menu, (void *)userptr));
+  Normalize_Menu(menu)->userptr = userptr;
+  RETURN(E_OK);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  void *menu_userptr(const MENU *menu)
+|
+|   Description   :  Return the pointer that is reserved in any menu to
+|                    store application relevant informations.
+|
+|   Return Values :  Value of the pointer. If no such pointer has been set,
+|                    NULL is returned
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(void *)
+menu_userptr(const MENU * menu)
+{
+  T((T_CALLED("menu_userptr(%p)"), (const void *)menu));
+  returnVoidPtr(Normalize_Menu(menu)->userptr);
+}
+
+/* m_userptr.c ends here */
diff --git a/apps/lib/curses/pdcurses/menu/m_win.c b/apps/lib/curses/pdcurses/menu/m_win.c
new file mode 100644
index 0000000..d025c1b
--- /dev/null
+++ b/apps/lib/curses/pdcurses/menu/m_win.c
@@ -0,0 +1,100 @@
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
+/***************************************************************************
+* Module m_win                                                             *
+* Menus window association routines                                        *
+***************************************************************************/
+
+#include "menu.priv.h"
+
+MODULE_ID("$Id: m_win.c,v 1.17 2010/01/23 21:20:11 tom Exp $")
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  int set_menu_win(MENU *menu, WINDOW *win)
+|
+|   Description   :  Sets the window of the menu.
+|
+|   Return Values :  E_OK               - success
+|                    E_POSTED           - menu is already posted
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(int)
+set_menu_win(MENU * menu, WINDOW *win)
+{
+  T((T_CALLED("set_menu_win(%p,%p)"), (void *)menu, (void *)win));
+
+  if (menu)
+    {
+      if (menu->status & _POSTED)
+	RETURN(E_POSTED);
+      else
+#if NCURSES_SP_FUNCS
+	{
+	  /* We ensure that userwin is never null. So even if a null
+	     WINDOW parameter is passed, we store the SCREENS stdscr.
+	     The only MENU that can have a null userwin is the static
+	     _nc_default_Menu.
+	   */
+	  SCREEN *sp = _nc_screen_of(menu->userwin);
+
+	  menu->userwin = win ? win : stdscr;
+	  _nc_Calculate_Item_Length_and_Width(menu);
+	}
+#else
+	menu->userwin = win;
+#endif
+    }
+  else
+    _nc_Default_Menu.userwin = win;
+
+  RETURN(E_OK);
+}
+
+/*---------------------------------------------------------------------------
+|   Facility      :  libnmenu
+|   Function      :  WINDOW* menu_win(const MENU*)
+|
+|   Description   :  Returns pointer to the window of the menu
+|
+|   Return Values :  NULL on error, otherwise pointer to window
++--------------------------------------------------------------------------*/
+NCURSES_EXPORT(WINDOW *)
+menu_win(const MENU * menu)
+{
+  const MENU *m = Normalize_Menu(menu);
+
+  T((T_CALLED("menu_win(%p)"), (const void *)menu));
+  returnWin(Get_Menu_UserWin(m));
+}
+
+/* m_win.c ends here */
diff --git a/apps/lib/curses/pdcurses/menu/menu.h b/apps/lib/curses/pdcurses/menu/menu.h
new file mode 100644
index 0000000..1fdd9e7
--- /dev/null
+++ b/apps/lib/curses/pdcurses/menu/menu.h
@@ -0,0 +1,261 @@
+/****************************************************************************
+ * Copyright (c) 1998-2007,2009 Free Software Foundation, Inc.              *
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
+/* $Id: menu.h,v 1.20 2009/04/05 00:28:07 tom Exp $ */
+
+#ifndef ETI_MENU
+#define ETI_MENU
+
+#ifdef AMIGA
+#define TEXT TEXT_ncurses
+#endif
+
+#include <curses.h>
+#include <eti.h>
+#include <ncurses_cfg.h>
+
+#ifdef __cplusplus
+extern "C" {
+#endif
+
+typedef int Menu_Options;
+typedef int Item_Options;
+
+/* Menu options: */
+#define O_ONEVALUE      (0x01)
+#define O_SHOWDESC      (0x02)
+#define O_ROWMAJOR      (0x04)
+#define O_IGNORECASE    (0x08)
+#define O_SHOWMATCH     (0x10)
+#define O_NONCYCLIC     (0x20)
+
+/* Item options: */
+#define O_SELECTABLE    (0x01)
+
+typedef struct
+{
+  const char* str;
+  unsigned short length;
+} TEXT;
+
+typedef struct tagITEM
+{
+  TEXT           name;        /* name of menu item                         */
+  TEXT           description; /* description of item, optional in display  */
+  struct tagMENU *imenu;      /* Pointer to parent menu                    */
+  void           *userptr;    /* Pointer to user defined per item data     */
+  Item_Options   opt;         /* Item options                              */
+  short          index;       /* Item number if connected to a menu        */
+  short          y;           /* y and x location of item in menu          */
+  short          x;
+  bool           value;       /* Selection value                           */
+
+  struct tagITEM *left;       /* neighbor items                            */
+  struct tagITEM *right;
+  struct tagITEM *up;
+  struct tagITEM *down;
+
+} ITEM;
+
+typedef void (*Menu_Hook)(struct tagMENU *);
+
+typedef struct tagMENU
+{
+  short          height;                /* Nr. of chars high               */
+  short          width;                 /* Nr. of chars wide               */
+  short          rows;                  /* Nr. of items high               */
+  short          cols;                  /* Nr. of items wide               */
+  short          frows;                 /* Nr. of formatted items high     */
+  short          fcols;                 /* Nr. of formatted items wide     */
+  short          arows;                 /* Nr. of items high (actual)      */
+  short          namelen;               /* Max. name length                */
+  short          desclen;               /* Max. description length         */
+  short          marklen;               /* Length of mark, if any          */
+  short          itemlen;               /* Length of one item              */
+  short          spc_desc;              /* Spacing for descriptor          */
+  short          spc_cols;              /* Spacing for columns             */
+  short          spc_rows;              /* Spacing for rows                */
+  char          *pattern;               /* Buffer to store match chars     */
+  short          pindex;                /* Index into pattern buffer       */
+  WINDOW        *win;                   /* Window containing menu          */
+  WINDOW        *sub;                   /* Subwindow for menu display      */
+  WINDOW        *userwin;               /* User's window                   */
+  WINDOW        *usersub;               /* User's subwindow                */
+  ITEM          **items;                /* array of items                  */
+  short          nitems;                /* Nr. of items in menu            */
+  ITEM          *curitem;               /* Current item                    */
+  short          toprow;                /* Top row of menu                 */
+  chtype         fore;                  /* Selection attribute             */
+  chtype         back;                  /* Nonselection attribute          */
+  chtype         grey;                  /* Inactive attribute              */
+  unsigned char  pad;                   /* Pad character                   */
+
+  Menu_Hook      menuinit;              /* User hooks                      */
+  Menu_Hook      menuterm;
+  Menu_Hook      iteminit;
+  Menu_Hook      itemterm;
+
+  void          *userptr;               /* Pointer to menus user data      */
+  char          *mark;                  /* Pointer to marker string        */
+
+  Menu_Options   opt;                   /* Menu options                    */
+  unsigned short status;                /* Internal state of menu          */
+
+} MENU;
+
+
+/* Define keys */
+
+#define REQ_LEFT_ITEM           (KEY_MAX + 1)
+#define REQ_RIGHT_ITEM          (KEY_MAX + 2)
+#define REQ_UP_ITEM             (KEY_MAX + 3)
+#define REQ_DOWN_ITEM           (KEY_MAX + 4)
+#define REQ_SCR_ULINE           (KEY_MAX + 5)
+#define REQ_SCR_DLINE           (KEY_MAX + 6)
+#define REQ_SCR_DPAGE           (KEY_MAX + 7)
+#define REQ_SCR_UPAGE           (KEY_MAX + 8)
+#define REQ_FIRST_ITEM          (KEY_MAX + 9)
+#define REQ_LAST_ITEM           (KEY_MAX + 10)
+#define REQ_NEXT_ITEM           (KEY_MAX + 11)
+#define REQ_PREV_ITEM           (KEY_MAX + 12)
+#define REQ_TOGGLE_ITEM         (KEY_MAX + 13)
+#define REQ_CLEAR_PATTERN       (KEY_MAX + 14)
+#define REQ_BACK_PATTERN        (KEY_MAX + 15)
+#define REQ_NEXT_MATCH          (KEY_MAX + 16)
+#define REQ_PREV_MATCH          (KEY_MAX + 17)
+
+#define MIN_MENU_COMMAND        (KEY_MAX + 1)
+#define MAX_MENU_COMMAND        (KEY_MAX + 17)
+
+/*
+ * Some AT&T code expects MAX_COMMAND to be out-of-band not
+ * just for menu commands but for forms ones as well.
+ */
+#if defined(MAX_COMMAND)
+#  if (MAX_MENU_COMMAND > MAX_COMMAND)
+#    error Something is wrong -- MAX_MENU_COMMAND is greater than MAX_COMMAND
+#  elif (MAX_COMMAND != (KEY_MAX + 128))
+#    error Something is wrong -- MAX_COMMAND is already inconsistently defined.
+#  endif
+#else
+#  define MAX_COMMAND (KEY_MAX + 128)
+#endif
+
+
+/* --------- prototypes for libmenu functions ----------------------------- */
+
+extern NCURSES_EXPORT(ITEM **)	menu_items (const MENU *);
+extern NCURSES_EXPORT(ITEM *)	current_item (const MENU *);
+extern NCURSES_EXPORT(ITEM *)	new_item (const char *,const char *);
+
+extern NCURSES_EXPORT(MENU *)	new_menu (ITEM **);
+
+extern NCURSES_EXPORT(Item_Options)	item_opts (const ITEM *);
+extern NCURSES_EXPORT(Menu_Options)	menu_opts (const MENU *);
+
+extern NCURSES_EXPORT(Menu_Hook)	item_init (const MENU *);
+extern NCURSES_EXPORT(Menu_Hook)	item_term (const MENU *);
+extern NCURSES_EXPORT(Menu_Hook)	menu_init (const MENU *);
+extern NCURSES_EXPORT(Menu_Hook)	menu_term (const MENU *);
+
+extern NCURSES_EXPORT(WINDOW *)	menu_sub (const MENU *);
+extern NCURSES_EXPORT(WINDOW *)	menu_win (const MENU *);
+
+extern NCURSES_EXPORT(const char *)	item_description (const ITEM *);
+extern NCURSES_EXPORT(const char *)	item_name (const ITEM *);
+extern NCURSES_EXPORT(const char *)	menu_mark (const MENU *);
+extern NCURSES_EXPORT(const char *)	menu_request_name (int);
+
+extern NCURSES_EXPORT(char *)	menu_pattern (const MENU *);
+
+extern NCURSES_EXPORT(void *)	menu_userptr (const MENU *);
+extern NCURSES_EXPORT(void *)	item_userptr (const ITEM *);
+
+extern NCURSES_EXPORT(chtype)	menu_back (const MENU *);
+extern NCURSES_EXPORT(chtype)	menu_fore (const MENU *);
+extern NCURSES_EXPORT(chtype)	menu_grey (const MENU *);
+
+extern NCURSES_EXPORT(int)	free_item (ITEM *);
+extern NCURSES_EXPORT(int)	free_menu (MENU *);
+extern NCURSES_EXPORT(int)	item_count (const MENU *);
+extern NCURSES_EXPORT(int)	item_index (const ITEM *);
+extern NCURSES_EXPORT(int)	item_opts_off (ITEM *,Item_Options);
+extern NCURSES_EXPORT(int)	item_opts_on (ITEM *,Item_Options);
+extern NCURSES_EXPORT(int)	menu_driver (MENU *,int);
+extern NCURSES_EXPORT(int)	menu_opts_off (MENU *,Menu_Options);
+extern NCURSES_EXPORT(int)	menu_opts_on (MENU *,Menu_Options);
+extern NCURSES_EXPORT(int)	menu_pad (const MENU *);
+extern NCURSES_EXPORT(int)	pos_menu_cursor (const MENU *);
+extern NCURSES_EXPORT(int)	post_menu (MENU *);
+extern NCURSES_EXPORT(int)	scale_menu (const MENU *,int *,int *);
+extern NCURSES_EXPORT(int)	set_current_item (MENU *menu,ITEM *item);
+extern NCURSES_EXPORT(int)	set_item_init (MENU *, Menu_Hook);
+extern NCURSES_EXPORT(int)	set_item_opts (ITEM *,Item_Options);
+extern NCURSES_EXPORT(int)	set_item_term (MENU *, Menu_Hook);
+extern NCURSES_EXPORT(int)	set_item_userptr (ITEM *, void *);
+extern NCURSES_EXPORT(int)	set_item_value (ITEM *,bool);
+extern NCURSES_EXPORT(int)	set_menu_back (MENU *,chtype);
+extern NCURSES_EXPORT(int)	set_menu_fore (MENU *,chtype);
+extern NCURSES_EXPORT(int)	set_menu_format (MENU *,int,int);
+extern NCURSES_EXPORT(int)	set_menu_grey (MENU *,chtype);
+extern NCURSES_EXPORT(int)	set_menu_init (MENU *, Menu_Hook);
+extern NCURSES_EXPORT(int)	set_menu_items (MENU *,ITEM **);
+extern NCURSES_EXPORT(int)	set_menu_mark (MENU *, const char *);
+extern NCURSES_EXPORT(int)	set_menu_opts (MENU *,Menu_Options);
+extern NCURSES_EXPORT(int)	set_menu_pad (MENU *,int);
+extern NCURSES_EXPORT(int)	set_menu_pattern (MENU *,const char *);
+extern NCURSES_EXPORT(int)	set_menu_sub (MENU *,WINDOW *);
+extern NCURSES_EXPORT(int)	set_menu_term (MENU *, Menu_Hook);
+extern NCURSES_EXPORT(int)	set_menu_userptr (MENU *,void *);
+extern NCURSES_EXPORT(int)	set_menu_win (MENU *,WINDOW *);
+extern NCURSES_EXPORT(int)	set_top_row (MENU *,int);
+extern NCURSES_EXPORT(int)	top_row (const MENU *);
+extern NCURSES_EXPORT(int)	unpost_menu (MENU *);
+extern NCURSES_EXPORT(int)	menu_request_by_name (const char *);
+extern NCURSES_EXPORT(int)	set_menu_spacing (MENU *,int,int,int);
+extern NCURSES_EXPORT(int)	menu_spacing (const MENU *,int *,int *,int *);
+
+
+extern NCURSES_EXPORT(bool)	item_value (const ITEM *);
+extern NCURSES_EXPORT(bool)	item_visible (const ITEM *);
+
+extern NCURSES_EXPORT(void)	menu_format (const MENU *,int *,int *);
+
+#if NCURSES_SP_FUNCS
+extern NCURSES_EXPORT(MENU *)	NCURSES_SP_NAME(new_menu) (SCREEN*, ITEM **);
+#endif
+
+#ifdef __cplusplus
+  }
+#endif
+
+#endif /* ETI_MENU */
diff --git a/apps/lib/curses/pdcurses/menu/menu.priv.h b/apps/lib/curses/pdcurses/menu/menu.priv.h
new file mode 100644
index 0000000..f6edc1a
--- /dev/null
+++ b/apps/lib/curses/pdcurses/menu/menu.priv.h
@@ -0,0 +1,157 @@
+/****************************************************************************
+ * Copyright (c) 1998-2005,2009 Free Software Foundation, Inc.              *
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
+/* $Id: menu.priv.h,v 1.23 2009/02/28 21:02:57 juergen Exp $ */
+
+/***************************************************************************
+* Module menu.priv.h                                                       *
+* Top level private header file for all libnmenu modules                   *
+***************************************************************************/
+
+#ifndef MENU_PRIV_H_incl
+#define MENU_PRIV_H_incl 1
+
+#include "../pdcurses/curspriv.h"
+#include <errno.h>
+#include "mf_common.h"
+#include "menu.h"
+
+/* Backspace code */
+#define BS (8)
+
+extern NCURSES_EXPORT_VAR(ITEM) _nc_Default_Item;
+extern NCURSES_EXPORT_VAR(MENU) _nc_Default_Menu;
+
+/* Normalize item to default if none was given */
+#define Normalize_Item( item ) ((item)=(item)?(item):&_nc_Default_Item)
+
+/* Normalize menu to default if none was given */
+#define Normalize_Menu( menu ) ((menu)=(menu)?(menu):&_nc_Default_Menu)
+
+#define Get_Menu_Screen( menu ) (menu->userwin ? \
+				 _nc_screen_of(menu->userwin) : CURRENT_SCREEN)
+
+/* Get the user defined (framing) window of the menu */
+#define Get_Menu_UserWin(menu) ((menu)->userwin ? \
+    (menu)->userwin : stdscr)
+
+/* Normalize menu window */
+#define Get_Menu_Window(  menu ) \
+   ((menu)->usersub  ? (menu)->usersub  : Get_Menu_UserWin(menu))
+
+/* menu specific status flags */
+#define _LINK_NEEDED    (0x04)
+#define _MARK_ALLOCATED (0x08)
+
+#define ALL_MENU_OPTS (                 \
+		       O_ONEVALUE     | \
+		       O_SHOWDESC     | \
+		       O_ROWMAJOR     | \
+		       O_IGNORECASE   | \
+		       O_SHOWMATCH    | \
+		       O_NONCYCLIC    )
+
+#define ALL_ITEM_OPTS (O_SELECTABLE)
+
+/* Move to the window position of an item and draw it */
+#define Move_And_Post_Item(menu,item) \
+  {wmove((menu)->win,(menu)->spc_rows*(item)->y,((menu)->itemlen+(menu)->spc_cols)*(item)->x);\
+   _nc_Post_Item((menu),(item));}
+
+#define Move_To_Current_Item(menu,item) \
+  if ( (item) != (menu)->curitem)\
+    {\
+      Move_And_Post_Item(menu,item);\
+      Move_And_Post_Item(menu,(menu)->curitem);\
+    }
+
+/* This macro ensures, that the item becomes visible, if possible with the
+   specified row as the top row of the window. If this is not possible,
+   the top row will be adjusted and the value is stored in the row argument.
+*/
+#define Adjust_Current_Item(menu,row,item) \
+  { if ((item)->y < row) \
+      row = (item)->y;\
+    if ( (item)->y >= (row + (menu)->arows) )\
+      row = ( (item)->y < ((menu)->rows - row) ) ? \
+            (item)->y : (menu)->rows - (menu)->arows;\
+    _nc_New_TopRow_and_CurrentItem(menu,row,item); }
+
+/* Reset the match pattern buffer */
+#define Reset_Pattern(menu) \
+  { (menu)->pindex = 0; \
+    (menu)->pattern[0] = '\0'; }
+
+#define UChar(c)	((unsigned char)(c))
+
+/* Internal functions. */
+extern NCURSES_EXPORT(void) _nc_Draw_Menu (const MENU *);
+extern NCURSES_EXPORT(void) _nc_Show_Menu (const MENU *);
+extern NCURSES_EXPORT(void) _nc_Calculate_Item_Length_and_Width (MENU *);
+extern NCURSES_EXPORT(int)  _nc_Calculate_Text_Width(const TEXT *);
+extern NCURSES_EXPORT(void) _nc_Post_Item (const MENU *, const ITEM *);
+extern NCURSES_EXPORT(bool) _nc_Connect_Items (MENU *, ITEM **);
+extern NCURSES_EXPORT(void) _nc_Disconnect_Items (MENU *);
+extern NCURSES_EXPORT(void) _nc_New_TopRow_and_CurrentItem (MENU *,int, ITEM *);
+extern NCURSES_EXPORT(void) _nc_Link_Items (MENU *);
+extern NCURSES_EXPORT(int)  _nc_Match_Next_Character_In_Item_Name (MENU*,int,ITEM**);
+extern NCURSES_EXPORT(int)  _nc_menu_cursor_pos (const MENU* menu, const ITEM* item,
+				int* pY, int* pX);
+
+#ifdef TRACE
+
+#define returnItem(code)	TRACE_RETURN(code,item)
+#define returnItemPtr(code)	TRACE_RETURN(code,item_ptr)
+#define returnItemOpts(code)	TRACE_RETURN(code,item_opts)
+#define returnMenu(code)	TRACE_RETURN(code,menu)
+#define returnMenuHook(code)	TRACE_RETURN(code,menu_hook)
+#define returnMenuOpts(code)	TRACE_RETURN(code,menu_opts)
+
+extern NCURSES_EXPORT(ITEM *)	    _nc_retrace_item (ITEM *);
+extern NCURSES_EXPORT(ITEM **)	    _nc_retrace_item_ptr (ITEM **);
+extern NCURSES_EXPORT(Item_Options) _nc_retrace_item_opts (Item_Options);
+extern NCURSES_EXPORT(MENU *)	    _nc_retrace_menu (MENU *);
+extern NCURSES_EXPORT(Menu_Hook)    _nc_retrace_menu_hook (Menu_Hook);
+extern NCURSES_EXPORT(Menu_Options) _nc_retrace_menu_opts (Menu_Options);
+
+#else /* !TRACE */
+
+#define returnItem(code)	return code
+#define returnItemPtr(code)	return code
+#define returnItemOpts(code)	return code
+#define returnMenu(code)	return code
+#define returnMenuHook(code)	return code
+#define returnMenuOpts(code)	return code
+
+#endif /* TRACE/!TRACE */
+
+#endif /* MENU_PRIV_H_incl */
diff --git a/apps/lib/curses/pdcurses/menu/mf_common.h b/apps/lib/curses/pdcurses/menu/mf_common.h
new file mode 100644
index 0000000..681672d
--- /dev/null
+++ b/apps/lib/curses/pdcurses/menu/mf_common.h
@@ -0,0 +1,95 @@
+/****************************************************************************
+ * Copyright (c) 1998-2003,2004 Free Software Foundation, Inc.              *
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
+/* $Id: mf_common.h,v 0.22 2005/11/26 15:26:52 tom Exp $ */
+
+/* Common internal header for menu and form library */
+
+#ifndef MF_COMMON_H_incl
+#define MF_COMMON_H_incl 1
+
+#include <ncurses_cfg.h>
+#include <curses.h>
+
+#include <stdlib.h>
+#include <sys/types.h>
+#include <assert.h>
+#include <string.h>
+#include <ctype.h>
+#include <errno.h>
+
+#if DECL_ERRNO
+extern int errno;
+#endif
+
+/* in case of debug version we ignore the suppression of assertions */
+#ifdef TRACE
+#  ifdef NDEBUG
+#    undef NDEBUG
+#  endif
+#endif
+
+#include <nc_alloc.h>
+
+#if USE_RCS_IDS
+#define MODULE_ID(id) static const char Ident[] = id;
+#else
+#define MODULE_ID(id) /*nothing*/
+#endif
+
+
+/* Maximum regular 8-bit character code */
+#define MAX_REGULAR_CHARACTER (0xff)
+
+#define SET_ERROR(code) (errno=(code))
+#define GET_ERROR()     (errno)
+
+#ifdef TRACE
+#define RETURN(code)    returnCode( SET_ERROR(code) )
+#else
+#define RETURN(code)    return( SET_ERROR(code) )
+#endif
+
+/* The few common values in the status fields for menus and forms */
+#define _POSTED         (0x01U)  /* menu or form is posted                  */
+#define _IN_DRIVER      (0x02U)  /* menu or form is processing hook routine */
+
+/* Call object hook */
+#define Call_Hook( object, handler ) \
+   if ( (object) != 0 && ((object)->handler) != (void *) 0 )\
+   {\
+	(object)->status |= _IN_DRIVER;\
+	(object)->handler(object);\
+	(object)->status &= ~_IN_DRIVER;\
+   }
+
+#endif /* MF_COMMON_H_incl */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
