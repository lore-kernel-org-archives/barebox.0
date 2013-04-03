Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UNIns-0007kL-TO
 for barebox@lists.infradead.org; Wed, 03 Apr 2013 08:12:24 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Wed,  3 Apr 2013 10:12:15 +0200
Message-Id: <1364976736-23869-7-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1364976736-23869-1-git-send-email-mkl@pengutronix.de>
References: <1364976736-23869-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH v2 6/7] ARM: i.MX53: Add bootsource instance information
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

The i.MX53 has the bootsource instance information stored
in SBMR[21:22], expose it to the environment.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 arch/arm/mach-imx/boot.c | 18 ++++++++++++++++--
 1 file changed, 16 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index 7824206..bd0cb84 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -169,9 +169,10 @@ void imx51_boot_save_loc(void __iomem *src_base)
 void imx53_boot_save_loc(void __iomem *src_base)
 {
 	enum bootsource src = BOOTSOURCE_UNKNOWN;
-	uint32_t cfg1 = readl(src_base + IMX53_SRC_SBMR) & 0xff;
+	int instance;
+	uint32_t cfg1 = readl(src_base + IMX53_SRC_SBMR);
 
-	switch (cfg1 >> 4) {
+	switch ((cfg1 & 0xff) >> 4) {
 	case 2:
 		src = BOOTSOURCE_HD;
 		break;
@@ -194,7 +195,20 @@ void imx53_boot_save_loc(void __iomem *src_base)
 	if (cfg1 & (1 << 7))
 		src = BOOTSOURCE_NAND;
 
+
+	switch (src) {
+	case BOOTSOURCE_MMC:
+	case BOOTSOURCE_SPI:
+	case BOOTSOURCE_I2C:
+		instance = (cfg1 >> 21) & 0x3;
+		break;
+	default:
+		instance = 0;
+		break;
+	}
+
 	bootsource_set(src);
+	bootsource_set_instance(instance);
 }
 
 #define IMX6_SRC_SBMR1	0x04
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
