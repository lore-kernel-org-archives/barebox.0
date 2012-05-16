Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SUiw6-0000GC-DU
 for barebox@lists.infradead.org; Wed, 16 May 2012 18:26:59 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 16 May 2012 20:26:44 +0200
Message-Id: <1337192804-10673-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM i.MX51 babbage: move fec init after power init
To: barebox@lists.infradead.org

Among other things the power initialization also turns on power
for the ethernet phy, so register the fec after power init.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/freescale-mx51-pdk/board.c |    8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boards/freescale-mx51-pdk/board.c b/arch/arm/boards/freescale-mx51-pdk/board.c
index 74b32a9..0bb2ffe 100644
--- a/arch/arm/boards/freescale-mx51-pdk/board.c
+++ b/arch/arm/boards/freescale-mx51-pdk/board.c
@@ -233,10 +233,6 @@ static void babbage_power_init(void)
 
 static int f3s_devices_init(void)
 {
-	imx51_iim_register_fec_ethaddr();
-	imx51_add_fec(&fec_info);
-	imx51_add_mmc0(NULL);
-
 	spi_register_board_info(mx51_babbage_spi_board_info,
 			ARRAY_SIZE(mx51_babbage_spi_board_info));
 	imx51_add_spi0(&spi_0_data);
@@ -247,6 +243,10 @@ static int f3s_devices_init(void)
 	imx51_init_lowlevel(800);
 	clock_notifier_call_chain();
 
+	imx51_iim_register_fec_ethaddr();
+	imx51_add_fec(&fec_info);
+	imx51_add_mmc0(NULL);
+
 	armlinux_set_bootparams((void *)0x90000100);
 	armlinux_set_architecture(MACH_TYPE_MX51_BABBAGE);
 
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
