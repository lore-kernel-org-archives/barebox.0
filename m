Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PvHUC-0003Mn-2g
	for barebox@lists.infradead.org; Thu, 03 Mar 2011 22:59:12 +0000
Received: by mail-ww0-f49.google.com with SMTP id 40so1440124wwj.18
	for <barebox@lists.infradead.org>; Thu, 03 Mar 2011 14:59:07 -0800 (PST)
From: franck.jullien@gmail.com
Date: Thu,  3 Mar 2011 23:58:31 +0100
Message-Id: <4d701d3b.9009d80a.2cd3.5e82@mx.google.com>
In-Reply-To: <n>
References: <n>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 17/54] Add arch/nios2/boards/generic/barebox.lds.S
To: barebox@lists.infradead.org

From: Franck JULLIEN <franck.jullien@gmail.com>

Add arch/nios2/boards/generic/barebox.lds.S

---
 arch/nios2/boards/generic/barebox.lds.S |  126 +++++++++++++++++++++++++++++++
 1 files changed, 126 insertions(+), 0 deletions(-)
 create mode 100644 arch/nios2/boards/generic/barebox.lds.S

diff --git a/arch/nios2/boards/generic/barebox.lds.S b/arch/nios2/boards/generic/barebox.lds.S
new file mode 100644
index 0000000..6791a74
--- /dev/null
+++ b/arch/nios2/boards/generic/barebox.lds.S
@@ -0,0 +1,126 @@
+/*
+ * barebox - barebox.lds.S
+ *
+ * (C) Copyright 2010, Franck JULLIEN, <franck.jullien@gmail.com>
+ * This file is a mix from barebox.lds.S found in the blackfin arch
+ * and u-boot.lds from nios2 arch in u-boot.
+ * 
+ * (C) Copyright 2004, Psyent Corporation <www.psyent.com>
+ * Scott McNutt <smcnutt@psyent.com>
+ *
+ * Copyright (c) 2005-2007 Analog Device Inc.
+ *
+ * (C) Copyright 2000-2004
+ * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
+ *
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <config.h>
+#include <asm-generic/barebox.lds.h>
+
+OUTPUT_FORMAT("elf32-littlenios2")
+OUTPUT_ARCH("nios2")
+
+SECTIONS
+{
+	. = NIOS_SOPC_TEXT_BASE;
+
+	. = ALIGN(4);
+	.text      :
+	{
+		__stext = .;
+		__text = .;
+		_text = .;
+		*(.text_entry)
+		*(.text)
+	}
+
+	. = ALIGN(4);
+	.rodata : { *(.rodata) }
+
+	. = .;
+	__barebox_cmd_start = .;
+	.barebox_cmd : { BAREBOX_CMDS }
+	__barebox_cmd_end = .;
+
+	__barebox_initcalls_start = .;
+	.barebox_initcalls : { INITCALLS }
+	__barebox_initcalls_end = .;
+
+	___usymtab_start = .;
+	__usymtab : { BAREBOX_SYMS }
+	___usymtab_end = .;
+	
+	__etext = .;			/* End of text and rodata section */
+	
+	/* INIT DATA sections - "Small" data (see the gcc -G option)
+	 * is always gp-relative. Here we make all init data sections
+	 * adjacent to simplify the startup code -- and provide
+	 * the global pointer for gp-relative access.
+	 */
+	_data = .;
+	.data :
+	{
+	  *(.data)
+	  *(.data.*)
+	  *(.gnu.linkonce.d*)
+	}
+
+	. = ALIGN(16);
+	_gp = .;			/* Global pointer addr */
+	PROVIDE (gp = .);
+
+	.sdata :
+	{
+	  *(.sdata)
+	  *(.sdata.*)
+	  *(.gnu.linkonce.s.*)
+	}
+	. = ALIGN(4);
+
+	_edata = .;
+	PROVIDE (edata = .);
+
+	/* UNINIT DATA - Small uninitialized data is first so it's
+	 * adjacent to sdata and can be referenced via gp. The normal
+	 * bss follows. We keep it adjacent to simplify init code.
+	 */
+	__bss_start = .;
+	.sbss (NOLOAD) :
+	{
+	  *(.sbss)
+	  *(.sbss.*)
+	  *(.gnu.linkonce.sb.*)
+	  *(.scommon)
+	}
+	. = ALIGN(4);
+	.bss (NOLOAD) :
+	{
+	  *(.bss)
+	  *(.bss.*)
+	  *(.dynbss)
+	  *(COMMON)
+	  *(.scommon)
+	}
+	__bss_stop = .;
+
+	. = ALIGN(4);
+	_end = .;
+	PROVIDE (end = .);
+}
+
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
