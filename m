Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RcaIL-0004YG-Cy
 for barebox@lists.infradead.org; Mon, 19 Dec 2011 10:18:10 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1RcaIC-0001Io-69
 for barebox@lists.infradead.org; Mon, 19 Dec 2011 11:18:00 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <sha@pengutronix.de>) id 1RcaIC-0003EN-51
 for barebox@lists.infradead.org; Mon, 19 Dec 2011 11:18:00 +0100
Date: Mon, 19 Dec 2011 11:18:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111219101800.GI27267@pengutronix.de>
References: <1324133529-2036-1-git-send-email-s.hauer@pengutronix.de>
 <1324133529-2036-2-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1324133529-2036-2-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 1/9] ARM i.MX5: prepare to add a imx51_lowlevel_init
To: barebox@lists.infradead.org


Here is an updated version, with imx5.c added this time.

Sascha

8<----------------------------------------------------

ARM i.MX5: prepare to add a imx51_lowlevel_init

- move code which can be shared between i.MX53 and i.MX51
  to a common file
- rename mx53_init_lowlevel to imx53_init_lowlevel

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/freescale-mx53-loco/board.c |    2 +-
 arch/arm/boards/freescale-mx53-smd/board.c  |    2 +-
 arch/arm/mach-imx/Makefile                  |    2 +-
 arch/arm/mach-imx/imx5.c                    |   58 +++++++++++++++++++++++++
 arch/arm/mach-imx/imx53.c                   |   61 +++-----------------------
 arch/arm/mach-imx/include/mach/imx5.h       |    8 ++++
 arch/arm/mach-imx/include/mach/imx53.h      |    6 ---
 7 files changed, 76 insertions(+), 63 deletions(-)
 create mode 100644 arch/arm/mach-imx/imx5.c
 create mode 100644 arch/arm/mach-imx/include/mach/imx5.h
 delete mode 100644 arch/arm/mach-imx/include/mach/imx53.h

diff --git a/arch/arm/boards/freescale-mx53-loco/board.c b/arch/arm/boards/freescale-mx53-loco/board.c
index aec2254..8d1cbf5 100644
--- a/arch/arm/boards/freescale-mx53-loco/board.c
+++ b/arch/arm/boards/freescale-mx53-loco/board.c
@@ -34,7 +34,7 @@
 #include <mach/gpio.h>
 #include <mach/imx-nand.h>
 #include <mach/iim.h>
-#include <mach/imx53.h>
+#include <mach/imx5.h>
 
 #include <asm/armlinux.h>
 #include <io.h>
diff --git a/arch/arm/boards/freescale-mx53-smd/board.c b/arch/arm/boards/freescale-mx53-smd/board.c
index 325458e..d14c1f2 100644
--- a/arch/arm/boards/freescale-mx53-smd/board.c
+++ b/arch/arm/boards/freescale-mx53-smd/board.c
@@ -34,7 +34,7 @@
 #include <mach/gpio.h>
 #include <mach/imx-nand.h>
 #include <mach/iim.h>
-#include <mach/imx53.h>
+#include <mach/imx5.h>
 
 #include <asm/armlinux.h>
 #include <io.h>
diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index 0b3b781..38de346 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -6,7 +6,7 @@ obj-$(CONFIG_ARCH_IMX27) += speed-imx27.o imx27.o iomux-v1.o
 obj-$(CONFIG_ARCH_IMX31) += speed-imx31.o imx31.o iomux-v2.o
 obj-$(CONFIG_ARCH_IMX35) += speed-imx35.o imx35.o iomux-v3.o
 obj-$(CONFIG_ARCH_IMX51) += speed-imx51.o imx51.o iomux-v3.o
-obj-$(CONFIG_ARCH_IMX53) += speed-imx53.o imx53.o iomux-v3.o
+obj-$(CONFIG_ARCH_IMX53) += speed-imx53.o imx53.o iomux-v3.o imx5.o
 obj-$(CONFIG_IMX_CLKO)	+= clko.o
 obj-$(CONFIG_IMX_IIM)	+= iim.o
 obj-$(CONFIG_NAND_IMX) += nand.o
diff --git a/arch/arm/mach-imx/imx5.c b/arch/arm/mach-imx/imx5.c
new file mode 100644
index 0000000..9ec78b2
--- /dev/null
+++ b/arch/arm/mach-imx/imx5.c
@@ -0,0 +1,58 @@
+#include <common.h>
+#include <io.h>
+#include <sizes.h>
+#include <mach/imx5.h>
+#include <mach/clock-imx51_53.h>
+
+void imx5_setup_pll(void __iomem *base, int freq, u32 op, u32 mfd, u32 mfn)
+{
+	u32 r;
+
+	/*
+	 * If freq < 300MHz, we need to set dpdck0_2_en to 0
+	 */
+	r = 0x00000232;
+	if (freq >= 300)
+		r |= 0x1000;
+
+	writel(r, base + MX5_PLL_DP_CTL);
+
+	writel(0x2, base + MX5_PLL_DP_CONFIG);
+
+	writel(op, base + MX5_PLL_DP_OP);
+	writel(op, base + MX5_PLL_DP_HFS_OP);
+
+	writel(mfd, base + MX5_PLL_DP_MFD);
+	writel(mfd, base + MX5_PLL_DP_HFS_MFD);
+
+	writel(mfn, base + MX5_PLL_DP_MFN);
+	writel(mfn, base + MX5_PLL_DP_HFS_MFN);
+
+	writel(0x00001232, base + MX5_PLL_DP_CTL);
+
+	while (!(readl(base + MX5_PLL_DP_CTL) & 1));
+}
+
+void imx5_init_lowlevel(void)
+{
+	u32 r;
+
+	/* ARM errata ID #468414 */
+	__asm__ __volatile__("mrc 15, 0, %0, c1, c0, 1":"=r"(r));
+	r |= (1 << 5);    /* enable L1NEON bit */
+	r &= ~(1 << 1);   /* explicitly disable L2 cache */
+	__asm__ __volatile__("mcr 15, 0, %0, c1, c0, 1" : : "r"(r));
+
+        /* reconfigure L2 cache aux control reg */
+	r = 0xc0 |		/* tag RAM */
+		0x4 |		/* data RAM */
+		(1 << 24) |	/* disable write allocate delay */
+		(1 << 23) |	/* disable write allocate combine */
+		(1 << 22);	/* disable write allocate */
+
+	__asm__ __volatile__("mcr 15, 1, %0, c9, c0, 2" : : "r"(r));
+
+	__asm__ __volatile__("mrc 15, 0, %0, c1, c0, 1":"=r"(r));
+	r |= 1 << 1; 	/* enable L2 cache */
+	__asm__ __volatile__("mcr 15, 0, %0, c1, c0, 1" : : "r"(r));
+}
diff --git a/arch/arm/mach-imx/imx53.c b/arch/arm/mach-imx/imx53.c
index 64bec86..2fb18e7 100644
--- a/arch/arm/mach-imx/imx53.c
+++ b/arch/arm/mach-imx/imx53.c
@@ -19,6 +19,7 @@
 #include <common.h>
 #include <io.h>
 #include <sizes.h>
+#include <mach/imx5.h>
 #include <mach/imx53-regs.h>
 #include <mach/clock-imx51_53.h>
 
@@ -45,63 +46,17 @@ static int imx53_init(void)
 }
 coredevice_initcall(imx53_init);
 
-static void setup_pll(void __iomem *base, int freq, u32 op, u32 mfd, u32 mfn)
-{
-	u32 r;
-
-	/*
-	 * If freq < 300MHz, we need to set dpdck0_2_en to 0
-	 */
-	r = 0x00000232;
-	if (freq >= 300)
-		r |= 0x1000;
-
-	writel(r, base + MX5_PLL_DP_CTL);
-
-	writel(0x2, base + MX5_PLL_DP_CONFIG);
-
-	writel(op, base + MX5_PLL_DP_OP);
-	writel(op, base + MX5_PLL_DP_HFS_OP);
-
-	writel(mfd, base + MX5_PLL_DP_MFD);
-	writel(mfd, base + MX5_PLL_DP_HFS_MFD);
-
-	writel(mfn, base + MX5_PLL_DP_MFN);
-	writel(mfn, base + MX5_PLL_DP_HFS_MFN);
+#define setup_pll_1000(base)	imx5_setup_pll((base), 1000, ((10 << 4) + ((1 - 1) << 0)), (12 - 1), 5)
+#define setup_pll_400(base)	imx5_setup_pll((base), 400, ((8 << 4) + ((2 - 1)  << 0)), (3 - 1), 1)
+#define setup_pll_455(base)	imx5_setup_pll((base), 455, ((9 << 4) + ((2 - 1)  << 0)), (48 - 1), 23)
+#define setup_pll_216(base)	imx5_setup_pll((base), 216, ((8 << 4) + ((2 - 1)  << 0)), (1 - 1), 1)
 
-	writel(0x00001232, base + MX5_PLL_DP_CTL);
-
-	while (!(readl(base + MX5_PLL_DP_CTL) & 1));
-}
-
-#define setup_pll_1000(base)	setup_pll((base), 1000, ((10 << 4) + ((1 - 1) << 0)), (12 - 1), 5)
-#define setup_pll_400(base)	setup_pll((base), 400, ((8 << 4) + ((2 - 1)  << 0)), (3 - 1), 1)
-#define setup_pll_455(base)	setup_pll((base), 455, ((9 << 4) + ((2 - 1)  << 0)), (48 - 1), 23)
-#define setup_pll_216(base)	setup_pll((base), 216, ((8 << 4) + ((2 - 1)  << 0)), (1 - 1), 1)
-
-int mx53_init_lowlevel(void)
+void imx53_init_lowlevel(void)
 {
 	void __iomem *ccm = (void __iomem *)MX53_CCM_BASE_ADDR;
 	u32 r;
 
-	/* ARM errata ID #468414 */
-	__asm__ __volatile__("mrc 15, 0, %0, c1, c0, 1":"=r"(r));
-	r |= (1 << 5);    /* enable L1NEON bit */
-	r &= ~(1 << 1);   /* explicitly disable L2 cache */
-	__asm__ __volatile__("mcr 15, 0, %0, c1, c0, 1" : : "r"(r));
-
-        /* reconfigure L2 cache aux control reg */
-	r = 0xc0 |		/* tag RAM */
-		0x4 |		/* data RAM */
-		(1 << 24) |	/* disable write allocate delay */
-		(1 << 23) |	/* disable write allocate combine */
-		(1 << 22);	/* disable write allocate */
-
-	__asm__ __volatile__("mcr 15, 1, %0, c9, c0, 2" : : "r"(r));
-
-	__asm__ __volatile__("mrc 15, 0, %0, c1, c0, 1":"=r"(r));
-	r |= 1 << 1; 	/* enable L2 cache */
-	__asm__ __volatile__("mcr 15, 0, %0, c1, c0, 1" : : "r"(r));
+	imx5_init_lowlevel();
 
 	/*
 	 * AIPS setup - Only setup MPROTx registers.
@@ -195,6 +150,4 @@ int mx53_init_lowlevel(void)
 	writel(0xffffffff, ccm + MX53_CCM_CCGR7);
 
 	writel(0, ccm + MX5_CCM_CCDR);
-
-	return 0;
 }
diff --git a/arch/arm/mach-imx/include/mach/imx5.h b/arch/arm/mach-imx/include/mach/imx5.h
new file mode 100644
index 0000000..d034082
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/imx5.h
@@ -0,0 +1,8 @@
+#ifndef __MACH_MX5_H
+#define __MACH_MX5_H
+
+void imx53_init_lowlevel(void);
+void imx5_setup_pll(void __iomem *base, int freq, u32 op, u32 mfd, u32 mfn);
+void imx5_init_lowlevel(void);
+
+#endif /* __MACH_MX53_H */
diff --git a/arch/arm/mach-imx/include/mach/imx53.h b/arch/arm/mach-imx/include/mach/imx53.h
deleted file mode 100644
index b1f30d3..0000000
--- a/arch/arm/mach-imx/include/mach/imx53.h
+++ /dev/null
@@ -1,6 +0,0 @@
-#ifndef __MACH_MX53_H
-#define __MACH_MX53_H
-
-int mx53_init_lowlevel(void);
-
-#endif /* __MACH_MX53_H */
-- 
1.7.7.3

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
