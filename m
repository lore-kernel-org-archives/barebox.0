Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TTCh1-00082v-H9
 for barebox@lists.infradead.org; Tue, 30 Oct 2012 14:21:24 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Tue, 30 Oct 2012 15:21:13 +0100
Message-Id: <1351606875-31558-1-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH 1/3] arm: mxs: use timeouts in block reset routines
To: barebox@lists.infradead.org
Cc: Wolfram Sang <w.sang@pengutronix.de>

These routines can fail, add support for that. Also, put in missing
copyright headers.

Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---
 arch/arm/mach-mxs/common.c |   39 +++++++++++++++++++++++++++++++++++----
 1 file changed, 35 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-mxs/common.c b/arch/arm/mach-mxs/common.c
index 3730633..122d883 100644
--- a/arch/arm/mach-mxs/common.c
+++ b/arch/arm/mach-mxs/common.c
@@ -1,8 +1,26 @@
+/*
+ * Freescale i.MXS common code
+ *
+ * Copyright (C) 2012 Wolfram Sang <w.sang@pengutronix.de>
+ *
+ * Based on code from LTIB:
+ * Copyright (C) 2010 Freescale Semiconductor, Inc.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ */
+
 #include <common.h>
 #include <io.h>
+#include <errno.h>
+#include <clock.h>
 #include <mach/mxs.h>
 #include <mach/imx-regs.h>
 
+#define	MXS_IP_RESET_TIMEOUT	(10 * MSECOND)
+
 #define	MXS_BLOCK_SFTRST				(1 << 31)
 #define	MXS_BLOCK_CLKGATE				(1 << 30)
 
@@ -10,7 +28,9 @@ int mxs_reset_block(void __iomem *reg, int just_enable)
 {
 	/* Clear SFTRST */
 	writel(MXS_BLOCK_SFTRST, reg + BIT_CLR);
-	mdelay(1);
+
+	if (wait_on_timeout(MXS_IP_RESET_TIMEOUT, !(readl(reg) & MXS_BLOCK_SFTRST)))
+		goto timeout;
 
 	/* Clear CLKGATE */
 	writel(MXS_BLOCK_CLKGATE, reg + BIT_CLR);
@@ -18,16 +38,27 @@ int mxs_reset_block(void __iomem *reg, int just_enable)
 	if (!just_enable) {
 		/* Set SFTRST */
 		writel(MXS_BLOCK_SFTRST, reg + BIT_SET);
-		mdelay(1);
+
+		/* Wait for CLKGATE being set */
+		if (wait_on_timeout(MXS_IP_RESET_TIMEOUT, readl(reg) & MXS_BLOCK_CLKGATE))
+			goto timeout;
 	}
 
 	/* Clear SFTRST */
 	writel(MXS_BLOCK_SFTRST, reg + BIT_CLR);
-	mdelay(1);
+
+	if (wait_on_timeout(MXS_IP_RESET_TIMEOUT, !(readl(reg) & MXS_BLOCK_SFTRST)))
+		goto timeout;
 
 	/* Clear CLKGATE */
 	writel(MXS_BLOCK_CLKGATE, reg + BIT_CLR);
-	mdelay(1);
+
+	if (wait_on_timeout(MXS_IP_RESET_TIMEOUT, !(readl(reg) & MXS_BLOCK_CLKGATE)))
+		goto timeout;
 
 	return 0;
+
+timeout:
+	printf("MXS: Timeout resetting block via register 0x%p\n", reg);
+	return -ETIMEDOUT;
 }
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
