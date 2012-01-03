Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Ri5L9-0003xd-K4
 for barebox@lists.infradead.org; Tue, 03 Jan 2012 14:27:48 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Tue,  3 Jan 2012 15:27:36 +0100
Message-Id: <1325600856-3020-1-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH] boards: mx23evk: add MMC support
To: barebox@lists.infradead.org

Using SSP1 since this is the default configuration.

Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---
 arch/arm/boards/freescale-mx23-evk/mx23-evk.c |   31 +++++++++++++++++++++++++
 1 files changed, 31 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/freescale-mx23-evk/mx23-evk.c b/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
index 47f6769..20d49fd 100644
--- a/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
+++ b/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
@@ -1,5 +1,6 @@
 /*
  * (C) Copyright 2010 Juergen Beisert - Pengutronix
+ * (C) Copyright 2011 Wolfram Sang - Pengutronix
  *
  * This program is free software; you can redistribute it and/or
  * modify it under the terms of the GNU General Public License as
@@ -21,9 +22,28 @@
 #include <init.h>
 #include <gpio.h>
 #include <environment.h>
+#include <mci.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
 #include <mach/imx-regs.h>
+#include <mach/clock.h>
+#include <mach/mci.h>
+
+static struct mxs_mci_platform_data mci_pdata = {
+	.caps = MMC_MODE_4BIT,
+	.voltages = MMC_VDD_32_33 | MMC_VDD_33_34,	/* fixed to 3.3 V */
+};
+
+static const uint32_t pad_setup[] = {
+	/* SD card interface */
+	SSP1_DATA0 | PULLUP(1),
+	SSP1_DATA1 | PULLUP(1),
+	SSP1_DATA2 | PULLUP(1),
+	SSP1_DATA3 | PULLUP(1),
+	SSP1_SCK,
+	SSP1_CMD | PULLUP(1),
+	SSP1_DETECT | PULLUP(1),
+};
 
 static int mx23_evk_mem_init(void)
 {
@@ -35,9 +55,20 @@ mem_initcall(mx23_evk_mem_init);
 
 static int mx23_evk_devices_init(void)
 {
+	int i;
+
+	/* initizalize gpios */
+	for (i = 0; i < ARRAY_SIZE(pad_setup); i++)
+		imx_gpio_mode(pad_setup[i]);
+
 	armlinux_set_bootparams((void*)IMX_MEMORY_BASE + 0x100);
 	armlinux_set_architecture(MACH_TYPE_MX23EVK);
 
+	imx_set_ioclk(480000000); /* enable IOCLK to run at the PLL frequency */
+	imx_set_sspclk(0, 100000000, 1);
+	add_generic_device("mxs_mci", 0, NULL, IMX_SSP1_BASE, 0,
+			   IORESOURCE_MEM, &mci_pdata);
+
 	return 0;
 }
 
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
