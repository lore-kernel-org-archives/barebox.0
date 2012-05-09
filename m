Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SSDrP-0002UP-Ph
 for barebox@lists.infradead.org; Wed, 09 May 2012 20:51:48 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Wed,  9 May 2012 22:51:39 +0200
Message-Id: <1336596699-19841-1-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH] arm: mxs: get MAC from OCOTP for MX28EVK
To: barebox@lists.infradead.org

Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---
 arch/arm/boards/freescale-mx28-evk/mx28-evk.c |   25 +++++++++++++++++++++++--
 arch/arm/mach-mxs/Kconfig                     |    1 +
 2 files changed, 24 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/freescale-mx28-evk/mx28-evk.c b/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
index 9168ed8..f0b256b 100644
--- a/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
+++ b/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
@@ -22,17 +22,18 @@
 #include <init.h>
 #include <mci.h>
 #include <io.h>
+#include <net.h>
 
 #include <mach/clock.h>
 #include <mach/imx-regs.h>
 #include <mach/iomux-imx28.h>
 #include <mach/mci.h>
+#include <mach/fb.h>
+#include <mach/ocotp.h>
 
 #include <asm/armlinux.h>
 #include <asm/mmu.h>
 
-#include <mach/fb.h>
-
 #include <generated/mach-types.h>
 
 #define MX28EVK_FEC_PHY_RESET_GPIO	141
@@ -118,6 +119,22 @@ static struct mxs_mci_platform_data mci_pdata = {
 };
 
 /* fec */
+void mx28_evk_get_ethaddr(void)
+{
+	u8 mac[6] = { 0x00, 0x04, 0x9f, 0x00, 0x00, 0x00 };
+	u8 tmp;
+	int ret;
+
+	ret = mxs_ocotp_read(mac + 3, 3, 0);
+	if (ret != 3)
+		return;
+
+	tmp = mac[5];
+	mac[5] = mac[3];
+	mac[3] = tmp;
+	eth_register_ethaddr(0, mac);
+}
+
 static void __init mx28_evk_fec_reset(void)
 {
 	mdelay(1);
@@ -208,6 +225,10 @@ static int mx28_evk_devices_init(void)
 	add_generic_device("stmfb", 0, NULL, IMX_FB_BASE, 4096,
 			   IORESOURCE_MEM, &mx28_evk_fb_pdata);
 
+	add_generic_device("ocotp", 0, NULL, IMX_OCOTP_BASE, 0,
+			IORESOURCE_MEM, NULL);
+	mx28_evk_get_ethaddr(); /* must be after registering ocotp */
+
 	imx_enable_enetclk();
 	mx28_evk_fec_reset();
 	add_generic_device("fec_imx", 0, NULL, IMX_FEC0_BASE, 0,
diff --git a/arch/arm/mach-mxs/Kconfig b/arch/arm/mach-mxs/Kconfig
index f646e0b..9ce7c7a 100644
--- a/arch/arm/mach-mxs/Kconfig
+++ b/arch/arm/mach-mxs/Kconfig
@@ -61,6 +61,7 @@ config MACH_TX28
 
 config MACH_MX28EVK
 	bool "mx28-evk"
+	select MXS_OCOTP
 	help
 	  Say Y here if you are using the Freescale i.MX28-EVK board
 
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
