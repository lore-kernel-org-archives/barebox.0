Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1VDqj8-0003D5-VK
 for barebox@lists.infradead.org; Mon, 26 Aug 2013 06:56:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 26 Aug 2013 08:56:01 +0200
Message-Id: <1377500163-28962-21-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1377500163-28962-1-git-send-email-s.hauer@pengutronix.de>
References: <1377500163-28962-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 20/22] ARM: beaglebone: register sd/emmc with persistent name
To: barebox@lists.infradead.org

To get persistent names for the sd/emmc cards register them with
a name in platform_data.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/beaglebone/board.c | 20 ++++++++++++++++++--
 1 file changed, 18 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/beaglebone/board.c b/arch/arm/boards/beaglebone/board.c
index 9e87afc..dfeb47c 100644
--- a/arch/arm/boards/beaglebone/board.c
+++ b/arch/arm/boards/beaglebone/board.c
@@ -32,6 +32,7 @@
 #include <io.h>
 #include <ns16550.h>
 #include <net.h>
+#include <bootsource.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
 #include <mach/am33xx-silicon.h>
@@ -127,14 +128,29 @@ static const __maybe_unused struct module_pin_mux mmc1_pin_mux[] = {
 	{-1},
 };
 
+static struct omap_hsmmc_platform_data beaglebone_sd = {
+	.devname = "sd",
+};
+
+static struct omap_hsmmc_platform_data beaglebone_emmc = {
+	.devname = "emmc",
+};
+
 static int beaglebone_devices_init(void)
 {
 	am33xx_enable_mmc0_pin_mux();
-	am33xx_add_mmc0(NULL);
+	am33xx_add_mmc0(&beaglebone_sd);
 
 	if (is_beaglebone_black()) {
 		configure_module_pin_mux(mmc1_pin_mux);
-		am33xx_add_mmc1(NULL);
+		am33xx_add_mmc1(&beaglebone_emmc);
+	}
+
+	if (bootsource_get() == BOOTSOURCE_MMC) {
+		if (bootsource_get_instance() == 0)
+			omap_set_bootmmc_devname("sd");
+		else
+			omap_set_bootmmc_devname("emmc");
 	}
 
 	am33xx_enable_i2c0_pin_mux();
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
