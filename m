Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aqxZV-0004xV-Oz
 for barebox@lists.infradead.org; Fri, 15 Apr 2016 06:49:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 15 Apr 2016 08:49:11 +0200
Message-Id: <1460702958-4012-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1460702958-4012-1-git-send-email-s.hauer@pengutronix.de>
References: <1460702958-4012-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/9] include: Move smc91111 eth platform_data to
 include/platform_data
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/lubbock/board.c         |  2 +-
 arch/arm/boards/mainstone/board.c       |  2 +-
 arch/arm/boards/versatile/versatilepb.c |  2 +-
 arch/arm/boards/zylonite/board.c        |  2 +-
 drivers/net/smc91111.c                  |  2 +-
 include/net/smc91111.h                  | 19 -------------------
 include/platform_data/eth-smc91111.h    | 19 +++++++++++++++++++
 7 files changed, 24 insertions(+), 24 deletions(-)
 delete mode 100644 include/net/smc91111.h
 create mode 100644 include/platform_data/eth-smc91111.h

diff --git a/arch/arm/boards/lubbock/board.c b/arch/arm/boards/lubbock/board.c
index 6f517d8..c2a0db7 100644
--- a/arch/arm/boards/lubbock/board.c
+++ b/arch/arm/boards/lubbock/board.c
@@ -33,7 +33,7 @@
 #include <mach/udc_pxa2xx.h>
 #include <mach/mci_pxa2xx.h>
 
-#include <net/smc91111.h>
+#include <platform_data/eth-smc91111.h>
 #include <asm/armlinux.h>
 #include <asm/io.h>
 #include <asm/mmu.h>
diff --git a/arch/arm/boards/mainstone/board.c b/arch/arm/boards/mainstone/board.c
index c339bb9..0e48e79 100644
--- a/arch/arm/boards/mainstone/board.c
+++ b/arch/arm/boards/mainstone/board.c
@@ -33,7 +33,7 @@
 #include <mach/udc_pxa2xx.h>
 #include <mach/mci_pxa2xx.h>
 
-#include <net/smc91111.h>
+#include <platform_data/eth-smc91111.h>
 #include <asm/armlinux.h>
 #include <asm/io.h>
 #include <asm/mmu.h>
diff --git a/arch/arm/boards/versatile/versatilepb.c b/arch/arm/boards/versatile/versatilepb.c
index 3166cd4..8691a17 100644
--- a/arch/arm/boards/versatile/versatilepb.c
+++ b/arch/arm/boards/versatile/versatilepb.c
@@ -29,7 +29,7 @@
 #include <environment.h>
 #include <partition.h>
 #include <linux/sizes.h>
-#include <net/smc91111.h>
+#include <platform_data/eth-smc91111.h>
 
 static int vpb_console_init(void)
 {
diff --git a/arch/arm/boards/zylonite/board.c b/arch/arm/boards/zylonite/board.c
index 2ff08b7..bd72cd1 100644
--- a/arch/arm/boards/zylonite/board.c
+++ b/arch/arm/boards/zylonite/board.c
@@ -25,7 +25,7 @@
 #include <init.h>
 #include <partition.h>
 #include <led.h>
-#include <net/smc91111.h>
+#include <platform_data/eth-smc91111.h>
 #include <platform_data/mtd-nand-mrvl.h>
 #include <pwm.h>
 #include <linux/clk.h>
diff --git a/drivers/net/smc91111.c b/drivers/net/smc91111.c
index b705591..e08e3dd 100644
--- a/drivers/net/smc91111.c
+++ b/drivers/net/smc91111.c
@@ -67,7 +67,7 @@
 #include <io.h>
 #include <linux/phy.h>
 #include <linux/err.h>
-#include <net/smc91111.h>
+#include <platform_data/eth-smc91111.h>
 
 /*---------------------------------------------------------------
  .
diff --git a/include/net/smc91111.h b/include/net/smc91111.h
deleted file mode 100644
index 72193bf..0000000
--- a/include/net/smc91111.h
+++ /dev/null
@@ -1,19 +0,0 @@
-/*
- * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
- *
- * Under GPLv2 only
- */
-
-#ifndef __SMC91111_H__
-#define __SMC91111_H__
-
-struct smc91c111_pdata {
-	int qemu_fixup;
-	int addr_shift;
-	int bus_width;
-	bool word_aligned_short_writes;
-	int config_setup;
-	int control_setup;
-};
-
-#endif /* __SMC91111_H__ */
diff --git a/include/platform_data/eth-smc91111.h b/include/platform_data/eth-smc91111.h
new file mode 100644
index 0000000..72193bf
--- /dev/null
+++ b/include/platform_data/eth-smc91111.h
@@ -0,0 +1,19 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPLv2 only
+ */
+
+#ifndef __SMC91111_H__
+#define __SMC91111_H__
+
+struct smc91c111_pdata {
+	int qemu_fixup;
+	int addr_shift;
+	int bus_width;
+	bool word_aligned_short_writes;
+	int config_setup;
+	int control_setup;
+};
+
+#endif /* __SMC91111_H__ */
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
