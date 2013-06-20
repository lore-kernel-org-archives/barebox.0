Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UpYlZ-0004g6-54
 for barebox@lists.infradead.org; Thu, 20 Jun 2013 06:54:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 20 Jun 2013 08:54:10 +0200
Message-Id: <1371711261-10039-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1371711261-10039-1-git-send-email-s.hauer@pengutronix.de>
References: <1371711261-10039-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/17] ARM: MXS: remove board specific clock setups
To: barebox@lists.infradead.org
Cc: Juergen Beisert <jbe@pengutronix.de>

Some boards have board specific special clock setups. These are now
done in the SoC specific clock drivers.

It is assumed that most board specific clock setup is done based on
copy/paste from U-Boot. The generalized clock setup differs from
some boards:

- ioclk are adjusted to 480MHz
- ssp clocks are adjusted to 96MHz
- enet out clock is enabled

Some boards adjusted the ioclk to 320MHz and the ssp clock to 160MHz.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/chumby_falconwing/falconwing.c     | 3 ---
 arch/arm/boards/crystalfontz-cfa10036/cfa10036.c   | 5 -----
 arch/arm/boards/freescale-mx23-evk/mx23-evk.c      | 3 ---
 arch/arm/boards/freescale-mx28-evk/mx28-evk.c      | 8 --------
 arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c | 6 ------
 arch/arm/boards/karo-tx28/tx28-stk5.c              | 5 -----
 6 files changed, 30 deletions(-)

diff --git a/arch/arm/boards/chumby_falconwing/falconwing.c b/arch/arm/boards/chumby_falconwing/falconwing.c
index 720fe32..ab73be6 100644
--- a/arch/arm/boards/chumby_falconwing/falconwing.c
+++ b/arch/arm/boards/chumby_falconwing/falconwing.c
@@ -290,9 +290,6 @@ static int falconwing_devices_init(void)
 	for (i = 0; i < ARRAY_SIZE(pad_setup); i++)
 		imx_gpio_mode(pad_setup[i]);
 
-	imx_set_ioclk(480000000); /* enable IOCLK to run at the PLL frequency */
-	/* run the SSP unit clock at 100,000 kHz */
-	imx_set_sspclk(0, 100000000, 1);
 	add_generic_device("mxs_mci", 0, NULL, IMX_SSP1_BASE, 0x2000,
 			   IORESOURCE_MEM, &mci_pdata);
 	add_generic_device("stmfb", 0, NULL, IMX_FB_BASE, 4096,
diff --git a/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c b/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
index a37b089..56a695f 100644
--- a/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
+++ b/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
@@ -122,11 +122,6 @@ static int cfa10036_devices_init(void)
 	for (i = 0; i < ARRAY_SIZE(cfa10036_pads); i++)
 		imx_gpio_mode(cfa10036_pads[i]);
 
-	/* enable IOCLK0 to run at the PLL frequency */
-	imx_set_ioclk(0, 480000000);
-	/* run the SSP unit clock at 100 MHz */
-	imx_set_sspclk(0, 100000000, 1);
-
 	armlinux_set_bootparams((void *)IMX_MEMORY_BASE + 0x100);
 	armlinux_set_architecture(MACH_TYPE_CFA10036);
 
diff --git a/arch/arm/boards/freescale-mx23-evk/mx23-evk.c b/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
index 76377b1..9f63814 100644
--- a/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
+++ b/arch/arm/boards/freescale-mx23-evk/mx23-evk.c
@@ -109,9 +109,6 @@ static int mx23_evk_devices_init(void)
 	armlinux_set_bootparams((void*)IMX_MEMORY_BASE + 0x100);
 	armlinux_set_architecture(MACH_TYPE_MX23EVK);
 
-	imx_set_ioclk(480000000); /* enable IOCLK to run at the PLL frequency */
-	imx_set_sspclk(0, 100000000, 1);
-
 	add_generic_device("mxs_mci", DEVICE_ID_DYNAMIC, NULL, IMX_SSP1_BASE,
 					0x8000, IORESOURCE_MEM, &mci_pdata);
 
diff --git a/arch/arm/boards/freescale-mx28-evk/mx28-evk.c b/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
index 364b6ee..bc28463 100644
--- a/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
+++ b/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
@@ -253,14 +253,6 @@ static int mx28_evk_devices_init(void)
 	for (i = 0; i < ARRAY_SIZE(mx28evk_pads); i++)
 		imx_gpio_mode(mx28evk_pads[i]);
 
-	/* enable IOCLK0 to run at the PLL frequency */
-	imx_set_ioclk(0, 480000000);
-	imx_set_ioclk(1, 320000000);
-	/* run the SSP unit clock at 100 MHz */
-	imx_set_sspclk(0, 100000000, 1);
-	/* run the SSP unit 2 clock at 160Mhz */
-	imx_set_sspclk(2, 160000000, 1);
-
 	armlinux_set_bootparams((void *)IMX_MEMORY_BASE + 0x100);
 	armlinux_set_architecture(MACH_TYPE_MX28EVK);
 
diff --git a/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c b/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c
index 9620e85..ca6c5da 100644
--- a/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c
+++ b/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c
@@ -124,12 +124,6 @@ static int imx23_olinuxino_devices_init(void)
 	armlinux_set_bootparams((void *)IMX_MEMORY_BASE + 0x100);
 	armlinux_set_architecture(MACH_TYPE_IMX233_OLINUXINO);
 
-	/* enable IOCLK to run at the PLL frequency */
-	imx_set_ioclk(480000000);
-
-	/* run the SSP unit clock at 100,000 kHz */
-	imx_set_sspclk(0, 100000000, 1);
-
 	add_generic_device("mxs_mci", DEVICE_ID_DYNAMIC, NULL, IMX_SSP1_BASE,
 					0x8000, IORESOURCE_MEM, &mci_pdata);
 
diff --git a/arch/arm/boards/karo-tx28/tx28-stk5.c b/arch/arm/boards/karo-tx28/tx28-stk5.c
index a0109d6..ae633b8 100644
--- a/arch/arm/boards/karo-tx28/tx28-stk5.c
+++ b/arch/arm/boards/karo-tx28/tx28-stk5.c
@@ -371,11 +371,6 @@ void base_board_init(void)
 	for (i = 0; i < ARRAY_SIZE(tx28_starterkit_pad_setup); i++)
 		imx_gpio_mode(tx28_starterkit_pad_setup[i]);
 
-	/* enable IOCLK0 to run at the PLL frequency */
-	imx_set_ioclk(0, 480000000);
-	/* run the SSP unit clock at 100 MHz */
-	imx_set_sspclk(0, 100000000, 1);
-
 	add_generic_device("mxs_mci", 0, NULL, IMX_SSP0_BASE, 0x2000,
 			   IORESOURCE_MEM, &mci_pdata);
 
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
