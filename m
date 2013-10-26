Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x229.google.com ([2a00:1450:4010:c03::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VZzrn-000540-9P
 for barebox@lists.infradead.org; Sat, 26 Oct 2013 09:09:10 +0000
Received: by mail-la0-f41.google.com with SMTP id el20so3884978lab.28
 for <barebox@lists.infradead.org>; Sat, 26 Oct 2013 02:08:45 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat, 26 Oct 2013 13:15:06 +0400
Message-Id: <1382778907-13328-5-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1382778907-13328-1-git-send-email-antonynpavlov@gmail.com>
References: <1382778907-13328-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 4/5] MIPS: qemu-malta: use YAMON-style GT64120 memory map
To: barebox@lists.infradead.org

There are some reasons for using YAMON-style memory map:
* we can run Linux kernel from barebox;
* we can use GXemul for running barebox.

YAMON-style GT64120 memory map make move UART to the new position.

The files gt64120.h and mach-gt64120.h are imported from Linux.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 .../qemu-malta/include/board/board_pbl_start.h     | 53 ++++++++++++++++++++++
 arch/mips/dts/qemu-malta.dts                       |  4 +-
 arch/mips/include/asm/gt64120.h                    | 37 +++++++++++++++
 arch/mips/mach-malta/include/mach/hardware.h       |  2 +-
 arch/mips/mach-malta/include/mach/mach-gt64120.h   | 13 ++++++
 5 files changed, 106 insertions(+), 3 deletions(-)
 create mode 100644 arch/mips/include/asm/gt64120.h
 create mode 100644 arch/mips/mach-malta/include/mach/mach-gt64120.h

diff --git a/arch/mips/boards/qemu-malta/include/board/board_pbl_start.h b/arch/mips/boards/qemu-malta/include/board/board_pbl_start.h
index a5f29e5..5c15372 100644
--- a/arch/mips/boards/qemu-malta/include/board/board_pbl_start.h
+++ b/arch/mips/boards/qemu-malta/include/board/board_pbl_start.h
@@ -20,6 +20,25 @@
 #include <asm/pbl_macros.h>
 #include <asm/pbl_nmon.h>
 
+#include <asm/addrspace.h>
+#include <asm/gt64120.h>
+#include <mach/mach-gt64120.h>
+
+#ifdef CONFIG_CPU_LITTLE_ENDIAN
+#define GT_CPU_TO_LE32(x) (x)
+#elif defined CONFIG_CPU_BIG_ENDIAN
+#define GT_CPU_TO_LE32(x) ( \
+	(((x) & 0x000000ff) << 24) |	\
+	(((x) & 0x0000ff00) <<  8) |	\
+	(((x) & 0x00ff0000) >>  8) |	\
+	(((x) & 0xff000000) >> 24))
+#else
+#error "could not determine byte order"
+#endif
+
+#define	GT_LD(x)	(GT_CPU_TO_LE32(((x) >> 21) & 0x7fff))
+#define	GT_HD(x)	(GT_CPU_TO_LE32(((x) >> 21) & 0x7f))
+
 	.macro	board_pbl_start
 	.set	push
 	.set	noreorder
@@ -41,6 +60,40 @@ __start:
 	/* cpu specific setup ... */
 	/* ... absent */
 
+	/*
+	 * Load BAR registers of GT64120 as done by YAMON
+	 *
+	 * based on write_bootloader() in qemu.git/hw/mips/mips_malta.c
+	 * see GT64120 manual and qemu.git/hw/mips/gt64xxx_pci.c for details
+	 */
+
+	/* move GT64120 registers to 0x1be00000 */
+	li	t1, KSEG1ADDR(GT_DEF_BASE)
+	li	t0, GT_LD(MIPS_GT_BASE)
+	sw	t0, GT_ISD_OFS(t1)
+
+	/*
+	 * setup MEM-to-PCI0 mapping
+	 */
+	li	t1, KSEG1ADDR(MIPS_GT_BASE)
+
+	/* setup PCI0 io window */
+	li	t0, GT_LD(0x18000000)
+	sw	t0, GT_PCI0IOLD_OFS(t1)
+	li	t0, GT_HD(0x181fffff)
+	sw	t0, GT_PCI0IOHD_OFS(t1)
+
+	/* setup PCI0 mem windows */
+	li	t0, GT_LD(0x10000000)
+	sw	t0, GT_PCI0M0LD_OFS(t1)
+	li	t0, GT_HD(0x17efffff)
+	sw	t0, GT_PCI0M0HD_OFS(t1)
+
+	li	t0, GT_LD(0x18200000)
+	sw	t0, GT_PCI0M1LD_OFS(t1)
+	li	t0, GT_LD(0x1bdfffff)
+	sw	t0, GT_PCI0M1HD_OFS(t1)
+
 	mips_nmon
 
 	copy_to_link_location	pbl_start
diff --git a/arch/mips/dts/qemu-malta.dts b/arch/mips/dts/qemu-malta.dts
index 4057729..b6b69c4 100644
--- a/arch/mips/dts/qemu-malta.dts
+++ b/arch/mips/dts/qemu-malta.dts
@@ -17,9 +17,9 @@
 		reg = <0x00000000 0x10000000>;
 	};
 
-	uart0: serial@b00003f8 {
+	uart0: serial@b80003f8 {
 		compatible = "ns16550a";
-		reg = <0xb00003f8 0x08>;
+		reg = <0xb80003f8 0x08>;
 		reg-shift = <0>;
 		/* no matter for emulated port */
 		clock-frequency = <1843200>;
diff --git a/arch/mips/include/asm/gt64120.h b/arch/mips/include/asm/gt64120.h
new file mode 100644
index 0000000..6b2ad0f
--- /dev/null
+++ b/arch/mips/include/asm/gt64120.h
@@ -0,0 +1,37 @@
+/*
+ * Copyright (C) 2000, 2004, 2005  MIPS Technologies, Inc.
+ *	All rights reserved.
+ *	Authors: Carsten Langgaard <carstenl@mips.com>
+ *		 Maciej W. Rozycki <macro@mips.com>
+ * Copyright (C) 2005 Ralf Baechle (ralf@linux-mips.org)
+ *
+ *  This program is free software; you can distribute it and/or modify it
+ *  under the terms of the GNU General Public License (Version 2) as
+ *  published by the Free Software Foundation.
+ *
+ *  This program is distributed in the hope it will be useful, but WITHOUT
+ *  ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ *  FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
+ *  for more details.
+ *
+ */
+#ifndef _ASM_GT64120_H
+#define _ASM_GT64120_H
+
+#define GT_DEF_BASE		0x14000000
+
+/*
+ *  Register offset addresses
+ */
+
+/* CPU Address Decode.	*/
+#define GT_PCI0IOLD_OFS		0x048
+#define GT_PCI0IOHD_OFS		0x050
+#define GT_PCI0M0LD_OFS		0x058
+#define GT_PCI0M0HD_OFS		0x060
+#define GT_ISD_OFS		0x068
+
+#define GT_PCI0M1LD_OFS		0x080
+#define GT_PCI0M1HD_OFS		0x088
+
+#endif /* _ASM_GT64120_H */
diff --git a/arch/mips/mach-malta/include/mach/hardware.h b/arch/mips/mach-malta/include/mach/hardware.h
index affb4ea..9345a67 100644
--- a/arch/mips/mach-malta/include/mach/hardware.h
+++ b/arch/mips/mach-malta/include/mach/hardware.h
@@ -18,7 +18,7 @@
 #ifndef __INCLUDE_ARCH_HARDWARE_H__
 #define   __INCLUDE_ARCH_HARDWARE_H__
 
-#define MALTA_PIIX4_UART0	0xb00003f8
+#define MALTA_PIIX4_UART0	0xb80003f8
 
 /*
  * Reset register.
diff --git a/arch/mips/mach-malta/include/mach/mach-gt64120.h b/arch/mips/mach-malta/include/mach/mach-gt64120.h
new file mode 100644
index 0000000..ed1e23e
--- /dev/null
+++ b/arch/mips/mach-malta/include/mach/mach-gt64120.h
@@ -0,0 +1,13 @@
+/*
+ *  This is a direct copy of the ev96100.h file, with a global
+ * search and replace.	The numbers are the same.
+ *
+ *  The reason I'm duplicating this is so that the 64120/96100
+ * defines won't be confusing in the source code.
+ */
+#ifndef _ASM_MACH_MIPS_MACH_GT64120_DEP_H
+#define _ASM_MACH_MIPS_MACH_GT64120_DEP_H
+
+#define MIPS_GT_BASE	0x1be00000
+
+#endif /* _ASM_MACH_MIPS_MACH_GT64120_DEP_H */
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
