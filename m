Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fiJy5-00053F-T0
 for barebox@lists.infradead.org; Wed, 25 Jul 2018 13:36:55 +0000
From: Roland Hieber <r.hieber@pengutronix.de>
Date: Wed, 25 Jul 2018 15:36:10 +0200
Message-Id: <20180725133618.1510-6-r.hieber@pengutronix.de>
In-Reply-To: <20180725133618.1510-1-r.hieber@pengutronix.de>
References: <20180725133618.1510-1-r.hieber@pengutronix.de>
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
Subject: [PATCH 05/13] ARM: MXS: i.MX28: add autodetection of memory banks
To: barebox@lists.infradead.org
Cc: Roland Hieber <r.hieber@pengutronix.de>

If the prebootloader has set up the EMI controller correctly, we can
autodetect the size of available RAM by looking at the respective
configuration registers.

Signed-off-by: Roland Hieber <r.hieber@pengutronix.de>
---
 arch/arm/mach-mxs/Makefile    |  2 +-
 arch/arm/mach-mxs/mem-imx28.c | 39 +++++++++++++++++++++++++++++++++++
 2 files changed, 40 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/mach-mxs/mem-imx28.c

diff --git a/arch/arm/mach-mxs/Makefile b/arch/arm/mach-mxs/Makefile
index e3843368c2..0761f909a1 100644
--- a/arch/arm/mach-mxs/Makefile
+++ b/arch/arm/mach-mxs/Makefile
@@ -1,7 +1,7 @@
 obj-y += imx.o iomux-imx.o power.o
 pbl-y += iomux-imx.o
 obj-$(CONFIG_ARCH_IMX23) += clocksource-imx23.o usb-imx23.o soc-imx23.o
-obj-$(CONFIG_ARCH_IMX28) += clocksource-imx28.o usb-imx28.o soc-imx28.o
+obj-$(CONFIG_ARCH_IMX28) += clocksource-imx28.o usb-imx28.o soc-imx28.o mem-imx28.o
 obj-$(CONFIG_MXS_OCOTP) += ocotp.o
 obj-$(CONFIG_MXS_CMD_BCB) += bcb.o
 pbl-y += power-init.o mem-init.o lradc-init.o
diff --git a/arch/arm/mach-mxs/mem-imx28.c b/arch/arm/mach-mxs/mem-imx28.c
new file mode 100644
index 0000000000..e827e0906f
--- /dev/null
+++ b/arch/arm/mach-mxs/mem-imx28.c
@@ -0,0 +1,39 @@
+/*
+ * Copyright (C) 2018 Pengutronix, Roland Hieber <r.hieber@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#include <init.h>
+#include <asm/memory.h>
+#include <mach/imx28-regs.h>
+#include <printk.h>
+
+static int mx28_add_mem(void)
+{
+	if (!of_machine_is_compatible("fsl,imx28"))
+		return 0;
+
+	int * sdramc = (int *)IMX_SDRAMC_BASE;
+
+	uint8_t columns = 12 - ((sdramc[29] >> 16) & 0b111);
+	uint8_t rows    = 15 - ((sdramc[29] >>  8) & 0b111);
+	uint8_t banks   =      ((sdramc[31] >> 16) & 0b1)  ?  8  :  4;
+	uint8_t width   = sizeof (unsigned short);
+
+	uint32_t size = (1 << columns) * (1 << rows) * banks * width;
+	pr_info("i.MX28: detected %d cols, %d rows, %d banks = %d MiB of RAM\n",
+			columns, rows, banks, size / 1024 / 1024);
+
+	arm_add_mem_device("ram0", IMX_MEMORY_BASE, size);
+
+	return 0;
+}
+mem_initcall(mx28_add_mem);
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
