Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-f41.google.com ([209.85.215.41])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TlRDU-0006Qd-H1
 for barebox@lists.infradead.org; Wed, 19 Dec 2012 21:30:18 +0000
Received: by mail-la0-f41.google.com with SMTP id m15so1914873lah.14
 for <barebox@lists.infradead.org>; Wed, 19 Dec 2012 13:30:14 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 20 Dec 2012 01:29:55 +0400
Message-Id: <1355952595-1432-6-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1355952595-1432-1-git-send-email-antonynpavlov@gmail.com>
References: <1355952595-1432-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 5/5] MIPS: qemu-malta: add YAMON-style GT64120 memory map
To: barebox@lists.infradead.org

YAMON-style GT64120 memory map make move UART to the new position.

We need YAMON-style GT64120 memory for running Linux kernel from
barebox.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 .../qemu-malta/include/board/board_pbl_start.h     |   42 ++++++++++++++++++++
 arch/mips/mach-malta/include/mach/hardware.h       |    2 +-
 2 files changed, 43 insertions(+), 1 deletion(-)

diff --git a/arch/mips/boards/qemu-malta/include/board/board_pbl_start.h b/arch/mips/boards/qemu-malta/include/board/board_pbl_start.h
index a6c55c7..d993c2f 100644
--- a/arch/mips/boards/qemu-malta/include/board/board_pbl_start.h
+++ b/arch/mips/boards/qemu-malta/include/board/board_pbl_start.h
@@ -19,6 +19,15 @@
 
 #include <asm/pbl_macros.h>
 
+#define GT_PCI0IOLD_OFS		0x048
+#define GT_PCI0IOHD_OFS		0x050
+#define GT_PCI0M0LD_OFS		0x058
+#define GT_PCI0M0HD_OFS		0x060
+#define GT_ISD_OFS		0x068
+
+#define GT_PCI0M1LD_OFS		0x080
+#define GT_PCI0M1HD_OFS		0x088
+
 	.macro	board_pbl_start
 	.set	push
 	.set	noreorder
@@ -39,6 +48,39 @@ __start:
 
 	mips_disable_interrupts
 
+	/*
+	 * Load BAR registers of GT64120 as done by YAMON
+	 *
+	 * based on write_bootloader() in qemu.git/hw/mips_malta.c
+	 * see GT64120 manual and qemu.git/hw/gt64xxx.c for details
+	 *
+	 * This is big-endian version of code!
+	 */
+
+	/* move GT64120 registers to 0x1be00000 */
+	li	t1, 0xb4000000
+	li	t0, 0xdf000000
+	sw	t0, GT_ISD_OFS(t1)
+
+	/* setup MEM-to-PCI0 mapping */
+	li	t1, 0xbbe00000
+
+	/* setup PCI0 io window to 0x18000000-0x181fffff */
+	li	t0, 0xc0000000
+	sw	t0, GT_PCI0IOLD_OFS(t1)
+	li	t0, 0x40000000
+	sw	t0, GT_PCI0IOHD_OFS(t1)
+
+	/* setup PCI0 mem windows */
+	li	t0, 0x80000000
+	sw	t0, GT_PCI0M0LD_OFS(t1)
+	li	t0, 0x3f000000
+	sw	t0, GT_PCI0M0HD_OFS(t1)
+	li	t0, 0xc1000000
+	sw	t0, GT_PCI0M1LD_OFS(t1)
+	li	t0, 0x5e000000
+	sw	t0, GT_PCI0M1HD_OFS(t1)
+
 	/* cpu specific setup ... */
 	/* ... absent */
 
diff --git a/arch/mips/mach-malta/include/mach/hardware.h b/arch/mips/mach-malta/include/mach/hardware.h
index 5e8e276..f6294b2 100644
--- a/arch/mips/mach-malta/include/mach/hardware.h
+++ b/arch/mips/mach-malta/include/mach/hardware.h
@@ -18,7 +18,7 @@
 #ifndef __INCLUDE_ARCH_HARDWARE_H__
 #define   __INCLUDE_ARCH_HARDWARE_H__
 
-#define DEBUG_LL_UART_ADDR	0xb00003f8
+#define DEBUG_LL_UART_ADDR	0xb80003f8
 #define DEBUG_LL_UART_SHIFT	0
 
 /*
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
