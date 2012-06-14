Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sf9rM-0003R4-2S
 for barebox@lists.infradead.org; Thu, 14 Jun 2012 13:13:14 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Thu, 14 Jun 2012 15:13:03 +0200
Message-Id: <1339679583-8725-1-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH V2] arm: mxs: get MAC from OCOTP for MX28EVK
To: barebox@lists.infradead.org
Cc: Wolfram Sang <w.sang@pengutronix.de>

Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---

V2: rewrote code according to Sascha's style guide ;)

 arch/arm/boards/freescale-mx28-evk/mx28-evk.c |   30 +++++++++++++++++++++++--
 arch/arm/mach-mxs/Kconfig                     |    1 +
 2 files changed, 29 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/freescale-mx28-evk/mx28-evk.c b/arch/arm/boards/freescale-mx28-evk/mx28-evk.c
index 9168ed8..fc395a0 100644
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
@@ -118,6 +119,27 @@ static struct mxs_mci_platform_data mci_pdata = {
 };
 
 /* fec */
+void mx28_evk_get_ethaddr(void)
+{
+	u8 mac_ocotp[3], mac[6];
+	int ret;
+
+	ret = mxs_ocotp_read(mac_ocotp, 3, 0);
+	if (ret != 3) {
+		pr_err("Reading MAC from OCOTP failed!\n");
+		return;
+	}
+
+	mac[0] = 0x00;
+	mac[1] = 0x04;
+	mac[2] = 0x9f;
+	mac[3] = mac_ocotp[2];
+	mac[4] = mac_ocotp[1];
+	mac[5] = mac_ocotp[0];
+
+	eth_register_ethaddr(0, mac);
+}
+
 static void __init mx28_evk_fec_reset(void)
 {
 	mdelay(1);
@@ -208,6 +230,10 @@ static int mx28_evk_devices_init(void)
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
index 3348a3c..57bd556 100644
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
