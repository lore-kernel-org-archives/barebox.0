Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Spl7A-0002ep-VW
 for barebox@lists.infradead.org; Fri, 13 Jul 2012 19:01:48 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1Spl72-0008Ey-Va
 for barebox@lists.infradead.org; Fri, 13 Jul 2012 21:01:13 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jbe@pengutronix.de>) id 1Spl72-0005Vd-QL
 for barebox@lists.infradead.org; Fri, 13 Jul 2012 21:01:12 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 13 Jul 2012 21:01:08 +0200
Message-Id: <1342206070-29698-17-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1342206070-29698-1-git-send-email-jbe@pengutronix.de>
References: <1342206070-29698-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 16/18] ARM/Samsung: add generic S3C6410 SoC specific functions
To: barebox@lists.infradead.org

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/mach-samsung/Makefile                   |    2 +-
 arch/arm/mach-samsung/include/mach/s3c-generic.h |   13 +++++
 arch/arm/mach-samsung/mem-s3c64xx.c              |   65 ++++++++++++++++++++++
 3 files changed, 79 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/mach-samsung/mem-s3c64xx.c

diff --git a/arch/arm/mach-samsung/Makefile b/arch/arm/mach-samsung/Makefile
index 5187170..9402289 100644
--- a/arch/arm/mach-samsung/Makefile
+++ b/arch/arm/mach-samsung/Makefile
@@ -3,6 +3,6 @@ obj-lowlevel-$(CONFIG_ARCH_S3C24xx) += lowlevel-s3c24x0.o
 obj-lowlevel-$(CONFIG_ARCH_S3C64xx) += lowlevel-s3c64x0.o
 obj-lowlevel-$(CONFIG_ARCH_S5PCxx) += lowlevel-s5pcxx.o
 obj-$(CONFIG_ARCH_S3C24xx) += gpio-s3c24x0.o clocks-s3c24xx.o mem-s3c24x0.o
-obj-$(CONFIG_ARCH_S3C64xx) += gpio-s3c64xx.o clocks-s3c64xx.o
+obj-$(CONFIG_ARCH_S3C64xx) += gpio-s3c64xx.o clocks-s3c64xx.o mem-s3c64xx.o
 obj-$(CONFIG_ARCH_S5PCxx) += gpio-s5pcxx.o clocks-s5pcxx.o mem-s5pcxx.o
 obj-$(CONFIG_S3C_LOWLEVEL_INIT) += $(obj-lowlevel-y)
diff --git a/arch/arm/mach-samsung/include/mach/s3c-generic.h b/arch/arm/mach-samsung/include/mach/s3c-generic.h
index 329c2b4..42e8c5f 100644
--- a/arch/arm/mach-samsung/include/mach/s3c-generic.h
+++ b/arch/arm/mach-samsung/include/mach/s3c-generic.h
@@ -47,3 +47,16 @@ void s5p_init_dram_bank_lpddr2(phys_addr_t base, uint32_t mc0, uint32_t mc1, int
 void s5p_init_dram_bank_ddr2(phys_addr_t base, uint32_t mc0, uint32_t mc1, int bus16);
 uint32_t s5p_get_memory_size(void);
 #endif
+
+#ifdef CONFIG_ARCH_S3C64xx
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
index 0000000..f312fb2
--- /dev/null
+++ b/arch/arm/mach-samsung/mem-s3c64xx.c
@@ -0,0 +1,65 @@
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
