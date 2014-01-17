Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W4Axf-0003Ii-Jx
 for barebox@lists.infradead.org; Fri, 17 Jan 2014 15:04:03 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 17 Jan 2014 16:03:11 +0100
Message-Id: <1389971012-22977-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1389971012-22977-1-git-send-email-s.hauer@pengutronix.de>
References: <1389971012-22977-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/22] ARM: Karo TX25: register external NAND boot update
 handler
To: barebox@lists.infradead.org

To be able to update barebox with the barebox_update command.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/karo-tx25/board.c                | 4 ++++
 arch/arm/boards/karo-tx25/env/init/mtdparts-nand | 2 +-
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/karo-tx25/board.c b/arch/arm/boards/karo-tx25/board.c
index 337ae01..7cdeecc 100644
--- a/arch/arm/boards/karo-tx25/board.c
+++ b/arch/arm/boards/karo-tx25/board.c
@@ -38,6 +38,7 @@
 #include <mach/iim.h>
 #include <linux/err.h>
 #include <mach/devices-imx25.h>
+#include <mach/bbu.h>
 #include <asm/mmu.h>
 
 static struct fec_platform_data fec_info = {
@@ -115,6 +116,9 @@ static int tx25_devices_init(void)
 	armlinux_set_architecture(MACH_TYPE_TX25);
 	armlinux_set_serial(imx_uid());
 
+	imx_bbu_external_nand_register_handler("nand", "/dev/nand0.barebox",
+			BBU_HANDLER_FLAG_DEFAULT);
+
 	return 0;
 }
 
diff --git a/arch/arm/boards/karo-tx25/env/init/mtdparts-nand b/arch/arm/boards/karo-tx25/env/init/mtdparts-nand
index 4fffefc..e2dcfab 100644
--- a/arch/arm/boards/karo-tx25/env/init/mtdparts-nand
+++ b/arch/arm/boards/karo-tx25/env/init/mtdparts-nand
@@ -5,7 +5,7 @@ if [ "$1" = menu ]; then
 	exit
 fi
 
-mtdparts="512k(nand0.barebox)ro,512k(nand0.bareboxenv),4M(nand0.kernel),-(nand0.root)"
+mtdparts="512k(nand0.barebox),512k(nand0.bareboxenv),4M(nand0.kernel),-(nand0.root)"
 kernelname="mxc_nand"
 
 mtdparts-add -b -d nand0 -k ${kernelname} -p ${mtdparts}
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
