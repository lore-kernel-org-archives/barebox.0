Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Whwqk-0008K0-Sr
 for barebox@lists.infradead.org; Wed, 07 May 2014 08:05:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  7 May 2014 10:04:33 +0200
Message-Id: <1399449884-19089-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1399449884-19089-1-git-send-email-s.hauer@pengutronix.de>
References: <1399449884-19089-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/14] ARM: tqma53: Add barebox_update support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/tqma53/board.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/tqma53/board.c b/arch/arm/boards/tqma53/board.c
index 958e5ad..8f8a6a4 100644
--- a/arch/arm/boards/tqma53/board.c
+++ b/arch/arm/boards/tqma53/board.c
@@ -20,10 +20,12 @@
 
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
+#include <mach/bbu.h>
 
 static int tqma53_devices_init(void)
 {
-	char *of_env_path = "/chosen/environment-emmc";
+	char *of_env_path;
+	unsigned bbu_flag_emmc = 0, bbu_flag_sd = 0;
 
 	if (!of_machine_is_compatible("tq,tqma53"))
 		return 0;
@@ -32,8 +34,16 @@ static int tqma53_devices_init(void)
 	barebox_set_hostname("tqma53");
 
 	if (bootsource_get() == BOOTSOURCE_MMC &&
-			bootsource_get_instance() == 1)
+			bootsource_get_instance() == 1) {
 		of_env_path = "/chosen/environment-sd";
+		bbu_flag_sd = BBU_HANDLER_FLAG_DEFAULT;
+	} else {
+		of_env_path = "/chosen/environment-emmc";
+		bbu_flag_emmc = BBU_HANDLER_FLAG_DEFAULT;
+	}
+
+	imx53_bbu_internal_mmc_register_handler("sd", "/dev/mmc1", bbu_flag_sd);
+	imx53_bbu_internal_mmc_register_handler("emmc", "/dev/mmc2", bbu_flag_emmc);
 
 	of_device_enable_path(of_env_path);
 
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
