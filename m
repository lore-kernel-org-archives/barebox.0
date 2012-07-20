Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Ss8sm-0001Z9-DC
 for barebox@lists.infradead.org; Fri, 20 Jul 2012 08:48:25 +0000
Received: by mail-lb0-f177.google.com with SMTP id gg6so4936568lbb.36
 for <barebox@lists.infradead.org>; Fri, 20 Jul 2012 01:48:18 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 20 Jul 2012 12:47:36 +0400
Message-Id: <1342774059-2169-5-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1342774059-2169-1-git-send-email-antonynpavlov@gmail.com>
References: <1342774059-2169-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 4/7] MIPS: malta: add YAMON-style GT64120 memory map
To: barebox@lists.infradead.org

YAMON-style GT64120 memory map make move UART to the new position.

We need YAMON-style GT64120 memory for running Linux kernel from
barebox.

WARNING! WIP! We need add some more effor for compartability
with qemu embedded YAMON.

E.g. we need put special Board ID at the start of bootrom:

--- a/arch/mips/boot/start.S
+++ b/arch/mips/boot/start.S
@@ -59,6 +59,10 @@ EXPORT(_start)
         nop

        .org    0x10
+#if 1
+       /* Board ID = 0x420 (Malta Board with CoreLV) */
+       .word   0x00000420
+#endif

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/mach-malta/include/mach/hardware.h |    2 +-
 arch/mips/mach-malta/lowlevel_init.S         |   33 +++++++++++++++++++++++++-
 2 files changed, 33 insertions(+), 2 deletions(-)

diff --git a/arch/mips/mach-malta/include/mach/hardware.h b/arch/mips/mach-malta/include/mach/hardware.h
index ddeb1b7..fde8f22 100644
--- a/arch/mips/mach-malta/include/mach/hardware.h
+++ b/arch/mips/mach-malta/include/mach/hardware.h
@@ -21,7 +21,7 @@
 #ifndef __INCLUDE_ARCH_HARDWARE_H__
 #define   __INCLUDE_ARCH_HARDWARE_H__
 
-#define DEBUG_LL_UART_ADDR	0xb00003f8
+#define DEBUG_LL_UART_ADDR	0xb80003f8
 #define DEBUG_LL_UART_SHIFT	0
 
 /*
diff --git a/arch/mips/mach-malta/lowlevel_init.S b/arch/mips/mach-malta/lowlevel_init.S
index a34de74..a0134f8 100644
--- a/arch/mips/mach-malta/lowlevel_init.S
+++ b/arch/mips/mach-malta/lowlevel_init.S
@@ -29,7 +29,38 @@
 
 LEAF(mach_init_lowlevel)
 
-	/* nothing special yet */
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
+	lui	t1, 0xb400
+	lui	t0, 0xdf00
+	sw	t0, 104(t1)
+
+	/* setup MEM-to-PCI0 mapping */
+	lui	t1, 0xbbe0
+
+	/* setup PCI0 io window to 18000000-181fffff */
+	lui	t0, 0xc000
+	sw	t0, 72(t1) /* GT_PCI0IOLD */
+	lui	t0, 0x4000
+	sw	t0, 80(t1) /* GT_PCI0IOHD */
+
+	/* setup PCI0 mem windows */
+	lui	t0, 0x8000
+	sw	t0, 88(t1) /* GT_PCI0M0LD */
+	lui	t0, 0x3f00
+	sw	t0, 96(t1) /* GT_PCI0M0HD */
+	lui	t0, 0xc100
+	sw	t0, 128(t1) /* GT_PCI0M1LD */
+	lui	t0, 0x5e00
+	sw	t0, 136(t1) /* GT_PCI0M1HD */
 
 	/* return */
 	b	mach_init_lowlevel_return
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
