Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TB0LA-0006AF-7z
 for barebox@lists.infradead.org; Mon, 10 Sep 2012 09:31:38 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Mon, 10 Sep 2012 11:31:07 +0200
Message-Id: <1347269467-20854-1-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH] arm: mxs: add proper resource length
To: barebox@lists.infradead.org
Cc: Wolfram Sang <w.sang@pengutronix.de>

For some reason, the mxs-boards missed some length paramters when adding
devices. This made reading from ocotp crash in the current version.
Provide missing lenghts, use a consistent format and fix the length for
the LCDIF.

Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---
 arch/arm/boards/freescale-mx28-evk/mx28-evk.c |   10 +++++-----
 arch/arm/boards/karo-tx28/tx28-stk5.c         |   10 +++++-----
 2 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boards/freescale-mx28-evk/mx28-evk.c b/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
index 1283e17..7cd61f9 100644
--- a/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
+++ b/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
@@ -224,19 +224,19 @@ static int mx28_evk_devices_init(void)
 	armlinux_set_bootparams((void *)IMX_MEMORY_BASE + 0x100);
 	armlinux_set_architecture(MACH_TYPE_MX28EVK);
 
-	add_generic_device("mxs_mci", 0, NULL, IMX_SSP0_BASE, 0,
+	add_generic_device("mxs_mci", 0, NULL, IMX_SSP0_BASE, 0x2000,
 			   IORESOURCE_MEM, &mci_pdata);
 
-	add_generic_device("stmfb", 0, NULL, IMX_FB_BASE, 4096,
+	add_generic_device("stmfb", 0, NULL, IMX_FB_BASE, 0x2000,
 			   IORESOURCE_MEM, &mx28_evk_fb_pdata);
 
-	add_generic_device("ocotp", 0, NULL, IMX_OCOTP_BASE, 0,
+	add_generic_device("ocotp", 0, NULL, IMX_OCOTP_BASE, 0x2000,
 			IORESOURCE_MEM, NULL);
 	mx28_evk_get_ethaddr(); /* must be after registering ocotp */
 
 	imx_enable_enetclk();
 	mx28_evk_fec_reset();
-	add_generic_device("fec_imx", 0, NULL, IMX_FEC0_BASE, 0,
+	add_generic_device("fec_imx", 0, NULL, IMX_FEC0_BASE, 0x4000,
 			   IORESOURCE_MEM, &fec_info);
 
 	return 0;
@@ -245,7 +245,7 @@ device_initcall(mx28_evk_devices_init);
 
 static int mx28_evk_console_init(void)
 {
-	add_generic_device("stm_serial", 0, NULL, IMX_DBGUART_BASE, 8192,
+	add_generic_device("stm_serial", 0, NULL, IMX_DBGUART_BASE, 0x2000,
 			   IORESOURCE_MEM, NULL);
 
 	return 0;
diff --git a/arch/arm/boards/karo-tx28/tx28-stk5.c b/arch/arm/boards/karo-tx28/tx28-stk5.c
index 04fdbc3..5985ee5 100644
--- a/arch/arm/boards/karo-tx28/tx28-stk5.c
+++ b/arch/arm/boards/karo-tx28/tx28-stk5.c
@@ -376,7 +376,7 @@ void base_board_init(void)
 	/* run the SSP unit clock at 100 MHz */
 	imx_set_sspclk(0, 100000000, 1);
 
-	add_generic_device("mxs_mci", 0, NULL, IMX_SSP0_BASE, 0,
+	add_generic_device("mxs_mci", 0, NULL, IMX_SSP0_BASE, 0x2000,
 			   IORESOURCE_MEM, &mci_pdata);
 
 	if (tx28_fb_pdata.fixed_screen < (void *)&_end) {
@@ -384,16 +384,16 @@ void base_board_init(void)
 		tx28_fb_pdata.fixed_screen = NULL;
 	}
 
-	add_generic_device("stmfb", 0, NULL, IMX_FB_BASE, 4096,
+	add_generic_device("stmfb", 0, NULL, IMX_FB_BASE, 0x2000,
 			   IORESOURCE_MEM, &tx28_fb_pdata);
 
-	add_generic_device("ocotp", 0, NULL, IMX_OCOTP_BASE, 0,
+	add_generic_device("ocotp", 0, NULL, IMX_OCOTP_BASE, 0x2000,
 			   IORESOURCE_MEM, NULL);
 
 	tx28_get_ethaddr();
 
 	imx_enable_enetclk();
-	add_generic_device("fec_imx", 0, NULL, IMX_FEC0_BASE, 0,
+	add_generic_device("fec_imx", 0, NULL, IMX_FEC0_BASE, 0x4000,
 			   IORESOURCE_MEM, &fec_info);
 
 	ret = register_persistent_environment();
@@ -404,7 +404,7 @@ void base_board_init(void)
 
 static int tx28kit_console_init(void)
 {
-	add_generic_device("stm_serial", 0, NULL, IMX_DBGUART_BASE, 8192,
+	add_generic_device("stm_serial", 0, NULL, IMX_DBGUART_BASE, 0x2000,
 			   IORESOURCE_MEM, NULL);
 	
 	return 0;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
