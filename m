Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([88.190.12.23])
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1RBixI-0002En-R1
	for barebox@lists.infradead.org; Thu, 06 Oct 2011 08:05:26 +0000
Received: from [192.168.0.14] (tra42-5-83-152-246-54.fbx.proxad.net
	[83.152.246.54])
	by mail.free-electrons.com (Postfix) with ESMTPA id 91831206
	for <barebox@lists.infradead.org>;
	Thu,  6 Oct 2011 10:05:15 +0200 (CEST)
Message-ID: <4E8D613C.2070605@free-electrons.com>
Date: Thu, 06 Oct 2011 10:05:16 +0200
From: Gregory CLEMENT <gregory.clement@free-electrons.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [RFC/PATCH 2/2] backlight: mxs: Add backlight support for i.MX23
To: barebox <barebox@lists.infradead.org>

May work on i.MX28 but only tested on i.MX23 base board

Signed-off-by: Gregory CLEMENT <gregory.clement@free-electrons.com>
---
 arch/arm/mach-mxs/include/mach/backlight.h |   19 ++++
 drivers/video/backlight/Kconfig            |    8 ++
 drivers/video/backlight/Makefile           |    4 +-
 drivers/video/backlight/backlight-mxs.c    |  136 ++++++++++++++++++++++++++++
 4 files changed, 166 insertions(+), 1 deletions(-)
 create mode 100644 arch/arm/mach-mxs/include/mach/backlight.h
 create mode 100644 drivers/video/backlight/backlight-mxs.c

diff --git a/arch/arm/mach-mxs/include/mach/backlight.h b/arch/arm/mach-mxs/include/mach/backlight.h
new file mode 100644
index 0000000..7afc165
--- /dev/null
+++ b/arch/arm/mach-mxs/include/mach/backlight.h
@@ -0,0 +1,19 @@
+/*
+ * backlight.h - plateform definitions for the mxs backlight driver
+ *
+ * Copyright (C) 2011 Gregory Clement, Free Electrons
+ *
+ * This file is released under the GPLv2 or later
+ *
+ */
+
+#ifndef BACKLIGHT_MXS_H
+#define BACKLIGHT_MXS_H
+
+struct mxs_backlight_platformdata {
+	int channel;
+	int period;
+	int cdiv;
+};
+
+#endif /* BACKLIGHT__H */
diff --git a/drivers/video/backlight/Kconfig b/drivers/video/backlight/Kconfig
index b593a82..9a8d2e1 100644
--- a/drivers/video/backlight/Kconfig
+++ b/drivers/video/backlight/Kconfig
@@ -6,3 +6,11 @@ menuconfig BACKLIGHT
 	bool "Backlight support"
 	help
 	  Add support for backlight
+
+if BACKLIGHT
+
+config BACKLIGHT_MXS
+	bool "i.MX23 Backlight driver"
+	depends on BACKLIGHT && ARCH_MXS
+
+endif
diff --git a/drivers/video/backlight/Makefile b/drivers/video/backlight/Makefile
index 3c63230..fe97ac6 100644
--- a/drivers/video/backlight/Makefile
+++ b/drivers/video/backlight/Makefile
@@ -1 +1,3 @@
-obj-$(CONFIG_BACKLIGHT) += backlight.o
\ No newline at end of file
+obj-$(CONFIG_BACKLIGHT) += backlight.o
+
+obj-$(CONFIG_BACKLIGHT_MSX) += backlight-mxs.o
diff --git a/drivers/video/backlight/backlight-mxs.c b/drivers/video/backlight/backlight-mxs.c
new file mode 100644
index 0000000..e33f45f
--- /dev/null
+++ b/drivers/video/backlight/backlight-mxs.c
@@ -0,0 +1,136 @@
+/*
+ * Copyright (C) 2011 Gregory Clement, Free Electrons
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * as published by the Free Software Foundation; either version 2
+ * of the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307,
+ * USA.
+ *
+ */
+#include <clock.h>
+#include <common.h>
+#include <driver.h>
+#include <init.h>
+#include <malloc.h>
+#include <types.h>
+#include <backlight.h>
+
+#include <asm/io.h>
+#include <mach/clock.h>
+#include <mach/backlight.h>
+
+/* This will be the driver name */
+#define DRIVER_NAME "mxs-backlight"
+
+#define HW_PWM_CTRL_SFTRST 0x80000000
+#define HW_PWM_CTRL_CLKGATE 0x40000000
+#define SET 0x4
+#define CLR 0x8
+#define HW_PWM_ACTIVEn(n)	(0x00000010 + (n) * 0x20)
+#define BP_PWM_ACTIVEn_INACTIVE	16
+#define BM_PWM_ACTIVEn_INACTIVE	0xFFFF0000
+#define BF_PWM_ACTIVEn_INACTIVE(v) \
+		(((v) << 16) & BM_PWM_ACTIVEn_INACTIVE)
+#define BM_PWM_ACTIVEn_ACTIVE	0x0000FFFF
+#define BF_PWM_ACTIVEn_ACTIVE(v)  \
+		(((v) << 0) & BM_PWM_ACTIVEn_ACTIVE)
+
+#define HW_PWM_PERIODn(n)	(0x00000020 + (n) * 0x20)
+#define BM_PWM_PERIODn_CDIV	0x00700000
+#define BF_PWM_PERIODn_CDIV(v)  \
+		(((v) << 20) & BM_PWM_PERIODn_CDIV)
+#define BM_PWM_PERIODn_INACTIVE_STATE	0x000C0000
+#define BF_PWM_PERIODn_INACTIVE_STATE(v)  \
+		(((v) << 18) & BM_PWM_PERIODn_INACTIVE_STATE)
+#define BM_PWM_PERIODn_ACTIVE_STATE	0x00030000
+#define BF_PWM_PERIODn_ACTIVE_STATE(v)  \
+		(((v) << 16) & BM_PWM_PERIODn_ACTIVE_STATE)
+#define BM_PWM_PERIODn_PERIOD	0x0000FFFF
+#define BF_PWM_PERIODn_PERIOD(v)  \
+		(((v) << 0) & BM_PWM_PERIODn_PERIOD)
+#define BM_PWM_CTRL_PWM4_ENABLE	0x00000010
+#define BM_PWM_CTRL_PWM3_ENABLE	0x00000008
+#define BM_PWM_CTRL_PWM2_ENABLE	0x00000004
+#define BM_PWM_CTRL_PWM1_ENABLE	0x00000002
+#define BM_PWM_CTRL_PWM0_ENABLE	0x00000001
+
+struct backlight_mxs_struct {
+	void __iomem *base;
+	struct device_d *hw_dev;	/* Pointer on hw backlight device */
+	struct backlight_dev backlight;
+	struct mxs_backlight_platformdata *pdata;
+};
+
+int backlight_mxs_set_brightness(struct backlight_dev *backlight, int percent)
+{
+	struct backlight_mxs_struct *backlight_mxs = backlight->priv;
+	struct mxs_backlight_platformdata *pdata = backlight_mxs->pdata;
+
+	if (percent > 100)
+		percent = 100;
+
+	writel(BF_PWM_ACTIVEn_INACTIVE((pdata->period * percent) / 200) |
+	       /* backlight intensity */
+	       BF_PWM_ACTIVEn_ACTIVE(0),
+	       backlight_mxs->base + HW_PWM_ACTIVEn(pdata->channel));
+	writel(BF_PWM_PERIODn_CDIV(pdata->cdiv) |	/* divide by 2^cdiv */
+	       BF_PWM_PERIODn_INACTIVE_STATE(2) |	/* low */
+	       BF_PWM_PERIODn_ACTIVE_STATE(3) |	/* high */
+	       BF_PWM_PERIODn_PERIOD(pdata->period - 1),
+	       backlight_mxs->base + HW_PWM_PERIODn(pdata->channel));
+	writel(1 << pdata->channel, backlight_mxs->base + SET);
+
+	return percent;
+}
+
+static int __init backlight_mxs_probe(struct device_d *pdev)
+{
+	struct backlight_mxs_struct *backlight_mxs;
+
+	backlight_mxs =
+	    kzalloc(sizeof(struct backlight_mxs_struct), GFP_KERNEL);
+
+	/* Setup backlight_mxs driver structure */
+	backlight_mxs->hw_dev = pdev;
+	backlight_mxs->pdata = pdev->platform_data;
+	backlight_mxs->hw_dev->priv = backlight_mxs;
+	backlight_mxs->base = dev_request_mem_region(pdev, 0);
+	backlight_mxs->backlight.set_brightness = backlight_mxs_set_brightness;
+	backlight_mxs->backlight.priv = backlight_mxs;
+
+	imx_enable_pwnclk();
+	/* Reset PWM module */
+	writel(HW_PWM_CTRL_SFTRST, backlight_mxs->base + SET);
+	udelay(100);
+	/* Remove CLKGATE and SFTRST */
+	writel(HW_PWM_CTRL_SFTRST, backlight_mxs->base + CLR);
+	udelay(100);
+	writel(HW_PWM_CTRL_CLKGATE, backlight_mxs->base + CLR);
+	udelay(100);
+
+	register_backlight(&backlight_mxs->backlight);
+
+	return 0;
+}
+
+static struct driver_d backlight_mxs_driver = {
+	.probe = backlight_mxs_probe,
+	.name = DRIVER_NAME,
+};
+
+static int __init backlight_mxs_init(void)
+{
+	return register_driver(&backlight_mxs_driver);
+}
+
+device_initcall(backlight_mxs_init);
-- 
1.7.4.1



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
