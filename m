Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TTChr-00088h-5N
 for barebox@lists.infradead.org; Tue, 30 Oct 2012 14:22:16 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Tue, 30 Oct 2012 15:22:10 +0100
Message-Id: <1351606931-12815-1-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH 1/2] mxs: mx28evk: add nand device
To: barebox@lists.infradead.org
Cc: Wolfram Sang <w.sang@pengutronix.de>

While flash layout may be custom, at least the nand0-device is good to
have.

Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---
 arch/arm/boards/freescale-mx28-evk/mx28-evk.c |   20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm/boards/freescale-mx28-evk/mx28-evk.c b/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
index 7cd61f9..0fbb229 100644
--- a/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
+++ b/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
@@ -109,6 +109,23 @@ static const uint32_t mx28evk_pads[] = {
 	LCD_RESET_GPIO | VE_3_3V | GPIO_OUT | GPIO_VALUE(0),
 	/* backlight  */
 	PWM2_GPIO | VE_3_3V | STRENGTH(S4MA) | SE | VE,
+
+	/* GPMI-NAND (blocks mmc1 for now) */
+	GPMI_D0 | VE_3_3V,
+	GPMI_D1 | VE_3_3V,
+	GPMI_D2 | VE_3_3V,
+	GPMI_D3 | VE_3_3V,
+	GPMI_D4 | VE_3_3V,
+	GPMI_D5 | VE_3_3V,
+	GPMI_D6 | VE_3_3V,
+	GPMI_D7 | VE_3_3V,
+	GPMI_READY0 | VE_3_3V,	/* external PU */
+	GPMI_CE0N | VE_3_3V, 	/* external PU */
+	GPMI_RDN | VE_3_3V,
+	GPMI_WRN | VE_3_3V,
+	GPMI_ALE | VE_3_3V,
+	GPMI_CLE | VE_3_3V,
+	GPMI_RESETN,		/* act as WP, external PU */
 };
 
 static struct mxs_mci_platform_data mci_pdata = {
@@ -239,6 +256,9 @@ static int mx28_evk_devices_init(void)
 	add_generic_device("fec_imx", 0, NULL, IMX_FEC0_BASE, 0x4000,
 			   IORESOURCE_MEM, &fec_info);
 
+	add_generic_device("mxs_nand", 0, NULL, MXS_GPMI_BASE, 0x2000,
+			   IORESOURCE_MEM, NULL);
+
 	return 0;
 }
 device_initcall(mx28_evk_devices_init);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
