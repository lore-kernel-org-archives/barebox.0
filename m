Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VenLY-0005rS-Fr
 for barebox@lists.infradead.org; Fri, 08 Nov 2013 14:47:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  8 Nov 2013 15:46:44 +0100
Message-Id: <1383922004-30880-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: remove asm/hardware.h
To: barebox@lists.infradead.org

asm/hardware.h does not have any content except including mach/hardware.h.
include mach/hardware.h directly where needed and get rid of asm/hardware.h

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/animeo_ip/init.c         |  2 +-
 arch/arm/boards/at91rm9200ek/init.c      |  2 +-
 arch/arm/boards/at91sam9261ek/init.c     |  2 +-
 arch/arm/boards/at91sam9263ek/init.c     |  2 +-
 arch/arm/boards/at91sam9m10g45ek/init.c  |  2 +-
 arch/arm/boards/at91sam9m10ihd/init.c    |  2 +-
 arch/arm/boards/at91sam9n12ek/init.c     |  2 +-
 arch/arm/boards/at91sam9x5ek/init.c      |  2 +-
 arch/arm/boards/dss11/init.c             |  2 +-
 arch/arm/boards/mmccpu/init.c            |  2 +-
 arch/arm/boards/pm9261/init.c            |  2 +-
 arch/arm/boards/pm9263/init.c            |  2 +-
 arch/arm/boards/pm9g45/init.c            |  2 +-
 arch/arm/boards/qil-a926x/init.c         |  2 +-
 arch/arm/boards/sama5d3xek/init.c        |  2 +-
 arch/arm/boards/tny-a926x/init.c         |  2 +-
 arch/arm/boards/usb-a926x/init.c         |  2 +-
 arch/arm/include/asm/hardware.h          | 18 ------------------
 arch/arm/mach-at91/at91rm9200.c          |  2 +-
 arch/arm/mach-at91/at91sam9260.c         |  2 +-
 arch/arm/mach-at91/at91sam9260_devices.c |  2 +-
 arch/arm/mach-at91/at91sam9261.c         |  2 +-
 arch/arm/mach-at91/at91sam9261_devices.c |  2 +-
 arch/arm/mach-at91/at91sam9263.c         |  2 +-
 arch/arm/mach-at91/at91sam9263_devices.c |  2 +-
 arch/arm/mach-at91/at91sam926x_time.c    |  2 +-
 arch/arm/mach-at91/at91sam9g45_devices.c |  2 +-
 arch/arm/mach-at91/at91sam9n12.c         |  2 +-
 arch/arm/mach-at91/at91sam9n12_devices.c |  2 +-
 arch/arm/mach-at91/at91sam9x5.c          |  2 +-
 arch/arm/mach-at91/at91sam9x5_devices.c  |  2 +-
 arch/arm/mach-at91/sama5d3.c             |  2 +-
 arch/arm/mach-at91/sama5d3_devices.c     |  2 +-
 arch/arm/mach-nomadik/8815.c             |  2 +-
 34 files changed, 33 insertions(+), 51 deletions(-)
 delete mode 100644 arch/arm/include/asm/hardware.h

diff --git a/arch/arm/boards/animeo_ip/init.c b/arch/arm/boards/animeo_ip/init.c
index 2fee1ff..13dd948 100644
--- a/arch/arm/boards/animeo_ip/init.c
+++ b/arch/arm/boards/animeo_ip/init.c
@@ -15,7 +15,7 @@
 #include <fs.h>
 #include <fcntl.h>
 #include <io.h>
-#include <asm/hardware.h>
+#include <mach/hardware.h>
 #include <nand.h>
 #include <sizes.h>
 #include <linux/mtd/nand.h>
diff --git a/arch/arm/boards/at91rm9200ek/init.c b/arch/arm/boards/at91rm9200ek/init.c
index 2c8bf0e..b63b1f7 100644
--- a/arch/arm/boards/at91rm9200ek/init.c
+++ b/arch/arm/boards/at91rm9200ek/init.c
@@ -26,7 +26,7 @@
 #include <fcntl.h>
 #include <io.h>
 #include <sizes.h>
-#include <asm/hardware.h>
+#include <mach/hardware.h>
 #include <mach/at91_pmc.h>
 #include <mach/board.h>
 #include <mach/iomux.h>
diff --git a/arch/arm/boards/at91sam9261ek/init.c b/arch/arm/boards/at91sam9261ek/init.c
index 00fc745..a0d81fc 100644
--- a/arch/arm/boards/at91sam9261ek/init.c
+++ b/arch/arm/boards/at91sam9261ek/init.c
@@ -24,7 +24,7 @@
 #include <fs.h>
 #include <fcntl.h>
 #include <io.h>
-#include <asm/hardware.h>
+#include <mach/hardware.h>
 #include <nand.h>
 #include <sizes.h>
 #include <linux/mtd/nand.h>
diff --git a/arch/arm/boards/at91sam9263ek/init.c b/arch/arm/boards/at91sam9263ek/init.c
index a889b5a..ec59f72 100644
--- a/arch/arm/boards/at91sam9263ek/init.c
+++ b/arch/arm/boards/at91sam9263ek/init.c
@@ -26,7 +26,7 @@
 #include <fs.h>
 #include <fcntl.h>
 #include <io.h>
-#include <asm/hardware.h>
+#include <mach/hardware.h>
 #include <nand.h>
 #include <sizes.h>
 #include <linux/mtd/nand.h>
diff --git a/arch/arm/boards/at91sam9m10g45ek/init.c b/arch/arm/boards/at91sam9m10g45ek/init.c
index 0ffbec2..d0a37a6 100644
--- a/arch/arm/boards/at91sam9m10g45ek/init.c
+++ b/arch/arm/boards/at91sam9m10g45ek/init.c
@@ -28,7 +28,7 @@
 #include <fs.h>
 #include <fcntl.h>
 #include <io.h>
-#include <asm/hardware.h>
+#include <mach/hardware.h>
 #include <nand.h>
 #include <sizes.h>
 #include <linux/mtd/nand.h>
diff --git a/arch/arm/boards/at91sam9m10ihd/init.c b/arch/arm/boards/at91sam9m10ihd/init.c
index b75c51d..92b8874 100644
--- a/arch/arm/boards/at91sam9m10ihd/init.c
+++ b/arch/arm/boards/at91sam9m10ihd/init.c
@@ -15,7 +15,7 @@
 #include <fs.h>
 #include <fcntl.h>
 #include <io.h>
-#include <asm/hardware.h>
+#include <mach/hardware.h>
 #include <nand.h>
 #include <sizes.h>
 #include <linux/mtd/nand.h>
diff --git a/arch/arm/boards/at91sam9n12ek/init.c b/arch/arm/boards/at91sam9n12ek/init.c
index 779e4f7..1912a1d 100644
--- a/arch/arm/boards/at91sam9n12ek/init.c
+++ b/arch/arm/boards/at91sam9n12ek/init.c
@@ -25,7 +25,7 @@
 #include <fs.h>
 #include <fcntl.h>
 #include <io.h>
-#include <asm/hardware.h>
+#include <mach/hardware.h>
 #include <nand.h>
 #include <sizes.h>
 #include <linux/mtd/nand.h>
diff --git a/arch/arm/boards/at91sam9x5ek/init.c b/arch/arm/boards/at91sam9x5ek/init.c
index c677e4d..87a401c 100644
--- a/arch/arm/boards/at91sam9x5ek/init.c
+++ b/arch/arm/boards/at91sam9x5ek/init.c
@@ -25,7 +25,7 @@
 #include <fs.h>
 #include <fcntl.h>
 #include <io.h>
-#include <asm/hardware.h>
+#include <mach/hardware.h>
 #include <nand.h>
 #include <sizes.h>
 #include <linux/mtd/nand.h>
diff --git a/arch/arm/boards/dss11/init.c b/arch/arm/boards/dss11/init.c
index 8e992f4..51b01c3 100644
--- a/arch/arm/boards/dss11/init.c
+++ b/arch/arm/boards/dss11/init.c
@@ -24,7 +24,7 @@
 #include <fs.h>
 #include <fcntl.h>
 #include <asm/io.h>
-#include <asm/hardware.h>
+#include <mach/hardware.h>
 #include <nand.h>
 #include <linux/mtd/nand.h>
 #include <mach/board.h>
diff --git a/arch/arm/boards/mmccpu/init.c b/arch/arm/boards/mmccpu/init.c
index a666b9d..506f420 100644
--- a/arch/arm/boards/mmccpu/init.c
+++ b/arch/arm/boards/mmccpu/init.c
@@ -26,7 +26,7 @@
 #include <fs.h>
 #include <fcntl.h>
 #include <io.h>
-#include <asm/hardware.h>
+#include <mach/hardware.h>
 #include <nand.h>
 #include <linux/mtd/nand.h>
 #include <mach/at91_pmc.h>
diff --git a/arch/arm/boards/pm9261/init.c b/arch/arm/boards/pm9261/init.c
index 8c039b7..e5dc995 100644
--- a/arch/arm/boards/pm9261/init.c
+++ b/arch/arm/boards/pm9261/init.c
@@ -27,7 +27,7 @@
 #include <fs.h>
 #include <fcntl.h>
 #include <io.h>
-#include <asm/hardware.h>
+#include <mach/hardware.h>
 #include <nand.h>
 #include <linux/mtd/nand.h>
 #include <mach/at91_pmc.h>
diff --git a/arch/arm/boards/pm9263/init.c b/arch/arm/boards/pm9263/init.c
index 3bc22f3..9d4cf38 100644
--- a/arch/arm/boards/pm9263/init.c
+++ b/arch/arm/boards/pm9263/init.c
@@ -28,7 +28,7 @@
 #include <gpio.h>
 #include <fcntl.h>
 #include <io.h>
-#include <asm/hardware.h>
+#include <mach/hardware.h>
 #include <nand.h>
 #include <linux/mtd/nand.h>
 #include <mach/at91_pmc.h>
diff --git a/arch/arm/boards/pm9g45/init.c b/arch/arm/boards/pm9g45/init.c
index 75fd8a4..9df98ab 100644
--- a/arch/arm/boards/pm9g45/init.c
+++ b/arch/arm/boards/pm9g45/init.c
@@ -27,7 +27,7 @@
 #include <fcntl.h>
 #include <gpio.h>
 #include <io.h>
-#include <asm/hardware.h>
+#include <mach/hardware.h>
 #include <nand.h>
 #include <linux/mtd/nand.h>
 #include <mach/at91_pmc.h>
diff --git a/arch/arm/boards/qil-a926x/init.c b/arch/arm/boards/qil-a926x/init.c
index 4192923..6eb9e12 100644
--- a/arch/arm/boards/qil-a926x/init.c
+++ b/arch/arm/boards/qil-a926x/init.c
@@ -15,7 +15,7 @@
 #include <fs.h>
 #include <fcntl.h>
 #include <io.h>
-#include <asm/hardware.h>
+#include <mach/hardware.h>
 #include <nand.h>
 #include <sizes.h>
 #include <linux/mtd/nand.h>
diff --git a/arch/arm/boards/sama5d3xek/init.c b/arch/arm/boards/sama5d3xek/init.c
index 482c74a..f56ec54 100644
--- a/arch/arm/boards/sama5d3xek/init.c
+++ b/arch/arm/boards/sama5d3xek/init.c
@@ -24,7 +24,7 @@
 #include <fs.h>
 #include <fcntl.h>
 #include <io.h>
-#include <asm/hardware.h>
+#include <mach/hardware.h>
 #include <nand.h>
 #include <sizes.h>
 #include <linux/mtd/nand.h>
diff --git a/arch/arm/boards/tny-a926x/init.c b/arch/arm/boards/tny-a926x/init.c
index e3dd784..82a1c4a 100644
--- a/arch/arm/boards/tny-a926x/init.c
+++ b/arch/arm/boards/tny-a926x/init.c
@@ -24,7 +24,7 @@
 #include <fs.h>
 #include <fcntl.h>
 #include <io.h>
-#include <asm/hardware.h>
+#include <mach/hardware.h>
 #include <nand.h>
 #include <sizes.h>
 #include <linux/mtd/nand.h>
diff --git a/arch/arm/boards/usb-a926x/init.c b/arch/arm/boards/usb-a926x/init.c
index fd2603f..b57e289 100644
--- a/arch/arm/boards/usb-a926x/init.c
+++ b/arch/arm/boards/usb-a926x/init.c
@@ -24,7 +24,7 @@
 #include <fs.h>
 #include <fcntl.h>
 #include <io.h>
-#include <asm/hardware.h>
+#include <mach/hardware.h>
 #include <nand.h>
 #include <sizes.h>
 #include <linux/mtd/nand.h>
diff --git a/arch/arm/include/asm/hardware.h b/arch/arm/include/asm/hardware.h
deleted file mode 100644
index c71c2ae..0000000
--- a/arch/arm/include/asm/hardware.h
+++ /dev/null
@@ -1,18 +0,0 @@
-/*
- *  linux/include/asm-arm/hardware.h
- *
- *  Copyright (C) 1996 Russell King
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation.
- *
- *  Common hardware definitions
- */
-
-#ifndef __ASM_HARDWARE_H
-#define __ASM_HARDWARE_H
-
-#include <mach/hardware.h>
-
-#endif
diff --git a/arch/arm/mach-at91/at91rm9200.c b/arch/arm/mach-at91/at91rm9200.c
index d740463..d12e8d9 100644
--- a/arch/arm/mach-at91/at91rm9200.c
+++ b/arch/arm/mach-at91/at91rm9200.c
@@ -1,7 +1,7 @@
 #include <common.h>
 #include <gpio.h>
 #include <init.h>
-#include <asm/hardware.h>
+#include <mach/hardware.h>
 #include <mach/at91_pmc.h>
 
 #include "soc.h"
diff --git a/arch/arm/mach-at91/at91sam9260.c b/arch/arm/mach-at91/at91sam9260.c
index e3c2996..fbd7884 100644
--- a/arch/arm/mach-at91/at91sam9260.c
+++ b/arch/arm/mach-at91/at91sam9260.c
@@ -1,7 +1,7 @@
 #include <common.h>
 #include <gpio.h>
 #include <init.h>
-#include <asm/hardware.h>
+#include <mach/hardware.h>
 #include <mach/at91_pmc.h>
 
 #include "soc.h"
diff --git a/arch/arm/mach-at91/at91sam9260_devices.c b/arch/arm/mach-at91/at91sam9260_devices.c
index bf2b5b7..ed6f9c4 100644
--- a/arch/arm/mach-at91/at91sam9260_devices.c
+++ b/arch/arm/mach-at91/at91sam9260_devices.c
@@ -14,7 +14,7 @@
 #include <sizes.h>
 #include <gpio.h>
 #include <asm/armlinux.h>
-#include <asm/hardware.h>
+#include <mach/hardware.h>
 #include <mach/board.h>
 #include <mach/at91_pmc.h>
 #include <mach/at91sam9260_matrix.h>
diff --git a/arch/arm/mach-at91/at91sam9261.c b/arch/arm/mach-at91/at91sam9261.c
index c992f71..37a65ec 100644
--- a/arch/arm/mach-at91/at91sam9261.c
+++ b/arch/arm/mach-at91/at91sam9261.c
@@ -1,7 +1,7 @@
 #include <common.h>
 #include <gpio.h>
 #include <init.h>
-#include <asm/hardware.h>
+#include <mach/hardware.h>
 #include <mach/at91_pmc.h>
 
 #include "soc.h"
diff --git a/arch/arm/mach-at91/at91sam9261_devices.c b/arch/arm/mach-at91/at91sam9261_devices.c
index 9ac9f20..ce539e9 100644
--- a/arch/arm/mach-at91/at91sam9261_devices.c
+++ b/arch/arm/mach-at91/at91sam9261_devices.c
@@ -14,7 +14,7 @@
 #include <sizes.h>
 #include <gpio.h>
 #include <asm/armlinux.h>
-#include <asm/hardware.h>
+#include <mach/hardware.h>
 #include <mach/at91_pmc.h>
 #include <mach/at91sam9261_matrix.h>
 #include <mach/at91sam9_sdramc.h>
diff --git a/arch/arm/mach-at91/at91sam9263.c b/arch/arm/mach-at91/at91sam9263.c
index db4a705..35d187b 100644
--- a/arch/arm/mach-at91/at91sam9263.c
+++ b/arch/arm/mach-at91/at91sam9263.c
@@ -1,7 +1,7 @@
 #include <common.h>
 #include <gpio.h>
 #include <init.h>
-#include <asm/hardware.h>
+#include <mach/hardware.h>
 #include <mach/at91_pmc.h>
 
 #include "soc.h"
diff --git a/arch/arm/mach-at91/at91sam9263_devices.c b/arch/arm/mach-at91/at91sam9263_devices.c
index 6860ad0..1c9366a 100644
--- a/arch/arm/mach-at91/at91sam9263_devices.c
+++ b/arch/arm/mach-at91/at91sam9263_devices.c
@@ -14,7 +14,7 @@
 #include <sizes.h>
 #include <gpio.h>
 #include <asm/armlinux.h>
-#include <asm/hardware.h>
+#include <mach/hardware.h>
 #include <mach/at91_pmc.h>
 #include <mach/at91sam9263_matrix.h>
 #include <mach/at91sam9_sdramc.h>
diff --git a/arch/arm/mach-at91/at91sam926x_time.c b/arch/arm/mach-at91/at91sam926x_time.c
index e18458a..644dc34 100644
--- a/arch/arm/mach-at91/at91sam926x_time.c
+++ b/arch/arm/mach-at91/at91sam926x_time.c
@@ -28,7 +28,7 @@
 #include <common.h>
 #include <init.h>
 #include <clock.h>
-#include <asm/hardware.h>
+#include <mach/hardware.h>
 #include <mach/at91_pit.h>
 #include <mach/io.h>
 #include <io.h>
diff --git a/arch/arm/mach-at91/at91sam9g45_devices.c b/arch/arm/mach-at91/at91sam9g45_devices.c
index bd7ab93..5af8761 100644
--- a/arch/arm/mach-at91/at91sam9g45_devices.c
+++ b/arch/arm/mach-at91/at91sam9g45_devices.c
@@ -14,7 +14,7 @@
 #include <sizes.h>
 #include <gpio.h>
 #include <asm/armlinux.h>
-#include <asm/hardware.h>
+#include <mach/hardware.h>
 #include <mach/at91_pmc.h>
 #include <mach/at91sam9g45_matrix.h>
 #include <mach/at91sam9_ddrsdr.h>
diff --git a/arch/arm/mach-at91/at91sam9n12.c b/arch/arm/mach-at91/at91sam9n12.c
index 2a825b4..c551f9a 100644
--- a/arch/arm/mach-at91/at91sam9n12.c
+++ b/arch/arm/mach-at91/at91sam9n12.c
@@ -1,7 +1,7 @@
 #include <common.h>
 #include <gpio.h>
 #include <init.h>
-#include <asm/hardware.h>
+#include <mach/hardware.h>
 #include <mach/at91_pmc.h>
 #include <mach/io.h>
 #include <mach/cpu.h>
diff --git a/arch/arm/mach-at91/at91sam9n12_devices.c b/arch/arm/mach-at91/at91sam9n12_devices.c
index 3616801..2d9ea4c 100644
--- a/arch/arm/mach-at91/at91sam9n12_devices.c
+++ b/arch/arm/mach-at91/at91sam9n12_devices.c
@@ -14,7 +14,7 @@
 #include <sizes.h>
 #include <gpio.h>
 #include <asm/armlinux.h>
-#include <asm/hardware.h>
+#include <mach/hardware.h>
 #include <mach/board.h>
 #include <mach/at91_pmc.h>
 #include <mach/at91sam9n12_matrix.h>
diff --git a/arch/arm/mach-at91/at91sam9x5.c b/arch/arm/mach-at91/at91sam9x5.c
index 9ddd592..000b748 100644
--- a/arch/arm/mach-at91/at91sam9x5.c
+++ b/arch/arm/mach-at91/at91sam9x5.c
@@ -1,7 +1,7 @@
 #include <common.h>
 #include <gpio.h>
 #include <init.h>
-#include <asm/hardware.h>
+#include <mach/hardware.h>
 #include <mach/at91_pmc.h>
 #include <mach/io.h>
 #include <mach/cpu.h>
diff --git a/arch/arm/mach-at91/at91sam9x5_devices.c b/arch/arm/mach-at91/at91sam9x5_devices.c
index f80c1af..2d05e94 100644
--- a/arch/arm/mach-at91/at91sam9x5_devices.c
+++ b/arch/arm/mach-at91/at91sam9x5_devices.c
@@ -13,7 +13,7 @@
 #include <sizes.h>
 #include <gpio.h>
 #include <asm/armlinux.h>
-#include <asm/hardware.h>
+#include <mach/hardware.h>
 #include <mach/board.h>
 #include <mach/at91_pmc.h>
 #include <mach/at91sam9x5_matrix.h>
diff --git a/arch/arm/mach-at91/sama5d3.c b/arch/arm/mach-at91/sama5d3.c
index aa681aa..1bfae14 100644
--- a/arch/arm/mach-at91/sama5d3.c
+++ b/arch/arm/mach-at91/sama5d3.c
@@ -1,7 +1,7 @@
 #include <common.h>
 #include <gpio.h>
 #include <init.h>
-#include <asm/hardware.h>
+#include <mach/hardware.h>
 #include <mach/at91_pmc.h>
 #include <mach/io.h>
 #include <mach/cpu.h>
diff --git a/arch/arm/mach-at91/sama5d3_devices.c b/arch/arm/mach-at91/sama5d3_devices.c
index 9cbc8c1..1938c05 100644
--- a/arch/arm/mach-at91/sama5d3_devices.c
+++ b/arch/arm/mach-at91/sama5d3_devices.c
@@ -14,7 +14,7 @@
 #include <sizes.h>
 #include <gpio.h>
 #include <asm/armlinux.h>
-#include <asm/hardware.h>
+#include <mach/hardware.h>
 #include <mach/board.h>
 #include <mach/at91_pmc.h>
 #include <mach/at91sam9x5_matrix.h>
diff --git a/arch/arm/mach-nomadik/8815.c b/arch/arm/mach-nomadik/8815.c
index c5cac58..af32c9c 100644
--- a/arch/arm/mach-nomadik/8815.c
+++ b/arch/arm/mach-nomadik/8815.c
@@ -17,7 +17,7 @@
 #include <common.h>
 #include <init.h>
 #include <linux/clkdev.h>
-#include <asm/hardware.h>
+#include <mach/hardware.h>
 #include <mach/hardware.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
