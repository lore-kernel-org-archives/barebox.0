Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SSPkC-0001Re-Ct
 for barebox@lists.infradead.org; Thu, 10 May 2012 09:34:12 +0000
Received: by lbbgg6 with SMTP id gg6so1123638lbb.36
 for <barebox@lists.infradead.org>; Thu, 10 May 2012 02:32:23 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 10 May 2012 13:32:07 +0400
Message-Id: <1336642330-23675-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1336642330-23675-1-git-send-email-antonynpavlov@gmail.com>
References: <1336642330-23675-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 2/5] MIPS: add XBurst processor family support
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/Kconfig                             |    8 +++++++
 arch/mips/Makefile                            |    2 ++
 arch/mips/mach-mips.dox                       |    4 ++++
 arch/mips/mach-xburst/Kconfig                 |    7 ++++++
 arch/mips/mach-xburst/include/mach/debug_ll.h |   29 +++++++++++++++++++++++++
 arch/mips/mach-xburst/mach-xburst.dox         |    5 +++++
 6 files changed, 55 insertions(+)
 create mode 100644 arch/mips/mach-xburst/Kconfig
 create mode 100644 arch/mips/mach-xburst/include/mach/debug_ll.h
 create mode 100644 arch/mips/mach-xburst/mach-xburst.dox

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index 50d5c67..7a1eeac 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -46,10 +46,18 @@ config MACH_MIPS_BCM47XX
 	select SYS_SUPPORTS_LITTLE_ENDIAN
 	select HAS_DEBUG_LL
 
+config MACH_MIPS_XBURST
+	bool "Ingenic XBurst-based boards"
+	select SYS_HAS_CPU_MIPS32_R1
+	select SYS_SUPPORTS_LITTLE_ENDIAN
+	select SYS_SUPPORTS_32BIT_KERNEL
+	select DRIVER_SERIAL_NS16550
+	select HAS_DEBUG_LL
 endchoice
 
 source arch/mips/mach-malta/Kconfig
 source arch/mips/mach-bcm47xx/Kconfig
+source arch/mips/mach-xburst/Kconfig
 
 endmenu
 
diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index 43b8ae6..345d9a2 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -66,6 +66,8 @@ board-$(CONFIG_BOARD_QEMU_MALTA)	:= qemu-malta
 machine-$(CONFIG_MACH_MIPS_BCM47XX)	:= bcm47xx
 board-$(CONFIG_BOARD_DLINK_DIR320)	:= dlink-dir-320
 
+machine-$(CONFIG_MACH_MIPS_XBURST)	:= xburst
+
 machdirs := $(patsubst %,arch/mips/mach-%/,$(machine-y))
 
 ifeq ($(KBUILD_SRC),)
diff --git a/arch/mips/mach-mips.dox b/arch/mips/mach-mips.dox
index 9bcec13..750a451 100644
--- a/arch/mips/mach-mips.dox
+++ b/arch/mips/mach-mips.dox
@@ -58,4 +58,8 @@ ISBN-13: 978-0120884216
 @subsection mach_bcm47xx_info BCM47xx-based boards
 
 @li @subpage dev_bcm47xx_mach
+
+@subsection mach_xburst_info XBurst-based boards
+
+@li @subpage dev_xburst_mach
 */
diff --git a/arch/mips/mach-xburst/Kconfig b/arch/mips/mach-xburst/Kconfig
new file mode 100644
index 0000000..7228b8f
--- /dev/null
+++ b/arch/mips/mach-xburst/Kconfig
@@ -0,0 +1,7 @@
+if MACH_MIPS_XBURST
+
+config ARCH_TEXT_BASE
+	hex
+	default 0xa0800000
+
+endif
diff --git a/arch/mips/mach-xburst/include/mach/debug_ll.h b/arch/mips/mach-xburst/include/mach/debug_ll.h
new file mode 100644
index 0000000..90f6528
--- /dev/null
+++ b/arch/mips/mach-xburst/include/mach/debug_ll.h
@@ -0,0 +1,29 @@
+/*
+ * Copyright (C) 2012 Antony Pavlov <antonynpavlov@gmail.com>
+ *
+ * This file is part of barebox.
+ * See file CREDITS for list of people who contributed to this project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
+ */
+
+#ifndef __MACH_XBURST_DEBUG_LL__
+#define __MACH_XBURST_DEBUG_LL__
+
+/** @file
+ *  This File contains declaration for early output support
+ */
+#include <debug_ll_common.h>
+
+#endif  /* __MACH_XBURST_DEBUG_LL__ */
diff --git a/arch/mips/mach-xburst/mach-xburst.dox b/arch/mips/mach-xburst/mach-xburst.dox
new file mode 100644
index 0000000..84ae221
--- /dev/null
+++ b/arch/mips/mach-xburst/mach-xburst.dox
@@ -0,0 +1,5 @@
+/** @page dev_xburst_mach XBurst in barebox
+
+@section xburst_boards XBurst-based boards
+
+*/
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
