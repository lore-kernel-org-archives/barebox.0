Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp15.mail.ru ([94.100.176.133])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S99Zz-0005lA-6h
 for barebox@lists.infradead.org; Sun, 18 Mar 2012 06:27:00 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun, 18 Mar 2012 10:29:40 +0400
Message-Id: <1332052180-2707-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 2/2] i.MX27: Add support for SDHC1
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/phycard-i.MX27/pca100.c        |    2 +-
 arch/arm/mach-imx/include/mach/devices-imx27.h |    7 +++++--
 2 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/phycard-i.MX27/pca100.c b/arch/arm/boards/phycard-i.MX27/pca100.c
index 1b43951..f934a9b 100644
--- a/arch/arm/boards/phycard-i.MX27/pca100.c
+++ b/arch/arm/boards/phycard-i.MX27/pca100.c
@@ -292,7 +292,7 @@ static int pca100_devices_init(void)
 
 	imx27_add_nand(&nand_info);
 	imx27_add_fec(&fec_info);
-	imx27_add_mmc0(NULL);
+	imx27_add_mmc1(NULL);
 	imx27_add_fb(&pca100_fb_data);
 
 	PCCR1 |= PCCR1_PERCLK2_EN;
diff --git a/arch/arm/mach-imx/include/mach/devices-imx27.h b/arch/arm/mach-imx/include/mach/devices-imx27.h
index 3141d96..4d30200 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx27.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx27.h
@@ -58,7 +58,10 @@ static inline struct device_d *imx27_add_fec(struct fec_platform_data *pdata)
 
 static inline struct device_d *imx27_add_mmc0(void *pdata)
 {
-	return imx_add_mmc((void *)0x10014000, 0, pdata);
+	return imx_add_mmc((void *)IMX_SDHC1_BASE, 0, pdata);
 }
 
-
+static inline struct device_d *imx27_add_mmc1(void *pdata)
+{
+	return imx_add_mmc((void *)IMX_SDHC2_BASE, 1, pdata);
+}
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
