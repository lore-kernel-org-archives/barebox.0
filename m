Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TfTOV-0006Rv-EU
 for barebox@lists.infradead.org; Mon, 03 Dec 2012 10:37:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  3 Dec 2012 11:36:56 +0100
Message-Id: <1354531016-22069-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1354531016-22069-1-git-send-email-s.hauer@pengutronix.de>
References: <1354531016-22069-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] ARM i.MX: Add i.MX51 PATA device support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/clk-imx5.c                   |    1 +
 arch/arm/mach-imx/devices.c                    |    5 +++++
 arch/arm/mach-imx/include/mach/devices-imx51.h |    5 +++++
 arch/arm/mach-imx/include/mach/devices.h       |    2 +-
 4 files changed, 12 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/clk-imx5.c b/arch/arm/mach-imx/clk-imx5.c
index 050842d..22ca21a 100644
--- a/arch/arm/mach-imx/clk-imx5.c
+++ b/arch/arm/mach-imx/clk-imx5.c
@@ -219,6 +219,7 @@ int __init mx51_clocks_init(void __iomem *regs, unsigned long rate_ckil, unsigne
 	clkdev_add_physbase(clks[esdhc_b_podf], MX51_MMC_SDHC2_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[esdhc_c_s], MX51_MMC_SDHC3_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[esdhc_d_s], MX51_MMC_SDHC4_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[ipg], MX51_ATA_BASE_ADDR, NULL);
 
 	return 0;
 }
diff --git a/arch/arm/mach-imx/devices.c b/arch/arm/mach-imx/devices.c
index 4ee4e6c..d82fbf7 100644
--- a/arch/arm/mach-imx/devices.c
+++ b/arch/arm/mach-imx/devices.c
@@ -67,3 +67,8 @@ struct device_d *imx_add_kpp(void *base, struct matrix_keymap_data *pdata)
 {
        return imx_add_device("imx-kpp", -1, base, 0x1000, pdata);
 }
+
+struct device_d *imx_add_pata(void *base)
+{
+	return imx_add_device("imx-pata", -1, base, 0x1000, NULL);
+}
diff --git a/arch/arm/mach-imx/include/mach/devices-imx51.h b/arch/arm/mach-imx/include/mach/devices-imx51.h
index 8ee3c17..95497fa 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx51.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx51.h
@@ -93,3 +93,8 @@ static inline struct device_d *imx51_add_kpp(struct matrix_keymap_data *pdata)
 {
 	return imx_add_kpp((void *)MX51_KPP_BASE_ADDR, pdata);
 }
+
+static inline struct device_d *imx51_add_pata(void)
+{
+	return imx_add_pata((void *)MX51_ATA_BASE_ADDR);
+}
diff --git a/arch/arm/mach-imx/include/mach/devices.h b/arch/arm/mach-imx/include/mach/devices.h
index f7824f5..016778a 100644
--- a/arch/arm/mach-imx/include/mach/devices.h
+++ b/arch/arm/mach-imx/include/mach/devices.h
@@ -20,4 +20,4 @@ struct device_d *imx_add_ipufb(void *base, struct imx_ipu_fb_platform_data *pdat
 struct device_d *imx_add_mmc(void *base, int id, void *pdata);
 struct device_d *imx_add_esdhc(void *base, int id, struct esdhc_platform_data *pdata);
 struct device_d *imx_add_kpp(void *base, struct matrix_keymap_data *pdata);
-
+struct device_d *imx_add_pata(void *base);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
