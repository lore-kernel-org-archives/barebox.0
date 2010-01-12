Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NUdrz-0007Gm-6U
	for barebox@lists.infradead.org; Tue, 12 Jan 2010 10:21:05 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1NUdrq-0006Vv-Mf
	for barebox@lists.infradead.org; Tue, 12 Jan 2010 11:20:54 +0100
Received: from jbe by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1NUdrq-0006zO-KB
	for barebox@lists.infradead.org; Tue, 12 Jan 2010 11:20:54 +0100
Message-Id: <20100112102054.503300176@pengutronix.de>
References: <20100112101534.868276907@pengutronix.de>
Date: Tue, 12 Jan 2010 11:15:39 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Content-Disposition: inline; filename=add_mach_code.diff
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
Subject: [PATCHv2 05/14] Bring in the first x86 specific code
To: barebox@lists.infradead.org

Add some generic required code to make barebox work on x86.
Note: Resetting the CPU is unfinished yet. I need some ideas how to reset
this kind of architecture gracefully.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>

---
 arch/x86/mach-i386/Kconfig   |   29 +++++++++++++++++++++++++++++
 arch/x86/mach-i386/Makefile  |    2 ++
 arch/x86/mach-i386/generic.c |   38 ++++++++++++++++++++++++++++++++++++++
 arch/x86/mach-i386/reset.c   |   34 ++++++++++++++++++++++++++++++++++
 4 files changed, 103 insertions(+)

Index: u-boot-2.0.0-rc10/arch/x86/mach-i386/Kconfig
===================================================================
--- /dev/null
+++ u-boot-2.0.0-rc10/arch/x86/mach-i386/Kconfig
@@ -0,0 +1,29 @@
+
+menu "Board specific settings       "
+
+if X86_BOOTLOADER
+
+config X86_GENERIC_HAS_ISA
+	bool "ISA support"
+	help
+	  Say Y here if the target supports a ISA bus
+
+config X86_GENERIC_HAS_PCI
+	bool "PCI support"
+	select HAS_PCI
+	help
+	  Say Y here if the target supports a PCI bus
+
+config X86_GENERIC_HAS_VIDEO
+	bool "video support"
+	help
+	  Say Y here if the target supports a video output
+
+config X86_GENERIC_HAS_USB
+	bool "USB support"
+	help
+	  Say Y here if the target supports a USB interface
+
+endif
+
+endmenu
Index: u-boot-2.0.0-rc10/arch/x86/mach-i386/Makefile
===================================================================
--- /dev/null
+++ u-boot-2.0.0-rc10/arch/x86/mach-i386/Makefile
@@ -0,0 +1,2 @@
+obj-y += generic.o
+obj-y += reset.o
Index: u-boot-2.0.0-rc10/arch/x86/mach-i386/generic.c
===================================================================
--- /dev/null
+++ u-boot-2.0.0-rc10/arch/x86/mach-i386/generic.c
@@ -0,0 +1,38 @@
+/*
+ * Copyright (C) 2009 Juergen Beisert, Pengutronix
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
+ *
+ */
+
+/**
+ * @file
+ * @brief x86 Architecture Initialization routines
+ */
+
+#include <asm/io.h>
+
+/** to work with the 8250 UART driver implementation we need this function */
+unsigned int x86_uart_read(unsigned long base, unsigned char reg_idx)
+{
+	return inb(base + reg_idx);
+}
+
+/** to work with the 8250 UART driver implementation we need this function */
+void x86_uart_write(unsigned int val, unsigned long base, unsigned char reg_idx)
+{
+	outb(val, base + reg_idx);
+}
Index: u-boot-2.0.0-rc10/arch/x86/mach-i386/reset.c
===================================================================
--- /dev/null
+++ u-boot-2.0.0-rc10/arch/x86/mach-i386/reset.c
@@ -0,0 +1,34 @@
+/*
+ * Copyright (C) 2009 Juergen Beisert, Pengutronix
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
+ *
+ */
+
+/**
+ * @file
+ * @brief Resetting an x86 CPU
+ */
+
+#include <common.h>
+
+void reset_cpu(ulong addr)
+{
+	/** How to reset the machine? */
+	while(1)
+		;
+}
+EXPORT_SYMBOL(reset_cpu);

-- 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
