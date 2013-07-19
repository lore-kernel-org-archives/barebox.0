Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mho-03-ewr.mailhop.org ([204.13.248.66]
 helo=mho-01-ewr.mailhop.org)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V0AzY-0008UI-2M
 for barebox@lists.infradead.org; Fri, 19 Jul 2013 13:45:04 +0000
Received: from pool-72-84-113-162.nrflva.fios.verizon.net ([72.84.113.162]
 helo=titan)
 by mho-01-ewr.mailhop.org with esmtpsa (TLSv1:AES256-SHA:256)
 (Exim 4.72) (envelope-from <jason@lakedaemon.net>)
 id 1V0AzB-0001FB-Mw
 for barebox@lists.infradead.org; Fri, 19 Jul 2013 13:44:41 +0000
From: Jason Cooper <jason@lakedaemon.net>
Date: Fri, 19 Jul 2013 13:44:17 +0000
Message-Id: <1374241457-8565-1-git-send-email-jason@lakedaemon.net>
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
Subject: [PATCH] arm: mvebu: add board USI Topkick
To: barebox@lists.infradead.org
Cc: Jason Cooper <jason@lakedaemon.net>

Successfully boots to console via kwboot.  No other functionality yet.

Signed-off-by: Jason Cooper <jason@lakedaemon.net>
---
 arch/arm/Makefile                        |  1 +
 arch/arm/boards/usi-topkick/Makefile     |  1 +
 arch/arm/boards/usi-topkick/board.c      | 17 ++++++++++++++++
 arch/arm/boards/usi-topkick/kwbimage.cfg | 35 ++++++++++++++++++++++++++++++++
 arch/arm/mach-mvebu/Kconfig              |  5 +++++
 5 files changed, 59 insertions(+)
 create mode 100644 arch/arm/boards/usi-topkick/Makefile
 create mode 100644 arch/arm/boards/usi-topkick/board.c
 create mode 100644 arch/arm/boards/usi-topkick/kwbimage.cfg

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 32bdd65..96c9a67 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -170,6 +170,7 @@ board-$(CONFIG_MACH_TX53)			+= karo-tx53
 board-$(CONFIG_MACH_USB_A9260)			+= usb-a926x
 board-$(CONFIG_MACH_USB_A9263)			+= usb-a926x
 board-$(CONFIG_MACH_USB_A9G20)			+= usb-a926x
+board-$(CONFIG_MACH_USI_TOPKICK)		+= usi-topkick
 board-$(CONFIG_MACH_VERSATILEPB)		+= versatile
 board-$(CONFIG_MACH_VEXPRESS)			+= vexpress
 board-$(CONFIG_MACH_ZEDBOARD)			+= avnet-zedboard
diff --git a/arch/arm/boards/usi-topkick/Makefile b/arch/arm/boards/usi-topkick/Makefile
new file mode 100644
index 0000000..dcfc293
--- /dev/null
+++ b/arch/arm/boards/usi-topkick/Makefile
@@ -0,0 +1 @@
+obj-y += board.o
diff --git a/arch/arm/boards/usi-topkick/board.c b/arch/arm/boards/usi-topkick/board.c
new file mode 100644
index 0000000..7dbe0aa
--- /dev/null
+++ b/arch/arm/boards/usi-topkick/board.c
@@ -0,0 +1,17 @@
+/*
+ * Copyright
+ * (C) 2013 Jason Cooper <jason@lakedaemon.net>
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
+ */
+
+/* empty */
diff --git a/arch/arm/boards/usi-topkick/kwbimage.cfg b/arch/arm/boards/usi-topkick/kwbimage.cfg
new file mode 100644
index 0000000..db590ca
--- /dev/null
+++ b/arch/arm/boards/usi-topkick/kwbimage.cfg
@@ -0,0 +1,35 @@
+VERSION 0
+BOOT_FROM nand
+NAND_ECCMODE default
+NAND_PAGESZ 00000800
+DATA FFD100e0 1b1b1b9b
+DATA FFD01400 4301503E
+DATA FFD01404 B9843000
+DATA FFD01408 33137773
+DATA FFD0140C 16000C3A
+DATA FFD01410 06000000
+DATA FFD01414 00000000
+DATA FFD01418 00000000
+DATA FFD0141C 00000672
+DATA FFD01420 00000004
+DATA FFD01424 0000F14F
+DATA FFD01428 000D6C70
+DATA FFD0147C 00006071
+DATA FFD01504 1FFFFFF1
+DATA FFD01508 10000000
+DATA FFD0150C 0FFFFFF4
+DATA FFD01514 00000000
+DATA FFD0151C 00000000
+DATA FFD01494 00120000
+DATA FFD01498 00000000
+DATA FFD0149C 0000E803
+DATA FFD015D0 00000630
+DATA FFD015D4 00000046
+DATA FFD015D8 00000008
+DATA FFD015DC 00000000
+DATA FFD015E0 00000023
+DATA FFD015E4 00203C18
+DATA FFD01620 00680000
+DATA FFD01480 00000001
+DATA FFD20134 66666666
+DATA FFD20138 66666666
diff --git a/arch/arm/mach-mvebu/Kconfig b/arch/arm/mach-mvebu/Kconfig
index 11e4550..7fb7d04 100644
--- a/arch/arm/mach-mvebu/Kconfig
+++ b/arch/arm/mach-mvebu/Kconfig
@@ -5,6 +5,7 @@ config ARCH_TEXT_BASE
 	default 0x2000000 if MACH_PLATHOME_OPENBLOCKS_AX3
 	default 0x2000000 if MACH_GLOBALSCALE_MIRABOX
 	default 0x2000000 if MACH_GLOBALSCALE_GURUPLUG
+	default 0x2000000 if MACH_USI_TOPKICK
 	default 0x2000000 if MACH_MARVELL_ARMADA_XP_GP
 	default 0x2000000 if MACH_SOLIDRUN_CUBOX
 
@@ -14,6 +15,7 @@ config BOARDINFO
 	default "Globalscale Guruplug" if MACH_GLOBALSCALE_GURUPLUG
 	default "Marvell Armada XP GP" if MACH_MARVELL_ARMADA_XP_GP
 	default "SolidRun CuBox" if MACH_SOLIDRUN_CUBOX
+	default "USI Topkick" if MACH_USI_TOPKICK
 
 choice
 	prompt "Marvell EBU Processor"
@@ -103,6 +105,9 @@ choice
 config MACH_GLOBALSCALE_GURUPLUG
 	bool "Guruplug"
 
+config MACH_USI_TOPKICK
+	bool "Topkick"
+
 endchoice
 
 endif # ARCH_KIRKWOOD
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
