Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wuyti-0005bx-El
 for barebox@lists.infradead.org; Thu, 12 Jun 2014 06:54:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Jun 2014 08:53:42 +0200
Message-Id: <1402556023-1811-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1402556023-1811-1-git-send-email-s.hauer@pengutronix.de>
References: <1402556023-1811-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/5] ARM: Phytec-phyCORE-imx27: Register NOR/NAND update
 handlers
To: barebox@lists.infradead.org

To make barebox_update work on the board.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/phytec-phycore-imx27/pcm038.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/phytec-phycore-imx27/pcm038.c b/arch/arm/boards/phytec-phycore-imx27/pcm038.c
index 294f4ec..a4305f6 100644
--- a/arch/arm/boards/phytec-phycore-imx27/pcm038.c
+++ b/arch/arm/boards/phytec-phycore-imx27/pcm038.c
@@ -28,6 +28,7 @@
 #include <mach/imxfb.h>
 #include <mach/iomux-mx27.h>
 #include <mfd/mc13xxx.h>
+#include <mach/bbu.h>
 
 #include "pll.h"
 
@@ -105,7 +106,7 @@ static int pcm038_init(void)
 {
 	struct mc13xxx *mc13xxx = mc13xxx_get();
 	char *envdev;
-	uint32_t i;
+	uint32_t i, bbu_nand_flags = 0, bbu_nor_flags = 0;
 
 	if (!of_machine_is_compatible("phytec,imx27-pcm038"))
 		return 0;
@@ -123,10 +124,12 @@ static int pcm038_init(void)
 	switch (bootsource_get()) {
 	case BOOTSOURCE_NAND:
 		of_device_enable_path("/chosen/environment-nand");
+		bbu_nand_flags |= BBU_HANDLER_FLAG_DEFAULT;
 		envdev = "NAND";
 		break;
 	default:
 		of_device_enable_path("/chosen/environment-nor");
+		bbu_nor_flags |= BBU_HANDLER_FLAG_DEFAULT;
 		envdev = "NOR";
 		break;
 	}
@@ -175,6 +178,11 @@ static int pcm038_init(void)
 	/* Clock gating enable */
 	writel(0x00050f08, MX27_SYSCTRL_BASE_ADDR + MX27_GPCR);
 
+	imx_bbu_external_nand_register_handler("nand", "/dev/nand0.boot",
+			bbu_nand_flags);
+	imx_bbu_external_nor_register_handler("nor", "/dev/nor0.boot",
+			bbu_nor_flags);
+
 	defaultenv_append_directory(defaultenv_pcm038);
 
 	return 0;
-- 
2.0.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
