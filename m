Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Scjt8-0006ZE-SV
 for barebox@lists.infradead.org; Thu, 07 Jun 2012 21:05:03 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  7 Jun 2012 23:04:55 +0200
Message-Id: <1339103098-32102-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1339103098-32102-1-git-send-email-s.hauer@pengutronix.de>
References: <1339103098-32102-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] ARM mxs: Add mxs_reset_block function
To: barebox@lists.infradead.org
Cc: wsa@pengutronix.de

The i.MX23/28 have a reset block to reset several units.
Add a function to support this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-mxs/Makefile           |    2 +-
 arch/arm/mach-mxs/common.c           |   33 +++++++++++++++++++++++++++++++++
 arch/arm/mach-mxs/include/mach/mxs.h |    6 ++++++
 3 files changed, 40 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/mach-mxs/common.c
 create mode 100644 arch/arm/mach-mxs/include/mach/mxs.h

diff --git a/arch/arm/mach-mxs/Makefile b/arch/arm/mach-mxs/Makefile
index 172d928..268e7dc 100644
--- a/arch/arm/mach-mxs/Makefile
+++ b/arch/arm/mach-mxs/Makefile
@@ -1,4 +1,4 @@
-obj-y += imx.o iomux-imx.o reset-imx.o
+obj-y += imx.o iomux-imx.o reset-imx.o common.o
 obj-$(CONFIG_DRIVER_VIDEO_STM) += imx_lcd_clk.o
 obj-$(CONFIG_ARCH_IMX23) += speed-imx23.o clocksource-imx23.o usb.o
 obj-$(CONFIG_ARCH_IMX28) += speed-imx28.o clocksource-imx28.o
diff --git a/arch/arm/mach-mxs/common.c b/arch/arm/mach-mxs/common.c
new file mode 100644
index 0000000..3730633
--- /dev/null
+++ b/arch/arm/mach-mxs/common.c
@@ -0,0 +1,33 @@
+#include <common.h>
+#include <io.h>
+#include <mach/mxs.h>
+#include <mach/imx-regs.h>
+
+#define	MXS_BLOCK_SFTRST				(1 << 31)
+#define	MXS_BLOCK_CLKGATE				(1 << 30)
+
+int mxs_reset_block(void __iomem *reg, int just_enable)
+{
+	/* Clear SFTRST */
+	writel(MXS_BLOCK_SFTRST, reg + BIT_CLR);
+	mdelay(1);
+
+	/* Clear CLKGATE */
+	writel(MXS_BLOCK_CLKGATE, reg + BIT_CLR);
+
+	if (!just_enable) {
+		/* Set SFTRST */
+		writel(MXS_BLOCK_SFTRST, reg + BIT_SET);
+		mdelay(1);
+	}
+
+	/* Clear SFTRST */
+	writel(MXS_BLOCK_SFTRST, reg + BIT_CLR);
+	mdelay(1);
+
+	/* Clear CLKGATE */
+	writel(MXS_BLOCK_CLKGATE, reg + BIT_CLR);
+	mdelay(1);
+
+	return 0;
+}
diff --git a/arch/arm/mach-mxs/include/mach/mxs.h b/arch/arm/mach-mxs/include/mach/mxs.h
new file mode 100644
index 0000000..182ed8a
--- /dev/null
+++ b/arch/arm/mach-mxs/include/mach/mxs.h
@@ -0,0 +1,6 @@
+#ifndef __MACH_MXS_H
+#define __MACH_MXS_H
+
+int mxs_reset_block(void __iomem *reg, int just_enable);
+
+#endif /* __MACH_MXS_H */
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
