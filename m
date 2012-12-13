Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TjGex-0006hw-4p
 for barebox@lists.infradead.org; Thu, 13 Dec 2012 21:49:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Dec 2012 22:49:06 +0100
Message-Id: <1355435350-20348-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1355435350-20348-1-git-send-email-s.hauer@pengutronix.de>
References: <1355435350-20348-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/7] mci i.MX esdhc: Allow to specify devicename from
 platformdata
To: barebox@lists.infradead.org

For boards which need to have persistent names for the device file.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/esdhc.h |    1 +
 drivers/mci/imx-esdhc.c                |    3 +++
 2 files changed, 4 insertions(+)

diff --git a/arch/arm/mach-imx/include/mach/esdhc.h b/arch/arm/mach-imx/include/mach/esdhc.h
index b4c1aa9..06863c8 100644
--- a/arch/arm/mach-imx/include/mach/esdhc.h
+++ b/arch/arm/mach-imx/include/mach/esdhc.h
@@ -41,5 +41,6 @@ struct esdhc_platform_data {
 	enum wp_types wp_type;
 	enum cd_types cd_type;
 	unsigned caps;
+	char *devname;
 };
 #endif /* __ASM_ARCH_IMX_ESDHC_H */
diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index e8075a9..dfeb509 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -552,6 +552,9 @@ static int fsl_esdhc_probe(struct device_d *dev)
 	else
 		mci->host_caps = MMC_MODE_4BIT;
 
+	if (pdata && pdata->devname)
+		mci->devname = pdata->devname;
+
 	if (caps & ESDHC_HOSTCAPBLT_HSS)
 		mci->host_caps |= MMC_MODE_HS_52MHz | MMC_MODE_HS;
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
