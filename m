Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RvUEO-000646-TJ
 for barebox@lists.infradead.org; Thu, 09 Feb 2012 13:40:14 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  9 Feb 2012 14:39:58 +0100
Message-Id: <1328794798-17699-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1328794798-17699-1-git-send-email-s.hauer@pengutronix.de>
References: <1328794798-17699-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/5] mci i.MX esdhc: make 8bit modes platform dependent
To: barebox@lists.infradead.org

Whether the controller works in 8bit mode is not only dependent
on the controller but also on the board having wired up 8 data
lines, so put a capabilities field in platform data.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/esdhc.h |    2 ++
 drivers/mci/imx-esdhc.c                |    6 +++++-
 2 files changed, 7 insertions(+), 1 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/esdhc.h b/arch/arm/mach-imx/include/mach/esdhc.h
index aaf9748..b4c1aa9 100644
--- a/arch/arm/mach-imx/include/mach/esdhc.h
+++ b/arch/arm/mach-imx/include/mach/esdhc.h
@@ -32,6 +32,7 @@ enum cd_types {
  * @cd_gpio:	gpio for card_detect interrupt
  * @wp_type:	type of write_protect method (see wp_types enum above)
  * @cd_type:	type of card_detect method (see cd_types enum above)
+ * @caps:	supported bus width capabilities (MMC_MODE_4BIT | MMC_MODE_8BIT)
  */
 
 struct esdhc_platform_data {
@@ -39,5 +40,6 @@ struct esdhc_platform_data {
 	unsigned int cd_gpio;
 	enum wp_types wp_type;
 	enum cd_types cd_type;
+	unsigned caps;
 };
 #endif /* __ASM_ARCH_IMX_ESDHC_H */
diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index d36d211..c6f2d5c 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -511,6 +511,7 @@ static int fsl_esdhc_probe(struct device_d *dev)
 	struct mci_host *mci;
 	u32 caps;
 	int ret;
+	struct esdhc_platform_data *pdata = dev->platform_data;
 
 	host = xzalloc(sizeof(*host));
 	mci = &host->mci;
@@ -534,7 +535,10 @@ static int fsl_esdhc_probe(struct device_d *dev)
 	if (caps & ESDHC_HOSTCAPBLT_VS33)
 		mci->voltages |= MMC_VDD_32_33 | MMC_VDD_33_34;
 
-	mci->host_caps = MMC_MODE_4BIT | MMC_MODE_8BIT;
+	if (pdata && pdata->caps)
+		mci->host_caps = pdata->caps;
+	else
+		mci->host_caps = MMC_MODE_4BIT;
 
 	if (caps & ESDHC_HOSTCAPBLT_HSS)
 		mci->host_caps |= MMC_MODE_HS_52MHz | MMC_MODE_HS;
-- 
1.7.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
