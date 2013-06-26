Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Urkff-0000v2-6b
 for barebox@lists.infradead.org; Wed, 26 Jun 2013 08:01:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 26 Jun 2013 10:00:49 +0200
Message-Id: <1372233657-19455-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1372233657-19455-1-git-send-email-s.hauer@pengutronix.de>
References: <1372233657-19455-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/11] ARM: i.MX51 babbage: prepare for multiboard support
To: barebox@lists.infradead.org

Merge two initcalls to one and add a protector for the board type.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/freescale-mx51-pdk/board.c | 14 +++++---------
 1 file changed, 5 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boards/freescale-mx51-pdk/board.c b/arch/arm/boards/freescale-mx51-pdk/board.c
index 3906e47..2e7be85 100644
--- a/arch/arm/boards/freescale-mx51-pdk/board.c
+++ b/arch/arm/boards/freescale-mx51-pdk/board.c
@@ -160,8 +160,11 @@ static void babbage_power_init(void)
 extern char flash_header_imx51_babbage_start[];
 extern char flash_header_imx51_babbage_end[];
 
-static int f3s_devices_init(void)
+static int imx51_babbage_late_init(void)
 {
+	if (!of_machine_is_compatible("fsl,imx51-babbage"))
+		return 0;
+
 	babbage_power_init();
 
 	console_flush();
@@ -175,13 +178,6 @@ static int f3s_devices_init(void)
 		BBU_HANDLER_FLAG_DEFAULT, (void *)flash_header_imx51_babbage_start,
 		flash_header_imx51_babbage_end - flash_header_imx51_babbage_start, 0);
 
-	return 0;
-}
-
-device_initcall(f3s_devices_init);
-
-static int f3s_part_init(void)
-{
 	device_detect_by_name("mmc0");
 
 	devfs_add_partition("mmc0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self0");
@@ -189,4 +185,4 @@ static int f3s_part_init(void)
 
 	return 0;
 }
-late_initcall(f3s_part_init);
+late_initcall(imx51_babbage_late_init);
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
