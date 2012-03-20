Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp4.mail.ru ([94.100.176.44])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S9uqE-0007Kh-IW
 for barebox@lists.infradead.org; Tue, 20 Mar 2012 08:54:56 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Tue, 20 Mar 2012 12:54:25 +0400
Message-Id: <1332233666-5422-2-git-send-email-shc_work@mail.ru>
In-Reply-To: <20120318151242.GP3852@pengutronix.de>
References: <20120318151242.GP3852@pengutronix.de>
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
Subject: [PATCH 2/3] i.MX27: Add support for SDHC1,3
To: barebox@lists.infradead.org

imx27_add_mmc0 really registered SDHC2. Fix this by adding a
imx27_add_mmc1 and use this in the pca100 board file. Also add
imx27_add_mmc2 helper for register SDHC3.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/phycard-i.MX27/pca100.c        |    2 +-
 arch/arm/mach-imx/include/mach/devices-imx27.h |   10 +++++++++-
 2 files changed, 10 insertions(+), 2 deletions(-)

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
index 3141d96..faf8ddc 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx27.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx27.h
@@ -58,7 +58,15 @@ static inline struct device_d *imx27_add_fec(struct fec_platform_data *pdata)
 
 static inline struct device_d *imx27_add_mmc0(void *pdata)
 {
-	return imx_add_mmc((void *)0x10014000, 0, pdata);
+	return imx_add_mmc((void *)IMX_SDHC1_BASE, 0, pdata);
 }
 
+static inline struct device_d *imx27_add_mmc1(void *pdata)
+{
+	return imx_add_mmc((void *)IMX_SDHC2_BASE, 1, pdata);
+}
 
+static inline struct device_d *imx27_add_mmc2(void *pdata)
+{
+	return imx_add_mmc((void *)IMX_SDHC3_BASE, 2, pdata);
+}
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
