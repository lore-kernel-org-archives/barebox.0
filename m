Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SsWYE-0002hl-Jz
 for barebox@lists.infradead.org; Sat, 21 Jul 2012 10:05:01 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1SsWY7-0003vc-H0
 for barebox@lists.infradead.org; Sat, 21 Jul 2012 12:04:35 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jbe@pengutronix.de>) id 1SsWY6-0001VW-Hw
 for barebox@lists.infradead.org; Sat, 21 Jul 2012 12:04:34 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Sat, 21 Jul 2012 12:04:30 +0200
Message-Id: <1342865073-5209-6-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1342865073-5209-1-git-send-email-jbe@pengutronix.de>
References: <1342865073-5209-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 5/8] ARM/Samsung: add generic S3C6410 SoC specific functions
To: barebox@lists.infradead.org

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/mach-samsung/Makefile                     |    2 +-
 .../mach-samsung/include/mach/devices-s3c64xx.h    |   40 ++++++++++++
 arch/arm/mach-samsung/include/mach/s3c-generic.h   |   16 +++++
 arch/arm/mach-samsung/mem-s3c64xx.c                |   66 ++++++++++++++++++++
 4 files changed, 123 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/mach-samsung/include/mach/devices-s3c64xx.h
 create mode 100644 arch/arm/mach-samsung/mem-s3c64xx.c

diff --git a/arch/arm/mach-samsung/Makefile b/arch/arm/mach-samsung/Makefile
index 9a2484f..42a6708 100644
--- a/arch/arm/mach-samsung/Makefile
+++ b/arch/arm/mach-samsung/Makefile
@@ -2,5 +2,5 @@ obj-y += s3c-timer.o generic.o
 obj-lowlevel-$(CONFIG_ARCH_S3C24xx) += lowlevel-s3c24x0.o
 obj-lowlevel-$(CONFIG_ARCH_S5PCxx) += lowlevel-s5pcxx.o
 obj-$(CONFIG_ARCH_S3C24xx) += gpio-s3c24x0.o clocks-s3c24xx.o mem-s3c24x0.o
-obj-$(CONFIG_ARCH_S3C64xx) += gpio-s3c64xx.o clocks-s3c64xx.o
+obj-$(CONFIG_ARCH_S3C64xx) += gpio-s3c64xx.o clocks-s3c64xx.o mem-s3c64xx.o
 obj-$(CONFIG_S3C_LOWLEVEL_INIT) += $(obj-lowlevel-y)
diff --git a/arch/arm/mach-samsung/include/mach/devices-s3c64xx.h b/arch/arm/mach-samsung/include/mach/devices-s3c64xx.h
new file mode 100644
index 0000000..bcbee97
--- /dev/null
+++ b/arch/arm/mach-samsung/include/mach/devices-s3c64xx.h
@@ -0,0 +1,40 @@
+/*
+ * Copyright 2012 Juergen Beisert
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
+#ifndef INCLUDE_MACH_DEVICES_S3C64XX_H
+# define INCLUDE_MACH_DEVICES_S3C64XX_H
+
+#include <driver.h>
+#include <mach/s3c64xx-iomap.h>
+
+static inline void s3c64xx_add_uart1(void)
+{
+	add_generic_device("s3c_serial", DEVICE_ID_DYNAMIC, NULL, S3C_UART1_BASE,
+			S3C_UART1_SIZE, IORESOURCE_MEM, NULL);
+}
+
+static inline void s3c64xx_add_uart2(void)
+{
+	add_generic_device("s3c_serial", DEVICE_ID_DYNAMIC, NULL, S3C_UART2_BASE,
+			S3C_UART2_SIZE, IORESOURCE_MEM, NULL);
+}
+
+static inline void s3c64xx_add_uart3(void)
+{
+	add_generic_device("s3c_serial", DEVICE_ID_DYNAMIC, NULL, S3C_UART3_BASE,
+			S3C_UART3_SIZE, IORESOURCE_MEM, NULL);
+}
+
+#endif /* INCLUDE_MACH_DEVICES_S3C64XX_H */
diff --git a/arch/arm/mach-samsung/include/mach/s3c-generic.h b/arch/arm/mach-samsung/include/mach/s3c-generic.h
index 11b083d..b4a9e69 100644
--- a/arch/arm/mach-samsung/include/mach/s3c-generic.h
+++ b/arch/arm/mach-samsung/include/mach/s3c-generic.h
@@ -41,3 +41,19 @@ void s3c24xx_disable_second_sdram_bank(void);
 #ifdef CONFIG_ARCH_S5PCxx
 void s5p_init_pll(void);
 #endif
+
+#ifdef CONFIG_ARCH_S3C64xx
+uint32_t s3c_get_epllclk(void);
+unsigned s3c_get_hsmmc_clk(int);
+void s3c_set_hsmmc_clk(int, int, unsigned);
+unsigned s3c6410_get_memory_size(void);
+struct s3c6410_chipselect {
+	unsigned adr_setup_t; /* in [ns] */
+	unsigned access_setup_t; /* in [ns] */
+	unsigned access_t; /* in [ns] */
+	unsigned cs_hold_t; /* in [ns] */
+	unsigned adr_hold_t; /* in [ns] */
+	unsigned char width; /* 8 or 16 */
+};
+int s3c6410_setup_chipselect(int, const struct s3c6410_chipselect*);
+#endif
diff --git a/arch/arm/mach-samsung/mem-s3c64xx.c b/arch/arm/mach-samsung/mem-s3c64xx.c
new file mode 100644
index 0000000..aca2cf5
--- /dev/null
+++ b/arch/arm/mach-samsung/mem-s3c64xx.c
@@ -0,0 +1,66 @@
+/*
+ * Copyright (C) 2012 Juergen Beisert
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
+ */
+
+#include <common.h>
+#include <errno.h>
+#include <io.h>
+#include <mach/s3c-iomap.h>
+#include <mach/s3c-generic.h>
+
+#define S3C_DRAMC_CHIP_0_CFG (S3C_DRAMC + 0x200)
+
+/* note: this routine honors the first memory bank only */
+unsigned s3c6410_get_memory_size(void)
+{
+	unsigned reg = readl(S3C_DRAMC_CHIP_0_CFG) & 0xff;
+
+	return ~(reg << 24) + 1;
+}
+
+/* configure the timing of one of the available external chip select lines */
+int s3c6410_setup_chipselect(int no, const struct s3c6410_chipselect *c)
+{
+	unsigned per_t = 1000000000 / s3c_get_hclk();
+	unsigned tacs, tcos, tacc, tcoh, tcah, shift;
+	uint32_t reg;
+
+	/* start of cycle to chip select assertion (= address/data setup) */
+	tacs = DIV_ROUND_UP(c->adr_setup_t, per_t);
+	/* start of CS to read/write assertion (= access setup) */
+	tcos = DIV_ROUND_UP(c->access_setup_t, per_t);
+	/* length of read/write assertion (= access lenght) */
+	tacc = DIV_ROUND_UP(c->access_t, per_t) - 1;
+	/* CS hold after access is finished */
+	tcoh = DIV_ROUND_UP(c->cs_hold_t, per_t);
+	/* adress/data hold after CS is deasserted */
+	tcah = DIV_ROUND_UP(c->adr_hold_t, per_t);
+
+	shift = no * 4;
+	reg = readl(S3C_SROM_BW) & ~(0xf << shift);
+	if (c->width == 16)
+		reg |= 0x1 << shift;
+	writel(reg, S3C_SROM_BW);
+#ifdef DEBUG
+	if (tacs > 15 || tcos > 15 || tacc > 31 || tcoh > 15 || tcah > 15) {
+		pr_err("At least one of the timings are invalid\n");
+		return -EINVAL;
+	}
+	pr_info("Will write 0x%08X\n", tacs << 28 | tcos << 24 | tacc << 16 |
+					tcoh << 12 | tcah << 8);
+#endif
+	writel(tacs << 28 | tcos << 24 | tacc << 16 | tcoh << 12 | tcah << 8,
+						S3C_SROM_BC0 + shift);
+
+	return 0;
+}
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
