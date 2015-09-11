Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZaHqY-0000dp-K8
 for barebox@lists.infradead.org; Fri, 11 Sep 2015 06:30:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 11 Sep 2015 08:29:38 +0200
Message-Id: <1441952979-6202-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] ARM: i.MX6: Add i2c4 clock support
To: Barebox List <barebox@lists.infradead.org>

The clkdev for i2c4 was missing. Add it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/clk-imx6.c               | 1 +
 arch/arm/mach-imx/include/mach/imx6-regs.h | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/arm/mach-imx/clk-imx6.c b/arch/arm/mach-imx/clk-imx6.c
index 3bc5949..f30665a 100644
--- a/arch/arm/mach-imx/clk-imx6.c
+++ b/arch/arm/mach-imx/clk-imx6.c
@@ -445,6 +445,7 @@ static int imx6_ccm_probe(struct device_d *dev)
 	clkdev_add_physbase(clks[ipg_per], MX6_I2C1_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[ipg_per], MX6_I2C2_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[ipg_per], MX6_I2C3_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg_per], MX6_I2C4_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[ahb], MX6_SATA_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[usbphy1], MX6_USBPHY1_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[usbphy2], MX6_USBPHY2_BASE_ADDR, NULL);
diff --git a/arch/arm/mach-imx/include/mach/imx6-regs.h b/arch/arm/mach-imx/include/mach/imx6-regs.h
index 68be43c..947ea34 100644
--- a/arch/arm/mach-imx/include/mach/imx6-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx6-regs.h
@@ -89,6 +89,7 @@
 #define MX6_I2C1_BASE_ADDR              (MX6_AIPS2_OFF_BASE_ADDR + 0x20000)
 #define MX6_I2C2_BASE_ADDR              (MX6_AIPS2_OFF_BASE_ADDR + 0x24000)
 #define MX6_I2C3_BASE_ADDR              (MX6_AIPS2_OFF_BASE_ADDR + 0x28000)
+#define MX6_I2C4_BASE_ADDR              (MX6_AIPS2_OFF_BASE_ADDR + 0x78000)
 #define MX6_ROMCP_BASE_ADDR             (MX6_AIPS2_OFF_BASE_ADDR + 0x2C000)
 #define MX6_MMDC_P0_BASE_ADDR           (MX6_AIPS2_OFF_BASE_ADDR + 0x30000)
 #define MX6_MMDC_P1_BASE_ADDR           (MX6_AIPS2_OFF_BASE_ADDR + 0x34000)
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
