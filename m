Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tky4T-0001ie-6X
 for barebox@lists.infradead.org; Tue, 18 Dec 2012 14:23:16 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Tue, 18 Dec 2012 15:22:36 +0100
Message-Id: <1355840561-11552-15-git-send-email-jlu@pengutronix.de>
In-Reply-To: <1355840561-11552-1-git-send-email-jlu@pengutronix.de>
References: <1355840561-11552-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH 14/19] ARM omap hsmmc: Fix register offset
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

The hsmmc module has a 0x100 offset in its register space. The real
register space size for the module is 4K, so when we register the
device with the size 4k, we have to account for the offset in the
driver, not in the resource allocation.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/include/mach/omap3-devices.h |    6 +++---
 arch/arm/mach-omap/include/mach/omap4-silicon.h |   10 +++++-----
 drivers/mci/omap_hsmmc.c                        |    4 +++-
 3 files changed, 11 insertions(+), 9 deletions(-)

diff --git a/arch/arm/mach-omap/include/mach/omap3-devices.h b/arch/arm/mach-omap/include/mach/omap3-devices.h
index dd6826a..555e86f 100644
--- a/arch/arm/mach-omap/include/mach/omap3-devices.h
+++ b/arch/arm/mach-omap/include/mach/omap3-devices.h
@@ -53,17 +53,17 @@ static inline struct device_d *omap3_add_uart3(void)
 
 static inline struct device_d *omap3_add_mmc1(struct omap_hsmmc_platform_data *pdata)
 {
-	return omap_add_mmc(0, OMAP_MMC1_BASE + 0x100, pdata);
+	return omap_add_mmc(0, OMAP_MMC1_BASE, pdata);
 }
 
 static inline struct device_d *omap3_add_mmc2(struct omap_hsmmc_platform_data *pdata)
 {
-	return omap_add_mmc(1, OMAP_MMC2_BASE + 0x100, pdata);
+	return omap_add_mmc(1, OMAP_MMC2_BASE, pdata);
 }
 
 static inline struct device_d *omap3_add_mmc3(struct omap_hsmmc_platform_data *pdata)
 {
-	return omap_add_mmc(2, OMAP_MMC3_BASE + 0x100, pdata);
+	return omap_add_mmc(2, OMAP_MMC3_BASE, pdata);
 }
 
 static inline struct device_d *omap3_add_i2c1(void *pdata)
diff --git a/arch/arm/mach-omap/include/mach/omap4-silicon.h b/arch/arm/mach-omap/include/mach/omap4-silicon.h
index 5755856..b5d1eb9 100644
--- a/arch/arm/mach-omap/include/mach/omap4-silicon.h
+++ b/arch/arm/mach-omap/include/mach/omap4-silicon.h
@@ -95,11 +95,11 @@
 #define OMAP44XX_32KTIMER_BASE		(OMAP44XX_L4_WKUP_BASE + 0x4000)
 
 /* MMC */
-#define OMAP44XX_MMC1_BASE		(OMAP44XX_L4_PER_BASE + 0x09C100)
-#define OMAP44XX_MMC2_BASE		(OMAP44XX_L4_PER_BASE + 0x0B4100)
-#define OMAP44XX_MMC3_BASE		(OMAP44XX_L4_PER_BASE + 0x0AD100)
-#define OMAP44XX_MMC4_BASE		(OMAP44XX_L4_PER_BASE + 0x0D1100)
-#define OMAP44XX_MMC5_BASE		(OMAP44XX_L4_PER_BASE + 0x0D5100)
+#define OMAP44XX_MMC1_BASE		(OMAP44XX_L4_PER_BASE + 0x09C000)
+#define OMAP44XX_MMC2_BASE		(OMAP44XX_L4_PER_BASE + 0x0B4000)
+#define OMAP44XX_MMC3_BASE		(OMAP44XX_L4_PER_BASE + 0x0AD000)
+#define OMAP44XX_MMC4_BASE		(OMAP44XX_L4_PER_BASE + 0x0D1000)
+#define OMAP44XX_MMC5_BASE		(OMAP44XX_L4_PER_BASE + 0x0D5000)
 
 /* GPIO
  *
diff --git a/drivers/mci/omap_hsmmc.c b/drivers/mci/omap_hsmmc.c
index d1e4c36..6471ea6 100644
--- a/drivers/mci/omap_hsmmc.c
+++ b/drivers/mci/omap_hsmmc.c
@@ -175,6 +175,7 @@ struct omap_hsmmc {
 	struct mci_host		mci;
 	struct device_d		*dev;
 	struct hsmmc		*base;
+	void __iomem		*iobase;
 };
 
 #define to_hsmmc(mci)	container_of(mci, struct omap_hsmmc, mci)
@@ -575,7 +576,8 @@ static int omap_mmc_probe(struct device_d *dev)
 	hsmmc->mci.host_caps = MMC_MODE_4BIT | MMC_MODE_HS_52MHz | MMC_MODE_HS;
 	hsmmc->mci.hw_dev = dev;
 
-	hsmmc->base = dev_request_mem_region(dev, 0);
+	hsmmc->iobase = dev_request_mem_region(dev, 0);
+	hsmmc->base = hsmmc->iobase + 0x100;
 
 	hsmmc->mci.voltages = MMC_VDD_32_33 | MMC_VDD_33_34;
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
