Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tgbaz-00081S-3X
 for barebox@lists.infradead.org; Thu, 06 Dec 2012 13:34:36 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  6 Dec 2012 14:34:30 +0100
Message-Id: <1354800870-28385-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1354800870-28385-1-git-send-email-s.hauer@pengutronix.de>
References: <1354800870-28385-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 9/9] ARM i.MX5: Add SATA support
To: barebox@lists.infradead.org

Add the convenience wrappers for registering the SATA device.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/clk-imx5.c                   |    1 +
 arch/arm/mach-imx/include/mach/devices-imx53.h |    5 +++++
 arch/arm/mach-imx/include/mach/imx53-regs.h    |    2 ++
 3 files changed, 8 insertions(+)

diff --git a/arch/arm/mach-imx/clk-imx5.c b/arch/arm/mach-imx/clk-imx5.c
index 050842d..1ff6859 100644
--- a/arch/arm/mach-imx/clk-imx5.c
+++ b/arch/arm/mach-imx/clk-imx5.c
@@ -280,6 +280,7 @@ int __init mx53_clocks_init(void __iomem *regs, unsigned long rate_ckil, unsigne
 	clkdev_add_physbase(clks[esdhc_c_s], MX53_ESDHC2_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[esdhc_b_podf], MX53_ESDHC3_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[esdhc_d_s], MX53_ESDHC4_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ahb], MX53_SATA_BASE_ADDR, NULL);
 
 	return 0;
 }
diff --git a/arch/arm/mach-imx/include/mach/devices-imx53.h b/arch/arm/mach-imx/include/mach/devices-imx53.h
index 5f967ea..a49678e 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx53.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx53.h
@@ -82,3 +82,8 @@ static inline struct device_d *imx53_add_nand(struct imx_nand_platform_data *pda
 
 	return dev;
 }
+
+static inline struct device_d *imx53_add_sata(void)
+{
+	return add_generic_device("imx53-sata", 0, NULL, MX53_SATA_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
+}
diff --git a/arch/arm/mach-imx/include/mach/imx53-regs.h b/arch/arm/mach-imx/include/mach/imx53-regs.h
index 8025e97..473b942 100644
--- a/arch/arm/mach-imx/include/mach/imx53-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx53-regs.h
@@ -3,6 +3,8 @@
 
 #define MX53_IROM_BASE_ADDR	0x0
 
+#define MX53_SATA_BASE_ADDR	0x10000000
+
 /*
  * SPBA global module enabled #0
  */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
