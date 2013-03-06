Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo4.mail-out.ovh.net ([188.165.54.143]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UDAjn-0000YH-HG
 for barebox@lists.infradead.org; Wed, 06 Mar 2013 09:35:34 +0000
Received: from mail413.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 5CF41104E784
 for <barebox@lists.infradead.org>; Wed,  6 Mar 2013 10:45:18 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed,  6 Mar 2013 10:29:41 +0100
Message-Id: <1362562189-17783-12-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 12/20] app: add tinycurses support
To: barebox@lists.infradead.org

take from corboot and upated to use ansi

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 apps/Kconfig                                |    1 +
 apps/Makefile                               |    3 +
 apps/lib/Kconfig                            |    1 +
 apps/lib/Makefile                           |    1 +
 apps/lib/Makefile.include                   |    1 +
 apps/lib/curses/Kconfig                     |   14 +
 apps/lib/curses/Makefile                    |    1 +
 apps/lib/curses/Makefile.include            |    3 +
 apps/lib/curses/tinycurses/Makefile         |    3 +
 apps/lib/curses/tinycurses/Makefile.include |    1 +
 apps/lib/curses/tinycurses/colors.c         |   62 +
 apps/lib/curses/tinycurses/curses.h         | 1680 +++++++++++++++++++++++++++
 apps/lib/curses/tinycurses/curses.priv.h    | 1317 +++++++++++++++++++++
 apps/lib/curses/tinycurses/keyboard.c       |  247 ++++
 apps/lib/curses/tinycurses/local.h          |   89 ++
 apps/lib/curses/tinycurses/tinycurses.c     | 1016 ++++++++++++++++
 16 files changed, 4440 insertions(+)
 create mode 100644 apps/lib/Kconfig
 create mode 100644 apps/lib/Makefile
 create mode 100644 apps/lib/Makefile.include
 create mode 100644 apps/lib/curses/Kconfig
 create mode 100644 apps/lib/curses/Makefile
 create mode 100644 apps/lib/curses/Makefile.include
 create mode 100644 apps/lib/curses/tinycurses/Makefile
 create mode 100644 apps/lib/curses/tinycurses/Makefile.include
 create mode 100644 apps/lib/curses/tinycurses/colors.c
 create mode 100644 apps/lib/curses/tinycurses/curses.h
 create mode 100644 apps/lib/curses/tinycurses/curses.priv.h
 create mode 100644 apps/lib/curses/tinycurses/keyboard.c
 create mode 100644 apps/lib/curses/tinycurses/local.h
 create mode 100644 apps/lib/curses/tinycurses/tinycurses.c

diff --git a/apps/Kconfig b/apps/Kconfig
index 324e14d..a025955 100644
--- a/apps/Kconfig
+++ b/apps/Kconfig
@@ -8,6 +8,7 @@ menuconfig APPLICATIONS
 if APPLICATIONS
 
 source "apps/libc/Kconfig"
+source "apps/lib/Kconfig"
 
 menu "memory layout"
 
diff --git a/apps/Makefile b/apps/Makefile
index 7f609e7..cce547e 100644
--- a/apps/Makefile
+++ b/apps/Makefile
@@ -1,6 +1,8 @@
 
 APP_CPPFLAGS += -include $(srctree)/apps/include/libc_config.h
 APP_CPPFLAGS += -I$(srctree)/apps/include
+include $(srctree)/apps/lib/Makefile.include
+APP_CPPFLAGS += $(APP_CPPFLAGS-y)
 export APP_CPPFLAGS
 
 apps-$(CONFIG_APP_EXAMPLE) += example
@@ -19,6 +21,7 @@ $(obj)/include/barebox/syscalls.h: $(srctree)/include/apps/syscalls.h
 
 obj-y += libc/
 obj-y += utils/
+obj-y += lib/
 
 barebox-app-header += $(obj)/include/types.h
 barebox-app-header += $(obj)/include/barebox/syscalls.h
diff --git a/apps/lib/Kconfig b/apps/lib/Kconfig
new file mode 100644
index 0000000..6725322
--- /dev/null
+++ b/apps/lib/Kconfig
@@ -0,0 +1 @@
+source apps/lib/curses/Kconfig
diff --git a/apps/lib/Makefile b/apps/lib/Makefile
new file mode 100644
index 0000000..3d3653e
--- /dev/null
+++ b/apps/lib/Makefile
@@ -0,0 +1 @@
+obj-y += curses/
diff --git a/apps/lib/Makefile.include b/apps/lib/Makefile.include
new file mode 100644
index 0000000..c0563cb
--- /dev/null
+++ b/apps/lib/Makefile.include
@@ -0,0 +1 @@
+include $(srctree)/apps/lib/curses/Makefile.include
diff --git a/apps/lib/curses/Kconfig b/apps/lib/curses/Kconfig
new file mode 100644
index 0000000..c6bc573
--- /dev/null
+++ b/apps/lib/curses/Kconfig
@@ -0,0 +1,14 @@
+menuconfig APP_LIB_CURSES
+	bool "curses"
+
+if APP_LIB_CURSES
+
+choice
+	prompt "curses implementation"
+
+config APP_LIB_TINYCURSES
+	bool "tiny"
+
+endchoice
+
+endif
diff --git a/apps/lib/curses/Makefile b/apps/lib/curses/Makefile
new file mode 100644
index 0000000..aeebdd5
--- /dev/null
+++ b/apps/lib/curses/Makefile
@@ -0,0 +1 @@
+obj-$(CONFIG_APP_LIB_TINYCURSES) += tinycurses/
diff --git a/apps/lib/curses/Makefile.include b/apps/lib/curses/Makefile.include
new file mode 100644
index 0000000..8cf9d52
--- /dev/null
+++ b/apps/lib/curses/Makefile.include
@@ -0,0 +1,3 @@
+inc-$(CONFIG_APP_LIB_TINYCURSES) += $(srctree)/apps/lib/curses/tinycurses/Makefile.include
+
+include $(inc-y)
diff --git a/apps/lib/curses/tinycurses/Makefile b/apps/lib/curses/tinycurses/Makefile
new file mode 100644
index 0000000..05ff063
--- /dev/null
+++ b/apps/lib/curses/tinycurses/Makefile
@@ -0,0 +1,3 @@
+app-y += keyboard.o
+app-y += tinycurses.o
+app-y += colors.o
diff --git a/apps/lib/curses/tinycurses/Makefile.include b/apps/lib/curses/tinycurses/Makefile.include
new file mode 100644
index 0000000..2fe01f7
--- /dev/null
+++ b/apps/lib/curses/tinycurses/Makefile.include
@@ -0,0 +1 @@
+APP_CPPFLAGS-y += -I$(srctree)/apps/lib/curses/tinycurses/
diff --git a/apps/lib/curses/tinycurses/colors.c b/apps/lib/curses/tinycurses/colors.c
new file mode 100644
index 0000000..5065f5c
--- /dev/null
+++ b/apps/lib/curses/tinycurses/colors.c
@@ -0,0 +1,62 @@
+/*
+ * This file is part of the libpayload project.
+ *
+ * Copyright (C) 2007 Uwe Hermann <uwe@hermann-uwe.de>
+ * Copyright (C) 2008 Advanced Micro Devices, Inc.
+ *
+ * Redistribution and use in source and binary forms, with or without
+ * modification, are permitted provided that the following conditions
+ * are met:
+ * 1. Redistributions of source code must retain the above copyright
+ *    notice, this list of conditions and the following disclaimer.
+ * 2. Redistributions in binary form must reproduce the above copyright
+ *    notice, this list of conditions and the following disclaimer in the
+ *    documentation and/or other materials provided with the distribution.
+ * 3. The name of the author may not be used to endorse or promote products
+ *    derived from this software without specific prior written permission.
+ *
+ * THIS SOFTWARE IS PROVIDED BY THE AUTHOR AND CONTRIBUTORS ``AS IS'' AND
+ * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
+ * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
+ * ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE LIABLE
+ * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
+ * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
+ * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
+ * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
+ * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
+ * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
+ * SUCH DAMAGE.
+ */
+
+/* Color pair management */
+
+#include "local.h"
+
+unsigned char color_pairs[256] = {
+	[0] = 0x07,
+};
+
+int start_color(void)
+{
+	return 0;
+}
+
+int init_pair(short index, short fg, short bg)
+{
+	if (index == 0 || index > 255)
+		return ERR;
+
+	color_pairs[index] = ((bg & 0xF) << 4) | (fg & 0xF);
+	return 0;
+}
+
+int pair_content(short index, short *fg, short *bg)
+{
+	if (index < 0 || index > 255)
+		return ERR;
+
+	*bg = (color_pairs[index] >> 4) & 0xF;
+	*fg = color_pairs[index] & 0xF;
+
+	return 0;
+}
diff --git a/apps/lib/curses/tinycurses/curses.h b/apps/lib/curses/tinycurses/curses.h
new file mode 100644
index 0000000..d9b1bf9
--- /dev/null
+++ b/apps/lib/curses/tinycurses/curses.h
@@ -0,0 +1,1680 @@
+/****************************************************************************
+ * Copyright (c) 1998-2005,2006 Free Software Foundation, Inc.              *
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
+ *  Author: Zeyd M. Ben-Halim <zmbenhal@netcom.com> 1992,1995               *
+ *     and: Eric S. Raymond <esr@snark.thyrsus.com>                         *
+ *     and: Thomas E. Dickey                        1996-on                 *
+ ****************************************************************************/
+
+/* $Id: curses.h.in,v 1.167 2006/11/26 01:14:54 tom Exp $ */
+
+#ifndef _CURSES_H
+#define _CURSES_H
+
+#define CURSES 1
+#define CURSES_H 1
+
+/* This should be defined for the enhanced functionality to be visible.
+ * However, some of the wide-character (enhanced) functionality is missing.
+ * So we do not define it (yet).
+#define _XOPEN_CURSES 1
+ */
+
+/* These are defined only in curses.h, and are used for conditional compiles */
+#define NCURSES_VERSION_MAJOR 5
+#define NCURSES_VERSION_MINOR 6
+#define NCURSES_VERSION_PATCH 20061217
+
+/* This is defined in more than one ncurses header, for identification */
+#undef  NCURSES_VERSION
+#define NCURSES_VERSION "5.6"
+
+/*
+ * Identify the mouse encoding version.
+ */
+// #define NCURSES_MOUSE_VERSION 1
+
+/*
+ * Definitions to facilitate DLL's.
+ */
+//// #include <ncursesw/ncurses_dll.h>
+
+////---------------------------------------------------------------------------
+//// From ncurses_dll.h:
+////---------------------------------------------------------------------------
+/* Take care of non-cygwin platforms */
+#if !defined(NCURSES_IMPEXP)
+#  define NCURSES_IMPEXP /* nothing */
+#endif
+#if !defined(NCURSES_API)
+#  define NCURSES_API /* nothing */
+#endif
+#if !defined(NCURSES_EXPORT)
+#  define NCURSES_EXPORT(type) NCURSES_IMPEXP type NCURSES_API
+#endif
+#if !defined(NCURSES_EXPORT_VAR)
+#  define NCURSES_EXPORT_VAR(type) NCURSES_IMPEXP type
+#endif
+////---------------------------------------------------------------------------
+
+/*
+ * User-definable tweak to disable the include of <stdbool.h>.
+ */
+#ifndef NCURSES_ENABLE_STDBOOL_H
+#define NCURSES_ENABLE_STDBOOL_H 0	//// XXX
+#endif
+
+/*
+ * NCURSES_ATTR_T is used to quiet compiler warnings when building ncurses
+ * configured using --disable-macros.
+ */
+#ifdef NCURSES_NOMACROS
+#ifndef NCURSES_ATTR_T
+#define NCURSES_ATTR_T attr_t
+#endif
+#endif /* NCURSES_NOMACROS */
+
+#ifndef NCURSES_ATTR_T
+#define NCURSES_ATTR_T int
+#endif
+
+/*
+ * Expands to 'const' if ncurses is configured using --enable-const.  Note that
+ * doing so makes it incompatible with other implementations of X/Open Curses.
+ */
+#undef  NCURSES_CONST
+#define NCURSES_CONST const
+
+#undef NCURSES_INLINE
+#define NCURSES_INLINE inline
+
+/*
+ * The internal type used for color values
+ */
+#undef	NCURSES_COLOR_T
+#define	NCURSES_COLOR_T short
+
+/*
+ * The internal type used for window dimensions.
+ */
+#undef	NCURSES_SIZE_T
+#define	NCURSES_SIZE_T short
+
+/*
+ * Control whether tparm() supports varargs or fixed-parameter list.
+ */
+#undef NCURSES_TPARM_VARARGS
+#define NCURSES_TPARM_VARARGS 1
+
+/*
+ * NCURSES_CH_T is used in building the library, but not used otherwise in
+ * this header file, since that would make the normal/wide-character versions
+ * of the header incompatible.
+ */
+#undef	NCURSES_CH_T
+#define NCURSES_CH_T cchar_t
+
+#if 0 && defined(_LP64)
+typedef unsigned chtype;
+typedef unsigned mmask_t;
+#else
+typedef unsigned long chtype;
+typedef unsigned long mmask_t;
+#endif
+
+#include <stdio.h>
+//// #include <ncursesw/unctrl.h>
+#include <stdarg.h>	/* we need va_list */
+//// #define va_list int	// FIXME
+
+#define _XOPEN_SOURCE_EXTENDED 1	// XXX
+typedef unsigned long wchar_t;
+//// #ifdef _XOPEN_SOURCE_EXTENDED
+//// #include <stddef.h>	/* we want wchar_t */
+//// #endif /* _XOPEN_SOURCE_EXTENDED */
+
+/* XSI and SVr4 specify that curses implements 'bool'.  However, C++ may also
+ * implement it.  If so, we must use the C++ compiler's type to avoid conflict
+ * with other interfaces.
+ *
+ * A further complication is that <stdbool.h> may declare 'bool' to be a
+ * different type, such as an enum which is not necessarily compatible with
+ * C++.  If we have <stdbool.h>, make 'bool' a macro, so users may #undef it.
+ * Otherwise, let it remain a typedef to avoid conflicts with other #define's.
+ * In either case, make a typedef for NCURSES_BOOL which can be used if needed
+ * from either C or C++.
+ */
+
+#undef TRUE
+#define TRUE    1
+
+#undef FALSE
+#define FALSE   0
+
+typedef unsigned char NCURSES_BOOL;
+
+#if defined(__cplusplus)	/* __cplusplus, etc. */
+
+/* use the C++ compiler's bool type */
+#define NCURSES_BOOL bool
+
+#else			/* c89, c99, etc. */
+
+#if NCURSES_ENABLE_STDBOOL_H
+#include <stdbool.h>
+/* use whatever the C compiler decides bool really is */
+#define NCURSES_BOOL bool
+#else
+/* there is no predefined bool - use our own */
+#undef bool
+#define bool NCURSES_BOOL
+#endif
+
+#endif /* !__cplusplus, etc. */
+
+#ifdef __cplusplus
+extern "C" {
+#define NCURSES_CAST(type,value) static_cast<type>(value)
+#else
+#define NCURSES_CAST(type,value) (type)(value)
+#endif
+
+/*
+ * XSI attributes.  In the ncurses implementation, they are identical to the
+ * A_ attributes.
+ */
+#define WA_ATTRIBUTES	A_ATTRIBUTES
+#define WA_NORMAL	A_NORMAL
+#define WA_STANDOUT	A_STANDOUT
+#define WA_UNDERLINE	A_UNDERLINE
+#define WA_REVERSE	A_REVERSE
+#define WA_BLINK	A_BLINK
+#define WA_DIM		A_DIM
+#define WA_BOLD		A_BOLD
+#define WA_ALTCHARSET	A_ALTCHARSET
+#define WA_INVIS	A_INVIS
+#define WA_PROTECT	A_PROTECT
+#define WA_HORIZONTAL	A_HORIZONTAL
+#define WA_LEFT		A_LEFT
+#define WA_LOW		A_LOW
+#define WA_RIGHT	A_RIGHT
+#define WA_TOP		A_TOP
+#define WA_VERTICAL	A_VERTICAL
+
+/* colors */
+extern NCURSES_EXPORT_VAR(int) COLORS;
+extern NCURSES_EXPORT_VAR(int) COLOR_PAIRS;
+
+#define COLOR_BLACK	0
+#define COLOR_RED	1
+#define COLOR_GREEN	2
+#define COLOR_YELLOW	3
+#define COLOR_BLUE	4
+#define COLOR_MAGENTA	5
+#define COLOR_CYAN	6
+#define COLOR_WHITE	7
+
+/* line graphics */
+
+#if 0
+extern NCURSES_EXPORT_VAR(chtype*) _nc_acs_map(void);
+#define acs_map (_nc_acs_map())
+#else
+extern NCURSES_EXPORT_VAR(chtype) acs_map[];
+#endif
+
+#define NCURSES_ACS(c)	(acs_map[NCURSES_CAST(unsigned char,c)])
+
+/* VT100 symbols begin here */
+#define ACS_ULCORNER	NCURSES_ACS('l') /* upper left corner */
+#define ACS_LLCORNER	NCURSES_ACS('m') /* lower left corner */
+#define ACS_URCORNER	NCURSES_ACS('k') /* upper right corner */
+#define ACS_LRCORNER	NCURSES_ACS('j') /* lower right corner */
+#define ACS_LTEE	NCURSES_ACS('t') /* tee pointing right */
+#define ACS_RTEE	NCURSES_ACS('u') /* tee pointing left */
+#define ACS_BTEE	NCURSES_ACS('v') /* tee pointing up */
+#define ACS_TTEE	NCURSES_ACS('w') /* tee pointing down */
+#define ACS_HLINE	NCURSES_ACS('q') /* horizontal line */
+#define ACS_VLINE	NCURSES_ACS('x') /* vertical line */
+#define ACS_PLUS	NCURSES_ACS('n') /* large plus or crossover */
+#define ACS_S1		NCURSES_ACS('o') /* scan line 1 */
+#define ACS_S9		NCURSES_ACS('s') /* scan line 9 */
+#define ACS_DIAMOND	NCURSES_ACS('`') /* diamond */
+#define ACS_CKBOARD	NCURSES_ACS('a') /* checker board (stipple) */
+#define ACS_DEGREE	NCURSES_ACS('f') /* degree symbol */
+#define ACS_PLMINUS	NCURSES_ACS('g') /* plus/minus */
+#define ACS_BULLET	NCURSES_ACS('~') /* bullet */
+/* Teletype 5410v1 symbols begin here */
+#define ACS_LARROW	NCURSES_ACS(',') /* arrow pointing left */
+#define ACS_RARROW	NCURSES_ACS('+') /* arrow pointing right */
+#define ACS_DARROW	NCURSES_ACS('.') /* arrow pointing down */
+#define ACS_UARROW	NCURSES_ACS('-') /* arrow pointing up */
+#define ACS_BOARD	NCURSES_ACS('h') /* board of squares */
+#define ACS_LANTERN	NCURSES_ACS('i') /* lantern symbol */
+#define ACS_BLOCK	NCURSES_ACS('0') /* solid square block */
+/*
+ * These aren't documented, but a lot of System Vs have them anyway
+ * (you can spot pprryyzz{{||}} in a lot of AT&T terminfo strings).
+ * The ACS_names may not match AT&T's, our source didn't know them.
+ */
+#define ACS_S3		NCURSES_ACS('p') /* scan line 3 */
+#define ACS_S7		NCURSES_ACS('r') /* scan line 7 */
+#define ACS_LEQUAL	NCURSES_ACS('y') /* less/equal */
+#define ACS_GEQUAL	NCURSES_ACS('z') /* greater/equal */
+#define ACS_PI		NCURSES_ACS('{') /* Pi */
+#define ACS_NEQUAL	NCURSES_ACS('|') /* not equal */
+#define ACS_STERLING	NCURSES_ACS('}') /* UK pound sign */
+
+/*
+ * Line drawing ACS names are of the form ACS_trbl, where t is the top, r
+ * is the right, b is the bottom, and l is the left.  t, r, b, and l might
+ * be B (blank), S (single), D (double), or T (thick).  The subset defined
+ * here only uses B and S.
+ */
+#define ACS_BSSB	ACS_ULCORNER
+#define ACS_SSBB	ACS_LLCORNER
+#define ACS_BBSS	ACS_URCORNER
+#define ACS_SBBS	ACS_LRCORNER
+#define ACS_SBSS	ACS_RTEE
+#define ACS_SSSB	ACS_LTEE
+#define ACS_SSBS	ACS_BTEE
+#define ACS_BSSS	ACS_TTEE
+#define ACS_BSBS	ACS_HLINE
+#define ACS_SBSB	ACS_VLINE
+#define ACS_SSSS	ACS_PLUS
+
+#undef	ERR
+#define ERR     (-1)
+
+#undef	OK
+#define OK      (0)
+
+/* values for the _flags member */
+#define _SUBWIN         0x01	/* is this a sub-window? */
+#define _ENDLINE        0x02	/* is the window flush right? */
+#define _FULLWIN        0x04	/* is the window full-screen? */
+#define _SCROLLWIN      0x08	/* bottom edge is at screen bottom? */
+#define _ISPAD	        0x10	/* is this window a pad? */
+#define _HASMOVED       0x20	/* has cursor moved since last refresh? */
+#define _WRAPPED        0x40	/* cursor was just wrappped */
+
+/*
+ * this value is used in the firstchar and lastchar fields to mark
+ * unchanged lines
+ */
+#define _NOCHANGE       -1
+
+/*
+ * this value is used in the oldindex field to mark lines created by insertions
+ * and scrolls.
+ */
+#define _NEWINDEX	-1
+
+typedef struct screen  SCREEN;
+typedef struct _win_st WINDOW;
+
+typedef	chtype	attr_t;		/* ...must be at least as wide as chtype */
+
+#ifdef _XOPEN_SOURCE_EXTENDED
+
+#if 0
+#ifdef mblen			/* libutf8.h defines it w/o undefining first */
+#undef mblen
+#endif
+#include <libutf8.h>
+#endif
+
+#if 1
+//// #include <wchar.h>		/* ...to get mbstate_t, etc. */
+//typedef unsigned long wchar_t;	// XXX
+typedef unsigned long wint_t;	// XXX
+#endif
+
+#if 0
+typedef unsigned short wchar_t1;
+#endif
+
+#if 0
+typedef unsigned int wint_t1;
+#endif
+
+#define CCHARW_MAX	5
+typedef struct
+{
+    attr_t	attr;
+    wchar_t	chars[CCHARW_MAX];
+#if 0
+    int		ext_color;	/* color pair, must be more than 16-bits */
+#endif
+}
+cchar_t;
+
+#endif /* _XOPEN_SOURCE_EXTENDED */
+
+struct ldat;
+
+struct _win_st
+{
+	NCURSES_SIZE_T _cury, _curx; /* current cursor position */
+
+	/* window location and size */
+	NCURSES_SIZE_T _maxy, _maxx; /* maximums of x and y, NOT window size */
+	NCURSES_SIZE_T _begy, _begx; /* screen coords of upper-left-hand corner */
+
+	short   _flags;		/* window state flags */
+
+	/* attribute tracking */
+	attr_t  _attrs;		/* current attribute for non-space character */
+	chtype  _bkgd;		/* current background char/attribute pair */
+
+	/* option values set by user */
+	bool	_notimeout;	/* no time out on function-key entry? */
+	bool	_clear;		/* consider all data in the window invalid? */
+	bool	_leaveok;	/* OK to not reset cursor on exit? */
+	bool	_scroll;	/* OK to scroll this window? */
+	bool	_idlok;		/* OK to use insert/delete line? */
+	bool	_idcok;		/* OK to use insert/delete char? */
+	bool	_immed;		/* window in immed mode? (not yet used) */
+	bool	_sync;		/* window in sync mode? */
+	bool	_use_keypad;	/* process function keys into KEY_ symbols? */
+	int	_delay;		/* 0 = nodelay, <0 = blocking, >0 = delay */
+
+	struct ldat *_line;	/* the actual line data */
+
+	/* global screen state */
+	NCURSES_SIZE_T _regtop;	/* top line of scrolling region */
+	NCURSES_SIZE_T _regbottom; /* bottom line of scrolling region */
+
+	/* these are used only if this is a sub-window */
+	int	_parx;		/* x coordinate of this window in parent */
+	int	_pary;		/* y coordinate of this window in parent */
+	WINDOW	*_parent;	/* pointer to parent if a sub-window */
+
+	/* these are used only if this is a pad */
+	struct pdat
+	{
+	    NCURSES_SIZE_T _pad_y,      _pad_x;
+	    NCURSES_SIZE_T _pad_top,    _pad_left;
+	    NCURSES_SIZE_T _pad_bottom, _pad_right;
+	} _pad;
+
+	NCURSES_SIZE_T _yoffset; /* real begy is _begy + _yoffset */
+
+#ifdef _XOPEN_SOURCE_EXTENDED
+	cchar_t  _bkgrnd;	/* current background char/attribute pair */
+//// #if 0
+#if 1
+	int	_color;		/* current color-pair for non-space character */
+#endif
+#endif
+};
+
+extern NCURSES_EXPORT_VAR(WINDOW *)   stdscr;
+extern NCURSES_EXPORT_VAR(WINDOW *)   curscr;
+extern NCURSES_EXPORT_VAR(WINDOW *)   newscr;
+
+extern NCURSES_EXPORT_VAR(int)	LINES;
+extern NCURSES_EXPORT_VAR(int)	COLS;
+extern NCURSES_EXPORT_VAR(int)	TABSIZE;
+
+/*
+ * This global was an undocumented feature under AIX curses.
+ */
+extern NCURSES_EXPORT_VAR(int) ESCDELAY;	/* ESC expire time in milliseconds */
+
+/*
+ * These functions are extensions - not in XSI Curses.
+ */
+#if 1
+extern NCURSES_EXPORT(bool) is_term_resized (int, int);
+extern NCURSES_EXPORT(char *) keybound (int, int);
+extern NCURSES_EXPORT(const char *) curses_version (void);
+extern NCURSES_EXPORT(int) assume_default_colors (int, int);
+extern NCURSES_EXPORT(int) define_key (const char *, int);
+extern NCURSES_EXPORT(int) key_defined (const char *);
+extern NCURSES_EXPORT(int) keyok (int, bool);
+extern NCURSES_EXPORT(int) resize_term (int, int);
+extern NCURSES_EXPORT(int) resizeterm (int, int);
+extern NCURSES_EXPORT(int) use_default_colors (void);
+extern NCURSES_EXPORT(int) use_extended_names (bool);
+extern NCURSES_EXPORT(int) use_legacy_coding (int);
+extern NCURSES_EXPORT(int) wresize (WINDOW *, int, int);
+extern NCURSES_EXPORT(void) nofilter(void);
+#else
+#define curses_version() NCURSES_VERSION
+#endif
+
+/*
+ * This is an extension to support events...
+ */
+#if 1
+#ifdef NCURSES_WGETCH_EVENTS
+#if !defined(__BEOS__)		/* Fix _nc_timed_wait() on BEOS... */
+#  define NCURSES_EVENT_VERSION	1
+#endif	/* !defined(__BEOS__) */
+
+/*
+ * Bits to set in _nc_event.data.flags
+ */
+#  define _NC_EVENT_TIMEOUT_MSEC	1
+#  define _NC_EVENT_FILE		2
+#  define _NC_EVENT_FILE_READABLE	2
+#  if 0					/* Not supported yet... */
+#    define _NC_EVENT_FILE_WRITABLE	4
+#    define _NC_EVENT_FILE_EXCEPTION	8
+#  endif
+
+typedef struct
+{
+    int type;
+    union
+    {
+	long timeout_msec;	/* _NC_EVENT_TIMEOUT_MSEC */
+	struct
+	{
+	    unsigned int flags;
+	    int fd;
+	    unsigned int result;
+	} fev;				/* _NC_EVENT_FILE */
+    } data;
+} _nc_event;
+
+typedef struct
+{
+    int count;
+    int result_flags;	/* _NC_EVENT_TIMEOUT_MSEC or _NC_EVENT_FILE_READABLE */
+    _nc_event *events[1];
+} _nc_eventlist;
+
+extern NCURSES_EXPORT(int) wgetch_events(WINDOW *, _nc_eventlist *);	/* experimental */
+extern NCURSES_EXPORT(int) wgetnstr_events(WINDOW *,char *,int,_nc_eventlist *);/* experimental */
+
+#endif /* NCURSES_WGETCH_EVENTS */
+#endif /* NCURSES_EXT_FUNCS */
+
+/*
+ * GCC (and some other compilers) define '__attribute__'; we're using this
+ * macro to alert the compiler to flag inconsistencies in printf/scanf-like
+ * function calls.  Just in case '__attribute__' isn't defined, make a dummy.
+ * Old versions of G++ do not accept it anyway, at least not consistently with
+ * GCC.
+ */
+#if !(defined(__GNUC__) || defined(__GNUG__) || defined(__attribute__))
+#define __attribute__(p) /* nothing */
+#endif
+
+/*
+ * We cannot define these in ncurses_cfg.h, since they require parameters to be
+ * passed (that is non-portable).  If you happen to be using gcc with warnings
+ * enabled, define
+ *	GCC_PRINTF
+ *	GCC_SCANF
+ * to improve checking of calls to printw(), etc.
+ */
+#ifndef GCC_PRINTFLIKE
+#if defined(GCC_PRINTF) && !defined(printf)
+#define GCC_PRINTFLIKE(fmt,var) __attribute__((format(printf,fmt,var)))
+#else
+#define GCC_PRINTFLIKE(fmt,var) /*nothing*/
+#endif
+#endif
+
+#ifndef GCC_SCANFLIKE
+#if defined(GCC_SCANF) && !defined(scanf)
+#define GCC_SCANFLIKE(fmt,var)  __attribute__((format(scanf,fmt,var)))
+#else
+#define GCC_SCANFLIKE(fmt,var)  /*nothing*/
+#endif
+#endif
+
+#ifndef	GCC_NORETURN
+#define	GCC_NORETURN /* nothing */
+#endif
+
+#ifndef	GCC_UNUSED
+#define	GCC_UNUSED /* nothing */
+#endif
+
+/*
+ * Function prototypes.  This is the complete XSI Curses list of required
+ * functions.  Those marked `generated' will have sources generated from the
+ * macro definitions later in this file, in order to satisfy XPG4.2
+ * requirements.
+ */
+
+extern NCURSES_EXPORT(int) addch (const chtype);			/* generated */
+extern NCURSES_EXPORT(int) addchnstr (const chtype *, int);		/* generated */
+extern NCURSES_EXPORT(int) addchstr (const chtype *);			/* generated */
+extern NCURSES_EXPORT(int) addnstr (const char *, int);			/* generated */
+extern NCURSES_EXPORT(int) addstr (const char *);			/* generated */
+extern NCURSES_EXPORT(int) attroff (NCURSES_ATTR_T);			/* generated */
+extern NCURSES_EXPORT(int) attron (NCURSES_ATTR_T);			/* generated */
+extern NCURSES_EXPORT(int) attrset (NCURSES_ATTR_T);			/* generated */
+extern NCURSES_EXPORT(int) attr_get (attr_t *, short *, void *);	/* generated */
+extern NCURSES_EXPORT(int) attr_off (attr_t, void *);			/* generated */
+extern NCURSES_EXPORT(int) attr_on (attr_t, void *);			/* generated */
+extern NCURSES_EXPORT(int) attr_set (attr_t, short, void *);		/* generated */
+extern NCURSES_EXPORT(int) baudrate (void);				/* implemented */
+extern NCURSES_EXPORT(int) beep  (void);				/* implemented */
+extern NCURSES_EXPORT(int) bkgd (chtype);				/* generated */
+extern NCURSES_EXPORT(void) bkgdset (chtype);				/* generated */
+extern NCURSES_EXPORT(int) border (chtype,chtype,chtype,chtype,chtype,chtype,chtype,chtype);	/* generated */
+extern NCURSES_EXPORT(int) box (WINDOW *, chtype, chtype);		/* generated */
+extern NCURSES_EXPORT(bool) can_change_color (void);			/* implemented */
+extern NCURSES_EXPORT(int) cbreak (void);				/* implemented */
+extern NCURSES_EXPORT(int) chgat (int, attr_t, short, const void *);	/* generated */
+extern NCURSES_EXPORT(int) clear (void);				/* generated */
+extern NCURSES_EXPORT(int) clearok (WINDOW *,bool);			/* implemented */
+extern NCURSES_EXPORT(int) clrtobot (void);				/* generated */
+extern NCURSES_EXPORT(int) clrtoeol (void);				/* generated */
+extern NCURSES_EXPORT(int) color_content (short,short*,short*,short*);	/* implemented */
+extern NCURSES_EXPORT(int) color_set (short,void*);			/* generated */
+extern NCURSES_EXPORT(int) COLOR_PAIR (int);				/* generated */
+extern NCURSES_EXPORT(int) copywin (const WINDOW*,WINDOW*,int,int,int,int,int,int,int);	/* implemented */
+extern NCURSES_EXPORT(int) curs_set (int);				/* implemented */
+extern NCURSES_EXPORT(int) def_prog_mode (void);			/* implemented */
+extern NCURSES_EXPORT(int) def_shell_mode (void);			/* implemented */
+extern NCURSES_EXPORT(int) delay_output (int);				/* implemented */
+extern NCURSES_EXPORT(int) delch (void);				/* generated */
+extern NCURSES_EXPORT(void) delscreen (SCREEN *);			/* implemented */
+extern NCURSES_EXPORT(int) delwin (WINDOW *);				/* implemented */
+extern NCURSES_EXPORT(int) deleteln (void);				/* generated */
+extern NCURSES_EXPORT(WINDOW *) derwin (WINDOW *,int,int,int,int);	/* implemented */
+extern NCURSES_EXPORT(int) doupdate (void);				/* implemented */
+extern NCURSES_EXPORT(WINDOW *) dupwin (WINDOW *);			/* implemented */
+extern NCURSES_EXPORT(int) echo (void);					/* implemented */
+extern NCURSES_EXPORT(int) echochar (const chtype);			/* generated */
+extern NCURSES_EXPORT(int) erase (void);				/* generated */
+extern NCURSES_EXPORT(int) endwin (void);				/* implemented */
+extern NCURSES_EXPORT(char) erasechar (void);				/* implemented */
+extern NCURSES_EXPORT(void) filter (void);				/* implemented */
+extern NCURSES_EXPORT(int) flash (void);				/* implemented */
+extern NCURSES_EXPORT(int) flushinp (void);				/* implemented */
+extern NCURSES_EXPORT(chtype) getbkgd (WINDOW *);			/* generated */
+extern NCURSES_EXPORT(int) getch (void);				/* generated */
+extern NCURSES_EXPORT(int) getnstr (char *, int);			/* generated */
+extern NCURSES_EXPORT(int) getstr (char *);				/* generated */
+extern NCURSES_EXPORT(WINDOW *) getwin (FILE *);			/* implemented */
+extern NCURSES_EXPORT(int) halfdelay (int);				/* implemented */
+extern NCURSES_EXPORT(bool) has_colors (void);				/* implemented */
+extern NCURSES_EXPORT(bool) has_ic (void);				/* implemented */
+extern NCURSES_EXPORT(bool) has_il (void);				/* implemented */
+extern NCURSES_EXPORT(int) hline (chtype, int);				/* generated */
+extern NCURSES_EXPORT(void) idcok (WINDOW *, bool);			/* implemented */
+extern NCURSES_EXPORT(int) idlok (WINDOW *, bool);			/* implemented */
+extern NCURSES_EXPORT(void) immedok (WINDOW *, bool);			/* implemented */
+extern NCURSES_EXPORT(chtype) inch (void);				/* generated */
+extern NCURSES_EXPORT(int) inchnstr (chtype *, int);			/* generated */
+extern NCURSES_EXPORT(int) inchstr (chtype *);				/* generated */
+extern NCURSES_EXPORT(WINDOW *) initscr (void);				/* implemented */
+extern NCURSES_EXPORT(int) init_color (short,short,short,short);	/* implemented */
+extern NCURSES_EXPORT(int) init_pair (short,short,short);		/* implemented */
+extern NCURSES_EXPORT(int) innstr (char *, int);			/* generated */
+extern NCURSES_EXPORT(int) insch (chtype);				/* generated */
+extern NCURSES_EXPORT(int) insdelln (int);				/* generated */
+extern NCURSES_EXPORT(int) insertln (void);				/* generated */
+extern NCURSES_EXPORT(int) insnstr (const char *, int);			/* generated */
+extern NCURSES_EXPORT(int) insstr (const char *);			/* generated */
+extern NCURSES_EXPORT(int) instr (char *);				/* generated */
+extern NCURSES_EXPORT(int) intrflush (WINDOW *,bool);			/* implemented */
+extern NCURSES_EXPORT(bool) isendwin (void);				/* implemented */
+extern NCURSES_EXPORT(bool) is_linetouched (WINDOW *,int);		/* implemented */
+extern NCURSES_EXPORT(bool) is_wintouched (WINDOW *);			/* implemented */
+extern NCURSES_EXPORT(NCURSES_CONST char *) keyname (int);		/* implemented */
+extern NCURSES_EXPORT(int) keypad (WINDOW *,bool);			/* implemented */
+extern NCURSES_EXPORT(char) killchar (void);				/* implemented */
+extern NCURSES_EXPORT(int) leaveok (WINDOW *,bool);			/* implemented */
+extern NCURSES_EXPORT(char *) longname (void);				/* implemented */
+extern NCURSES_EXPORT(int) meta (WINDOW *,bool);			/* implemented */
+extern NCURSES_EXPORT(int) move (int, int);				/* generated */
+extern NCURSES_EXPORT(int) mvaddch (int, int, const chtype);		/* generated */
+extern NCURSES_EXPORT(int) mvaddchnstr (int, int, const chtype *, int);	/* generated */
+extern NCURSES_EXPORT(int) mvaddchstr (int, int, const chtype *);	/* generated */
+extern NCURSES_EXPORT(int) mvaddnstr (int, int, const char *, int);	/* generated */
+extern NCURSES_EXPORT(int) mvaddstr (int, int, const char *);		/* generated */
+extern NCURSES_EXPORT(int) mvchgat (int, int, int, attr_t, short, const void *);	/* generated */
+extern NCURSES_EXPORT(int) mvcur (int,int,int,int);			/* implemented */
+extern NCURSES_EXPORT(int) mvdelch (int, int);				/* generated */
+extern NCURSES_EXPORT(int) mvderwin (WINDOW *, int, int);		/* implemented */
+extern NCURSES_EXPORT(int) mvgetch (int, int);				/* generated */
+extern NCURSES_EXPORT(int) mvgetnstr (int, int, char *, int);		/* generated */
+extern NCURSES_EXPORT(int) mvgetstr (int, int, char *);			/* generated */
+extern NCURSES_EXPORT(int) mvhline (int, int, chtype, int);		/* generated */
+extern NCURSES_EXPORT(chtype) mvinch (int, int);			/* generated */
+extern NCURSES_EXPORT(int) mvinchnstr (int, int, chtype *, int);	/* generated */
+extern NCURSES_EXPORT(int) mvinchstr (int, int, chtype *);		/* generated */
+extern NCURSES_EXPORT(int) mvinnstr (int, int, char *, int);		/* generated */
+extern NCURSES_EXPORT(int) mvinsch (int, int, chtype);			/* generated */
+extern NCURSES_EXPORT(int) mvinsnstr (int, int, const char *, int);	/* generated */
+extern NCURSES_EXPORT(int) mvinsstr (int, int, const char *);		/* generated */
+extern NCURSES_EXPORT(int) mvinstr (int, int, char *);			/* generated */
+extern NCURSES_EXPORT(int) mvprintw (int,int, const char *,...)		/* implemented */
+		GCC_PRINTFLIKE(3,4);
+extern NCURSES_EXPORT(int) mvscanw (int,int, NCURSES_CONST char *,...)	/* implemented */
+		GCC_SCANFLIKE(3,4);
+extern NCURSES_EXPORT(int) mvvline (int, int, chtype, int);		/* generated */
+extern NCURSES_EXPORT(int) mvwaddch (WINDOW *, int, int, const chtype);	/* generated */
+extern NCURSES_EXPORT(int) mvwaddchnstr (WINDOW *, int, int, const chtype *, int);/* generated */
+extern NCURSES_EXPORT(int) mvwaddchstr (WINDOW *, int, int, const chtype *);	/* generated */
+extern NCURSES_EXPORT(int) mvwaddnstr (WINDOW *, int, int, const char *, int);	/* generated */
+extern NCURSES_EXPORT(int) mvwaddstr (WINDOW *, int, int, const char *);	/* generated */
+extern NCURSES_EXPORT(int) mvwchgat (WINDOW *, int, int, int, attr_t, short, const void *);/* generated */
+extern NCURSES_EXPORT(int) mvwdelch (WINDOW *, int, int);		/* generated */
+extern NCURSES_EXPORT(int) mvwgetch (WINDOW *, int, int);		/* generated */
+extern NCURSES_EXPORT(int) mvwgetnstr (WINDOW *, int, int, char *, int);	/* generated */
+extern NCURSES_EXPORT(int) mvwgetstr (WINDOW *, int, int, char *);	/* generated */
+extern NCURSES_EXPORT(int) mvwhline (WINDOW *, int, int, chtype, int);	/* generated */
+extern NCURSES_EXPORT(int) mvwin (WINDOW *,int,int);			/* implemented */
+extern NCURSES_EXPORT(chtype) mvwinch (WINDOW *, int, int);			/* generated */
+extern NCURSES_EXPORT(int) mvwinchnstr (WINDOW *, int, int, chtype *, int);	/* generated */
+extern NCURSES_EXPORT(int) mvwinchstr (WINDOW *, int, int, chtype *);		/* generated */
+extern NCURSES_EXPORT(int) mvwinnstr (WINDOW *, int, int, char *, int);		/* generated */
+extern NCURSES_EXPORT(int) mvwinsch (WINDOW *, int, int, chtype);		/* generated */
+extern NCURSES_EXPORT(int) mvwinsnstr (WINDOW *, int, int, const char *, int);	/* generated */
+extern NCURSES_EXPORT(int) mvwinsstr (WINDOW *, int, int, const char *);		/* generated */
+extern NCURSES_EXPORT(int) mvwinstr (WINDOW *, int, int, char *);		/* generated */
+extern NCURSES_EXPORT(int) mvwprintw (WINDOW*,int,int, const char *,...)	/* implemented */
+		GCC_PRINTFLIKE(4,5);
+extern NCURSES_EXPORT(int) mvwscanw (WINDOW *,int,int, NCURSES_CONST char *,...)	/* implemented */
+		GCC_SCANFLIKE(4,5);
+extern NCURSES_EXPORT(int) mvwvline (WINDOW *,int, int, chtype, int);	/* generated */
+extern NCURSES_EXPORT(int) napms (int);					/* implemented */
+extern NCURSES_EXPORT(WINDOW *) newpad (int,int);				/* implemented */
+extern NCURSES_EXPORT(SCREEN *) newterm (NCURSES_CONST char *,FILE *,FILE *);	/* implemented */
+extern NCURSES_EXPORT(WINDOW *) newwin (int,int,int,int);			/* implemented */
+extern NCURSES_EXPORT(int) nl (void);					/* implemented */
+extern NCURSES_EXPORT(int) nocbreak (void);				/* implemented */
+extern NCURSES_EXPORT(int) nodelay (WINDOW *,bool);			/* implemented */
+extern NCURSES_EXPORT(int) noecho (void);				/* implemented */
+extern NCURSES_EXPORT(int) nonl (void);					/* implemented */
+extern NCURSES_EXPORT(void) noqiflush (void);				/* implemented */
+extern NCURSES_EXPORT(int) noraw (void);				/* implemented */
+extern NCURSES_EXPORT(int) notimeout (WINDOW *,bool);			/* implemented */
+extern NCURSES_EXPORT(int) overlay (const WINDOW*,WINDOW *);		/* implemented */
+extern NCURSES_EXPORT(int) overwrite (const WINDOW*,WINDOW *);		/* implemented */
+extern NCURSES_EXPORT(int) pair_content (short,short*,short*);		/* implemented */
+extern NCURSES_EXPORT(int) PAIR_NUMBER (int);				/* generated */
+extern NCURSES_EXPORT(int) pechochar (WINDOW *, const chtype);		/* implemented */
+extern NCURSES_EXPORT(int) pnoutrefresh (WINDOW*,int,int,int,int,int,int);/* implemented */
+extern NCURSES_EXPORT(int) prefresh (WINDOW *,int,int,int,int,int,int);	/* implemented */
+extern NCURSES_EXPORT(int) printw (const char *,...)			/* implemented */
+		GCC_PRINTFLIKE(1,2);
+extern NCURSES_EXPORT(int) putwin (WINDOW *, FILE *);			/* implemented */
+extern NCURSES_EXPORT(void) qiflush (void);				/* implemented */
+extern NCURSES_EXPORT(int) raw (void);					/* implemented */
+extern NCURSES_EXPORT(int) redrawwin (WINDOW *);			/* generated */
+extern NCURSES_EXPORT(int) refresh (void);				/* generated */
+extern NCURSES_EXPORT(int) resetty (void);				/* implemented */
+extern NCURSES_EXPORT(int) reset_prog_mode (void);			/* implemented */
+extern NCURSES_EXPORT(int) reset_shell_mode (void);			/* implemented */
+extern NCURSES_EXPORT(int) ripoffline (int, int (*)(WINDOW *, int));	/* implemented */
+extern NCURSES_EXPORT(int) savetty (void);				/* implemented */
+extern NCURSES_EXPORT(int) scanw (NCURSES_CONST char *,...)		/* implemented */
+		GCC_SCANFLIKE(1,2);
+extern NCURSES_EXPORT(int) scr_dump (const char *);			/* implemented */
+extern NCURSES_EXPORT(int) scr_init (const char *);			/* implemented */
+extern NCURSES_EXPORT(int) scrl (int);					/* generated */
+extern NCURSES_EXPORT(int) scroll (WINDOW *);				/* generated */
+extern NCURSES_EXPORT(int) scrollok (WINDOW *,bool);			/* implemented */
+extern NCURSES_EXPORT(int) scr_restore (const char *);			/* implemented */
+extern NCURSES_EXPORT(int) scr_set (const char *);			/* implemented */
+extern NCURSES_EXPORT(int) setscrreg (int,int);				/* generated */
+extern NCURSES_EXPORT(SCREEN *) set_term (SCREEN *);			/* implemented */
+extern NCURSES_EXPORT(int) slk_attroff (const chtype);			/* implemented */
+extern NCURSES_EXPORT(int) slk_attr_off (const attr_t, void *);		/* generated:WIDEC */
+extern NCURSES_EXPORT(int) slk_attron (const chtype);			/* implemented */
+extern NCURSES_EXPORT(int) slk_attr_on (attr_t,void*);			/* generated:WIDEC */
+extern NCURSES_EXPORT(int) slk_attrset (const chtype);			/* implemented */
+extern NCURSES_EXPORT(attr_t) slk_attr (void);				/* implemented */
+extern NCURSES_EXPORT(int) slk_attr_set (const attr_t,short,void*);	/* implemented */
+extern NCURSES_EXPORT(int) slk_clear (void);				/* implemented */
+extern NCURSES_EXPORT(int) slk_color (short);				/* implemented */
+extern NCURSES_EXPORT(int) slk_init (int);				/* implemented */
+extern NCURSES_EXPORT(char *) slk_label (int);				/* implemented */
+extern NCURSES_EXPORT(int) slk_noutrefresh (void);			/* implemented */
+extern NCURSES_EXPORT(int) slk_refresh (void);				/* implemented */
+extern NCURSES_EXPORT(int) slk_restore (void);				/* implemented */
+extern NCURSES_EXPORT(int) slk_set (int,const char *,int);		/* implemented */
+extern NCURSES_EXPORT(int) slk_touch (void);				/* implemented */
+extern NCURSES_EXPORT(int) standout (void);				/* generated */
+extern NCURSES_EXPORT(int) standend (void);				/* generated */
+extern NCURSES_EXPORT(int) start_color (void);				/* implemented */
+extern NCURSES_EXPORT(WINDOW *) subpad (WINDOW *, int, int, int, int);	/* implemented */
+extern NCURSES_EXPORT(WINDOW *) subwin (WINDOW *,int,int,int,int);	/* implemented */
+extern NCURSES_EXPORT(int) syncok (WINDOW *, bool);			/* implemented */
+extern NCURSES_EXPORT(chtype) termattrs (void);				/* implemented */
+extern NCURSES_EXPORT(char *) termname (void);				/* implemented */
+extern NCURSES_EXPORT(void) timeout (int);				/* generated */
+extern NCURSES_EXPORT(int) touchline (WINDOW *, int, int);		/* generated */
+extern NCURSES_EXPORT(int) touchwin (WINDOW *);				/* generated */
+extern NCURSES_EXPORT(int) typeahead (int);				/* implemented */
+extern NCURSES_EXPORT(int) ungetch (int);				/* implemented */
+extern NCURSES_EXPORT(int) untouchwin (WINDOW *);			/* generated */
+extern NCURSES_EXPORT(void) use_env (bool);				/* implemented */
+extern NCURSES_EXPORT(int) vidattr (chtype);				/* implemented */
+extern NCURSES_EXPORT(int) vidputs (chtype, int (*)(int));		/* implemented */
+extern NCURSES_EXPORT(int) vline (chtype, int);				/* generated */
+extern NCURSES_EXPORT(int) vwprintw (WINDOW *, const char *,va_list);	/* implemented */
+extern NCURSES_EXPORT(int) vw_printw (WINDOW *, const char *,va_list);	/* generated */
+extern NCURSES_EXPORT(int) vwscanw (WINDOW *, NCURSES_CONST char *,va_list);	/* implemented */
+extern NCURSES_EXPORT(int) vw_scanw (WINDOW *, NCURSES_CONST char *,va_list);	/* generated */
+extern NCURSES_EXPORT(int) waddch (WINDOW *, const chtype);		/* implemented */
+extern NCURSES_EXPORT(int) waddchnstr (WINDOW *,const chtype *,int);	/* implemented */
+extern NCURSES_EXPORT(int) waddchstr (WINDOW *,const chtype *);		/* generated */
+extern NCURSES_EXPORT(int) waddnstr (WINDOW *,const char *,int);	/* implemented */
+extern NCURSES_EXPORT(int) waddstr (WINDOW *,const char *);		/* generated */
+extern NCURSES_EXPORT(int) wattron (WINDOW *, int);			/* generated */
+extern NCURSES_EXPORT(int) wattroff (WINDOW *, int);			/* generated */
+extern NCURSES_EXPORT(int) wattrset (WINDOW *, int);			/* generated */
+extern NCURSES_EXPORT(int) wattr_get (WINDOW *, attr_t *, short *, void *);	/* generated */
+extern NCURSES_EXPORT(int) wattr_on (WINDOW *, attr_t, void *);		/* implemented */
+extern NCURSES_EXPORT(int) wattr_off (WINDOW *, attr_t, void *);	/* implemented */
+extern NCURSES_EXPORT(int) wattr_set (WINDOW *, attr_t, short, void *);	/* generated */
+extern NCURSES_EXPORT(int) wbkgd (WINDOW *, chtype);			/* implemented */
+extern NCURSES_EXPORT(void) wbkgdset (WINDOW *,chtype);			/* implemented */
+extern NCURSES_EXPORT(int) wborder (WINDOW *,chtype,chtype,chtype,chtype,chtype,chtype,chtype,chtype);	/* implemented */
+extern NCURSES_EXPORT(int) wchgat (WINDOW *, int, attr_t, short, const void *);/* implemented */
+extern NCURSES_EXPORT(int) wclear (WINDOW *);				/* implemented */
+extern NCURSES_EXPORT(int) wclrtobot (WINDOW *);			/* implemented */
+extern NCURSES_EXPORT(int) wclrtoeol (WINDOW *);			/* implemented */
+extern NCURSES_EXPORT(int) wcolor_set (WINDOW*,short,void*);		/* implemented */
+extern NCURSES_EXPORT(void) wcursyncup (WINDOW *);			/* implemented */
+extern NCURSES_EXPORT(int) wdelch (WINDOW *);				/* implemented */
+extern NCURSES_EXPORT(int) wdeleteln (WINDOW *);			/* generated */
+extern NCURSES_EXPORT(int) wechochar (WINDOW *, const chtype);		/* implemented */
+extern NCURSES_EXPORT(int) werase (WINDOW *);				/* implemented */
+extern NCURSES_EXPORT(int) wgetch (WINDOW *);				/* implemented */
+extern NCURSES_EXPORT(int) wgetnstr (WINDOW *,char *,int);		/* implemented */
+extern NCURSES_EXPORT(int) wgetstr (WINDOW *, char *);			/* generated */
+extern NCURSES_EXPORT(int) whline (WINDOW *, chtype, int);		/* implemented */
+extern NCURSES_EXPORT(chtype) winch (WINDOW *);				/* implemented */
+extern NCURSES_EXPORT(int) winchnstr (WINDOW *, chtype *, int);		/* implemented */
+extern NCURSES_EXPORT(int) winchstr (WINDOW *, chtype *);		/* generated */
+extern NCURSES_EXPORT(int) winnstr (WINDOW *, char *, int);		/* implemented */
+extern NCURSES_EXPORT(int) winsch (WINDOW *, chtype);			/* implemented */
+extern NCURSES_EXPORT(int) winsdelln (WINDOW *,int);			/* implemented */
+extern NCURSES_EXPORT(int) winsertln (WINDOW *);			/* generated */
+extern NCURSES_EXPORT(int) winsnstr (WINDOW *, const char *,int);	/* implemented */
+extern NCURSES_EXPORT(int) winsstr (WINDOW *, const char *);		/* generated */
+extern NCURSES_EXPORT(int) winstr (WINDOW *, char *);			/* generated */
+extern NCURSES_EXPORT(int) wmove (WINDOW *,int,int);			/* implemented */
+extern NCURSES_EXPORT(int) wnoutrefresh (WINDOW *);			/* implemented */
+extern NCURSES_EXPORT(int) wprintw (WINDOW *, const char *,...)		/* implemented */
+		GCC_PRINTFLIKE(2,3);
+extern NCURSES_EXPORT(int) wredrawln (WINDOW *,int,int);		/* implemented */
+extern NCURSES_EXPORT(int) wrefresh (WINDOW *);				/* implemented */
+extern NCURSES_EXPORT(int) wscanw (WINDOW *, NCURSES_CONST char *,...)	/* implemented */
+		GCC_SCANFLIKE(2,3);
+extern NCURSES_EXPORT(int) wscrl (WINDOW *,int);			/* implemented */
+extern NCURSES_EXPORT(int) wsetscrreg (WINDOW *,int,int);		/* implemented */
+extern NCURSES_EXPORT(int) wstandout (WINDOW *);			/* generated */
+extern NCURSES_EXPORT(int) wstandend (WINDOW *);			/* generated */
+extern NCURSES_EXPORT(void) wsyncdown (WINDOW *);			/* implemented */
+extern NCURSES_EXPORT(void) wsyncup (WINDOW *);				/* implemented */
+extern NCURSES_EXPORT(void) wtimeout (WINDOW *,int);			/* implemented */
+extern NCURSES_EXPORT(int) wtouchln (WINDOW *,int,int,int);		/* implemented */
+extern NCURSES_EXPORT(int) wvline (WINDOW *,chtype,int);		/* implemented */
+
+/*
+ * These are also declared in <ncursesw/term.h>:
+ */
+extern NCURSES_EXPORT(int) tigetflag (NCURSES_CONST char *);		/* implemented */
+extern NCURSES_EXPORT(int) tigetnum (NCURSES_CONST char *);		/* implemented */
+extern NCURSES_EXPORT(char *) tigetstr (NCURSES_CONST char *);		/* implemented */
+extern NCURSES_EXPORT(int) putp (const char *);				/* implemented */
+
+#if NCURSES_TPARM_VARARGS
+extern NCURSES_EXPORT(char *) tparm (NCURSES_CONST char *, ...);	/* implemented */
+#else
+extern NCURSES_EXPORT(char *) tparm (NCURSES_CONST char *, long,long,long,long,long,long,long,long,long);	/* implemented */
+extern NCURSES_EXPORT(char *) tparm_varargs (NCURSES_CONST char *, ...);	/* implemented */
+#endif
+
+extern NCURSES_EXPORT_VAR(char) ttytype[];	/* needed for backward compatibility */
+
+/*
+ * These functions are not in X/Open, but we use them in macro definitions:
+ */
+extern NCURSES_EXPORT(int) getcurx (const WINDOW *);			/* generated */
+extern NCURSES_EXPORT(int) getcury (const WINDOW *);			/* generated */
+extern NCURSES_EXPORT(int) getbegx (const WINDOW *);			/* generated */
+extern NCURSES_EXPORT(int) getbegy (const WINDOW *);			/* generated */
+extern NCURSES_EXPORT(int) getmaxx (const WINDOW *);			/* generated */
+extern NCURSES_EXPORT(int) getmaxy (const WINDOW *);			/* generated */
+extern NCURSES_EXPORT(int) getparx (const WINDOW *);			/* generated */
+extern NCURSES_EXPORT(int) getpary (const WINDOW *);			/* generated */
+
+/*
+ * vid_attr() was implemented originally based on a draft of XSI curses.
+ */
+#ifndef _XOPEN_SOURCE_EXTENDED
+#define vid_attr(a,pair,opts) vidattr(a)
+#endif
+
+/* attributes */
+
+#define NCURSES_ATTR_SHIFT       8
+#define NCURSES_BITS(mask,shift) ((mask) << ((shift) + NCURSES_ATTR_SHIFT))
+
+#define A_NORMAL	(1UL - 1UL)
+#define A_ATTRIBUTES	NCURSES_BITS(~(1UL - 1UL),0)
+#define A_CHARTEXT	(NCURSES_BITS(1UL,0) - 1UL)
+#define A_COLOR		NCURSES_BITS(((1UL) << 8) - 1UL,0)
+#define A_STANDOUT	NCURSES_BITS(1UL,8)
+#define A_UNDERLINE	NCURSES_BITS(1UL,9)
+#define A_REVERSE	NCURSES_BITS(1UL,10)
+#define A_BLINK		NCURSES_BITS(1UL,11)
+#define A_DIM		NCURSES_BITS(1UL,12)
+#define A_BOLD		NCURSES_BITS(1UL,13)
+#define A_ALTCHARSET	NCURSES_BITS(1UL,14)
+#define A_INVIS		NCURSES_BITS(1UL,15)
+#define A_PROTECT	NCURSES_BITS(1UL,16)
+#define A_HORIZONTAL	NCURSES_BITS(1UL,17)
+#define A_LEFT		NCURSES_BITS(1UL,18)
+#define A_LOW		NCURSES_BITS(1UL,19)
+#define A_RIGHT		NCURSES_BITS(1UL,20)
+#define A_TOP		NCURSES_BITS(1UL,21)
+#define A_VERTICAL	NCURSES_BITS(1UL,22)
+
+/*
+ * Most of the pseudo functions are macros that either provide compatibility
+ * with older versions of curses, or provide inline functionality to improve
+ * performance.
+ */
+
+/*
+ * These pseudo functions are always implemented as macros:
+ */
+
+#define getyx(win,y,x)   	(y = getcury(win), x = getcurx(win))
+#define getbegyx(win,y,x)	(y = getbegy(win), x = getbegx(win))
+#define getmaxyx(win,y,x)	(y = getmaxy(win), x = getmaxx(win))
+#define getparyx(win,y,x)	(y = getpary(win), x = getparx(win))
+
+#define getsyx(y,x) do { if(newscr->_leaveok) (y)=(x)=-1; \
+			 else getyx(newscr,(y),(x)); \
+		    } while(0)
+#define setsyx(y,x) do { if((y)==-1 && (x)==-1) newscr->_leaveok=TRUE; \
+			 else {newscr->_leaveok=FALSE;wmove(newscr,(y),(x));} \
+		    } while(0)
+
+#ifndef NCURSES_NOMACROS
+
+/*
+ * These miscellaneous pseudo functions are provided for compatibility:
+ */
+
+#define wgetstr(w, s)		wgetnstr(w, s, -1)
+#define getnstr(s, n)		wgetnstr(stdscr, s, n)
+
+#define setterm(term)		setupterm(term, 1, (int *)0)
+
+#define fixterm()		reset_prog_mode()
+#define resetterm()		reset_shell_mode()
+#define saveterm()		def_prog_mode()
+#define crmode()		cbreak()
+#define nocrmode()		nocbreak()
+#define gettmode()
+
+/* It seems older SYSV curses versions define these */
+#define getattrs(win)		((win)?(win)->_attrs:A_NORMAL)
+#define getcurx(win)		((win)?(win)->_curx:ERR)
+#define getcury(win)		((win)?(win)->_cury:ERR)
+#define getbegx(win)		((win)?(win)->_begx:ERR)
+#define getbegy(win)		((win)?(win)->_begy:ERR)
+#define getmaxx(win)		((win)?((win)->_maxx + 1):ERR)
+#define getmaxy(win)		((win)?((win)->_maxy + 1):ERR)
+#define getparx(win)		((win)?(win)->_parx:ERR)
+#define getpary(win)		((win)?(win)->_pary:ERR)
+
+#define wstandout(win)      	(wattrset(win,A_STANDOUT))
+#define wstandend(win)      	(wattrset(win,A_NORMAL))
+
+#define wattron(win,at)		wattr_on(win, NCURSES_CAST(attr_t, at), NULL)
+#define wattroff(win,at)	wattr_off(win, NCURSES_CAST(attr_t, at), NULL)
+
+#if defined(_XOPEN_SOURCE_EXTENDED) && 0
+#define wattrset(win,at)	((win)->_color = PAIR_NUMBER(at), \
+				 (win)->_attrs = (at))
+#else
+#define wattrset(win,at)	((win)->_attrs = (at))
+#endif
+
+#define scroll(win)		wscrl(win,1)
+
+#define touchwin(win)		wtouchln((win), 0, getmaxy(win), 1)
+#define touchline(win, s, c)	wtouchln((win), s, c, 1)
+#define untouchwin(win)		wtouchln((win), 0, getmaxy(win), 0)
+
+#define box(win, v, h)		wborder(win, v, v, h, h, 0, 0, 0, 0)
+#define border(ls, rs, ts, bs, tl, tr, bl, br)	wborder(stdscr, ls, rs, ts, bs, tl, tr, bl, br)
+#define hline(ch, n)		whline(stdscr, ch, n)
+#define vline(ch, n)		wvline(stdscr, ch, n)
+
+#define winstr(w, s)		winnstr(w, s, -1)
+#define winchstr(w, s)		winchnstr(w, s, -1)
+#define winsstr(w, s)		winsnstr(w, s, -1)
+
+#define redrawwin(win)		wredrawln(win, 0, (win)->_maxy+1)
+#define waddstr(win,str)	waddnstr(win,str,-1)
+#define waddchstr(win,str)	waddchnstr(win,str,-1)
+
+/*
+ * These apply to the first 256 color pairs.
+ */
+#define COLOR_PAIR(n)	NCURSES_BITS(n, 0)
+#define PAIR_NUMBER(a)	(NCURSES_CAST(int,(((a) & A_COLOR) >> NCURSES_ATTR_SHIFT)))
+
+/*
+ * pseudo functions for standard screen
+ */
+
+#define addch(ch)		waddch(stdscr,ch)
+#define addchnstr(str,n)	waddchnstr(stdscr,str,n)
+#define addchstr(str)		waddchstr(stdscr,str)
+#define addnstr(str,n)		waddnstr(stdscr,str,n)
+#define addstr(str)		waddnstr(stdscr,str,-1)
+#define attroff(at)		wattroff(stdscr,at)
+#define attron(at)		wattron(stdscr,at)
+#define attrset(at)		wattrset(stdscr,at)
+#define attr_get(ap,cp,o)	wattr_get(stdscr,ap,cp,o)
+#define attr_off(a,o)		wattr_off(stdscr,a,o)
+#define attr_on(a,o)		wattr_on(stdscr,a,o)
+#define attr_set(a,c,o)		wattr_set(stdscr,a,c,o)
+#define bkgd(ch)		wbkgd(stdscr,ch)
+#define bkgdset(ch)		wbkgdset(stdscr,ch)
+#define chgat(n,a,c,o)		wchgat(stdscr,n,a,c,o)
+#define clear()			wclear(stdscr)
+#define clrtobot()		wclrtobot(stdscr)
+#define clrtoeol()		wclrtoeol(stdscr)
+#define color_set(c,o)		wcolor_set(stdscr,c,o)
+#define delch()			wdelch(stdscr)
+#define deleteln()		winsdelln(stdscr,-1)
+#define echochar(c)		wechochar(stdscr,c)
+#define erase()			werase(stdscr)
+#define getch()			wgetch(stdscr)
+#define getstr(str)		wgetstr(stdscr,str)
+#define inch()			winch(stdscr)
+#define inchnstr(s,n)		winchnstr(stdscr,s,n)
+#define inchstr(s)		winchstr(stdscr,s)
+#define innstr(s,n)		winnstr(stdscr,s,n)
+#define insch(c)		winsch(stdscr,c)
+#define insdelln(n)		winsdelln(stdscr,n)
+#define insertln()		winsdelln(stdscr,1)
+#define insnstr(s,n)		winsnstr(stdscr,s,n)
+#define insstr(s)		winsstr(stdscr,s)
+#define instr(s)		winstr(stdscr,s)
+#define move(y,x)		wmove(stdscr,y,x)
+#define refresh()		wrefresh(stdscr)
+#define scrl(n)			wscrl(stdscr,n)
+#define setscrreg(t,b)		wsetscrreg(stdscr,t,b)
+#define standend()		wstandend(stdscr)
+#define standout()		wstandout(stdscr)
+#define timeout(delay)		wtimeout(stdscr,delay)
+#define wdeleteln(win)		winsdelln(win,-1)
+#define winsertln(win)		winsdelln(win,1)
+
+/*
+ * mv functions
+ */
+
+#define mvwaddch(win,y,x,ch)		(wmove(win,y,x) == ERR ? ERR : waddch(win,ch))
+#define mvwaddchnstr(win,y,x,str,n)	(wmove(win,y,x) == ERR ? ERR : waddchnstr(win,str,n))
+#define mvwaddchstr(win,y,x,str)	(wmove(win,y,x) == ERR ? ERR : waddchnstr(win,str,-1))
+#define mvwaddnstr(win,y,x,str,n)	(wmove(win,y,x) == ERR ? ERR : waddnstr(win,str,n))
+#define mvwaddstr(win,y,x,str)		(wmove(win,y,x) == ERR ? ERR : waddnstr(win,str,-1))
+#define mvwdelch(win,y,x)		(wmove(win,y,x) == ERR ? ERR : wdelch(win))
+#define mvwchgat(win,y,x,n,a,c,o)	(wmove(win,y,x) == ERR ? ERR : wchgat(win,n,a,c,o))
+#define mvwgetch(win,y,x)		(wmove(win,y,x) == ERR ? ERR : wgetch(win))
+#define mvwgetnstr(win,y,x,str,n)	(wmove(win,y,x) == ERR ? ERR : wgetnstr(win,str,n))
+#define mvwgetstr(win,y,x,str)		(wmove(win,y,x) == ERR ? ERR : wgetstr(win,str))
+#define mvwhline(win,y,x,c,n)		(wmove(win,y,x) == ERR ? ERR : whline(win,c,n))
+#define mvwinch(win,y,x)		(wmove(win,y,x) == ERR ? NCURSES_CAST(chtype, ERR) : winch(win))
+#define mvwinchnstr(win,y,x,s,n)	(wmove(win,y,x) == ERR ? ERR : winchnstr(win,s,n))
+#define mvwinchstr(win,y,x,s)		(wmove(win,y,x) == ERR ? ERR : winchstr(win,s))
+#define mvwinnstr(win,y,x,s,n)		(wmove(win,y,x) == ERR ? ERR : winnstr(win,s,n))
+#define mvwinsch(win,y,x,c)		(wmove(win,y,x) == ERR ? ERR : winsch(win,c))
+#define mvwinsnstr(win,y,x,s,n)		(wmove(win,y,x) == ERR ? ERR : winsnstr(win,s,n))
+#define mvwinsstr(win,y,x,s)		(wmove(win,y,x) == ERR ? ERR : winsstr(win,s))
+#define mvwinstr(win,y,x,s)		(wmove(win,y,x) == ERR ? ERR : winstr(win,s))
+#define mvwvline(win,y,x,c,n)		(wmove(win,y,x) == ERR ? ERR : wvline(win,c,n))
+
+#define mvaddch(y,x,ch)			mvwaddch(stdscr,y,x,ch)
+#define mvaddchnstr(y,x,str,n)		mvwaddchnstr(stdscr,y,x,str,n)
+#define mvaddchstr(y,x,str)		mvwaddchstr(stdscr,y,x,str)
+#define mvaddnstr(y,x,str,n)		mvwaddnstr(stdscr,y,x,str,n)
+#define mvaddstr(y,x,str)		mvwaddstr(stdscr,y,x,str)
+#define mvchgat(y,x,n,a,c,o)		mvwchgat(stdscr,y,x,n,a,c,o)
+#define mvdelch(y,x)			mvwdelch(stdscr,y,x)
+#define mvgetch(y,x)			mvwgetch(stdscr,y,x)
+#define mvgetnstr(y,x,str,n)		mvwgetnstr(stdscr,y,x,str,n)
+#define mvgetstr(y,x,str)		mvwgetstr(stdscr,y,x,str)
+#define mvhline(y,x,c,n)		mvwhline(stdscr,y,x,c,n)
+#define mvinch(y,x)			mvwinch(stdscr,y,x)
+#define mvinchnstr(y,x,s,n)		mvwinchnstr(stdscr,y,x,s,n)
+#define mvinchstr(y,x,s)		mvwinchstr(stdscr,y,x,s)
+#define mvinnstr(y,x,s,n)		mvwinnstr(stdscr,y,x,s,n)
+#define mvinsch(y,x,c)			mvwinsch(stdscr,y,x,c)
+#define mvinsnstr(y,x,s,n)		mvwinsnstr(stdscr,y,x,s,n)
+#define mvinsstr(y,x,s)			mvwinsstr(stdscr,y,x,s)
+#define mvinstr(y,x,s)			mvwinstr(stdscr,y,x,s)
+#define mvvline(y,x,c,n)		mvwvline(stdscr,y,x,c,n)
+
+/*
+ * Some wide-character functions can be implemented without the extensions.
+ */
+#define getbkgd(win)                    ((win)->_bkgd)
+
+#define slk_attr_off(a,v)		((v) ? ERR : slk_attroff(a))
+#define slk_attr_on(a,v)		((v) ? ERR : slk_attron(a))
+
+#if defined(_XOPEN_SOURCE_EXTENDED) && 0
+#define wattr_set(win,a,p,opts)		((win)->_attrs = ((a) & ~A_COLOR), \
+					 (win)->_color = (p), \
+					 OK)
+#define wattr_get(win,a,p,opts)		((void)((a) != 0 && (*(a) = (win)->_attrs)), \
+					 (void)((p) != 0 && (*(p) = (win)->_color)), \
+					 OK)
+#else
+#define wattr_set(win,a,p,opts)		((win)->_attrs = (((a) & ~A_COLOR) | COLOR_PAIR(p)), OK)
+#define wattr_get(win,a,p,opts)		((void)((a) != 0 && (*(a) = (win)->_attrs)), \
+					 (void)((p) != 0 && (*(p) = PAIR_NUMBER((win)->_attrs))), \
+					 OK)
+#endif
+
+/*
+ * XSI curses deprecates SVr4 vwprintw/vwscanw, which are supposed to use
+ * varargs.h.  It adds new calls vw_printw/vw_scanw, which are supposed to
+ * use POSIX stdarg.h.  The ncurses versions of vwprintw/vwscanw already
+ * use stdarg.h, so...
+ */
+#define vw_printw		vwprintw
+#define vw_scanw		vwscanw
+
+/*
+ * Export fallback function for use in C++ binding.
+ */
+#if !1
+#define vsscanf(a,b,c) _nc_vsscanf(a,b,c)
+NCURSES_EXPORT(int) vsscanf(const char *, const char *, va_list);
+#endif
+
+#endif /* NCURSES_NOMACROS */
+
+/*
+ * Pseudo-character tokens outside ASCII range.  The curses wgetch() function
+ * will return any given one of these only if the corresponding k- capability
+ * is defined in your terminal's terminfo entry.
+ *
+ * Some keys (KEY_A1, etc) are arranged like this:
+ *	a1     up    a3
+ *	left   b2    right
+ *	c1     down  c3
+ *
+ * A few key codes do not depend upon the terminfo entry.
+ */
+#define KEY_CODE_YES	0400		/* A wchar_t contains a key code */
+#define KEY_MIN		0401		/* Minimum curses key */
+#define KEY_BREAK	0401		/* Break key (unreliable) */
+#define KEY_SRESET	0530		/* Soft (partial) reset (unreliable) */
+#define KEY_RESET	0531		/* Reset or hard reset (unreliable) */
+/*
+ * These definitions were generated by /home/user/ncurses-5.6/include/MKkey_defs.sh /home/user/ncurses-5.6/include/Caps
+ */
+#define KEY_DOWN	0402		/* down-arrow key */
+#define KEY_UP		0403		/* up-arrow key */
+#define KEY_LEFT	0404		/* left-arrow key */
+#define KEY_RIGHT	0405		/* right-arrow key */
+#define KEY_HOME	0406		/* home key */
+#define KEY_BACKSPACE	0407		/* backspace key */
+#define KEY_F0		0410		/* Function keys.  Space for 64 */
+#define KEY_F(n)	(KEY_F0+(n))	/* Value of function key n */
+#define KEY_DL		0510		/* delete-line key */
+#define KEY_IL		0511		/* insert-line key */
+#define KEY_DC		0512		/* delete-character key */
+#define KEY_IC		0513		/* insert-character key */
+#define KEY_EIC		0514		/* sent by rmir or smir in insert mode */
+#define KEY_CLEAR	0515		/* clear-screen or erase key */
+#define KEY_EOS		0516		/* clear-to-end-of-screen key */
+#define KEY_EOL		0517		/* clear-to-end-of-line key */
+#define KEY_SF		0520		/* scroll-forward key */
+#define KEY_SR		0521		/* scroll-backward key */
+#define KEY_NPAGE	0522		/* next-page key */
+#define KEY_PPAGE	0523		/* previous-page key */
+#define KEY_STAB	0524		/* set-tab key */
+#define KEY_CTAB	0525		/* clear-tab key */
+#define KEY_CATAB	0526		/* clear-all-tabs key */
+#define KEY_ENTER	0527		/* enter/send key */
+#define KEY_PRINT	0532		/* print key */
+#define KEY_LL		0533		/* lower-left key (home down) */
+#define KEY_A1		0534		/* upper left of keypad */
+#define KEY_A3		0535		/* upper right of keypad */
+#define KEY_B2		0536		/* center of keypad */
+#define KEY_C1		0537		/* lower left of keypad */
+#define KEY_C3		0540		/* lower right of keypad */
+#define KEY_BTAB	0541		/* back-tab key */
+#define KEY_BEG		0542		/* begin key */
+#define KEY_CANCEL	0543		/* cancel key */
+#define KEY_CLOSE	0544		/* close key */
+#define KEY_COMMAND	0545		/* command key */
+#define KEY_COPY	0546		/* copy key */
+#define KEY_CREATE	0547		/* create key */
+#define KEY_END		0550		/* end key */
+#define KEY_EXIT	0551		/* exit key */
+#define KEY_FIND	0552		/* find key */
+#define KEY_HELP	0553		/* help key */
+#define KEY_MARK	0554		/* mark key */
+#define KEY_MESSAGE	0555		/* message key */
+#define KEY_MOVE	0556		/* move key */
+#define KEY_NEXT	0557		/* next key */
+#define KEY_OPEN	0560		/* open key */
+#define KEY_OPTIONS	0561		/* options key */
+#define KEY_PREVIOUS	0562		/* previous key */
+#define KEY_REDO	0563		/* redo key */
+#define KEY_REFERENCE	0564		/* reference key */
+#define KEY_REFRESH	0565		/* refresh key */
+#define KEY_REPLACE	0566		/* replace key */
+#define KEY_RESTART	0567		/* restart key */
+#define KEY_RESUME	0570		/* resume key */
+#define KEY_SAVE	0571		/* save key */
+#define KEY_SBEG	0572		/* shifted begin key */
+#define KEY_SCANCEL	0573		/* shifted cancel key */
+#define KEY_SCOMMAND	0574		/* shifted command key */
+#define KEY_SCOPY	0575		/* shifted copy key */
+#define KEY_SCREATE	0576		/* shifted create key */
+#define KEY_SDC		0577		/* shifted delete-character key */
+#define KEY_SDL		0600		/* shifted delete-line key */
+#define KEY_SELECT	0601		/* select key */
+#define KEY_SEND	0602		/* shifted end key */
+#define KEY_SEOL	0603		/* shifted clear-to-end-of-line key */
+#define KEY_SEXIT	0604		/* shifted exit key */
+#define KEY_SFIND	0605		/* shifted find key */
+#define KEY_SHELP	0606		/* shifted help key */
+#define KEY_SHOME	0607		/* shifted home key */
+#define KEY_SIC		0610		/* shifted insert-character key */
+#define KEY_SLEFT	0611		/* shifted left-arrow key */
+#define KEY_SMESSAGE	0612		/* shifted message key */
+#define KEY_SMOVE	0613		/* shifted move key */
+#define KEY_SNEXT	0614		/* shifted next key */
+#define KEY_SOPTIONS	0615		/* shifted options key */
+#define KEY_SPREVIOUS	0616		/* shifted previous key */
+#define KEY_SPRINT	0617		/* shifted print key */
+#define KEY_SREDO	0620		/* shifted redo key */
+#define KEY_SREPLACE	0621		/* shifted replace key */
+#define KEY_SRIGHT	0622		/* shifted right-arrow key */
+#define KEY_SRSUME	0623		/* shifted resume key */
+#define KEY_SSAVE	0624		/* shifted save key */
+#define KEY_SSUSPEND	0625		/* shifted suspend key */
+#define KEY_SUNDO	0626		/* shifted undo key */
+#define KEY_SUSPEND	0627		/* suspend key */
+#define KEY_UNDO	0630		/* undo key */
+#define KEY_MOUSE	0631		/* Mouse event has occurred */
+#define KEY_RESIZE	0632		/* Terminal resize event */
+#define KEY_EVENT	0633		/* We were interrupted by an event */
+
+#define KEY_MAX		0777		/* Maximum key value is 0633 */
+/*
+ * This file is part of ncurses, designed to be appended after curses.h.in
+ * (see that file for the relevant copyright).
+ */
+#ifdef _XOPEN_SOURCE_EXTENDED
+
+/* $Id: curses.wide,v 1.32 2006/05/27 19:44:23 tom Exp $ */
+
+extern NCURSES_EXPORT_VAR(cchar_t *) _nc_wacs;
+
+#define NCURSES_WACS(c)	(&_nc_wacs[(unsigned char)c])
+
+#define WACS_BSSB	NCURSES_WACS('l')
+#define WACS_SSBB	NCURSES_WACS('m')
+#define WACS_BBSS	NCURSES_WACS('k')
+#define WACS_SBBS	NCURSES_WACS('j')
+#define WACS_SBSS	NCURSES_WACS('u')
+#define WACS_SSSB	NCURSES_WACS('t')
+#define WACS_SSBS	NCURSES_WACS('v')
+#define WACS_BSSS	NCURSES_WACS('w')
+#define WACS_BSBS	NCURSES_WACS('q')
+#define WACS_SBSB	NCURSES_WACS('x')
+#define WACS_SSSS	NCURSES_WACS('n')
+
+#define WACS_ULCORNER	WACS_BSSB
+#define WACS_LLCORNER	WACS_SSBB
+#define WACS_URCORNER	WACS_BBSS
+#define WACS_LRCORNER	WACS_SBBS
+#define WACS_RTEE	WACS_SBSS
+#define WACS_LTEE	WACS_SSSB
+#define WACS_BTEE	WACS_SSBS
+#define WACS_TTEE	WACS_BSSS
+#define WACS_HLINE	WACS_BSBS
+#define WACS_VLINE	WACS_SBSB
+#define WACS_PLUS	WACS_SSSS
+
+#define WACS_S1		NCURSES_WACS('o') /* scan line 1 */
+#define WACS_S9 	NCURSES_WACS('s') /* scan line 9 */
+#define WACS_DIAMOND	NCURSES_WACS('`') /* diamond */
+#define WACS_CKBOARD	NCURSES_WACS('a') /* checker board */
+#define WACS_DEGREE	NCURSES_WACS('f') /* degree symbol */
+#define WACS_PLMINUS	NCURSES_WACS('g') /* plus/minus */
+#define WACS_BULLET	NCURSES_WACS('~') /* bullet */
+
+	/* Teletype 5410v1 symbols */
+#define WACS_LARROW	NCURSES_WACS(',') /* arrow left */
+#define WACS_RARROW	NCURSES_WACS('+') /* arrow right */
+#define WACS_DARROW	NCURSES_WACS('.') /* arrow down */
+#define WACS_UARROW	NCURSES_WACS('-') /* arrow up */
+#define WACS_BOARD	NCURSES_WACS('h') /* board of squares */
+#define WACS_LANTERN	NCURSES_WACS('i') /* lantern symbol */
+#define WACS_BLOCK	NCURSES_WACS('0') /* solid square block */
+
+	/* ncurses extensions */
+#define WACS_S3		NCURSES_WACS('p') /* scan line 3 */
+#define WACS_S7		NCURSES_WACS('r') /* scan line 7 */
+#define WACS_LEQUAL	NCURSES_WACS('y') /* less/equal */
+#define WACS_GEQUAL	NCURSES_WACS('z') /* greater/equal */
+#define WACS_PI		NCURSES_WACS('{') /* Pi */
+#define WACS_NEQUAL	NCURSES_WACS('|') /* not equal */
+#define WACS_STERLING	NCURSES_WACS('}') /* UK pound sign */
+
+/*
+ * Function prototypes for wide-character operations.
+ *
+ * "generated" comments should include ":WIDEC" to make the corresponding
+ * functions ifdef'd in lib_gen.c
+ *
+ * "implemented" comments do not need this marker.
+ */
+
+extern NCURSES_EXPORT(int) add_wch (const cchar_t *);			/* generated:WIDEC */
+extern NCURSES_EXPORT(int) add_wchnstr (const cchar_t *, int);		/* generated:WIDEC */
+extern NCURSES_EXPORT(int) add_wchstr (const cchar_t *);		/* generated:WIDEC */
+extern NCURSES_EXPORT(int) addnwstr (const wchar_t *, int);		/* generated:WIDEC */
+extern NCURSES_EXPORT(int) addwstr (const wchar_t *);			/* generated:WIDEC */
+extern NCURSES_EXPORT(int) bkgrnd (const cchar_t *);			/* generated:WIDEC */
+extern NCURSES_EXPORT(void) bkgrndset (const cchar_t *);		/* generated:WIDEC */
+extern NCURSES_EXPORT(int) border_set (const cchar_t*,const cchar_t*,const cchar_t*,const cchar_t*,const cchar_t*,const cchar_t*,const cchar_t*,const cchar_t*); /* generated:WIDEC */
+extern NCURSES_EXPORT(int) box_set (WINDOW *, const cchar_t *, const cchar_t *);	/* generated:WIDEC */
+extern NCURSES_EXPORT(int) echo_wchar (const cchar_t *);		/* generated:WIDEC */
+extern NCURSES_EXPORT(int) erasewchar (wchar_t*);			/* implemented */
+extern NCURSES_EXPORT(int) get_wch (wint_t *);				/* generated:WIDEC */
+extern NCURSES_EXPORT(int) get_wstr (wint_t *);				/* generated:WIDEC */
+extern NCURSES_EXPORT(int) getbkgrnd (cchar_t *);			/* generated:WIDEC */
+extern NCURSES_EXPORT(int) getcchar (const cchar_t *, wchar_t*, attr_t*, short*, void*);	/* implemented */
+extern NCURSES_EXPORT(int) getn_wstr (wint_t *, int);			/* generated:WIDEC */
+extern NCURSES_EXPORT(int) hline_set (const cchar_t *, int);		/* generated:WIDEC */
+extern NCURSES_EXPORT(int) in_wch (cchar_t *);				/* generated:WIDEC */
+extern NCURSES_EXPORT(int) in_wchnstr (cchar_t *, int);			/* generated:WIDEC */
+extern NCURSES_EXPORT(int) in_wchstr (cchar_t *);			/* generated:WIDEC */
+extern NCURSES_EXPORT(int) innwstr (wchar_t *, int);			/* generated:WIDEC */
+extern NCURSES_EXPORT(int) ins_nwstr (const wchar_t *, int);		/* generated:WIDEC */
+extern NCURSES_EXPORT(int) ins_wch (const cchar_t *);			/* generated:WIDEC */
+extern NCURSES_EXPORT(int) ins_wstr (const wchar_t *);			/* generated:WIDEC */
+extern NCURSES_EXPORT(int) inwstr (wchar_t *);				/* generated:WIDEC */
+extern NCURSES_EXPORT(NCURSES_CONST char*) key_name (wchar_t);		/* implemented */
+extern NCURSES_EXPORT(int) killwchar (wchar_t *);			/* implemented */
+extern NCURSES_EXPORT(int) mvadd_wch (int, int, const cchar_t *);	/* generated:WIDEC */
+extern NCURSES_EXPORT(int) mvadd_wchnstr (int, int, const cchar_t *, int);/* generated:WIDEC */
+extern NCURSES_EXPORT(int) mvadd_wchstr (int, int, const cchar_t *);	/* generated:WIDEC */
+extern NCURSES_EXPORT(int) mvaddnwstr (int, int, const wchar_t *, int);	/* generated:WIDEC */
+extern NCURSES_EXPORT(int) mvaddwstr (int, int, const wchar_t *);	/* generated:WIDEC */
+extern NCURSES_EXPORT(int) mvget_wch (int, int, wint_t *);		/* generated:WIDEC */
+extern NCURSES_EXPORT(int) mvget_wstr (int, int, wint_t *);		/* generated:WIDEC */
+extern NCURSES_EXPORT(int) mvgetn_wstr (int, int, wint_t *, int);	/* generated:WIDEC */
+extern NCURSES_EXPORT(int) mvhline_set (int, int, const cchar_t *, int);	/* generated:WIDEC */
+extern NCURSES_EXPORT(int) mvin_wch (int, int, cchar_t *);		/* generated:WIDEC */
+extern NCURSES_EXPORT(int) mvin_wchnstr (int, int, cchar_t *, int);	/* generated:WIDEC */
+extern NCURSES_EXPORT(int) mvin_wchstr (int, int, cchar_t *);		/* generated:WIDEC */
+extern NCURSES_EXPORT(int) mvinnwstr (int, int, wchar_t *, int);	/* generated:WIDEC */
+extern NCURSES_EXPORT(int) mvins_nwstr (int, int, const wchar_t *, int);	/* generated:WIDEC */
+extern NCURSES_EXPORT(int) mvins_wch (int, int, const cchar_t *);	/* generated:WIDEC */
+extern NCURSES_EXPORT(int) mvins_wstr (int, int, const wchar_t *);	/* generated:WIDEC */
+extern NCURSES_EXPORT(int) mvinwstr (int, int, wchar_t *);		/* generated:WIDEC */
+extern NCURSES_EXPORT(int) mvvline_set (int, int, const cchar_t *, int);	/* generated:WIDEC */
+extern NCURSES_EXPORT(int) mvwadd_wch (WINDOW *, int, int, const cchar_t *);	/* generated:WIDEC */
+extern NCURSES_EXPORT(int) mvwadd_wchnstr (WINDOW *, int, int, const cchar_t *, int); /* generated:WIDEC */
+extern NCURSES_EXPORT(int) mvwadd_wchstr (WINDOW *, int, int, const cchar_t *);	/* generated:WIDEC */
+extern NCURSES_EXPORT(int) mvwaddnwstr (WINDOW *, int, int, const wchar_t *, int);/* generated:WIDEC */
+extern NCURSES_EXPORT(int) mvwaddwstr (WINDOW *, int, int, const wchar_t *);	/* generated:WIDEC */
+extern NCURSES_EXPORT(int) mvwget_wch (WINDOW *, int, int, wint_t *);	/* generated:WIDEC */
+extern NCURSES_EXPORT(int) mvwget_wstr (WINDOW *, int, int, wint_t *);	/* generated:WIDEC */
+extern NCURSES_EXPORT(int) mvwgetn_wstr (WINDOW *, int, int, wint_t *, int);/* generated:WIDEC */
+extern NCURSES_EXPORT(int) mvwhline_set (WINDOW *, int, int, const cchar_t *, int);/* generated:WIDEC */
+extern NCURSES_EXPORT(int) mvwin_wch (WINDOW *, int, int, cchar_t *);	/* generated:WIDEC */
+extern NCURSES_EXPORT(int) mvwin_wchnstr (WINDOW *, int,int, cchar_t *,int);	/* generated:WIDEC */
+extern NCURSES_EXPORT(int) mvwin_wchstr (WINDOW *, int, int, cchar_t *);	/* generated:WIDEC */
+extern NCURSES_EXPORT(int) mvwinnwstr (WINDOW *, int, int, wchar_t *, int);	/* generated:WIDEC */
+extern NCURSES_EXPORT(int) mvwins_nwstr (WINDOW *, int,int, const wchar_t *,int); /* generated:WIDEC */
+extern NCURSES_EXPORT(int) mvwins_wch (WINDOW *, int, int, const cchar_t *);	/* generated:WIDEC */
+extern NCURSES_EXPORT(int) mvwins_wstr (WINDOW *, int, int, const wchar_t *);	/* generated:WIDEC */
+extern NCURSES_EXPORT(int) mvwinwstr (WINDOW *, int, int, wchar_t *);		/* generated:WIDEC */
+extern NCURSES_EXPORT(int) mvwvline_set (WINDOW *, int,int, const cchar_t *,int); /* generated:WIDEC */
+extern NCURSES_EXPORT(int) pecho_wchar (WINDOW *, const cchar_t *);	/* implemented */
+extern NCURSES_EXPORT(int) setcchar (cchar_t *, const wchar_t *, const attr_t, short, const void *);	/* implemented */
+extern NCURSES_EXPORT(int) slk_wset (int, const wchar_t *, int);	/* implemented */
+extern NCURSES_EXPORT(attr_t) term_attrs (void);			/* implemented */
+extern NCURSES_EXPORT(int) unget_wch (const wchar_t);			/* implemented */
+extern NCURSES_EXPORT(int) vid_attr (attr_t, short, void *);		/* implemented */
+extern NCURSES_EXPORT(int) vid_puts (attr_t, short, void *, int (*)(int)); /* implemented */
+extern NCURSES_EXPORT(int) vline_set (const cchar_t *, int);		/* generated:WIDEC */
+extern NCURSES_EXPORT(int) wadd_wch (WINDOW *,const cchar_t *);		/* implemented */
+extern NCURSES_EXPORT(int) wadd_wchnstr (WINDOW *,const cchar_t *,int);	/* implemented */
+extern NCURSES_EXPORT(int) wadd_wchstr (WINDOW *,const cchar_t *);	/* generated:WIDEC */
+extern NCURSES_EXPORT(int) waddnwstr (WINDOW *,const wchar_t *,int);	/* implemented */
+extern NCURSES_EXPORT(int) waddwstr (WINDOW *,const wchar_t *);		/* generated:WIDEC */
+extern NCURSES_EXPORT(int) wbkgrnd (WINDOW *,const cchar_t *);		/* implemented */
+extern NCURSES_EXPORT(void) wbkgrndset (WINDOW *,const cchar_t *);	/* implemented */
+extern NCURSES_EXPORT(int) wborder_set (WINDOW *,const cchar_t*,const cchar_t*,const cchar_t*,const cchar_t*,const cchar_t*,const cchar_t*,const cchar_t*,const cchar_t*);	/* implemented */
+extern NCURSES_EXPORT(int) wecho_wchar (WINDOW *, const cchar_t *);	/* implemented */
+extern NCURSES_EXPORT(int) wget_wch (WINDOW *, wint_t *);		/* implemented */
+extern NCURSES_EXPORT(int) wget_wstr (WINDOW *, wint_t *);		/* generated:WIDEC */
+extern NCURSES_EXPORT(int) wgetbkgrnd (WINDOW *, cchar_t *);		/* generated:WIDEC */
+extern NCURSES_EXPORT(int) wgetn_wstr (WINDOW *,wint_t *, int);		/* implemented */
+extern NCURSES_EXPORT(int) whline_set (WINDOW *, const cchar_t *, int);	/* implemented */
+extern NCURSES_EXPORT(int) win_wch (WINDOW *, cchar_t *);		/* implemented */
+extern NCURSES_EXPORT(int) win_wchnstr (WINDOW *, cchar_t *, int);	/* implemented */
+extern NCURSES_EXPORT(int) win_wchstr (WINDOW *, cchar_t *);		/* generated:WIDEC */
+extern NCURSES_EXPORT(int) winnwstr (WINDOW *, wchar_t *, int);		/* implemented */
+extern NCURSES_EXPORT(int) wins_nwstr (WINDOW *, const wchar_t *, int);	/* implemented */
+extern NCURSES_EXPORT(int) wins_wch (WINDOW *, const cchar_t *);	/* implemented */
+extern NCURSES_EXPORT(int) wins_wstr (WINDOW *, const wchar_t *);	/* generated:WIDEC */
+extern NCURSES_EXPORT(int) winwstr (WINDOW *, wchar_t *);		/* implemented */
+extern NCURSES_EXPORT(wchar_t*) wunctrl (cchar_t *);			/* implemented */
+extern NCURSES_EXPORT(int) wvline_set (WINDOW *, const cchar_t *, int);	/* implemented */
+
+#ifndef NCURSES_NOMACROS
+
+/*
+ * XSI curses macros for XPG4 conformance.
+ */
+#define add_wch(c)			wadd_wch(stdscr,c)
+#define add_wchnstr(str,n)		wadd_wchnstr(stdscr,str,n)
+#define add_wchstr(str)			wadd_wchstr(stdscr,str)
+#define addnwstr(wstr,n)		waddnwstr(stdscr,wstr,n)
+#define addwstr(wstr)			waddwstr(stdscr,wstr)
+#define bkgrnd(c)			wbkgrnd(stdscr,c)
+#define bkgrndset(c)			wbkgrndset(stdscr,c)
+#define border_set(l,r,t,b,tl,tr,bl,br) wborder_set(stdscr,l,r,t,b,tl,tr,bl,br)
+#define box_set(w,v,h)			wborder_set(w,v,v,h,h,0,0,0,0)
+#define echo_wchar(c)			wecho_wchar(stdscr,c)
+#define get_wch(c)			wget_wch(stdscr,c)
+#define get_wstr(t)			wget_wstr(stdscr,t)
+#define getbkgrnd(wch)			wgetbkgrnd(stdscr,wch)
+#define getn_wstr(t,n)			wgetn_wstr(stdscr,t,n)
+#define hline_set(c,n)			whline_set(stdscr,c,n)
+#define in_wch(c)			win_wch(stdscr,c)
+#define in_wchnstr(c,n)			win_wchnstr(stdscr,c,n)
+#define in_wchstr(c)			win_wchstr(stdscr,c)
+#define innwstr(c,n)			winnwstr(stdscr,c,n)
+#define ins_nwstr(t,n)			wins_nwstr(stdscr,t,n)
+#define ins_wch(c)			wins_wch(stdscr,c)
+#define ins_wstr(t)			wins_wstr(stdscr,t)
+#define inwstr(c)			winwstr(stdscr,c)
+#define vline_set(c,n)			wvline_set(stdscr,c,n)
+#define wadd_wchstr(win,str)		wadd_wchnstr(win,str,-1)
+#define waddwstr(win,wstr)		waddnwstr(win,wstr,-1)
+#define wget_wstr(w,t)			wgetn_wstr(w,t,-1)
+//// #define wgetbkgrnd(win,wch)		(*wch = win->_bkgrnd, OK)
+#define win_wchstr(w,c)			win_wchnstr(w,c,-1)
+#define wins_wstr(w,t)			wins_nwstr(w,t,-1)
+
+#define mvadd_wch(y,x,c)		mvwadd_wch(stdscr,y,x,c)
+#define mvadd_wchnstr(y,x,s,n)		mvwadd_wchnstr(stdscr,y,x,s,n)
+#define mvadd_wchstr(y,x,s)		mvwadd_wchstr(stdscr,y,x,s)
+#define mvaddnwstr(y,x,wstr,n)		mvwaddnwstr(stdscr,y,x,wstr,n)
+#define mvaddwstr(y,x,wstr)		mvwaddwstr(stdscr,y,x,wstr)
+#define mvget_wch(y,x,c)		mvwget_wch(stdscr,y,x,c)
+#define mvget_wstr(y,x,t)		mvwget_wstr(stdscr,y,x,t)
+#define mvgetn_wstr(y,x,t,n)		mvwgetn_wstr(stdscr,y,x,t,n)
+#define mvhline_set(y,x,c,n)		mvwhline_set(stdscr,y,x,c,n)
+#define mvin_wch(y,x,c)			mvwin_wch(stdscr,y,x,c)
+#define mvin_wchnstr(y,x,c,n)		mvwin_wchnstr(stdscr,y,x,c,n)
+#define mvin_wchstr(y,x,c)		mvwin_wchstr(stdscr,y,x,c)
+#define mvinnwstr(y,x,c,n)		mvwinnwstr(stdscr,y,x,c,n)
+#define mvins_nwstr(y,x,t,n)		mvwins_nwstr(stdscr,y,x,t,n)
+#define mvins_wch(y,x,c)		mvwins_wch(stdscr,y,x,c)
+#define mvins_wstr(y,x,t)		mvwins_wstr(stdscr,y,x,t)
+#define mvinwstr(y,x,c)			mvwinwstr(stdscr,y,x,c)
+#define mvvline_set(y,x,c,n)		mvwvline_set(stdscr,y,x,c,n)
+
+#define mvwadd_wch(win,y,x,c)		(wmove(win,y,x) == ERR ? ERR : wadd_wch(win,c))
+#define mvwadd_wchnstr(win,y,x,s,n)	(wmove(win,y,x) == ERR ? ERR : wadd_wchnstr(win,s,n))
+#define mvwadd_wchstr(win,y,x,s)	(wmove(win,y,x) == ERR ? ERR : wadd_wchstr(win,s))
+#define mvwaddnwstr(win,y,x,wstr,n)	(wmove(win,y,x) == ERR ? ERR : waddnwstr(win,wstr,n))
+#define mvwaddwstr(win,y,x,wstr)	(wmove(win,y,x) == ERR ? ERR : waddwstr(win,wstr))
+#define mvwget_wch(win,y,x,c)		(wmove(win,y,x) == ERR ? ERR : wget_wch(win,c))
+#define mvwget_wstr(win,y,x,t)		(wmove(win,y,x) == ERR ? ERR : wget_wstr(win,t))
+#define mvwgetn_wstr(win,y,x,t,n)	(wmove(win,y,x) == ERR ? ERR : wgetn_wstr(win,t,n))
+#define mvwhline_set(win,y,x,c,n)	(wmove(win,y,x) == ERR ? ERR : whline_set(win,c,n))
+#define mvwin_wch(win,y,x,c)		(wmove(win,y,x) == ERR ? ERR : win_wch(win,c))
+#define mvwin_wchnstr(win,y,x,c,n)	(wmove(win,y,x) == ERR ? ERR : win_wchnstr(win,c,n))
+#define mvwin_wchstr(win,y,x,c)		(wmove(win,y,x) == ERR ? ERR : win_wchstr(win,c))
+#define mvwinnwstr(win,y,x,c,n)		(wmove(win,y,x) == ERR ? ERR : winnwstr(win,c,n))
+#define mvwins_nwstr(win,y,x,t,n)	(wmove(win,y,x) == ERR ? ERR : wins_nwstr(win,t,n))
+#define mvwins_wch(win,y,x,c)		(wmove(win,y,x) == ERR ? ERR : wins_wch(win,c))
+#define mvwins_wstr(win,y,x,t)		(wmove(win,y,x) == ERR ? ERR : wins_wstr(win,t))
+#define mvwinwstr(win,y,x,c)		(wmove(win,y,x) == ERR ? ERR : winwstr(win,c))
+#define mvwvline_set(win,y,x,c,n)	(wmove(win,y,x) == ERR ? ERR : wvline_set(win,c,n))
+
+#endif /* NCURSES_NOMACROS */
+
+#if defined(TRACE) || defined(NCURSES_TEST)
+extern NCURSES_EXPORT(const char *) _nc_viswbuf(const wchar_t *);
+extern NCURSES_EXPORT(const char *) _nc_viswibuf(const wint_t *);
+#endif
+
+#endif /* _XOPEN_SOURCE_EXTENDED */
+/*
+ * This file is part of ncurses, designed to be appended after curses.h.in
+ * (see that file for the relevant copyright).
+ */
+/* $Id: curses.tail,v 1.14 2006/05/27 16:28:29 tom Exp $ */
+
+/* mouse interface */
+
+#ifdef NCURSES_MOUSE_VERSION
+#if NCURSES_MOUSE_VERSION > 1
+#define NCURSES_MOUSE_MASK(b,m) ((m) << (((b) - 1) * 5))
+#else
+#define NCURSES_MOUSE_MASK(b,m) ((m) << (((b) - 1) * 6))
+#endif
+
+#define	NCURSES_BUTTON_RELEASED	001L
+#define	NCURSES_BUTTON_PRESSED	002L
+#define	NCURSES_BUTTON_CLICKED	004L
+#define	NCURSES_DOUBLE_CLICKED	010L
+#define	NCURSES_TRIPLE_CLICKED	020L
+#define	NCURSES_RESERVED_EVENT	040L
+
+/* event masks */
+#define	BUTTON1_RELEASED	NCURSES_MOUSE_MASK(1, NCURSES_BUTTON_RELEASED)
+#define	BUTTON1_PRESSED		NCURSES_MOUSE_MASK(1, NCURSES_BUTTON_PRESSED)
+#define	BUTTON1_CLICKED		NCURSES_MOUSE_MASK(1, NCURSES_BUTTON_CLICKED)
+#define	BUTTON1_DOUBLE_CLICKED	NCURSES_MOUSE_MASK(1, NCURSES_DOUBLE_CLICKED)
+#define	BUTTON1_TRIPLE_CLICKED	NCURSES_MOUSE_MASK(1, NCURSES_TRIPLE_CLICKED)
+
+#define	BUTTON2_RELEASED	NCURSES_MOUSE_MASK(2, NCURSES_BUTTON_RELEASED)
+#define	BUTTON2_PRESSED		NCURSES_MOUSE_MASK(2, NCURSES_BUTTON_PRESSED)
+#define	BUTTON2_CLICKED		NCURSES_MOUSE_MASK(2, NCURSES_BUTTON_CLICKED)
+#define	BUTTON2_DOUBLE_CLICKED	NCURSES_MOUSE_MASK(2, NCURSES_DOUBLE_CLICKED)
+#define	BUTTON2_TRIPLE_CLICKED	NCURSES_MOUSE_MASK(2, NCURSES_TRIPLE_CLICKED)
+
+#define	BUTTON3_RELEASED	NCURSES_MOUSE_MASK(3, NCURSES_BUTTON_RELEASED)
+#define	BUTTON3_PRESSED		NCURSES_MOUSE_MASK(3, NCURSES_BUTTON_PRESSED)
+#define	BUTTON3_CLICKED		NCURSES_MOUSE_MASK(3, NCURSES_BUTTON_CLICKED)
+#define	BUTTON3_DOUBLE_CLICKED	NCURSES_MOUSE_MASK(3, NCURSES_DOUBLE_CLICKED)
+#define	BUTTON3_TRIPLE_CLICKED	NCURSES_MOUSE_MASK(3, NCURSES_TRIPLE_CLICKED)
+
+#define	BUTTON4_RELEASED	NCURSES_MOUSE_MASK(4, NCURSES_BUTTON_RELEASED)
+#define	BUTTON4_PRESSED		NCURSES_MOUSE_MASK(4, NCURSES_BUTTON_PRESSED)
+#define	BUTTON4_CLICKED		NCURSES_MOUSE_MASK(4, NCURSES_BUTTON_CLICKED)
+#define	BUTTON4_DOUBLE_CLICKED	NCURSES_MOUSE_MASK(4, NCURSES_DOUBLE_CLICKED)
+#define	BUTTON4_TRIPLE_CLICKED	NCURSES_MOUSE_MASK(4, NCURSES_TRIPLE_CLICKED)
+
+/*
+ * In 32 bits the version-1 scheme does not provide enough space for a 5th
+ * button, unless we choose to change the ABI by omitting the reserved-events.
+ */
+#if NCURSES_MOUSE_VERSION > 1
+
+#define	BUTTON5_RELEASED	NCURSES_MOUSE_MASK(5, NCURSES_BUTTON_RELEASED)
+#define	BUTTON5_PRESSED		NCURSES_MOUSE_MASK(5, NCURSES_BUTTON_PRESSED)
+#define	BUTTON5_CLICKED		NCURSES_MOUSE_MASK(5, NCURSES_BUTTON_CLICKED)
+#define	BUTTON5_DOUBLE_CLICKED	NCURSES_MOUSE_MASK(5, NCURSES_DOUBLE_CLICKED)
+#define	BUTTON5_TRIPLE_CLICKED	NCURSES_MOUSE_MASK(5, NCURSES_TRIPLE_CLICKED)
+
+#define	BUTTON_CTRL		NCURSES_MOUSE_MASK(6, 0001L)
+#define	BUTTON_SHIFT		NCURSES_MOUSE_MASK(6, 0002L)
+#define	BUTTON_ALT		NCURSES_MOUSE_MASK(6, 0004L)
+#define	REPORT_MOUSE_POSITION	NCURSES_MOUSE_MASK(6, 0010L)
+
+#else
+
+#define	BUTTON1_RESERVED_EVENT	NCURSES_MOUSE_MASK(1, NCURSES_RESERVED_EVENT)
+#define	BUTTON2_RESERVED_EVENT	NCURSES_MOUSE_MASK(2, NCURSES_RESERVED_EVENT)
+#define	BUTTON3_RESERVED_EVENT	NCURSES_MOUSE_MASK(3, NCURSES_RESERVED_EVENT)
+#define	BUTTON4_RESERVED_EVENT	NCURSES_MOUSE_MASK(4, NCURSES_RESERVED_EVENT)
+
+#define	BUTTON_CTRL		NCURSES_MOUSE_MASK(5, 0001L)
+#define	BUTTON_SHIFT		NCURSES_MOUSE_MASK(5, 0002L)
+#define	BUTTON_ALT		NCURSES_MOUSE_MASK(5, 0004L)
+#define	REPORT_MOUSE_POSITION	NCURSES_MOUSE_MASK(5, 0010L)
+
+#endif
+
+#define	ALL_MOUSE_EVENTS	(REPORT_MOUSE_POSITION - 1)
+
+/* macros to extract single event-bits from masks */
+#define	BUTTON_RELEASE(e, x)		((e) & (001 << (6 * ((x) - 1))))
+#define	BUTTON_PRESS(e, x)		((e) & (002 << (6 * ((x) - 1))))
+#define	BUTTON_CLICK(e, x)		((e) & (004 << (6 * ((x) - 1))))
+#define	BUTTON_DOUBLE_CLICK(e, x)	((e) & (010 << (6 * ((x) - 1))))
+#define	BUTTON_TRIPLE_CLICK(e, x)	((e) & (020 << (6 * ((x) - 1))))
+#define	BUTTON_RESERVED_EVENT(e, x)	((e) & (040 << (6 * ((x) - 1))))
+
+typedef struct
+{
+    short id;		/* ID to distinguish multiple devices */
+    int x, y, z;	/* event coordinates (character-cell) */
+    mmask_t bstate;	/* button state bits */
+}
+MEVENT;
+
+extern NCURSES_EXPORT(int) getmouse (MEVENT *);
+extern NCURSES_EXPORT(int) ungetmouse (MEVENT *);
+extern NCURSES_EXPORT(mmask_t) mousemask (mmask_t, mmask_t *);
+extern NCURSES_EXPORT(bool) wenclose (const WINDOW *, int, int);
+extern NCURSES_EXPORT(int) mouseinterval (int);
+extern NCURSES_EXPORT(bool) wmouse_trafo (const WINDOW*, int*, int*, bool);
+extern NCURSES_EXPORT(bool) mouse_trafo (int*, int*, bool);              /* generated */
+
+#define mouse_trafo(y,x,to_screen) wmouse_trafo(stdscr,y,x,to_screen)
+#endif
+
+/* other non-XSI functions */
+
+extern NCURSES_EXPORT(int) mcprint (char *, int);	/* direct data to printer */
+extern NCURSES_EXPORT(int) has_key (int);		/* do we have given key? */
+
+/* Debugging : use with libncurses_g.a */
+
+extern NCURSES_EXPORT(void) _tracef (const char *, ...) GCC_PRINTFLIKE(1,2);
+extern NCURSES_EXPORT(void) _tracedump (const char *, WINDOW *);
+extern NCURSES_EXPORT(char *) _traceattr (attr_t);
+extern NCURSES_EXPORT(char *) _traceattr2 (int, chtype);
+extern NCURSES_EXPORT(char *) _nc_tracebits (void);
+extern NCURSES_EXPORT(char *) _tracechar (int);
+extern NCURSES_EXPORT(char *) _tracechtype (chtype);
+extern NCURSES_EXPORT(char *) _tracechtype2 (int, chtype);
+#ifdef _XOPEN_SOURCE_EXTENDED
+#define _tracech_t		_tracecchar_t
+extern NCURSES_EXPORT(char *) _tracecchar_t (const cchar_t *);
+#define _tracech_t2		_tracecchar_t2
+extern NCURSES_EXPORT(char *) _tracecchar_t2 (int, const cchar_t *);
+#else
+#define _tracech_t		_tracechtype
+#define _tracech_t2		_tracechtype2
+#endif
+#ifdef NCURSES_MOUSE_VERSION
+extern NCURSES_EXPORT(char *) _tracemouse (const MEVENT *);
+#endif
+extern NCURSES_EXPORT(void) trace (const unsigned int);
+
+/* trace masks */
+#define TRACE_DISABLE	0x0000	/* turn off tracing */
+#define TRACE_TIMES	0x0001	/* trace user and system times of updates */
+#define TRACE_TPUTS	0x0002	/* trace tputs calls */
+#define TRACE_UPDATE	0x0004	/* trace update actions, old & new screens */
+#define TRACE_MOVE	0x0008	/* trace cursor moves and scrolls */
+#define TRACE_CHARPUT	0x0010	/* trace all character outputs */
+#define TRACE_ORDINARY	0x001F	/* trace all update actions */
+#define TRACE_CALLS	0x0020	/* trace all curses calls */
+#define TRACE_VIRTPUT	0x0040	/* trace virtual character puts */
+#define TRACE_IEVENT	0x0080	/* trace low-level input processing */
+#define TRACE_BITS	0x0100	/* trace state of TTY control bits */
+#define TRACE_ICALLS	0x0200	/* trace internal/nested calls */
+#define TRACE_CCALLS	0x0400	/* trace per-character calls */
+#define TRACE_DATABASE	0x0800	/* trace read/write of terminfo/termcap data */
+#define TRACE_ATTRS	0x1000	/* trace attribute updates */
+
+#define TRACE_SHIFT	13	/* number of bits in the trace masks */
+#define TRACE_MAXIMUM	((1 << TRACE_SHIFT) - 1) /* maximum trace level */
+
+#if defined(TRACE) || defined(NCURSES_TEST)
+extern NCURSES_EXPORT_VAR(int) _nc_optimize_enable;		/* enable optimizations */
+extern NCURSES_EXPORT(const char *) _nc_visbuf (const char *);
+#define OPTIMIZE_MVCUR		0x01	/* cursor movement optimization */
+#define OPTIMIZE_HASHMAP	0x02	/* diff hashing to detect scrolls */
+#define OPTIMIZE_SCROLL		0x04	/* scroll optimization */
+#define OPTIMIZE_ALL		0xff	/* enable all optimizations (dflt) */
+#endif
+
+#ifdef __cplusplus
+
+#ifndef NCURSES_NOMACROS
+
+/* these names conflict with STL */
+#undef box
+#undef clear
+#undef erase
+#undef move
+#undef refresh
+
+#endif /* NCURSES_NOMACROS */
+
+}
+#endif
+
+/* Local functions not defined in normal curses */
+
+void curses_enable_vga(int);
+void curses_enable_serial(int);
+
+int curses_vga_enabled(void);
+int curses_serial_enabled(void);
+
+#endif /* _CURSES_H */
diff --git a/apps/lib/curses/tinycurses/curses.priv.h b/apps/lib/curses/tinycurses/curses.priv.h
new file mode 100644
index 0000000..78b7ff3
--- /dev/null
+++ b/apps/lib/curses/tinycurses/curses.priv.h
@@ -0,0 +1,1317 @@
+/****************************************************************************
+ * Copyright (c) 1998-2005,2006 Free Software Foundation, Inc.              *
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
+ *  Author: Zeyd M. Ben-Halim <zmbenhal@netcom.com> 1992,1995               *
+ *     and: Eric S. Raymond <esr@snark.thyrsus.com>                         *
+ *     and: Thomas E. Dickey                        1996-on                 *
+ ****************************************************************************/
+
+
+/*
+ * $Id: curses.priv.h,v 1.314 2006/12/10 00:55:14 tom Exp $
+ *
+ *	curses.priv.h
+ *
+ *	Header file for curses library objects which are private to
+ *	the library.
+ *
+ */
+
+#ifndef _CURSES_PRIV_H
+#define _CURSES_PRIV_H 1
+
+//// #include <ncurses_dll.h>
+
+#ifdef __cplusplus
+extern "C" {
+#endif
+
+//// #include <ncurses_cfg.h>
+
+#if USE_RCS_IDS
+#define MODULE_ID(id) static const char Ident[] = id;
+#else
+#define MODULE_ID(id) /*nothing*/
+#endif
+
+#include <stdlib.h>
+#include <string.h>
+#include <sys/types.h>
+
+#if HAVE_UNISTD_H
+#include <unistd.h>
+#endif
+
+//// #if HAVE_SYS_BSDTYPES_H
+//// #include <sys/bsdtypes.h>	/* needed for ISC */
+//// #endif
+
+#if HAVE_LIMITS_H
+# include <limits.h>
+//// #elif HAVE_SYS_PARAM_H
+//// # include <sys/param.h>
+#endif
+////
+//// #include <assert.h>
+#include <stdio.h>
+
+#include <errno.h>
+
+#if DECL_ERRNO
+extern int errno;
+#endif
+
+//// #include <nc_panel.h>
+////
+//// /* Some systems have a broken 'select()', but workable 'poll()'.  Use that */
+//// #if HAVE_WORKING_POLL
+//// #define USE_FUNC_POLL 1
+//// #if HAVE_POLL_H
+//// #include <poll.h>
+//// #else
+//// #include <sys/poll.h>
+//// #endif
+//// #else
+//// #define USE_FUNC_POLL 0
+//// #endif
+////
+//// /* include signal.h before curses.h to work-around defect in glibc 2.1.3 */
+//// #include <signal.h>
+
+/* Alessandro Rubini's GPM (general-purpose mouse) */
+#if HAVE_LIBGPM && HAVE_GPM_H
+#define USE_GPM_SUPPORT 1
+#else
+#define USE_GPM_SUPPORT 0
+#endif
+
+/* QNX mouse support */
+#if defined(__QNX__) && !defined(__QNXNTO__)
+#define USE_QNX_MOUSE 1
+#else
+#define USE_QNX_MOUSE 0
+#endif
+
+/* EMX mouse support */
+#ifdef __EMX__
+#define USE_EMX_MOUSE 1
+#else
+#define USE_EMX_MOUSE 0
+#endif
+
+#define DEFAULT_MAXCLICK 166
+#define EV_MAX		8	/* size of mouse circular event queue */
+
+/*
+ * If we don't have signals to support it, don't add a sigwinch handler.
+ * In any case, resizing is an extended feature.  Use it if we've got it.
+ */
+#if !NCURSES_EXT_FUNCS
+#undef HAVE_SIZECHANGE
+#define HAVE_SIZECHANGE 0
+#endif
+
+#if HAVE_SIZECHANGE && defined(SIGWINCH)
+#define USE_SIZECHANGE 1
+#else
+#define USE_SIZECHANGE 0
+#undef USE_SIGWINCH
+#define USE_SIGWINCH 0
+#endif
+
+/*
+ * If desired, one can configure this, disabling environment variables that
+ * point to custom terminfo/termcap locations.
+ */
+#ifdef USE_ROOT_ENVIRON
+#define use_terminfo_vars() 1
+#else
+#define use_terminfo_vars() _nc_env_access()
+extern NCURSES_EXPORT(int) _nc_env_access (void);
+#endif
+
+/*
+ * Not all platforms have memmove; some have an equivalent bcopy.  (Some may
+ * have neither).
+ */
+#if USE_OK_BCOPY
+#define memmove(d,s,n) bcopy(s,d,n)
+#elif USE_MY_MEMMOVE
+#define memmove(d,s,n) _nc_memmove(d,s,n)
+extern NCURSES_EXPORT(void *) _nc_memmove (void *, const void *, size_t);
+#endif
+
+/*
+ * Scroll hints are useless when hashmap is used
+ */
+//// #if !USE_SCROLL_HINTS
+//// #if !USE_HASHMAP
+//// #define USE_SCROLL_HINTS 1
+//// #else
+//// #define USE_SCROLL_HINTS 0
+//// #endif
+//// #endif
+
+#if USE_SCROLL_HINTS
+#define if_USE_SCROLL_HINTS(stmt) stmt
+#else
+#define if_USE_SCROLL_HINTS(stmt) /*nothing*/
+#endif
+
+/*
+ * Note:  ht/cbt expansion flakes out randomly under Linux 1.1.47, but only
+ * when we're throwing control codes at the screen at high volume.  To see
+ * this, re-enable USE_HARD_TABS and run worm for a while.  Other systems
+ * probably don't want to define this either due to uncertainties about tab
+ * delays and expansion in raw mode.
+ */
+
+struct tries {
+	struct tries    *child;     /* ptr to child.  NULL if none          */
+	struct tries    *sibling;   /* ptr to sibling.  NULL if none        */
+	unsigned char    ch;        /* character at this node               */
+	unsigned short   value;     /* code of string so far.  0 if none.   */
+};
+
+/*
+ * Common/troublesome character definitions
+ */
+#define L_BRACE '{'
+#define R_BRACE '}'
+#define S_QUOTE '\''
+#define D_QUOTE '"'
+
+#define VT_ACSC "``aaffggiijjkkllmmnnooppqqrrssttuuvvwwxxyyzz{{||}}~~"
+
+/*
+ * Structure for palette tables
+ */
+
+typedef struct
+{
+    short red, green, blue;	/* what color_content() returns */
+    short r, g, b;		/* params to init_color() */
+    int init;			/* true if we called init_color() */
+}
+color_t;
+
+#define MAXCOLUMNS    135
+#define MAXLINES      66
+#define FIFO_SIZE     MAXCOLUMNS+2  /* for nocbreak mode input */
+
+#define ACS_LEN       128
+
+#define WINDOWLIST struct _win_list
+
+#if USE_WIDEC_SUPPORT
+#define _nc_bkgd    _bkgrnd
+#else
+#undef _XOPEN_SOURCE_EXTENDED
+#define _nc_bkgd    _bkgd
+#define wgetbkgrnd(win, wch)	*wch = win->_bkgd
+#define wbkgrnd	    wbkgd
+#endif
+
+//// #include <curses.h>	/* we'll use -Ipath directive to get the right one! */
+//// #include <term.h>
+//// #include <term_entry.h>
+//// #include <nc_tparm.h>
+
+#if NCURSES_EXT_COLORS && USE_WIDEC_SUPPORT
+#define if_EXT_COLORS(stmt)	stmt
+#define NetPair(value,p)	(value).ext_color = (p), \
+				AttrOf(value) &= ALL_BUT_COLOR, \
+				AttrOf(value) |= (A_COLOR & COLOR_PAIR((p > 255) ? 255 : p))
+#define SetPair(value,p)	(value).ext_color = (p)
+#define GetPair(value)		(value).ext_color
+#define unColor(n)		(AttrOf(n) & ALL_BUT_COLOR)
+#define GET_WINDOW_PAIR(w)	(w)->_color
+#define SET_WINDOW_PAIR(w,p)	(w)->_color = (p)
+#define SameAttrOf(a,b)		(AttrOf(a) == AttrOf(b) && GetPair(a) == GetPair(b))
+#define VIDATTR(attr, pair)	vid_attr(attr, pair, 0)
+#else
+#define if_EXT_COLORS(stmt)	/* nothing */
+#define SetPair(value,p)	RemAttr(value, A_COLOR), \
+				SetAttr(value, AttrOf(value) | (A_COLOR & COLOR_PAIR(p)))
+#define GetPair(value)		PAIR_NUMBER(AttrOf(value))
+#define unColor(n)		(AttrOf(n) & ALL_BUT_COLOR)
+#define GET_WINDOW_PAIR(w)	PAIR_NUMBER(WINDOW_ATTRS(w))
+#define SET_WINDOW_PAIR(w,p)	WINDOW_ATTRS(w) &= ALL_BUT_COLOR, \
+				WINDOW_ATTRS(w) |= (A_COLOR & COLOR_PAIR(p))
+#define SameAttrOf(a,b)		(AttrOf(a) == AttrOf(b))
+#define VIDATTR(attr, pair)	vidattr(attr)
+#endif
+
+#define WINDOW_ATTRS(w)		((w)->_attrs)
+
+#define SCREEN_ATTRS(s)		(*((s)->_current_attr))
+#define GET_SCREEN_PAIR(s)	GetPair(SCREEN_ATTRS(s))
+#define SET_SCREEN_PAIR(s,p)	SetPair(SCREEN_ATTRS(s), p)
+
+/*
+ * Definitions for color pairs
+ */
+typedef unsigned colorpair_t;	/* type big enough to store PAIR_OF() */
+#define C_SHIFT 9		/* we need more bits than there are colors */
+#define C_MASK			((1 << C_SHIFT) - 1)
+#define PAIR_OF(fg, bg)		((((fg) & C_MASK) << C_SHIFT) | ((bg) & C_MASK))
+#define isDefaultColor(c)	((c) >= COLOR_DEFAULT || (c) < 0)
+
+#define COLOR_DEFAULT		C_MASK
+
+#if defined(USE_TERMLIB) && !defined(NEED_NCURSES_CH_T)
+
+#undef NCURSES_CH_T		/* this is not a termlib feature */
+#define NCURSES_CH_T void	/* ...but we need a pointer in SCREEN */
+
+#endif	/* USE_TERMLIB */
+
+#ifndef USE_TERMLIB
+struct ldat
+{
+	NCURSES_CH_T	*text;		/* text of the line */
+	NCURSES_SIZE_T	firstchar;	/* first changed character in the line */
+	NCURSES_SIZE_T	lastchar;	/* last changed character in the line */
+	NCURSES_SIZE_T	oldindex;	/* index of the line at last update */
+};
+#endif	/* USE_TERMLIB */
+
+typedef enum {
+	M_XTERM	= -1		/* use xterm's mouse tracking? */
+	,M_NONE = 0		/* no mouse device */
+#if USE_GPM_SUPPORT
+	,M_GPM			/* use GPM */
+#endif
+#if USE_SYSMOUSE
+	,M_SYSMOUSE		/* FreeBSD sysmouse on console */
+#endif
+} MouseType;
+
+/*
+ * Structures for scrolling.
+ */
+
+typedef struct {
+	unsigned long hashval;
+	int oldcount, newcount;
+	int oldindex, newindex;
+} HASHMAP;
+
+/*
+ * Structures for soft labels.
+ */
+
+struct _SLK;
+
+#ifndef USE_TERMLIB
+
+typedef struct
+{
+	char *ent_text;		/* text for the label */
+	char *form_text;	/* formatted text (left/center/...) */
+	int ent_x;		/* x coordinate of this field */
+	char dirty;		/* this label has changed */
+	char visible;		/* field is visible */
+} slk_ent;
+
+typedef struct _SLK {
+	char dirty;		/* all labels have changed */
+	char hidden;		/* soft labels are hidden */
+	WINDOW *win;
+	slk_ent *ent;
+	short  maxlab;		/* number of available labels */
+	short  labcnt;		/* number of allocated labels */
+	short  maxlen;		/* length of labels */
+	NCURSES_CH_T attr;	/* soft label attribute */
+} SLK;
+
+#endif	/* USE_TERMLIB */
+
+typedef	struct {
+	int	line;		/* lines to take, < 0 => from bottom*/
+	int	(*hook)(WINDOW *, int); /* callback for user	    */
+	WINDOW *w;		/* maybe we need this for cleanup   */
+} ripoff_t;
+
+#if USE_GPM_SUPPORT
+#undef buttons			/* term.h defines this, and gpm uses it! */
+#include <gpm.h>
+
+#ifdef HAVE_LIBDL
+/* link dynamically to GPM */
+typedef int *TYPE_gpm_fd;
+typedef int (*TYPE_Gpm_Open) (Gpm_Connect *, int);
+typedef int (*TYPE_Gpm_Close) (void);
+typedef int (*TYPE_Gpm_GetEvent) (Gpm_Event *);
+
+#define my_gpm_fd       SP->_mouse_gpm_fd
+#define my_Gpm_Open     SP->_mouse_Gpm_Open
+#define my_Gpm_Close    SP->_mouse_Gpm_Close
+#define my_Gpm_GetEvent SP->_mouse_Gpm_GetEvent
+#else
+/* link statically to GPM */
+#define my_gpm_fd       &gpm_fd
+#define my_Gpm_Open     Gpm_Open
+#define my_Gpm_Close    Gpm_Close
+#define my_Gpm_GetEvent Gpm_GetEvent
+#endif /* HAVE_LIBDL */
+#endif /* USE_GPM_SUPPORT */
+
+/*
+ * The SCREEN structure.
+ */
+
+struct screen {
+	int		_ifd;		/* input file ptr for screen	    */
+	FILE		*_ofp;		/* output file ptr for screen	    */
+	char		*_setbuf;	/* buffered I/O for output	    */
+	bool		_filtered;	/* filter() was called		    */
+	bool		_buffered;	/* setvbuf uses _setbuf data	    */
+	int		_checkfd;	/* filedesc for typeahead check	    */
+	//// TERMINAL	*_term;		/* terminal type information	    */
+	short		_lines;		/* screen lines			    */
+	short		_columns;	/* screen columns		    */
+
+	short		_lines_avail;	/* lines available for stdscr	    */
+	short		_topstolen;	/* lines stolen from top	    */
+	ripoff_t	_rippedoff[5];	/* list of lines stolen		    */
+	int		_rip_count;	/* ...and total lines stolen	    */
+
+	WINDOW		*_curscr;	/* current screen		    */
+	WINDOW		*_newscr;	/* virtual screen to be updated to  */
+	WINDOW		*_stdscr;	/* screen's full-window context	    */
+
+	struct tries	*_keytry;	/* "Try" for use with keypad mode   */
+	struct tries	*_key_ok;	/* Disabled keys via keyok(,FALSE)  */
+	bool		_tried;		/* keypad mode was initialized	    */
+	bool		_keypad_on;	/* keypad mode is currently on	    */
+
+	bool		_called_wgetch;	/* check for recursion in wgetch()  */
+	int		_fifo[FIFO_SIZE];	/* input push-back buffer   */
+	short		_fifohead,	/* head of fifo queue		    */
+			_fifotail,	/* tail of fifo queue		    */
+			_fifopeek,	/* where to peek for next char	    */
+			_fifohold;	/* set if breakout marked	    */
+
+	int		_endwin;	/* are we out of window mode?	    */
+	NCURSES_CH_T	*_current_attr; /* holds current attributes set	    */
+	int		_coloron;	/* is color enabled?		    */
+	int		_color_defs;	/* are colors modified		    */
+	int		_cursor;	/* visibility of the cursor	    */
+	int		_cursrow;	/* physical cursor row		    */
+	int		_curscol;	/* physical cursor column	    */
+	bool		_notty;		/* true if we cannot switch non-tty */
+	int		_nl;		/* True if NL -> CR/NL is on	    */
+	int		_raw;		/* True if in raw mode		    */
+	int		_cbreak;	/* 1 if in cbreak mode		    */
+					/* > 1 if in halfdelay mode	    */
+	int		_echo;		/* True if echo on		    */
+	int		_use_meta;	/* use the meta key?		    */
+	struct _SLK	*_slk;		/* ptr to soft key struct / NULL    */
+	int		slk_format;	/* selected format for this screen  */
+	/* cursor movement costs; units are 10ths of milliseconds */
+#if NCURSES_NO_PADDING
+	int		_no_padding;	/* flag to set if padding disabled  */
+#endif
+	int		_char_padding;	/* cost of character put	    */
+	int		_cr_cost;	/* cost of (carriage_return)	    */
+	int		_cup_cost;	/* cost of (cursor_address)	    */
+	int		_home_cost;	/* cost of (cursor_home)	    */
+	int		_ll_cost;	/* cost of (cursor_to_ll)	    */
+#if USE_HARD_TABS
+	int		_ht_cost;	/* cost of (tab)		    */
+	int		_cbt_cost;	/* cost of (backtab)		    */
+#endif /* USE_HARD_TABS */
+	int		_cub1_cost;	/* cost of (cursor_left)	    */
+	int		_cuf1_cost;	/* cost of (cursor_right)	    */
+	int		_cud1_cost;	/* cost of (cursor_down)	    */
+	int		_cuu1_cost;	/* cost of (cursor_up)		    */
+	int		_cub_cost;	/* cost of (parm_cursor_left)	    */
+	int		_cuf_cost;	/* cost of (parm_cursor_right)	    */
+	int		_cud_cost;	/* cost of (parm_cursor_down)	    */
+	int		_cuu_cost;	/* cost of (parm_cursor_up)	    */
+	int		_hpa_cost;	/* cost of (column_address)	    */
+	int		_vpa_cost;	/* cost of (row_address)	    */
+	/* used in tty_update.c, must be chars */
+	int		_ed_cost;	/* cost of (clr_eos)		    */
+	int		_el_cost;	/* cost of (clr_eol)		    */
+	int		_el1_cost;	/* cost of (clr_bol)		    */
+	int		_dch1_cost;	/* cost of (delete_character)	    */
+	int		_ich1_cost;	/* cost of (insert_character)	    */
+	int		_dch_cost;	/* cost of (parm_dch)		    */
+	int		_ich_cost;	/* cost of (parm_ich)		    */
+	int		_ech_cost;	/* cost of (erase_chars)	    */
+	int		_rep_cost;	/* cost of (repeat_char)	    */
+	int		_hpa_ch_cost;	/* cost of (column_address)	    */
+	int		_cup_ch_cost;	/* cost of (cursor_address)	    */
+	int		_cuf_ch_cost;	/* cost of (parm_cursor_right)	    */
+	int		_inline_cost;	/* cost of inline-move		    */
+	int		_smir_cost;	/* cost of (enter_insert_mode)	    */
+	int		_rmir_cost;	/* cost of (exit_insert_mode)	    */
+	int		_ip_cost;	/* cost of (insert_padding)	    */
+	/* used in lib_mvcur.c */
+	char *		_address_cursor;
+	/* used in tty_update.c */
+	int		_scrolling;	/* 1 if terminal's smart enough to  */
+
+	/* used in lib_color.c */
+	color_t		*_color_table;	/* screen's color palette	     */
+	int		_color_count;	/* count of colors in palette	     */
+	colorpair_t	*_color_pairs;	/* screen's color pair list	     */
+	int		_pair_count;	/* count of color pairs		     */
+#if NCURSES_EXT_FUNCS
+	bool		_default_color; /* use default colors		     */
+	bool		_has_sgr_39_49; /* has ECMA default color support    */
+	int		_default_fg;	/* assumed default foreground	     */
+	int		_default_bg;	/* assumed default background	     */
+#endif
+	chtype		_ok_attributes; /* valid attributes for terminal     */
+	chtype		_xmc_suppress;	/* attributes to suppress if xmc     */
+	chtype		_xmc_triggers;	/* attributes to process if xmc	     */
+	chtype *	_acs_map;	/* the real alternate-charset map    */
+	bool *		_screen_acs_map;
+
+
+	/* used in lib_vidattr.c */
+	bool		_use_rmso;	/* true if we may use 'rmso'	     */
+	bool		_use_rmul;	/* true if we may use 'rmul'	     */
+
+	/*
+	 * These data correspond to the state of the idcok() and idlok()
+	 * functions.  A caveat is in order here:  the XSI and SVr4
+	 * documentation specify that these functions apply to the window which
+	 * is given as an argument.  However, ncurses implements this logic
+	 * only for the newscr/curscr update process, _not_ per-window.
+	 */
+	bool		_nc_sp_idlok;
+	bool		_nc_sp_idcok;
+#define _nc_idlok SP->_nc_sp_idlok
+#define _nc_idcok SP->_nc_sp_idcok
+
+#ifdef NCURSES_MOUSE_VERSION
+	/*
+	 * These are the data that support the mouse interface.
+	 */
+	bool		_mouse_initialized;
+	MouseType	_mouse_type;
+	int		_maxclick;
+	bool		(*_mouse_event) (SCREEN *);
+	bool		(*_mouse_inline)(SCREEN *);
+	bool		(*_mouse_parse) (int);
+	void		(*_mouse_resume)(SCREEN *);
+	void		(*_mouse_wrap)	(SCREEN *);
+	int		_mouse_fd;	/* file-descriptor, if any */
+	bool		_mouse_active;	/* true if initialized */
+	mmask_t		_mouse_mask;
+	NCURSES_CONST char *_mouse_xtermcap; /* string to enable/disable mouse */
+	MEVENT		_mouse_events[EV_MAX];	/* hold the last mouse event seen */
+	MEVENT		*_mouse_eventp;	/* next free slot in event queue */
+#endif
+
+#if USE_GPM_SUPPORT
+	bool		_mouse_gpm_loaded;
+	bool		_mouse_gpm_found;
+#ifdef HAVE_LIBDL
+	TYPE_gpm_fd	_mouse_gpm_fd;
+	TYPE_Gpm_Open	_mouse_Gpm_Open;
+	TYPE_Gpm_Close	_mouse_Gpm_Close;
+	TYPE_Gpm_GetEvent _mouse_Gpm_GetEvent;
+#endif
+	Gpm_Connect	_mouse_gpm_connect;
+#endif /* USE_GPM_SUPPORT */
+
+#if USE_EMX_MOUSE
+	int		_emxmouse_wfd;
+	int		_emxmouse_thread;
+	int		_emxmouse_activated;
+	char		_emxmouse_buttons[4];
+#endif
+
+#if USE_SYSMOUSE
+	MEVENT		_sysmouse_fifo[FIFO_SIZE];
+	int		_sysmouse_head;
+	int		_sysmouse_tail;
+	int		_sysmouse_char_width;	/* character width */
+	int		_sysmouse_char_height;	/* character height */
+	int		_sysmouse_old_buttons;
+	int		_sysmouse_new_buttons;
+#endif
+
+	/*
+	 * This supports automatic resizing
+	 */
+#if USE_SIZECHANGE
+	int		(*_resize)(int,int);
+#endif
+
+	/*
+	 * These are data that support the proper handling of the panel stack on an
+	 * per screen basis.
+	 */
+	//// struct panelhook _panelHook;
+	/*
+	 * Linked-list of all windows, to support '_nc_resizeall()' and
+	 * '_nc_freeall()'
+	 */
+	WINDOWLIST	*_nc_sp_windows;
+#define _nc_windows SP->_nc_sp_windows
+
+	bool		_sig_winch;
+	SCREEN		*_next_screen;
+
+	/* hashes for old and new lines */
+	unsigned long	*oldhash, *newhash;
+	HASHMAP		*hashtab;
+	int		hashtab_len;
+
+	bool		_cleanup;	/* cleanup after int/quit signal */
+	int		(*_outch)(int); /* output handler if not putc */
+
+	int		_legacy_coding;	/* see use_legacy_coding() */
+
+	/*
+	 * ncurses/ncursesw are the same up to this point.
+	 */
+#if USE_WIDEC_SUPPORT
+	/* recent versions of 'screen' have partially-working support for
+	 * UTF-8, but do not permit ACS at the same time (see tty_update.c).
+	 */
+	bool		_screen_acs_fix;
+#endif
+};
+
+extern NCURSES_EXPORT_VAR(SCREEN *) _nc_screen_chain;
+
+	WINDOWLIST {
+	WINDOW	win;	/* first, so WINDOW_EXT() works */
+	WINDOWLIST *next;
+#ifdef _XOPEN_SOURCE_EXTENDED
+	char addch_work[(MB_LEN_MAX * 9) + 1];
+	unsigned addch_used;	/* number of bytes in addch_work[] */
+	int addch_x;		/* x-position for addch_work[] */
+	int addch_y;		/* y-position for addch_work[] */
+#endif
+};
+
+#define WINDOW_EXT(win,field) (((WINDOWLIST *)(win))->field)
+
+/* usually in <limits.h> */
+#ifndef UCHAR_MAX
+#define UCHAR_MAX 255
+#endif
+
+/* The terminfo source is assumed to be 7-bit ASCII */
+#define is7bits(c)	((unsigned)(c) < 128)
+
+/* Checks for isprint() should be done on 8-bit characters (non-wide) */
+#define is8bits(c)	((unsigned)(c) <= UCHAR_MAX)
+
+#ifndef min
+#define min(a,b)	((a) > (b)  ?  (b)  :  (a))
+#endif
+
+#ifndef max
+#define max(a,b)	((a) < (b)  ?  (b)  :  (a))
+#endif
+
+/* usually in <unistd.h> */
+#ifndef STDIN_FILENO
+#define STDIN_FILENO 0
+#endif
+
+#ifndef STDOUT_FILENO
+#define STDOUT_FILENO 1
+#endif
+
+#ifndef STDERR_FILENO
+#define STDERR_FILENO 2
+#endif
+
+#ifndef EXIT_SUCCESS
+#define EXIT_SUCCESS 0
+#endif
+
+#ifndef EXIT_FAILURE
+#define EXIT_FAILURE 1
+#endif
+
+#ifndef R_OK
+#define	R_OK	4		/* Test for read permission.  */
+#endif
+#ifndef W_OK
+#define	W_OK	2		/* Test for write permission.  */
+#endif
+#ifndef X_OK
+#define	X_OK	1		/* Test for execute permission.  */
+#endif
+#ifndef F_OK
+#define	F_OK	0		/* Test for existence.  */
+#endif
+
+#if HAVE_FCNTL_H
+//// #include <fcntl.h>		/* may define O_BINARY	*/
+#endif
+
+#ifndef O_BINARY
+#define O_BINARY 0
+#endif
+
+#ifdef TRACE
+#define TRACE_OUTCHARS(n) _nc_outchars += (n);
+#else
+#define TRACE_OUTCHARS(n) /* nothing */
+#endif
+
+#define UChar(c)	((unsigned char)(c))
+#define ChCharOf(c)	((c) & (chtype)A_CHARTEXT)
+#define ChAttrOf(c)	((c) & (chtype)A_ATTRIBUTES)
+
+#ifndef MB_LEN_MAX
+#define MB_LEN_MAX 8 /* should be >= MB_CUR_MAX, but that may be a function */
+#endif
+
+#if USE_WIDEC_SUPPORT /* { */
+#define isEILSEQ(status) ((status == (size_t)-1) && (errno == EILSEQ))
+
+#define init_mb(state)	memset(&state, 0, sizeof(state))
+
+#if NCURSES_EXT_COLORS
+#define NulColor	, 0
+#else
+#define NulColor	/* nothing */
+#endif
+
+#define NulChar		0,0,0,0	/* FIXME: see CCHARW_MAX */
+#define CharOf(c)	((c).chars[0])
+#define AttrOf(c)	((c).attr)
+#define AddAttr(c,a)	AttrOf(c) |= ((a) & A_ATTRIBUTES)
+#define RemAttr(c,a)	AttrOf(c) &= ~((a) & A_ATTRIBUTES)
+#define SetAttr(c,a)	AttrOf(c) = ((a) & A_ATTRIBUTES)
+#define NewChar2(c,a)	{ a, { c, NulChar } NulColor }
+#define NewChar(ch)	NewChar2(ChCharOf(ch), ChAttrOf(ch))
+#define CharEq(a,b)	(!memcmp(&(a), &(b), sizeof(a)))
+#define SetChar(ch,c,a) do {							    \
+			    NCURSES_CH_T *_cp = &ch;				    \
+			    memset(_cp, 0, sizeof(ch));				    \
+			    _cp->chars[0] = (c);					    \
+			    _cp->attr = (a);					    \
+			    if_EXT_COLORS(SetPair(ch, PAIR_NUMBER(a)));		    \
+			} while (0)
+#define CHREF(wch)	(&wch)
+#define CHDEREF(wch)	(*wch)
+#define ARG_CH_T	NCURSES_CH_T *
+#define CARG_CH_T	const NCURSES_CH_T *
+#define PUTC_DATA	char PUTC_buf[MB_LEN_MAX]; int PUTC_i, PUTC_n; \
+			mbstate_t PUT_st; wchar_t PUTC_ch
+#define PUTC_INIT	init_mb (PUT_st)
+#define PUTC(ch,b)	do { if(!isWidecExt(ch)) {				    \
+			if (Charable(ch)) {					    \
+			    fputc(CharOf(ch), b);				    \
+			    TRACE_OUTCHARS(1);					    \
+			} else {						    \
+			    PUTC_INIT;						    \
+			    for (PUTC_i = 0; PUTC_i < CCHARW_MAX; ++PUTC_i) {	    \
+				PUTC_ch = (ch).chars[PUTC_i];			    \
+				if (PUTC_ch == L'\0')				    \
+				    break;					    \
+				PUTC_n = wcrtomb(PUTC_buf,			    \
+						 (ch).chars[PUTC_i], &PUT_st);	    \
+				if (PUTC_n <= 0) {				    \
+				    if (PUTC_ch && is8bits(PUTC_ch) && PUTC_i == 0) \
+					putc(PUTC_ch,b);			    \
+				    break;					    \
+				}						    \
+				fwrite(PUTC_buf, (unsigned) PUTC_n, 1, b);	    \
+			    }							    \
+			    TRACE_OUTCHARS(PUTC_i);				    \
+			} } } while (0)
+
+#define BLANK		{ WA_NORMAL, {' '} NulColor }
+#define ZEROS		{ WA_NORMAL, {'\0'} NulColor }
+#define ISBLANK(ch)	((ch).chars[0] == L' ' && (ch).chars[1] == L'\0')
+
+	/*
+	 * Wide characters cannot be represented in the A_CHARTEXT mask of
+	 * attr_t's but an application might have set a narrow character there.
+	 * But even in that case, it would only be a printable character, or
+	 * zero.  Otherwise we can use those bits to tell if a cell is the
+	 * first or extension part of a wide character.
+	 */
+#define WidecExt(ch)	(AttrOf(ch) & A_CHARTEXT)
+#define isWidecBase(ch)	(WidecExt(ch) == 1)
+#define isWidecExt(ch)	(WidecExt(ch) > 1 && WidecExt(ch) < 32)
+#define SetWidecExt(dst, ext)	AttrOf(dst) &= ~A_CHARTEXT,		\
+				AttrOf(dst) |= (ext + 1)
+
+#define if_WIDEC(code)  code
+#define Charable(ch)	((SP != 0 && SP->_legacy_coding)		\
+			 || (AttrOf(ch) & A_ALTCHARSET)			\
+			 || (!isWidecExt(ch) &&				\
+			     (ch).chars[1] == L'\0' &&			\
+			     _nc_is_charable(CharOf(ch))))
+
+#define L(ch)		L ## ch
+#else /* }{ */
+#define CharOf(c)	ChCharOf(c)
+#define AttrOf(c)	ChAttrOf(c)
+#define AddAttr(c,a)	c |= (a)
+#define RemAttr(c,a)	c &= ~((a) & A_ATTRIBUTES)
+#define SetAttr(c,a)	c = ((c) & ~A_ATTRIBUTES) | (a)
+#define NewChar(ch)	(ch)
+#define NewChar2(c,a)	((c) | (a))
+#define CharEq(a,b)	((a) == (b))
+#define SetChar(ch,c,a)	ch = (c) | (a)
+#define CHREF(wch)	wch
+#define CHDEREF(wch)	wch
+#define ARG_CH_T	NCURSES_CH_T
+#define CARG_CH_T	NCURSES_CH_T
+#define PUTC_DATA	int data = 0
+#define PUTC(ch,b)	do { data = CharOf(ch); putc(data,b); } while (0)
+
+#define BLANK		(' '|A_NORMAL)
+#define ZEROS		('\0'|A_NORMAL)
+#define ISBLANK(ch)	(CharOf(ch) == ' ')
+
+#define isWidecExt(ch)	(0)
+#define if_WIDEC(code) /* nothing */
+
+#define L(ch)		ch
+#endif /* } */
+
+#define AttrOfD(ch)	AttrOf(CHDEREF(ch))
+#define CharOfD(ch)	CharOf(CHDEREF(ch))
+#define SetChar2(wch,ch)    SetChar(wch,ChCharOf(ch),ChAttrOf(ch))
+
+#define BLANK_ATTR	A_NORMAL
+#define BLANK_TEXT	L(' ')
+
+#define CHANGED     -1
+
+#define LEGALYX(w, y, x) \
+	      ((w) != 0 && \
+		((x) >= 0 && (x) <= (w)->_maxx && \
+		 (y) >= 0 && (y) <= (w)->_maxy))
+
+#define CHANGED_CELL(line,col) \
+	if (line->firstchar == _NOCHANGE) \
+		line->firstchar = line->lastchar = col; \
+	else if ((col) < line->firstchar) \
+		line->firstchar = col; \
+	else if ((col) > line->lastchar) \
+		line->lastchar = col
+
+#define CHANGED_RANGE(line,start,end) \
+	if (line->firstchar == _NOCHANGE \
+	 || line->firstchar > (start)) \
+		line->firstchar = start; \
+	if (line->lastchar == _NOCHANGE \
+	 || line->lastchar < (end)) \
+		line->lastchar = end
+
+#define CHANGED_TO_EOL(line,start,end) \
+	if (line->firstchar == _NOCHANGE \
+	 || line->firstchar > (start)) \
+		line->firstchar = start; \
+	line->lastchar = end
+
+#define SIZEOF(v) (sizeof(v)/sizeof(v[0]))
+
+#define FreeIfNeeded(p)  if ((p) != 0) free(p)
+
+/* FreeAndNull() is not a comma-separated expression because some compilers
+ * do not accept a mixture of void with values.
+ */
+#define FreeAndNull(p)   free(p); p = 0
+
+//// #include <nc_alloc.h>
+
+/*
+ * TTY bit definition for converting tabs to spaces.
+ */
+#ifdef TAB3
+# define OFLAGS_TABS TAB3	/* POSIX specifies TAB3 */
+#else
+# ifdef XTABS
+#  define OFLAGS_TABS XTABS	/* XTABS is usually the "same" */
+# else
+#  ifdef OXTABS
+#   define OFLAGS_TABS OXTABS	/* the traditional BSD equivalent */
+#  else
+#   define OFLAGS_TABS 0
+#  endif
+# endif
+#endif
+
+/*
+ * Prefixes for call/return points of library function traces.  We use these to
+ * instrument the public functions so that the traces can be easily transformed
+ * into regression scripts.
+ */
+#define T_CALLED(fmt) "called {" fmt
+#define T_CREATE(fmt) "create :" fmt
+#define T_RETURN(fmt) "return }" fmt
+
+#ifdef TRACE
+
+#define START_TRACE() \
+	if ((_nc_tracing & TRACE_MAXIMUM) == 0) { \
+	    int t = _nc_getenv_num("NCURSES_TRACE"); \
+	    if (t >= 0) \
+		trace((unsigned) t); \
+	}
+
+#define TR(n, a)	if (_nc_tracing & (n)) _tracef a
+#define T(a)		TR(TRACE_CALLS, a)
+#define TPUTS_TRACE(s)	_nc_tputs_trace = s;
+#define TRACE_RETURN(value,type) return _nc_retrace_##type(value)
+
+#define returnAttr(code)	TRACE_RETURN(code,attr_t)
+#define returnBits(code)	TRACE_RETURN(code,unsigned)
+#define returnBool(code)	TRACE_RETURN(code,bool)
+#define returnCPtr(code)	TRACE_RETURN(code,cptr)
+#define returnCVoidPtr(code)	TRACE_RETURN(code,cvoid_ptr)
+#define returnChar(code)	TRACE_RETURN(code,chtype)
+#define returnCode(code)	TRACE_RETURN(code,int)
+#define returnPtr(code)		TRACE_RETURN(code,ptr)
+#define returnSP(code)		TRACE_RETURN(code,sp)
+#define returnVoid		T((T_RETURN(""))); return
+#define returnVoidPtr(code)	TRACE_RETURN(code,void_ptr)
+#define returnWin(code)		TRACE_RETURN(code,win)
+
+extern NCURSES_EXPORT(NCURSES_BOOL)     _nc_retrace_bool (NCURSES_BOOL);
+extern NCURSES_EXPORT(NCURSES_CONST void *) _nc_retrace_cvoid_ptr (NCURSES_CONST void *);
+extern NCURSES_EXPORT(SCREEN *)         _nc_retrace_sp (SCREEN *);
+extern NCURSES_EXPORT(WINDOW *)         _nc_retrace_win (WINDOW *);
+extern NCURSES_EXPORT(attr_t)           _nc_retrace_attr_t (attr_t);
+extern NCURSES_EXPORT(char *)           _nc_retrace_ptr (char *);
+extern NCURSES_EXPORT(char *)           _nc_trace_ttymode(TTY *tty);
+extern NCURSES_EXPORT(char *)           _nc_varargs (const char *, va_list);
+extern NCURSES_EXPORT(chtype)           _nc_retrace_chtype (chtype);
+extern NCURSES_EXPORT(const char *)     _nc_altcharset_name(attr_t, chtype);
+extern NCURSES_EXPORT(const char *)     _nc_retrace_cptr (const char *);
+extern NCURSES_EXPORT(int)              _nc_retrace_int (int);
+extern NCURSES_EXPORT(unsigned)         _nc_retrace_unsigned (unsigned);
+extern NCURSES_EXPORT(void *)           _nc_retrace_void_ptr (void *);
+extern NCURSES_EXPORT(void)             _nc_fifo_dump (void);
+extern NCURSES_EXPORT_VAR(const char *) _nc_tputs_trace;
+extern NCURSES_EXPORT_VAR(long)         _nc_outchars;
+extern NCURSES_EXPORT_VAR(unsigned)     _nc_tracing;
+
+#if USE_WIDEC_SUPPORT
+extern NCURSES_EXPORT(const char *) _nc_viswbuf2 (int, const wchar_t *);
+extern NCURSES_EXPORT(const char *) _nc_viswbufn (const wchar_t *, int);
+#endif
+
+extern NCURSES_EXPORT(const char *) _nc_viscbuf2 (int, const NCURSES_CH_T *, int);
+extern NCURSES_EXPORT(const char *) _nc_viscbuf (const NCURSES_CH_T *, int);
+
+#else /* !TRACE */
+
+#define START_TRACE() /* nothing */
+
+#define T(a)
+#define TR(n, a)
+#define TPUTS_TRACE(s)
+
+#define returnAttr(code)	return code
+#define returnBits(code)	return code
+#define returnBool(code)	return code
+#define returnCPtr(code)	return code
+#define returnCVoidPtr(code)	return code
+#define returnChar(code)	return code
+#define returnCode(code)	return code
+#define returnPtr(code)		return code
+#define returnSP(code)		return code
+#define returnVoid		return
+#define returnVoidPtr(code)	return code
+#define returnWin(code)		return code
+
+#endif /* TRACE/!TRACE */
+
+/*
+ * Return-codes for tgetent() and friends.
+ */
+#define TGETENT_YES  1		/* entry is found */
+#define TGETENT_NO   0		/* entry is not found */
+#define TGETENT_ERR -1		/* an error occurred */
+
+extern NCURSES_EXPORT(const char *) _nc_visbuf2 (int, const char *);
+extern NCURSES_EXPORT(const char *) _nc_visbufn (const char *, int);
+
+#define empty_module(name) \
+extern	NCURSES_EXPORT(void) name (void); \
+	NCURSES_EXPORT(void) name (void) { }
+
+#define ALL_BUT_COLOR ((chtype)~(A_COLOR))
+#define NONBLANK_ATTR (A_NORMAL|A_BOLD|A_DIM|A_BLINK)
+#define XMC_CHANGES(c) ((c) & SP->_xmc_suppress)
+
+#define toggle_attr_on(S,at) {\
+   if (PAIR_NUMBER(at) > 0) {\
+      (S) = ((S) & ALL_BUT_COLOR) | (at);\
+   } else {\
+      (S) |= (at);\
+   }\
+   TR(TRACE_ATTRS, ("new attribute is %s", _traceattr((S))));}
+
+
+#define toggle_attr_off(S,at) {\
+   if (PAIR_NUMBER(at) > 0) {\
+      (S) &= ~(at|A_COLOR);\
+   } else {\
+      (S) &= ~(at);\
+   }\
+   TR(TRACE_ATTRS, ("new attribute is %s", _traceattr((S))));}
+
+#define DelCharCost(count) \
+		((parm_dch != 0) \
+		? SP->_dch_cost \
+		: ((delete_character != 0) \
+			? (SP->_dch1_cost * count) \
+			: INFINITY))
+
+#define InsCharCost(count) \
+		((parm_ich != 0) \
+		? SP->_ich_cost \
+		: ((enter_insert_mode && exit_insert_mode) \
+		  ? SP->_smir_cost + SP->_rmir_cost + (SP->_ip_cost * count) \
+		  : ((insert_character != 0) \
+		    ? ((SP->_ich1_cost + SP->_ip_cost) * count) \
+		    : INFINITY)))
+
+#if USE_XMC_SUPPORT
+#define UpdateAttrs(c)	if (!SameAttrOf(SCREEN_ATTRS(SP), c)) { \
+				attr_t chg = AttrOf(SCREEN_ATTRS(SP)); \
+				VIDATTR(AttrOf(c), GetPair(c)); \
+				if (magic_cookie_glitch > 0 \
+				 && XMC_CHANGES((chg ^ AttrOf(SCREEN_ATTRS(SP))))) { \
+					T(("%s @%d before glitch %d,%d", \
+						__FILE__, __LINE__, \
+						SP->_cursrow, \
+						SP->_curscol)); \
+					_nc_do_xmc_glitch(chg); \
+				} \
+			}
+#else
+#define UpdateAttrs(c)	if (!SameAttrOf(SCREEN_ATTRS(SP), c)) \
+				VIDATTR(AttrOf(c), GetPair(c));
+#endif
+
+/*
+ * Macros to make additional parameter to implement wgetch_events()
+ */
+#ifdef NCURSES_WGETCH_EVENTS
+#define EVENTLIST_0th(param) param
+#define EVENTLIST_1st(param) param
+#define EVENTLIST_2nd(param) , param
+#else
+#define EVENTLIST_0th(param) void
+#define EVENTLIST_1st(param) /* nothing */
+#define EVENTLIST_2nd(param) /* nothing */
+#endif
+
+#if NCURSES_EXPANDED && NCURSES_EXT_FUNCS
+
+#undef  toggle_attr_on
+#define toggle_attr_on(S,at) _nc_toggle_attr_on(&(S), at)
+extern NCURSES_EXPORT(void) _nc_toggle_attr_on (attr_t *, attr_t);
+
+#undef  toggle_attr_off
+#define toggle_attr_off(S,at) _nc_toggle_attr_off(&(S), at)
+extern NCURSES_EXPORT(void) _nc_toggle_attr_off (attr_t *, attr_t);
+
+#undef  DelCharCost
+#define DelCharCost(count) _nc_DelCharCost(count)
+extern NCURSES_EXPORT(int) _nc_DelCharCost (int);
+
+#undef  InsCharCost
+#define InsCharCost(count) _nc_InsCharCost(count)
+extern NCURSES_EXPORT(int) _nc_InsCharCost (int);
+
+#undef  UpdateAttrs
+#define UpdateAttrs(c) _nc_UpdateAttrs(c)
+extern NCURSES_EXPORT(void) _nc_UpdateAttrs (NCURSES_CH_T);
+
+#else
+
+extern NCURSES_EXPORT(void) _nc_expanded (void);
+
+#endif
+
+#if !HAVE_GETCWD
+#define getcwd(buf,len) getwd(buf)
+#endif
+
+/* charable.c */
+#if USE_WIDEC_SUPPORT
+extern NCURSES_EXPORT(bool) _nc_is_charable(wchar_t);
+extern NCURSES_EXPORT(int) _nc_to_char(wint_t);
+extern NCURSES_EXPORT(wint_t) _nc_to_widechar(int);
+#endif
+
+/* doupdate.c */
+#if USE_XMC_SUPPORT
+extern NCURSES_EXPORT(void) _nc_do_xmc_glitch (attr_t);
+#endif
+
+/* hardscroll.c */
+#if defined(TRACE) || defined(SCROLLDEBUG) || defined(HASHDEBUG)
+extern NCURSES_EXPORT(void) _nc_linedump (void);
+#endif
+
+/* lib_acs.c */
+extern NCURSES_EXPORT(void) _nc_init_acs (void);	/* corresponds to traditional 'init_acs()' */
+extern NCURSES_EXPORT(int) _nc_msec_cost (const char *const, int);  /* used by 'tack' program */
+
+/* lib_addch.c */
+#if USE_WIDEC_SUPPORT
+NCURSES_EXPORT(int) _nc_build_wch(WINDOW *win, ARG_CH_T ch);
+#endif
+
+/* lib_addstr.c */
+#if USE_WIDEC_SUPPORT && !defined(USE_TERMLIB)
+extern NCURSES_EXPORT(int) _nc_wchstrlen(const cchar_t *);
+#endif
+
+/* lib_color.c */
+extern NCURSES_EXPORT(bool) _nc_reset_colors(void);
+
+/* lib_getch.c */
+extern NCURSES_EXPORT(int) _nc_wgetch(WINDOW *, unsigned long *, int EVENTLIST_2nd(_nc_eventlist *));
+
+/* lib_insch.c */
+extern NCURSES_EXPORT(int) _nc_insert_ch(WINDOW *, chtype);
+
+/* lib_mvcur.c */
+#define INFINITY	1000000	/* cost: too high to use */
+
+extern NCURSES_EXPORT(void) _nc_mvcur_init (void);
+extern NCURSES_EXPORT(void) _nc_mvcur_resume (void);
+extern NCURSES_EXPORT(void) _nc_mvcur_wrap (void);
+
+extern NCURSES_EXPORT(int) _nc_scrolln (int, int, int, int);
+
+extern NCURSES_EXPORT(void) _nc_screen_init (void);
+extern NCURSES_EXPORT(void) _nc_screen_resume (void);
+extern NCURSES_EXPORT(void) _nc_screen_wrap (void);
+
+/* lib_mouse.c */
+extern NCURSES_EXPORT(int) _nc_has_mouse (void);
+
+/* lib_mvcur.c */
+#define INFINITY	1000000	/* cost: too high to use */
+#define BAUDBYTE	9	/* 9 = 7 bits + 1 parity + 1 stop */
+
+/* lib_setup.c */
+extern NCURSES_EXPORT(char *) _nc_get_locale(void);
+extern NCURSES_EXPORT(int) _nc_unicode_locale(void);
+extern NCURSES_EXPORT(int) _nc_locale_breaks_acs(void);
+extern NCURSES_EXPORT(int) _nc_setupterm(NCURSES_CONST char *, int, int *, bool);
+
+/* lib_tstp.c */
+#if USE_SIGWINCH
+extern NCURSES_EXPORT(int) _nc_handle_sigwinch(int);
+#else
+#define _nc_handle_sigwinch(a) /* nothing */
+#endif
+
+/* lib_wacs.c */
+#if USE_WIDEC_SUPPORT
+extern NCURSES_EXPORT(void) _nc_init_wacs(void);
+#endif
+
+typedef struct {
+    char *s_head;	/* beginning of the string (may be null) */
+    char *s_tail;	/* end of the string (may be null) */
+    size_t s_size;	/* current remaining size available */
+    size_t s_init;	/* total size available */
+} string_desc;
+
+/* strings.c */
+extern NCURSES_EXPORT(string_desc *) _nc_str_init (string_desc *, char *, size_t);
+extern NCURSES_EXPORT(string_desc *) _nc_str_null (string_desc *, size_t);
+extern NCURSES_EXPORT(string_desc *) _nc_str_copy (string_desc *, string_desc *);
+extern NCURSES_EXPORT(bool) _nc_safe_strcat (string_desc *, const char *);
+extern NCURSES_EXPORT(bool) _nc_safe_strcpy (string_desc *, const char *);
+
+#if !HAVE_STRSTR
+#define strstr _nc_strstr
+extern NCURSES_EXPORT(char *) _nc_strstr (const char *, const char *);
+#endif
+
+/* safe_sprintf.c */
+extern NCURSES_EXPORT(char *) _nc_printf_string (const char *, va_list);
+
+/* tries.c */
+extern NCURSES_EXPORT(void) _nc_add_to_try (struct tries **, const char *, unsigned);
+extern NCURSES_EXPORT(char *) _nc_expand_try (struct tries *, unsigned, int *, size_t);
+extern NCURSES_EXPORT(int) _nc_remove_key (struct tries **, unsigned);
+extern NCURSES_EXPORT(int) _nc_remove_string (struct tries **, const char *);
+
+/* elsewhere ... */
+//// extern NCURSES_EXPORT(ENTRY *) _nc_delink_entry(ENTRY *, TERMTYPE *);
+extern NCURSES_EXPORT(WINDOW *) _nc_makenew (int, int, int, int, int);
+extern NCURSES_EXPORT(char *) _nc_trace_buf (int, size_t);
+extern NCURSES_EXPORT(char *) _nc_trace_bufcat (int, const char *);
+extern NCURSES_EXPORT(int) _nc_access (const char *, int);
+extern NCURSES_EXPORT(int) _nc_baudrate (int);
+extern NCURSES_EXPORT(int) _nc_freewin (WINDOW *);
+extern NCURSES_EXPORT(int) _nc_getenv_num (const char *);
+extern NCURSES_EXPORT(int) _nc_keypad (bool);
+extern NCURSES_EXPORT(int) _nc_ospeed (int);
+extern NCURSES_EXPORT(int) _nc_outch (int);
+//// extern NCURSES_EXPORT(int) _nc_read_termcap_entry (const char *const, TERMTYPE *const);
+extern NCURSES_EXPORT(int) _nc_setupscreen (int, int, FILE *, bool, int);
+extern NCURSES_EXPORT(int) _nc_timed_wait(int, int, int * EVENTLIST_2nd(_nc_eventlist *));
+extern NCURSES_EXPORT(void) _nc_do_color (short, short, bool, int (*)(int));
+extern NCURSES_EXPORT(void) _nc_flush (void);
+//// extern NCURSES_EXPORT(void) _nc_free_entry(ENTRY *, TERMTYPE *);
+extern NCURSES_EXPORT(void) _nc_freeall (void);
+extern NCURSES_EXPORT(void) _nc_hash_map (void);
+extern NCURSES_EXPORT(void) _nc_init_keytry (void);
+extern NCURSES_EXPORT(void) _nc_keep_tic_dir (const char *);
+extern NCURSES_EXPORT(void) _nc_make_oldhash (int i);
+extern NCURSES_EXPORT(void) _nc_scroll_oldhash (int n, int top, int bot);
+extern NCURSES_EXPORT(void) _nc_scroll_optimize (void);
+extern NCURSES_EXPORT(void) _nc_set_buffer (FILE *, bool);
+extern NCURSES_EXPORT(void) _nc_signal_handler (bool);
+extern NCURSES_EXPORT(void) _nc_synchook (WINDOW *);
+extern NCURSES_EXPORT(void) _nc_trace_tries (struct tries *);
+
+#if NO_LEAKS
+extern NCURSES_EXPORT(void) _nc_alloc_entry_leaks(void);
+extern NCURSES_EXPORT(void) _nc_captoinfo_leaks(void);
+extern NCURSES_EXPORT(void) _nc_comp_scan_leaks(void);
+extern NCURSES_EXPORT(void) _nc_keyname_leaks(void);
+extern NCURSES_EXPORT(void) _nc_tgetent_leaks(void);
+#endif
+
+#ifndef USE_TERMLIB
+extern NCURSES_EXPORT(NCURSES_CH_T) _nc_render (WINDOW *, NCURSES_CH_T);
+extern NCURSES_EXPORT(int) _nc_waddch_nosync (WINDOW *, const NCURSES_CH_T);
+extern NCURSES_EXPORT(void) _nc_scroll_window (WINDOW *, int const, NCURSES_SIZE_T const, NCURSES_SIZE_T const, NCURSES_CH_T);
+#endif
+
+#if USE_WIDEC_SUPPORT && !defined(USE_TERMLIB)
+#ifdef linux
+extern NCURSES_EXPORT(size_t) _nc_wcrtomb (char *, wchar_t, mbstate_t *);
+#else
+#define _nc_wcrtomb(s,wc,ps) wcrtomb(s,wc,ps)
+#endif
+#endif
+
+#if USE_SIZECHANGE
+extern NCURSES_EXPORT(void) _nc_update_screensize (void);
+#endif
+
+#if HAVE_RESIZETERM
+extern NCURSES_EXPORT(void) _nc_resize_margins (WINDOW *);
+#else
+#define _nc_resize_margins(wp) /* nothing */
+#endif
+
+#ifdef NCURSES_WGETCH_EVENTS
+extern NCURSES_EXPORT(int) _nc_eventlist_timeout(_nc_eventlist *);
+#else
+#define wgetch_events(win, evl) wgetch(win)
+#define wgetnstr_events(win, str, maxlen, evl) wgetnstr(win, str, maxlen)
+#endif
+
+/*
+ * Not everyone has vsscanf(), but we'd like to use it for scanw().
+ */
+#if !HAVE_VSSCANF
+extern int vsscanf(const char *str, const char *format, va_list __arg);
+#endif
+
+/* scroll indices */
+extern NCURSES_EXPORT_VAR(int *) _nc_oldnums;
+
+#define USE_SETBUF_0 0
+
+#define NC_BUFFERED(flag) _nc_set_buffer(SP->_ofp, flag)
+
+#define NC_OUTPUT ((SP != 0) ? SP->_ofp : stdout)
+
+/*
+ * On systems with a broken linker, define 'SP' as a function to force the
+ * linker to pull in the data-only module with 'SP'.
+ */
+#if BROKEN_LINKER
+#define SP _nc_screen()
+extern NCURSES_EXPORT(SCREEN *) _nc_screen (void);
+extern NCURSES_EXPORT(int) _nc_alloc_screen (void);
+extern NCURSES_EXPORT(void) _nc_set_screen (SCREEN *);
+#else
+/* current screen is private data; avoid possible linking conflicts too */
+extern NCURSES_EXPORT_VAR(SCREEN *) SP;
+#define _nc_alloc_screen() ((SP = typeCalloc(SCREEN, 1)) != 0)
+#define _nc_set_screen(sp) SP = sp
+#endif
+
+/*
+ * We don't want to use the lines or columns capabilities internally, because
+ * if the application is running multiple screens under X, it's quite possible
+ * they could all have type xterm but have different sizes!  So...
+ */
+#define screen_lines	SP->_lines
+#define screen_columns	SP->_columns
+
+extern NCURSES_EXPORT_VAR(int) _nc_slk_format;  /* != 0 if slk_init() called */
+extern NCURSES_EXPORT(int) _nc_slk_initialize (WINDOW *, int);
+
+/*
+ * Some constants related to SLK's
+ */
+#define MAX_SKEY_OLD	   8	/* count of soft keys */
+#define MAX_SKEY_LEN_OLD   8	/* max length of soft key text */
+#define MAX_SKEY_PC       12    /* This is what most PC's have */
+#define MAX_SKEY_LEN_PC    5
+
+/* Macro to check whether or not we use a standard format */
+#define SLK_STDFMT(fmt) (fmt < 3)
+/* Macro to determine height of label window */
+#define SLK_LINES(fmt)  (SLK_STDFMT(fmt) ? 1 : ((fmt) - 2))
+
+#define MAX_SKEY(fmt)     (SLK_STDFMT(fmt)? MAX_SKEY_OLD : MAX_SKEY_PC)
+#define MAX_SKEY_LEN(fmt) (SLK_STDFMT(fmt)? MAX_SKEY_LEN_OLD : MAX_SKEY_LEN_PC)
+
+extern NCURSES_EXPORT(int) _nc_ripoffline (int line, int (*init)(WINDOW *,int));
+
+/*
+ * Common error messages
+ */
+#define MSG_NO_MEMORY "Out of memory"
+#define MSG_NO_INPUTS "Premature EOF"
+
+#ifdef __cplusplus
+}
+#endif
+
+#endif /* CURSES_PRIV_H */
diff --git a/apps/lib/curses/tinycurses/keyboard.c b/apps/lib/curses/tinycurses/keyboard.c
new file mode 100644
index 0000000..2122d86
--- /dev/null
+++ b/apps/lib/curses/tinycurses/keyboard.c
@@ -0,0 +1,247 @@
+/*
+ * This file is part of the libpayload project.
+ *
+ * Copyright (C) 2007 Uwe Hermann <uwe@hermann-uwe.de>
+ * Copyright (C) 2008 Advanced Micro Devices, Inc.
+ *
+ * Redistribution and use in source and binary forms, with or without
+ * modification, are permitted provided that the following conditions
+ * are met:
+ * 1. Redistributions of source code must retain the above copyright
+ *    notice, this list of conditions and the following disclaimer.
+ * 2. Redistributions in binary form must reproduce the above copyright
+ *    notice, this list of conditions and the following disclaimer in the
+ *    documentation and/or other materials provided with the distribution.
+ * 3. The name of the author may not be used to endorse or promote products
+ *    derived from this software without specific prior written permission.
+ *
+ * THIS SOFTWARE IS PROVIDED BY THE AUTHOR AND CONTRIBUTORS ``AS IS'' AND
+ * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
+ * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
+ * ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE LIABLE
+ * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
+ * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
+ * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
+ * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
+ * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
+ * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
+ * SUCH DAMAGE.
+ */
+
+/*
+ * This file handles reading keystrokes from serial and the console
+ * and "cooking" them so that they are correct for curses.
+ * Also, implement key related functions (mainly wgetch)
+ *
+ * TODO:
+ * Actually cook the serial (handle special keys)
+ */
+
+#include "local.h"
+#include <unistd.h>
+
+static int _halfdelay = 0;
+
+/* ============== Serial ==================== */
+
+#ifdef CONFIG_SERIAL_CONSOLE
+/* We treat serial like a vt100 terminal.  For now we
+   do the cooking in here, but we should probably eventually
+   pass it to dedicated vt100 code */
+
+static int getkeyseq(char *buffer, int len, int max)
+{
+	int i;
+
+	while (1) {
+		for(i = 0; i < 75; i++) {
+			if (tstc())
+				break;
+			usleep(100);
+		}
+
+		if (i == 75)
+			return len;
+
+		buffer[len++] = getchar();
+		if (len == max)
+			return len;
+	}
+}
+
+static struct {
+	const char *seq;
+	int key;
+} escape_codes[] = {
+	{ "[A", KEY_UP },
+	{ "[B", KEY_DOWN },
+	{ "[C", KEY_RIGHT },
+	{ "[D", KEY_LEFT },
+	{ "[F", KEY_END },
+	{ "[H", KEY_HOME },
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
+static int handle_escape(void)
+{
+	char buffer[5];
+	int len = getkeyseq(buffer, 0, sizeof(buffer));
+	int i, t;
+
+	if (len == 0)
+		return 27;
+
+	for(i = 0; escape_codes[i].seq != NULL; i++) {
+		const char *p = escape_codes[i].seq;
+
+		for(t = 0; t < len; t++) {
+			if (!*p || *p != buffer[t])
+				break;
+			p++;
+		}
+
+		if (t == len)
+			return escape_codes[i].key;
+	}
+
+	return 0;
+}
+
+static int cook_serial(unsigned char ch)
+{
+	switch(ch) {
+	case 8:
+		return KEY_BACKSPACE;
+
+	case 13:
+		return KEY_ENTER;
+
+	case 27:
+		return handle_escape();
+
+	default:
+		return ch;
+	}
+}
+#endif
+
+/* ================ Keyboard ================ */
+
+static int curses_getchar(int _delay)
+{
+#if defined(CONFIG_SERIAL_CONSOLE)
+	unsigned short c;
+#endif
+
+	do {
+#ifdef CONFIG_SERIAL_CONSOLE
+		if ((curses_flags & F_ENABLE_SERIAL) &&
+		    tstc()) {
+			c = getchar();
+			return cook_serial(c);
+		}
+#endif
+
+		if (_delay == 0)
+			break;
+
+		if (_delay > 0) {
+			usleep(1000);
+			_delay--;
+		}
+
+
+	} while (1);
+
+	return ERR;
+}
+
+/* === Public functions === */
+
+int wgetch(WINDOW *win)
+{
+	int _delay = -1;
+
+	if (_halfdelay)
+		_delay = _halfdelay;
+	else
+		_delay = win->_delay;
+
+	return curses_getchar(_delay);
+}
+
+int nodelay(WINDOW *win, NCURSES_BOOL flag)
+{
+	win->_delay = flag ? 0 : -1;
+	return 0;
+}
+
+int halfdelay(int tenths)
+{
+	if (tenths > 255)
+		return ERR;
+
+	_halfdelay = tenths;
+	return 0;
+}
+
+int nocbreak(void)
+{
+	/* Remove half delay timeout. */
+	_halfdelay = 0;
+	return 0;
+}
+
+#ifdef CONFIG_VGA_VIDEO_CONSOLE
+void curses_enable_vga(int state)
+{
+	if (state)
+		curses_flags |= F_ENABLE_CONSOLE;
+	else
+		curses_flags &= ~F_ENABLE_CONSOLE;
+}
+
+int curses_vga_enabled(void)
+{
+	return (curses_flags & F_ENABLE_CONSOLE) != 0;
+}
+#else
+void curses_enable_vga(int state) { }
+int curses_vga_enabled(void) { return 0; }
+#endif
+
+#ifdef CONFIG_SERIAL_CONSOLE
+void curses_enable_serial(int state)
+{
+	if (state)
+		curses_flags |= F_ENABLE_SERIAL;
+	else
+		curses_flags &= ~F_ENABLE_SERIAL;
+}
+
+int curses_serial_enabled(void)
+{
+	return (curses_flags & F_ENABLE_SERIAL) != 0;
+}
+
+#else
+void curses_enable_serial(int state) { }
+int curses_serial_enabled(void) { return 0; }
+#endif
+
diff --git a/apps/lib/curses/tinycurses/local.h b/apps/lib/curses/tinycurses/local.h
new file mode 100644
index 0000000..42ea152
--- /dev/null
+++ b/apps/lib/curses/tinycurses/local.h
@@ -0,0 +1,89 @@
+/*
+ * This file is part of the libpayload project.
+ *
+ * Copyright (C) 2007 Uwe Hermann <uwe@hermann-uwe.de>
+ *
+ * Redistribution and use in source and binary forms, with or without
+ * modification, are permitted provided that the following conditions
+ * are met:
+ * 1. Redistributions of source code must retain the above copyright
+ *    notice, this list of conditions and the following disclaimer.
+ * 2. Redistributions in binary form must reproduce the above copyright
+ *    notice, this list of conditions and the following disclaimer in the
+ *    documentation and/or other materials provided with the distribution.
+ * 3. The name of the author may not be used to endorse or promote products
+ *    derived from this software without specific prior written permission.
+ *
+ * THIS SOFTWARE IS PROVIDED BY THE AUTHOR AND CONTRIBUTORS ``AS IS'' AND
+ * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
+ * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
+ * ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE LIABLE
+ * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
+ * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
+ * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
+ * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
+ * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
+ * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
+ * SUCH DAMAGE.
+ */
+
+#ifndef _CURSES_LOCAL_H
+#define _CURSES_LOCAL_H
+
+/* For curses.priv.h: */
+#define USE_RCS_IDS 0
+#define DECL_ERRNO 0
+#define HAVE_LIBGPM 0
+#define NCURSES_EXT_FUNCS 0
+#define USE_OK_BCOPY 0
+#define USE_MY_MEMMOVE 0
+#define USE_SCROLL_HINTS 0
+#define USE_HASHMAP 0
+#define USE_WIDEC_SUPPORT 0	/* We do _not_ want wide character support. */
+// #define NCURSES_EXT_COLORS 1
+#define NCURSES_EXT_COLORS 0
+#define USE_SYSMOUSE 0
+#define NCURSES_NO_PADDING 0
+#define USE_HARD_TABS 0
+#define HAVE_FCNTL_H 0
+#define HAVE_LIMITS_H 1
+#define HAVE_UNISTD_H 1
+#define USE_XMC_SUPPORT 0
+#define NCURSES_EXPANDED 0
+#define HAVE_GETCWD 0
+#define USE_XMC_SUPPORT 0
+#define HAVE_STRSTR 1
+#define NO_LEAKS 0
+#define HAVE_RESIZETERM 0
+#define HAVE_VSSCANF 0
+#define BROKEN_LINKER 0
+
+#undef USE_TERMLIB
+
+#include <curses.h>
+#include <curses.priv.h>
+
+#define SCREEN_X 80
+#define SCREEN_Y 25
+
+/* Flags used to determine what output methods are available */
+
+#ifdef CONFIG_VIDEO_CONSOLE
+#define F_ENABLE_CONSOLE 0x01
+#else
+#define F_ENABLE_CONSOLE 0x00
+#endif
+
+#define CONFIG_SERIAL_CONSOLE
+#ifdef CONFIG_SERIAL_CONSOLE
+#define F_ENABLE_SERIAL  0x02
+#else
+#define F_ENABLE_SERIAL  0x00
+#endif
+
+extern int curses_flags;
+
+/* Share the color table for easy lookup */
+extern unsigned char color_pairs[256];
+
+#endif
diff --git a/apps/lib/curses/tinycurses/tinycurses.c b/apps/lib/curses/tinycurses/tinycurses.c
new file mode 100644
index 0000000..e09c0a5
--- /dev/null
+++ b/apps/lib/curses/tinycurses/tinycurses.c
@@ -0,0 +1,1016 @@
+/*
+ * This file is part of the libpayload project.
+ *
+ * Copyright (C) 2007 Uwe Hermann <uwe@hermann-uwe.de>
+ * Copyright (C) 2008 Ulf Jordan <jordan@chalmers.se>
+ * Copyright (C) 2008-2009 coresystems GmbH
+ *
+ * Redistribution and use in source and binary forms, with or without
+ * modification, are permitted provided that the following conditions
+ * are met:
+ * 1. Redistributions of source code must retain the above copyright
+ *    notice, this list of conditions and the following disclaimer.
+ * 2. Redistributions in binary form must reproduce the above copyright
+ *    notice, this list of conditions and the following disclaimer in the
+ *    documentation and/or other materials provided with the distribution.
+ * 3. The name of the author may not be used to endorse or promote products
+ *    derived from this software without specific prior written permission.
+ *
+ * THIS SOFTWARE IS PROVIDED BY THE AUTHOR AND CONTRIBUTORS ``AS IS'' AND
+ * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
+ * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
+ * ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE LIABLE
+ * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
+ * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
+ * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
+ * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
+ * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
+ * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
+ * SUCH DAMAGE.
+ */
+
+/*
+ * This is a tiny implementation of the (n)curses library intended to be
+ * used in embedded/firmware/BIOS code where no libc or operating system
+ * environment is available and code size is very important.
+ *
+ * Design goals:
+ *  - Small object code.
+ *  - Self-contained.
+ *    - Doesn't require a libc (no glibc/uclibc/dietlibc/klibc/newlib).
+ *    - Works without any other external libraries or header files.
+ *  - Works without an underlying operating system.
+ *    - Doesn't use files, signals, syscalls, ttys, library calls, etc.
+ *  - Doesn't do any dynamic memory allocation (no malloc() and friends).
+ *     - All data structures are statically allocated.
+ *  - Supports standard VGA console (80x25) and serial port console.
+ *     - This includes character output and keyboard input over serial.
+ *  - Supports beep() through a minimal PC speaker driver.
+ *
+ * Limitations:
+ *  - Only implements a small subset of the (n)curses functions.
+ *  - Only implements very few sanity checks (for smaller code).
+ *     - Thus: Don't do obviously stupid things in your code.
+ *  - Doesn't implement the 'form', 'panel', and 'menu' extensions.
+ *  - Only implements C bindings (no C++, Ada95, or others).
+ *  - Doesn't include wide character support.
+ */
+
+#include <utils/ansi.h>
+
+#include "local.h"
+
+#undef _XOPEN_SOURCE_EXTENDED
+#define _XOPEN_SOURCE_EXTENDED 1
+
+#define CONFIG_SERIAL_ACS_FALLBACK
+
+#define MAX_WINDOWS 3
+
+/* Statically allocate all structures (no malloc())! */
+static WINDOW window_list[MAX_WINDOWS];
+static int window_count = 1;
+
+// struct ldat foo;
+static struct ldat ldat_list[MAX_WINDOWS][SCREEN_Y];
+static int ldat_count = 0;
+
+/* One item bigger than SCREEN_X to reserve space for a NUL byte. */
+static NCURSES_CH_T linebuf_list[SCREEN_Y * MAX_WINDOWS][SCREEN_X + 1];
+static int linebuf_count = 0;
+
+/* Globals */
+int COLORS;		/* Currently unused? */
+int COLOR_PAIRS = 255;
+WINDOW *stdscr;
+WINDOW *curscr;
+WINDOW *newscr;
+int LINES = 25;
+int COLS = 80;
+int TABSIZE;
+int ESCDELAY;
+// char ttytype[];
+// cchar_t *_nc_wacs;
+SCREEN *SP;
+chtype acs_map[128];
+
+/* See terminfo(5). */
+chtype fallback_acs_map[128] =
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
+#ifdef CONFIG_SERIAL_CONSOLE
+#ifdef CONFIG_SERIAL_ACS_FALLBACK
+chtype serial_acs_map[128];
+#else
+/* See acsc of vt100. */
+chtype serial_acs_map[128] =
+	{
+	0,	0,	0,	0,	0,	0,	0,	0,
+	0,	0,	0,	0,	0,	0,	0,	0,
+	0,	0,	0,	0,	0,	0,	0,	0,
+	0,	0,	0,	0,	0,	0,	0,	0,
+	0,	0,	0,	0,	0,	0,	0,	0,
+	0,	0,	0,	0,	0,	0,	0,	0,
+	0,	0,	0,	0,	0,	0,	0,	0,
+	0,	0,	0,	0,	0,	0,	0,	0,
+	0,	0,	0,	0,	0,	0,	0,	0,
+	0,	0,	0,	0,	0,	0,	0,	0,
+	0,	0,	0,	0,	0,	0,	0,	0,
+	0,	0,	0,	0,	0,	0,	0,	0,
+	'`',	'a',	0,	0,	0,	0,	'f',	'g',
+	0,	0,	'j',	'k',	'l',	'm',	'n',	'o',
+	'p',	'q',	'r',	's',	't',	'u',	'v',	'w',
+	'x',	'y',	'z',	'{',	'|',	'}',	'~',	0,
+	};
+#endif
+#endif
+
+#ifdef CONFIG_VIDEO_CONSOLE
+/* See acsc of linux. */
+chtype console_acs_map[128] =
+	{
+	0,	0,	0,	0,	0,	0,	0,	0,
+	0,	0,	0,	0,	0,	0,	0,	0,
+	0,	0,	0,	0,	0,	0,	0,	0,
+	0,	0,	0,	0,	0,	0,	0,	0,
+	0,	0,	0,	0,	0,	0,	0,	0,
+	0,	0,	0,	'\020', '\021', '\030', '\031',	0,
+	'\333',	0,	0,	0,	0,	0,	0,	0,
+	0,	0,	0,	0,	0,	0,	0,	0,
+	0,	0,	0,	0,	0,	0,	0,	0,
+	0,	0,	0,	0,	0,	0,	0,	0,
+	0,	0,	0,	0,	0,	0,	0,	0,
+	0,	0,	0,	0,	0,	0,	0,	0,
+	'\004',	'\261',	0,	0,	0,	0,	'\370',	'\361',
+	'\260',	'\316',	'\331',	'\277',	'\332',	'\300',	'\305',	'~',
+	'\304',	'\304',	'\304',	'_',	'\303', '\264', '\301',	'\302',
+	'\263',	'\363',	'\362',	'\343',	'\330',	'\234',	'\376',	0,
+	};
+#endif
+
+// FIXME: Ugly (and insecure!) hack!
+char sprintf_tmp[1024];
+
+
+int curses_flags = (F_ENABLE_CONSOLE | F_ENABLE_SERIAL);
+
+/* Return bit mask for clearing color pair number if given ch has color */
+#define COLOR_MASK(ch) (~(attr_t)((ch) & A_COLOR ? A_COLOR : 0))
+
+/* Compute a rendition of the given char correct for the current context. */
+static inline NCURSES_CH_T render_char(WINDOW *win, NCURSES_CH_T ch)
+{
+	/* TODO. */
+	return ch;
+}
+
+/* Make render_char() visible while still allowing us to inline it below. */
+NCURSES_CH_T _nc_render(WINDOW *win, NCURSES_CH_T ch)
+{
+	return render_char(win, ch);
+}
+
+/*
+ * Implementations of most functions marked 'implemented' in include/curses.h:
+ */
+
+// int baudrate(void) {}
+int beep(void)
+{
+	/* TODO: Flash the screen if beeping fails? */
+#ifdef CONFIG_SPEAKER
+	speaker_tone(1760, 500);	/* 1760 == note A6 */
+#endif
+	return OK;
+}
+// bool can_change_color(void) {}
+int cbreak(void) { /* TODO */ return 0; }
+/* D */ int clearok(WINDOW *win, bool flag) { win->_clear = flag; return OK; }
+// int color_content(short color, short *r, short *g, short *b) {}
+int curs_set(int on)
+{
+#ifdef CONFIG_SERIAL_CONSOLE
+	if (curses_flags & F_ENABLE_SERIAL) {
+		ansi_cursor_enable(on);
+	}
+#endif
+#ifdef CONFIG_VIDEO_CONSOLE
+	if (curses_flags & F_ENABLE_CONSOLE) {
+		video_console_cursor_enable(on);
+	}
+#endif
+
+	return OK;
+}
+// int def_prog_mode(void) {}
+// int def_shell_mode(void) {}
+// int delay_output(int) {}
+// void delscreen(SCREEN *) {}
+int delwin(WINDOW *win)
+{
+	/* TODO: Don't try to delete stdscr. */
+	/* TODO: Don't delete parent windows before subwindows. */
+
+	// if (win->_flags & _SUBWIN)
+	// 	touchwin(win->_parent);
+	// else if (curscr != 0)
+	// 	touchwin(curscr);
+
+	// return _nc_freewin(win);
+	return OK;
+}
+WINDOW *derwin(WINDOW *orig, int num_lines, int num_columns, int begy, int begx)
+{
+#if 0
+	WINDOW *win = NULL;
+	int i;
+	int flags = _SUBWIN;
+
+	/* Make sure window fits inside the original one. */
+	if (begy < 0 || begx < 0 || orig == 0 || num_lines < 0
+	    || num_columns < 0)
+		return NULL;
+
+	if (begy + num_lines > orig->_maxy + 1
+	    || begx + num_columns > orig->_maxx + 1)
+		return NULL;
+
+	if (num_lines == 0)
+		num_lines = orig->_maxy + 1 - begy;
+
+	if (num_columns == 0)
+		num_columns = orig->_maxx + 1 - begx;
+
+	if (orig->_flags & _ISPAD)
+		flags |= _ISPAD;
+
+	// FIXME
+	if ((win = _nc_makenew(num_lines, num_columns, orig->_begy + begy,
+	                        orig->_begx + begx, flags)) == 0)
+	     return NULL;
+
+	win->_pary = begy;
+	win->_parx = begx;
+	WINDOW_ATTRS(win) = WINDOW_ATTRS(orig);
+	win->_nc_bkgd = orig->_nc_bkgd;
+
+	for (i = 0; i < num_lines; i++)
+		win->_line[i].text = &orig->_line[begy++].text[begx];
+
+	win->_parent = orig;
+
+	return win;
+#else
+	return NULL;
+#endif
+}
+int doupdate(void) { /* TODO */ return(0); }
+// WINDOW * dupwin (WINDOW *) {}
+/* D */ int echo(void) { SP->_echo = TRUE; return OK; }
+int endwin(void)
+{
+	if (!SP)
+		return ERR;
+
+	SP->_endwin = TRUE;
+#ifdef NCURSES_MOUSE_VERSION
+	SP->_mouse_wrap(SP);
+#endif
+	// _nc_screen_wrap();
+	// _nc_mvcur_wrap();       /* wrap up cursor addressing */
+	// return reset_shell_mode();
+	return OK;	// FIXME
+}
+// char erasechar (void) {}
+// void filter (void) {}
+// int flash(void) {}
+int flushinp(void) { /* TODO */ return 0; }
+// WINDOW *getwin (FILE *) {}
+bool has_colors (void) { return(TRUE); }
+// bool has_ic (void) {}
+// bool has_il (void) {}
+// void idcok (WINDOW *, bool) {}
+// int idlok (WINDOW *, bool) {}
+void immedok(WINDOW *win, bool flag) { win->_immed = flag; }
+/** Note: Must _not_ be called twice! */
+WINDOW *initscr(void)
+{
+	int i;
+
+	// newterm(name, stdout, stdin);
+	// def_prog_mode();
+
+	for (i = 0; i < 128; i++)
+	  acs_map[i] = (chtype) i | A_ALTCHARSET;
+#ifdef CONFIG_SERIAL_CONSOLE
+	if (curses_flags & F_ENABLE_SERIAL) {
+		ansi_clear();
+	}
+#endif
+#ifdef CONFIG_VIDEO_CONSOLE
+	if (curses_flags & F_ENABLE_CONSOLE) {
+		/* Clear the screen and kill the cursor */
+
+		video_console_clear();
+		video_console_cursor_enable(0);
+	}
+#endif
+
+	// Speaker init?
+
+	stdscr = newwin(SCREEN_Y, SCREEN_X, 0, 0);
+	// TODO: curscr, newscr?
+
+	werase(stdscr);
+
+	return stdscr;
+}
+// int intrflush (WINDOW *,bool) {}
+/* D */ bool isendwin(void) { return ((SP == NULL) ? FALSE : SP->_endwin); }
+// bool is_linetouched (WINDOW *,int) {}
+// bool is_wintouched (WINDOW *) {}
+// NCURSES_CONST char * keyname (int) {}
+int keypad (WINDOW *win, bool flag) { /* TODO */ return 0; }
+// char killchar (void) {}
+/* D */ int leaveok(WINDOW *win, bool flag) { win->_leaveok = flag; return OK; }
+// char *longname (void) {}
+// int meta (WINDOW *,bool) {}
+// int mvcur (int,int,int,int) {}
+// int mvderwin (WINDOW *, int, int) {}
+int mvprintw(int y, int x, const char *fmt, ...)
+{
+	va_list argp;
+	int code;
+
+	if (move(y, x) == ERR)
+		return ERR;
+
+	va_start(argp, fmt);
+	code = vwprintw(stdscr, fmt, argp);
+	va_end(argp);
+
+	return code;
+}
+// int mvscanw (int,int, NCURSES_CONST char *,...) {}
+// int mvwin (WINDOW *,int,int) {}
+int mvwprintw(WINDOW *win, int y, int x, const char *fmt, ...)
+{
+	va_list argp;
+	int code;
+
+	if (wmove(win, y, x) == ERR)
+		return ERR;
+
+	va_start(argp, fmt);
+	code = vwprintw(win, fmt, argp);
+	va_end(argp);
+
+	return code;
+}
+// int mvwscanw (WINDOW *,int,int, NCURSES_CONST char *,...) {}
+// int napms (int) {}
+// WINDOW *newpad (int,int) {}
+// SCREEN *newterm (NCURSES_CONST char *,FILE *,FILE *) {}
+WINDOW *newwin(int num_lines, int num_columns, int begy, int begx)
+{
+	int i;
+
+	/* Use next statically allocated window. */
+	// TODO: Error handling.
+	// TODO: WINDOWLIST?
+	WINDOW *win = &window_list[window_count++];
+
+	// bool is_pad = (flags & _ISPAD);
+
+	// TODO: Checks.
+
+	win->_cury = 0;
+	win->_curx = 0;
+	win->_maxy = num_lines - 1;
+	win->_maxx = num_columns - 1;
+	win->_begy = begy;
+	win->_begx = begx;
+	// win->_yoffset = SP->_topstolen;
+
+	win->_line = ldat_list[ldat_count++];
+
+	/* FIXME: Is this right? Should the window attributes be normal? */
+	win->_color = PAIR_NUMBER(0);
+	win->_attrs = A_NORMAL;
+
+	for (i = 0; i < num_lines; i++)
+		win->_line[i].text =
+		     (NCURSES_CH_T *)&linebuf_list[linebuf_count++];
+
+	return win;
+}
+/* D */ int nl(void) { SP->_nl = TRUE; return OK; }
+/* D */ int noecho(void) { SP->_echo = FALSE; return OK; }
+/* D */ int nonl(void) { SP->_nl = FALSE; return OK; }
+// void noqiflush (void) {}
+// int noraw (void) {}
+/* D */ int notimeout (WINDOW *win, bool f) { win->_notimeout = f; return OK; }
+// int overlay (const WINDOW*,WINDOW *) {}
+// int overwrite (const WINDOW*,WINDOW *) {}
+// int pair_content (short,short*,short*) {}
+// int pechochar (WINDOW *, const chtype) {}
+// int pnoutrefresh (WINDOW*,int,int,int,int,int,int) {}
+// int prefresh (WINDOW *,int,int,int,int,int,int) {}
+int printw(const char *fmt, ...)
+{
+	va_list argp;
+	int code;
+
+	va_start(argp, fmt);
+	code = vwprintw(stdscr, fmt, argp);
+	va_end(argp);
+
+	return code;
+}
+// int putwin (WINDOW *, FILE *) {}
+// void qiflush (void) {}
+// int raw (void) {}
+// int resetty (void) {}
+// int reset_prog_mode (void) {}
+// int reset_shell_mode (void) {}
+// int ripoffline (int, int (*)(WINDOW *, int)) {}
+// int savetty (void) {}
+// int scanw (NCURSES_CONST char *,...) {}
+// int scr_dump (const char *) {}
+// int scr_init (const char *) {}
+/* D */ int scrollok(WINDOW *win, bool flag) { win->_scroll = flag; return OK; }
+// int scr_restore (const char *) {}
+// int scr_set (const char *) {}
+// SCREEN *set_term (SCREEN *) {}
+// int slk_attroff (const chtype) {}
+// int slk_attron (const chtype) {}
+// int slk_attrset (const chtype) {}
+// attr_t slk_attr (void) {}
+// int slk_attr_set (const attr_t,short,void*) {}
+// int slk_clear (void) {}
+// int slk_color (short) {}
+// int slk_init (int) {}
+/* D */ char *slk_label(int n)
+{
+	// TODO: Needed?
+	// if (SP == NULL || SP->_slk == NULL || n < 1 || n > SP->_slk->labcnt)
+	// 	return NULL;
+	return SP->_slk->ent[n - 1].ent_text;
+}
+// int slk_noutrefresh (void) {}
+// int slk_refresh (void) {}
+// int slk_restore (void) {}
+// int slk_set (int,const char *,int) {}
+// int slk_touch (void) {}
+
+// WINDOW *subpad (WINDOW *, int, int, int, int) {}
+WINDOW *subwin(WINDOW *w, int l, int c, int y, int x)
+{
+	return derwin(w, l, c, y - w->_begy, x - w->_begx);
+}
+// int syncok (WINDOW *, bool) {}
+// chtype termattrs (void) {}
+// char *termname (void) {}
+// int typeahead (int) {}
+int ungetch(int ch) { /* TODO */ return ERR; }
+// void use_env (bool) {}
+// int vidattr (chtype) {}
+// int vidputs (chtype, int (*)(int)) {}
+int vwprintw(WINDOW *win, const char *fmt, va_list argp)
+{
+	vsprintf((char *)&sprintf_tmp, fmt, argp);
+
+	/* TODO: Error handling? */
+	return waddstr(win, (char *)&sprintf_tmp);
+}
+// int vwscanw (WINDOW *, NCURSES_CONST char *,va_list) {}
+int waddch(WINDOW *win, const chtype ch)
+{
+	int code = ERR;
+	// NCURSES_CH_T wch;
+	// SetChar2(wch, ch);
+
+	if (win->_line[win->_cury].firstchar == _NOCHANGE ||
+			win->_line[win->_cury].firstchar > win->_curx)
+		win->_line[win->_cury].firstchar = win->_curx;
+
+	win->_line[win->_cury].text[win->_curx].chars[0] =
+		((ch) & (chtype)A_CHARTEXT);
+
+	win->_line[win->_cury].text[win->_curx].attr = WINDOW_ATTRS(win);
+	win->_line[win->_cury].text[win->_curx].attr |=
+		((ch) & (chtype)A_ATTRIBUTES);
+
+	if (win->_line[win->_cury].lastchar == _NOCHANGE ||
+			win->_line[win->_cury].lastchar < win->_curx)
+		win->_line[win->_cury].lastchar = win->_curx;
+
+	win->_curx++;	// FIXME
+
+	// if (win && (waddch_nosync(win, wch) != ERR)) {
+	// 	_nc_synchook(win);
+	// 	code = OK;
+	// }
+
+	return code;
+}
+// int waddchnstr (WINDOW *,const chtype *,int) {}
+int waddnstr(WINDOW *win, const char *astr, int n)
+{
+	int code = OK;
+	const char *str = astr;
+
+	if (!str)
+		return ERR;
+
+	if (n < 0)
+		n = strlen(astr);
+
+	if (win->_line[win->_cury].firstchar == _NOCHANGE ||
+			win->_line[win->_cury].firstchar > win->_curx)
+		win->_line[win->_cury].firstchar = win->_curx;
+
+	while ((n-- > 0) && (*str != '\0')) {
+	// while (*str != '\0') {
+		win->_line[win->_cury].text[win->_curx].chars[0] = *str++;
+		win->_line[win->_cury].text[win->_curx].attr = WINDOW_ATTRS(win)
+;
+		win->_curx++;	// FIXME
+
+		// NCURSES_CH_T ch;
+		// SetChar(ch, UChar(*str++), A_NORMAL);
+		// if (_nc_waddch_nosync(win, ch) == ERR) {
+		// 	code = ERR;
+		// 	break;
+		// }
+	}
+
+	if (win->_line[win->_cury].lastchar == _NOCHANGE ||
+			win->_line[win->_cury].lastchar < win->_curx)
+		win->_line[win->_cury].lastchar = win->_curx;
+
+	return code;
+}
+int wattr_on(WINDOW *win, attr_t at, void *opts GCC_UNUSED)
+{
+	if (at & A_COLOR)
+		win->_color = PAIR_NUMBER(at);
+	// toggle_attr_on(WINDOW_ATTRS(win), at);
+	return OK;
+}
+int wattr_off(WINDOW *win, attr_t at, void *opts GCC_UNUSED)
+{
+	if (at & A_COLOR)
+		win->_color = 0;
+	// toggle_attr_off(WINDOW_ATTRS(win), at);
+	return 0;
+}
+int wbkgd (WINDOW *win, chtype ch) { /* TODO */ return 0; }
+void wbkgdset(WINDOW *win, chtype ch) { /* TODO */ }
+
+int wborder(WINDOW *win, chtype ls, chtype rs, chtype ts, chtype bs,
+		chtype tl, chtype tr, chtype bl, chtype br)
+{
+	int x, y;
+
+	if (ls == 0) ls = ACS_VLINE;
+	if (rs == 0) rs = ACS_VLINE;
+	if (ts == 0) ts = ACS_HLINE;
+	if (bs == 0) bs = ACS_HLINE;
+	if (tl == 0) tl = ACS_ULCORNER;
+	if (tr == 0) tr = ACS_URCORNER;
+	if (bl == 0) bl = ACS_LLCORNER;
+	if (br == 0) br = ACS_LRCORNER;
+
+	for(y = 0; y <= win->_maxy; y++) {
+
+		if (y == 0) {
+			 mvwaddch(win, y, 0, tl);
+
+			for(x = 1; x < win->_maxx; x++)
+				mvwaddch(win, y, x, ts);
+
+			mvwaddch(win, y, win->_maxx, tr);
+		}
+		else if (y == win->_maxy) {
+			mvwaddch(win, y, 0, bl);
+
+			for(x = 1; x < win->_maxx; x++)
+				mvwaddch(win, y, x, bs);
+
+			mvwaddch(win, y, win->_maxx, br);
+		}
+		else {
+			mvwaddch(win, y, 0, ls);
+			mvwaddch(win, y, win->_maxx, rs);
+		}
+	}
+
+	return OK;
+}
+
+// int wchgat (WINDOW *, int, attr_t, short, const void *) {}
+/* D */ int wclear(WINDOW *win)
+{
+	if (werase(win) == ERR)
+		return ERR;
+	win->_clear = TRUE;
+	return OK;
+}
+// int wclrtobot (WINDOW *) {}
+int wclrtoeol(WINDOW *win) { /* TODO */ return ERR; }
+int wcolor_set(WINDOW *win, short color_pair_number, void *opts)
+{
+	if (!opts && (color_pair_number >= 0)
+	    && (color_pair_number < COLOR_PAIRS)) {
+		SET_WINDOW_PAIR(win, color_pair_number);
+		if_EXT_COLORS(win->_color = color_pair_number);
+		return OK;
+	}
+	return ERR;
+}
+// void wcursyncup (WINDOW *) {}
+// int wdelch (WINDOW *) {}
+// int wechochar (WINDOW *, const chtype) {}
+int werase(WINDOW *win)
+{
+	int x, y;
+	for (y = 0; y <= win->_maxy; y++) {
+		for (x = 0; x <= win->_maxx; x++) {
+			win->_line[y].text[x].chars[0] = ' ';
+			win->_line[y].text[x].attr = WINDOW_ATTRS(win);
+		}
+		// Should we check instead?
+		win->_line[y].firstchar = 0;
+		win->_line[y].lastchar = win->_maxx;
+	}
+	return OK;
+}
+// int wgetnstr (WINDOW *,char *,int) {}
+int whline(WINDOW *win, chtype ch, int n)
+{
+	NCURSES_SIZE_T start, end;
+	struct ldat *line = &(win->_line[win->_cury]);
+	NCURSES_CH_T wch;
+
+	start = win->_curx;
+	end = start + n - 1;
+	if (end > win->_maxx)
+		end = win->_maxx;
+
+	CHANGED_RANGE(line, start, end);
+
+	//// TODO:
+	//// if (ch == 0)
+	////     SetChar2(wch, ACS_HLINE);
+	//// else
+	////     SetChar2(wch, ch);
+	// Ugly hack:
+	wch.chars[0] = ((ch) & (chtype)A_CHARTEXT);
+	wch.attr = ((ch) & (chtype)A_ATTRIBUTES);
+	wch = _nc_render(win, wch);
+
+	while (end >= start) {
+		line->text[end] = wch;
+		end--;
+	}
+
+	//// _nc_synchook(win);
+
+	return OK;
+}
+/* D */ chtype winch(WINDOW *win)
+{
+	//// TODO
+	// return (CharOf(win->_line[win->_cury].text[win->_curx]) |
+	//         AttrOf(win->_line[win->_cury].text[win->_curx]));
+	return OK;	// FIXME
+}
+// int winchnstr (WINDOW *, chtype *, int) {}
+// int winnstr (WINDOW *, char *, int) {}
+// int winsch (WINDOW *, chtype) {}
+// int winsdelln (WINDOW *,int) {}
+// int winsnstr (WINDOW *, const char *,int) {}
+/* D */ int wmove(WINDOW *win, int y, int x)
+{
+	if (!LEGALYX(win, y, x))
+		return ERR;
+	win->_curx = (NCURSES_SIZE_T) x;
+	win->_cury = (NCURSES_SIZE_T) y;
+	win->_flags &= ~_WRAPPED;
+	win->_flags |= _HASMOVED;
+	return OK;
+}
+
+#define SWAP_RED_BLUE(c) \
+	(((c) & 0x4400) >> 2) | ((c) & 0xAA00) | (((c) & 0x1100) << 2)
+int wnoutrefresh(WINDOW *win)
+{
+#ifdef CONFIG_SERIAL_CONSOLE
+	// FIXME.
+	int serial_is_bold = 0;
+	int serial_is_reverse = 0;
+	int serial_is_altcharset = 0;
+	int serial_cur_pair = 0;
+
+	int need_altcharset;
+	short fg, bg;
+#endif
+	int x, y;
+	chtype ch;
+
+#ifdef CONFIG_SERIAL_CONSOLE
+	ansi_end_bold();
+	ansi_end_altcharset();
+#endif
+
+	for (y = 0; y <= win->_maxy; y++) {
+
+		if (win->_line[y].firstchar == _NOCHANGE)
+			continue;
+
+		/* Position the serial cursor */
+
+#ifdef CONFIG_SERIAL_CONSOLE
+		if (curses_flags & F_ENABLE_SERIAL)
+			ansi_set_cursor(win->_begy + y, win->_begx +
+					win->_line[y].firstchar);
+#endif
+
+		for (x = win->_line[y].firstchar; x <= win->_line[y].lastchar; x++) {
+			attr_t attr = win->_line[y].text[x].attr;
+
+#ifdef CONFIG_SERIAL_CONSOLE
+			if (curses_flags & F_ENABLE_SERIAL) {
+				ch = win->_line[y].text[x].chars[0];
+
+				if (attr & A_BOLD) {
+					if (!serial_is_bold) {
+						ansi_start_bold();
+						serial_is_bold = 1;
+					}
+				} else {
+					if (serial_is_bold) {
+						ansi_end_bold();
+						serial_is_bold = 0;
+						/* work around serial.c
+						 * shortcoming:
+						 */
+						serial_is_reverse = 0;
+						serial_cur_pair = 0;
+					}
+				}
+
+				if (attr & A_REVERSE) {
+					if (!serial_is_reverse) {
+						ansi_start_reverse();
+						serial_is_reverse = 1;
+					}
+				} else {
+					if (serial_is_reverse) {
+						ansi_end_reverse();
+						serial_is_reverse = 0;
+						/* work around serial.c
+						 * shortcoming:
+						 */
+						serial_is_bold = 0;
+						serial_cur_pair = 0;
+					}
+				}
+
+				need_altcharset = 0;
+				if (attr & A_ALTCHARSET) {
+					if (serial_acs_map[ch & 0x7f]) {
+						ch = serial_acs_map[ch & 0x7f];
+						need_altcharset = 1;
+					} else
+						ch = fallback_acs_map[ch & 0x7f];
+				}
+				if (need_altcharset && !serial_is_altcharset) {
+					ansi_start_altcharset();
+					serial_is_altcharset = 1;
+				}
+				if (!need_altcharset && serial_is_altcharset) {
+					ansi_end_altcharset();
+					serial_is_altcharset = 0;
+				}
+
+				if (serial_cur_pair != PAIR_NUMBER(attr)) {
+					pair_content(PAIR_NUMBER(attr),
+						     &fg, &bg);
+					ansi_set_color(fg + 30, bg + 40);
+					serial_cur_pair = PAIR_NUMBER(attr);
+				}
+
+				putchar(ch);
+
+			}
+#endif
+#ifdef CONFIG_VIDEO_CONSOLE
+			unsigned int c =
+				((int)color_pairs[PAIR_NUMBER(attr)]) << 8;
+
+			c = SWAP_RED_BLUE(c);
+
+			if (curses_flags & F_ENABLE_CONSOLE) {
+				ch = win->_line[y].text[x].chars[0];
+
+				/* Handle some of the attributes. */
+				if (attr & A_BOLD)
+					c |= 0x0800;
+				if (attr & A_DIM)
+					c &= ~0x800;
+				if (attr & A_REVERSE) {
+					unsigned char tmp = (c >> 8) & 0xf;
+					c = (c >> 4) & 0xf00;
+					c |= tmp << 12;
+				}
+				if (attr & A_ALTCHARSET) {
+					if (console_acs_map[ch & 0x7f])
+						ch = console_acs_map[ch & 0x7f];
+					else
+						ch = fallback_acs_map[ch & 0x7f];
+				}
+
+				/*
+				 * FIXME: Somewhere along the line, the
+				 * character value is getting sign-extented.
+				 * For now grab just the 8 bit character,
+				 * but this will break wide characters!
+				 */
+				c |= (chtype) (ch & 0xff);
+				video_console_putc(win->_begy + y, win->_begx + x, c);
+			}
+#endif
+		}
+		win->_line[y].firstchar = _NOCHANGE;
+		win->_line[y].lastchar = _NOCHANGE;
+	}
+
+#ifdef CONFIG_SERIAL_CONSOLE
+	if (curses_flags & F_ENABLE_SERIAL)
+		ansi_set_cursor(win->_begy + win->_cury, win->_begx + win->_curx);
+#endif
+
+#ifdef CONFIG_VIDEO_CONSOLE
+	if (curses_flags & F_ENABLE_CONSOLE)
+		video_console_set_cursor(win->_begx + win->_curx, win->_begy + win->_cury);
+#endif
+
+	return OK;
+}
+int wprintw(WINDOW *win, const char *fmt, ...)
+{
+	va_list argp;
+	int code;
+
+	va_start(argp, fmt);
+	code = vwprintw(win, fmt, argp);
+	va_end(argp);
+
+	return code;
+}
+
+int wredrawln (WINDOW *win, int beg_line, int num_lines)
+{
+	int i;
+
+	for (i = beg_line; i < beg_line + num_lines; i++) {
+		win->_line[i].firstchar = 0;
+		win->_line[i].lastchar = win->_maxx;
+	}
+
+	return OK;
+}
+
+int wrefresh(WINDOW *win)
+{
+	int code;
+
+	// FIXME
+	return wnoutrefresh(win);
+
+	// XXX
+
+	if (win == curscr) {
+		curscr->_clear = TRUE;
+		// code = doupdate();
+	} else if ((code = wnoutrefresh(win)) == OK) {
+		if (win->_clear)
+			newscr->_clear = TRUE;
+		// code = doupdate();
+		/*
+		 * Reset the clearok() flag in case it was set for the special
+		 * case in hardscroll.c (if we don't reset it here, we'll get 2
+		 * refreshes because the flag is copied from stdscr to newscr).
+		 * Resetting the flag shouldn't do any harm, anyway.
+		 */
+		win->_clear = FALSE;
+	}
+
+	return code;
+}
+// int wscanw (WINDOW *, NCURSES_CONST char *,...) {}
+int wscrl(WINDOW *win, int n)
+{
+	int x, y;
+
+	if (!win->_scroll)
+		return ERR;
+
+	if (n == 0)
+		return OK;
+
+	for (y = 0; y <= (win->_maxy - n); y++) {
+		win->_line[y].firstchar = win->_line[y + n].firstchar;
+		win->_line[y].lastchar = win->_line[y + n].lastchar;
+		for (x = 0; x <= win->_maxx; x++) {
+			if ((win->_line[y].text[x].chars[0] != win->_line[y + n].text[x].chars[0]) ||
+					(win->_line[y].text[x].attr != win->_line[y + n].text[x].attr)) {
+				if (win->_line[y].firstchar == _NOCHANGE)
+					win->_line[y].firstchar = x;
+
+				win->_line[y].lastchar = x;
+
+				win->_line[y].text[x].chars[0] = win->_line[y + n].text[x].chars[0];
+				win->_line[y].text[x].attr = win->_line[y + n].text[x].attr;
+			}
+		}
+	}
+
+	for (y = (win->_maxy+1 - n); y <= win->_maxy; y++) {
+		for (x = 0; x <= win->_maxx; x++) {
+			if ((win->_line[y].text[x].chars[0] != ' ') ||
+					(win->_line[y].text[x].attr != A_NORMAL)) {
+				if (win->_line[y].firstchar == _NOCHANGE)
+					win->_line[y].firstchar = x;
+
+				win->_line[y].lastchar = x;
+
+				win->_line[y].text[x].chars[0] = ' ';
+				win->_line[y].text[x].attr = A_NORMAL;
+			}
+		}
+	}
+
+	// _nc_scroll_window(win, n, win->_regtop, win->_regbottom, win->_nc_bkgd);
+	// _nc_synchook(win);
+
+	return OK;
+}
+int wsetscrreg(WINDOW *win, int top, int bottom)
+{
+	if (top >= 0 && top <= win->_maxy && bottom >= 0 &&
+	    bottom <= win->_maxy && bottom > top) {
+		win->_regtop = (NCURSES_SIZE_T) top;
+		win->_regbottom = (NCURSES_SIZE_T) bottom;
+		return OK;
+	}
+	return ERR;
+}
+// void wsyncdown (WINDOW *) {}
+// void wsyncup (WINDOW *) {}
+/* D */ void wtimeout(WINDOW *win, int _delay) { win->_delay = _delay; }
+/* D */ int wtouchln(WINDOW *win, int y, int n, int changed)
+{
+	int i;
+
+	// if ((n < 0) || (y < 0) || (y > win->_maxy))
+	//     return ERR;
+
+	for (i = y; i < y + n; i++) {
+		if (i > win->_maxy)
+			break;
+		win->_line[i].firstchar = changed ? 0 : _NOCHANGE;
+		win->_line[i].lastchar = changed ? win->_maxx : _NOCHANGE;
+	}
+	return OK;
+}
+// int wvline (WINDOW *,chtype,int) {}
+// int tigetflag (NCURSES_CONST char *) {}
+// int tigetnum (NCURSES_CONST char *) {}
+// char *tigetstr (NCURSES_CONST char *) {}
+// int putp (const char *) {}
+// #if NCURSES_TPARM_VARARGS
+// char *tparm (NCURSES_CONST char *, ...) {}
+// #else
+// char *tparm (NCURSES_CONST char *, long,long,long,long,long,long,long,long,long) {}
+// char *tparm_varargs (NCURSES_CONST char *, ...) {}
+// #endif
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
