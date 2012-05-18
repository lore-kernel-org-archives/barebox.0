Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SVJjR-00084W-Vb
 for barebox@lists.infradead.org; Fri, 18 May 2012 09:44:24 +0000
Received: by mail-lb0-f177.google.com with SMTP id gg6so2448980lbb.36
 for <barebox@lists.infradead.org>; Fri, 18 May 2012 02:44:21 -0700 (PDT)
From: Alexey Galakhov <agalakhov@gmail.com>
Date: Fri, 18 May 2012 15:43:29 +0600
Message-Id: <1337334211-12576-6-git-send-email-agalakhov@gmail.com>
In-Reply-To: <1337334211-12576-1-git-send-email-agalakhov@gmail.com>
References: <20120517175244.GH30400@pengutronix.de>
 <1337334211-12576-1-git-send-email-agalakhov@gmail.com>
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
Subject: [PATCHv4 5/7] S5P lowlevel clock init
To: barebox@lists.infradead.org
Cc: Alexey Galakhov <agalakhov@gmail.com>

Signed-off-by: Alexey Galakhov <agalakhov@gmail.com>
---
 arch/arm/mach-samsung/Makefile                   |    1 +
 arch/arm/mach-samsung/include/mach/s3c-generic.h |    4 ++
 arch/arm/mach-samsung/lowlevel-s5pcxx.c          |   61 ++++++++++++++++++++++
 3 files changed, 66 insertions(+)
 create mode 100644 arch/arm/mach-samsung/lowlevel-s5pcxx.c

diff --git a/arch/arm/mach-samsung/Makefile b/arch/arm/mach-samsung/Makefile
index 0b95e14..d7344c8 100644
--- a/arch/arm/mach-samsung/Makefile
+++ b/arch/arm/mach-samsung/Makefile
@@ -1,5 +1,6 @@
 obj-y += s3c-timer.o generic.o
 obj-lowlevel-$(CONFIG_ARCH_S3C24xx) += lowlevel-s3c24x0.o
+obj-lowlevel-$(CONFIG_ARCH_S5PCxx) += lowlevel-s5pcxx.o
 obj-$(CONFIG_ARCH_S3C24xx) += gpio-s3c24x0.o s3c24xx-clocks.o mem-s3c24x0.o
 obj-$(CONFIG_ARCH_S5PCxx) += gpio-s5pcxx.o clocks-s5pcxx.o
 obj-$(CONFIG_S3C_LOWLEVEL_INIT) += $(obj-lowlevel-y)
diff --git a/arch/arm/mach-samsung/include/mach/s3c-generic.h b/arch/arm/mach-samsung/include/mach/s3c-generic.h
index 9d40ef8..11b083d 100644
--- a/arch/arm/mach-samsung/include/mach/s3c-generic.h
+++ b/arch/arm/mach-samsung/include/mach/s3c-generic.h
@@ -37,3 +37,7 @@ unsigned s3c_get_uart_clk(unsigned src);
 uint32_t s3c24xx_get_memory_size(void);
 void s3c24xx_disable_second_sdram_bank(void);
 #endif
+
+#ifdef CONFIG_ARCH_S5PCxx
+void s5p_init_pll(void);
+#endif
diff --git a/arch/arm/mach-samsung/lowlevel-s5pcxx.c b/arch/arm/mach-samsung/lowlevel-s5pcxx.c
new file mode 100644
index 0000000..15afa47
--- /dev/null
+++ b/arch/arm/mach-samsung/lowlevel-s5pcxx.c
@@ -0,0 +1,61 @@
+/*
+ * Copyright (C) 2012 Alexey Galakhov
+ *
+ * Based on code from u-boot found somewhere on the web
+ * that seems to originate from Samsung
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
+#include <config.h>
+#include <common.h>
+#include <io.h>
+#include <init.h>
+#include <mach/s3c-iomap.h>
+#include <mach/s3c-clocks.h>
+#include <mach/s3c-generic.h>
+
+#ifdef CONFIG_S3C_PLL_INIT
+void  __bare_init s5p_init_pll(void)
+{
+    uint32_t reg;
+    int i;
+
+    /* Set Mux to FIN */
+    writel(0, S5P_CLK_SRC0);
+
+    writel(BOARD_APLL_LOCKTIME, S5P_xPLL_LOCK + S5P_APLL);
+
+    /* Disable PLL */
+    writel(0, S5P_xPLL_CON + S5P_APLL);
+    writel(0, S5P_xPLL_CON + S5P_MPLL);
+
+    /* Set up dividers */
+    reg = readl(S5P_CLK_DIV0);
+    reg &= ~(BOARD_CLK_DIV0_MASK);
+    reg |= (BOARD_CLK_DIV0_VAL);
+    writel(reg, S5P_CLK_DIV0);
+
+    /* Set up PLLs */
+    writel(BOARD_APLL_VAL, S5P_xPLL_CON + S5P_APLL);
+    writel(BOARD_MPLL_VAL, S5P_xPLL_CON + S5P_MPLL);
+    writel(BOARD_EPLL_VAL, S5P_xPLL_CON + S5P_EPLL);
+    writel(BOARD_VPLL_VAL, S5P_xPLL_CON + S5P_VPLL);
+
+    /* Wait for sync */
+    for (i = 0; i < 0x10000; ++i)
+        barrier();
+
+    reg = readl(S5P_CLK_SRC0);
+    reg |= 0x1111; /* switch MUX to PLL outputs */
+    writel(reg, S5P_CLK_SRC0);
+}
+#endif /* CONFIG_S3C_PLL_INIT */
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
