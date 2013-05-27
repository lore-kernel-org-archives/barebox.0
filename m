Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UgtB7-0001E3-R5
 for barebox@lists.infradead.org; Mon, 27 May 2013 08:53:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 27 May 2013 10:52:55 +0200
Message-Id: <1369644775-29887-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1369644775-29887-1-git-send-email-s.hauer@pengutronix.de>
References: <1369644775-29887-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 7/7] ARM: i.MX51: Add aliases for MMC controllers
To: barebox@lists.infradead.org

To get persistent names for the MMC controllers add aliases to
them

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/freescale-mx51-pdk/board.c | 6 +++---
 arch/arm/dts/imx51.dtsi                    | 4 ++++
 2 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/freescale-mx51-pdk/board.c b/arch/arm/boards/freescale-mx51-pdk/board.c
index 2c934b5..6807796 100644
--- a/arch/arm/boards/freescale-mx51-pdk/board.c
+++ b/arch/arm/boards/freescale-mx51-pdk/board.c
@@ -170,7 +170,7 @@ static int f3s_devices_init(void)
 	armlinux_set_bootparams((void *)0x90000100);
 	armlinux_set_architecture(MACH_TYPE_MX51_BABBAGE);
 
-	imx51_bbu_internal_mmc_register_handler("mmc", "/dev/disk0",
+	imx51_bbu_internal_mmc_register_handler("mmc", "/dev/mmc0",
 		BBU_HANDLER_FLAG_DEFAULT, (void *)flash_header_start,
 		flash_header_end - flash_header_start, 0);
 
@@ -181,8 +181,8 @@ device_initcall(f3s_devices_init);
 
 static int f3s_part_init(void)
 {
-	devfs_add_partition("disk0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self0");
-	devfs_add_partition("disk0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, "env0");
+	devfs_add_partition("mmc0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self0");
+	devfs_add_partition("mmc0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, "env0");
 
 	return 0;
 }
diff --git a/arch/arm/dts/imx51.dtsi b/arch/arm/dts/imx51.dtsi
index 02c132d..a900287 100644
--- a/arch/arm/dts/imx51.dtsi
+++ b/arch/arm/dts/imx51.dtsi
@@ -22,6 +22,10 @@
 		gpio1 = &gpio2;
 		gpio2 = &gpio3;
 		gpio3 = &gpio4;
+		mmc0 = &esdhc1;
+		mmc1 = &esdhc2;
+		mmc2 = &esdhc3;
+		mmc3 = &esdhc4;
 	};
 
 	tzic: tz-interrupt-controller@e0000000 {
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
