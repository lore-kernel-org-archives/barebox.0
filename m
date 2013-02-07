Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U3RSu-0007pi-70
 for barebox@lists.infradead.org; Thu, 07 Feb 2013 13:24:38 +0000
Received: from alto.hi.pengutronix.de ([2001:6f8:1178:2:219:99ff:fe56:9d4])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <mgr@pengutronix.de>) id 1U3RSs-0001ob-NA
 for barebox@lists.infradead.org; Thu, 07 Feb 2013 14:24:34 +0100
Received: from mgr by alto.hi.pengutronix.de with local (Exim 4.75)
 (envelope-from <mgr@pengutronix.de>) id 1U3RSs-0007wl-Hn
 for barebox@lists.infradead.org; Thu, 07 Feb 2013 14:24:34 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Thu,  7 Feb 2013 14:24:26 +0100
Message-Id: <1360243466-30498-4-git-send-email-m.grzeschik@pengutronix.de>
In-Reply-To: <1360243466-30498-1-git-send-email-m.grzeschik@pengutronix.de>
References: <1360243466-30498-1-git-send-email-m.grzeschik@pengutronix.de>
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
Subject: [PATCH v3 3/3] mx28evk: add m25p80 flash via ssp2
To: barebox@lists.infradead.org

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
changes since v1:
 - fixed multiline comments and blank line fixes

 arch/arm/boards/freescale-mx28-evk/mx28-evk.c |   29 +++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/arch/arm/boards/freescale-mx28-evk/mx28-evk.c b/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
index 4311473..2e866a3 100644
--- a/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
+++ b/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
@@ -30,6 +30,7 @@
 #include <mach/mci.h>
 #include <mach/fb.h>
 #include <mach/ocotp.h>
+#include <spi/spi.h>
 
 #include <asm/armlinux.h>
 #include <asm/mmu.h>
@@ -126,6 +127,12 @@ static const uint32_t mx28evk_pads[] = {
 	GPMI_ALE | VE_3_3V,
 	GPMI_CLE | VE_3_3V,
 	GPMI_RESETN,		/* act as WP, external PU */
+
+	/* SSP */
+	SSP2_D0 | VE_3_3V | PULLUP(1) | STRENGTH(S8MA), /* MISO DO */
+	SSP2_D3 | VE_3_3V | PULLUP(1) | STRENGTH(S8MA), /* SS0 !CS */
+	SSP2_CMD | VE_3_3V | PULLUP(1) | STRENGTH(S8MA), /* MOSI DIO */
+	SSP2_SCK | VE_3_3V | PULLUP(1) | STRENGTH(S8MA), /* CLK */
 };
 
 static struct mxs_mci_platform_data mci_pdata = {
@@ -225,6 +232,19 @@ static int mx28_evk_mem_init(void)
 }
 mem_initcall(mx28_evk_mem_init);
 
+static const struct spi_board_info mx28evk_spi_board_info[] = {
+	{
+		.name = "m25p80",
+		/*
+		 * we leave this with the lower frequency
+		 * as the ssp unit otherwise locks up
+		 */
+		.max_speed_hz = 32000000,
+		.bus_num = 2,
+		.chip_select = 0,
+	}
+};
+
 static int mx28_evk_devices_init(void)
 {
 	int i;
@@ -235,8 +255,11 @@ static int mx28_evk_devices_init(void)
 
 	/* enable IOCLK0 to run at the PLL frequency */
 	imx_set_ioclk(0, 480000000);
+	imx_set_ioclk(1, 320000000);
 	/* run the SSP unit clock at 100 MHz */
 	imx_set_sspclk(0, 100000000, 1);
+	/* run the SSP unit 2 clock at 160Mhz */
+	imx_set_sspclk(2, 160000000, 1);
 
 	armlinux_set_bootparams((void *)IMX_MEMORY_BASE + 0x100);
 	armlinux_set_architecture(MACH_TYPE_MX28EVK);
@@ -259,6 +282,12 @@ static int mx28_evk_devices_init(void)
 	add_generic_device("mxs_nand", 0, NULL, MXS_GPMI_BASE, 0x2000,
 			   IORESOURCE_MEM, NULL);
 
+	spi_register_board_info(mx28evk_spi_board_info,
+			ARRAY_SIZE(mx28evk_spi_board_info));
+
+	add_generic_device("mxs_spi", 2, NULL, IMX_SSP2_BASE, 0x2000,
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
