Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SRfFM-0006BW-Ta
 for barebox@lists.infradead.org; Tue, 08 May 2012 07:54:13 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Tue,  8 May 2012 09:53:58 +0200
Message-Id: <1336463641-27219-6-git-send-email-w.sang@pengutronix.de>
In-Reply-To: <1336463641-27219-1-git-send-email-w.sang@pengutronix.de>
References: <1336463641-27219-1-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH 5/8] arm: mxs: add functions to get/set vddio
To: barebox@lists.infradead.org

Needed for ocotp write.

Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---
 arch/arm/mach-mxs/include/mach/power.h |    2 ++
 arch/arm/mach-mxs/power.c              |   38 ++++++++++++++++++++++++++++++++
 2 files changed, 40 insertions(+)

diff --git a/arch/arm/mach-mxs/include/mach/power.h b/arch/arm/mach-mxs/include/mach/power.h
index 859a717..f429b3c 100644
--- a/arch/arm/mach-mxs/include/mach/power.h
+++ b/arch/arm/mach-mxs/include/mach/power.h
@@ -2,5 +2,7 @@
 #define __MACH_POWER_H
 
 void imx_power_prepare_usbphy(void);
+int imx_get_vddio(void);
+int imx_set_vddio(int);
 
 #endif /* __MACH_POWER_H */
diff --git a/arch/arm/mach-mxs/power.c b/arch/arm/mach-mxs/power.c
index 4645f52..ae97eb9 100644
--- a/arch/arm/mach-mxs/power.c
+++ b/arch/arm/mach-mxs/power.c
@@ -11,11 +11,14 @@
  */
 #include <common.h>
 #include <io.h>
+#include <errno.h>
 #include <mach/imx-regs.h>
 
 #define POWER_CTRL			(IMX_POWER_BASE + 0x0)
 #define POWER_CTRL_CLKGATE		0x40000000
 
+#define POWER_VDDIOCTRL			(IMX_POWER_BASE + 0x60)
+
 #define POWER_STS			(IMX_POWER_BASE + 0xc0)
 #define POWER_STS_VBUSVALID		0x00000002
 #define POWER_STS_BVALID		0x00000004
@@ -26,6 +29,41 @@
 #define POWER_DEBUG_AVALIDPIOLOCK	0x00000004
 #define POWER_DEBUG_VBUSVALIDPIOLOCK	0x00000008
 
+#define TRG_MASK	0x1f
+
+int imx_get_vddio(void)
+{
+	u32 val;
+
+	val = readl(POWER_VDDIOCTRL) & TRG_MASK;
+	if (val > 0x10)
+		val = 0x10;
+
+	return 2800000 + val * 50000;
+}
+
+int imx_set_vddio(int new_voltage)
+{
+	u32 reg, val;
+
+	if (new_voltage < 2800000 || new_voltage > 3600000)
+		return -EINVAL;
+
+	val = (new_voltage - 2800000) / 50000;
+	reg = readl(POWER_VDDIOCTRL) & ~TRG_MASK;
+	writel(reg | val, POWER_VDDIOCTRL);
+
+	/*
+	 * Wait for power to become stable. We just wait, because DC_OK can
+	 * only detect rising voltages for DCDC. For all other cases, bootlets
+	 * also do simple waiting, although horribly nested. We just take the
+	 * maximum value of all cases from the bootlets and then add some.
+	 */
+	mdelay(30);
+
+	return 2800000 + val * 50000;
+}
+
 void imx_power_prepare_usbphy(void)
 {
 	u32 reg;
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
