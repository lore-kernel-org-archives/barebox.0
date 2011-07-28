Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QmLWk-0007qW-Ur
	for barebox@lists.infradead.org; Thu, 28 Jul 2011 08:01:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 Jul 2011 10:01:00 +0200
Message-Id: <1311840062-11446-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1311840062-11446-1-git-send-email-s.hauer@pengutronix.de>
References: <1311840062-11446-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/8] ARM i.MX21ads : use device registration helpers
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/imx21ads/imx21ads.c |   10 ++--------
 1 files changed, 2 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boards/imx21ads/imx21ads.c b/arch/arm/boards/imx21ads/imx21ads.c
index 854f7ab..2661064 100644
--- a/arch/arm/boards/imx21ads/imx21ads.c
+++ b/arch/arm/boards/imx21ads/imx21ads.c
@@ -46,13 +46,6 @@ struct imx_nand_platform_data nand_info = {
 	.hw_ecc = 1,
 };
 
-static struct device_d cs8900_dev = {
-	.id	  = -1,
-	.name     = "cs8900",
-	.map_base = IMX_CS1_BASE,
-	// IRQ is connected to UART3_RTS
-};
-
 /* Sharp LQ035Q7DB02 QVGA display */
 static struct imx_fb_videomode imx_fb_modedata = {
         .mode = {
@@ -169,7 +162,8 @@ static int mx21ads_devices_init(void)
 				   IORESOURCE_MEM_WRITEABLE);
 	armlinux_add_dram(sdram_dev);
 	imx21_add_nand(&nand_info);
-	register_device(&cs8900_dev);
+	add_generic_device("cs8900", -1, NULL,	IMX_CS1_BASE, 0x1000,
+			IORESOURCE_MEM, NULL);
 	imx21_add_fb(&imx_fb_data);
 
 	armlinux_set_bootparams((void *)0xc0000100);
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
