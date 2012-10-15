Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TNkVj-0008BY-BF
 for barebox@lists.infradead.org; Mon, 15 Oct 2012 13:15:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 15 Oct 2012 15:15:07 +0200
Message-Id: <1350306908-25206-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1350306908-25206-1-git-send-email-s.hauer@pengutronix.de>
References: <1350306908-25206-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/5] ARM i.MX53 loco: register MMC update handler
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/freescale-mx53-loco/board.c        |    9 ++++
 arch/arm/boards/freescale-mx53-loco/dcd-data.h     |   54 +++++++++++++++++++
 arch/arm/boards/freescale-mx53-loco/flash_header.c |   56 ++------------------
 3 files changed, 66 insertions(+), 53 deletions(-)
 create mode 100644 arch/arm/boards/freescale-mx53-loco/dcd-data.h

diff --git a/arch/arm/boards/freescale-mx53-loco/board.c b/arch/arm/boards/freescale-mx53-loco/board.c
index 0678e0a..45c05c2 100644
--- a/arch/arm/boards/freescale-mx53-loco/board.c
+++ b/arch/arm/boards/freescale-mx53-loco/board.c
@@ -36,6 +36,8 @@
 #include <mach/iim.h>
 #include <mach/imx5.h>
 #include <mach/revision.h>
+#include <mach/bbu.h>
+#include <mach/imx-flash-header.h>
 
 #include <i2c/i2c.h>
 #include <mfd/mc34708.h>
@@ -177,6 +179,10 @@ static void loco_ehci_init(void)
 	add_generic_usb_ehci_device(1, MX53_OTG_BASE_ADDR + 0x200, NULL);
 }
 
+#define DCD_NAME static struct imx_dcd_v2_entry dcd_entry
+
+#include "dcd-data.h"
+
 static int loco_devices_init(void)
 {
 
@@ -197,6 +203,9 @@ static int loco_devices_init(void)
 	armlinux_set_bootparams((void *)0x70000100);
 	armlinux_set_architecture(MACH_TYPE_MX53_LOCO);
 
+	imx53_bbu_internal_mmc_register_handler("mmc", "/dev/disk0",
+		BBU_HANDLER_FLAG_DEFAULT, dcd_entry, sizeof(dcd_entry));
+
 	return 0;
 }
 
diff --git a/arch/arm/boards/freescale-mx53-loco/dcd-data.h b/arch/arm/boards/freescale-mx53-loco/dcd-data.h
new file mode 100644
index 0000000..9f95fb4
--- /dev/null
+++ b/arch/arm/boards/freescale-mx53-loco/dcd-data.h
@@ -0,0 +1,54 @@
+
+DCD_NAME[] = {
+	{ .addr = cpu_to_be32(0x53fa8554), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa8558), .val = cpu_to_be32(0x00300040), },
+	{ .addr = cpu_to_be32(0x53fa8560), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa8564), .val = cpu_to_be32(0x00300040), },
+	{ .addr = cpu_to_be32(0x53fa8568), .val = cpu_to_be32(0x00300040), },
+	{ .addr = cpu_to_be32(0x53fa8570), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa8574), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa8578), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa857c), .val = cpu_to_be32(0x00300040), },
+	{ .addr = cpu_to_be32(0x53fa8580), .val = cpu_to_be32(0x00300040), },
+	{ .addr = cpu_to_be32(0x53fa8584), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa8588), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa8590), .val = cpu_to_be32(0x00300040), },
+	{ .addr = cpu_to_be32(0x53fa8594), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa86f0), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa86f4), .val = cpu_to_be32(0x00000000), },
+	{ .addr = cpu_to_be32(0x53fa86fc), .val = cpu_to_be32(0x00000000), },
+	{ .addr = cpu_to_be32(0x53fa8714), .val = cpu_to_be32(0x00000000), },
+	{ .addr = cpu_to_be32(0x53fa8718), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa871c), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa8720), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa8724), .val = cpu_to_be32(0x04000000), },
+	{ .addr = cpu_to_be32(0x53fa8728), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa872c), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x63fd9088), .val = cpu_to_be32(0x35343535), },
+	{ .addr = cpu_to_be32(0x63fd9090), .val = cpu_to_be32(0x4d444c44), },
+	{ .addr = cpu_to_be32(0x63fd907c), .val = cpu_to_be32(0x01370138), },
+	{ .addr = cpu_to_be32(0x63fd9080), .val = cpu_to_be32(0x013b013c), },
+	{ .addr = cpu_to_be32(0x63fd9018), .val = cpu_to_be32(0x00011740), },
+	{ .addr = cpu_to_be32(0x63fd9000), .val = cpu_to_be32(0xc3190000), },
+	{ .addr = cpu_to_be32(0x63fd900c), .val = cpu_to_be32(0x9f5152e3), },
+	{ .addr = cpu_to_be32(0x63fd9010), .val = cpu_to_be32(0xb68e8a63), },
+	{ .addr = cpu_to_be32(0x63fd9014), .val = cpu_to_be32(0x01ff00db), },
+	{ .addr = cpu_to_be32(0x63fd902c), .val = cpu_to_be32(0x000026d2), },
+	{ .addr = cpu_to_be32(0x63fd9030), .val = cpu_to_be32(0x009f0e21), },
+	{ .addr = cpu_to_be32(0x63fd9008), .val = cpu_to_be32(0x12273030), },
+	{ .addr = cpu_to_be32(0x63fd9004), .val = cpu_to_be32(0x0002002d), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00008032), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00008033), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00028031), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x052080b0), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x04008040), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x0000803a), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x0000803b), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00028039), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x05208138), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x04008048), },
+	{ .addr = cpu_to_be32(0x63fd9020), .val = cpu_to_be32(0x00005800), },
+	{ .addr = cpu_to_be32(0x63fd9040), .val = cpu_to_be32(0x04b80003), },
+	{ .addr = cpu_to_be32(0x63fd9058), .val = cpu_to_be32(0x00022227), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00000000), },
+};
diff --git a/arch/arm/boards/freescale-mx53-loco/flash_header.c b/arch/arm/boards/freescale-mx53-loco/flash_header.c
index c2ab255..dc1162b 100644
--- a/arch/arm/boards/freescale-mx53-loco/flash_header.c
+++ b/arch/arm/boards/freescale-mx53-loco/flash_header.c
@@ -23,59 +23,9 @@ void __naked __flash_header_start go(void)
 	barebox_arm_head();
 }
 
-struct imx_dcd_v2_entry __dcd_entry_section dcd_entry[] = {
-	{ .addr = cpu_to_be32(0x53fa8554), .val = cpu_to_be32(0x00300000), },
-	{ .addr = cpu_to_be32(0x53fa8558), .val = cpu_to_be32(0x00300040), },
-	{ .addr = cpu_to_be32(0x53fa8560), .val = cpu_to_be32(0x00300000), },
-	{ .addr = cpu_to_be32(0x53fa8564), .val = cpu_to_be32(0x00300040), },
-	{ .addr = cpu_to_be32(0x53fa8568), .val = cpu_to_be32(0x00300040), },
-	{ .addr = cpu_to_be32(0x53fa8570), .val = cpu_to_be32(0x00300000), },
-	{ .addr = cpu_to_be32(0x53fa8574), .val = cpu_to_be32(0x00300000), },
-	{ .addr = cpu_to_be32(0x53fa8578), .val = cpu_to_be32(0x00300000), },
-	{ .addr = cpu_to_be32(0x53fa857c), .val = cpu_to_be32(0x00300040), },
-	{ .addr = cpu_to_be32(0x53fa8580), .val = cpu_to_be32(0x00300040), },
-	{ .addr = cpu_to_be32(0x53fa8584), .val = cpu_to_be32(0x00300000), },
-	{ .addr = cpu_to_be32(0x53fa8588), .val = cpu_to_be32(0x00300000), },
-	{ .addr = cpu_to_be32(0x53fa8590), .val = cpu_to_be32(0x00300040), },
-	{ .addr = cpu_to_be32(0x53fa8594), .val = cpu_to_be32(0x00300000), },
-	{ .addr = cpu_to_be32(0x53fa86f0), .val = cpu_to_be32(0x00300000), },
-	{ .addr = cpu_to_be32(0x53fa86f4), .val = cpu_to_be32(0x00000000), },
-	{ .addr = cpu_to_be32(0x53fa86fc), .val = cpu_to_be32(0x00000000), },
-	{ .addr = cpu_to_be32(0x53fa8714), .val = cpu_to_be32(0x00000000), },
-	{ .addr = cpu_to_be32(0x53fa8718), .val = cpu_to_be32(0x00300000), },
-	{ .addr = cpu_to_be32(0x53fa871c), .val = cpu_to_be32(0x00300000), },
-	{ .addr = cpu_to_be32(0x53fa8720), .val = cpu_to_be32(0x00300000), },
-	{ .addr = cpu_to_be32(0x53fa8724), .val = cpu_to_be32(0x04000000), },
-	{ .addr = cpu_to_be32(0x53fa8728), .val = cpu_to_be32(0x00300000), },
-	{ .addr = cpu_to_be32(0x53fa872c), .val = cpu_to_be32(0x00300000), },
-	{ .addr = cpu_to_be32(0x63fd9088), .val = cpu_to_be32(0x35343535), },
-	{ .addr = cpu_to_be32(0x63fd9090), .val = cpu_to_be32(0x4d444c44), },
-	{ .addr = cpu_to_be32(0x63fd907c), .val = cpu_to_be32(0x01370138), },
-	{ .addr = cpu_to_be32(0x63fd9080), .val = cpu_to_be32(0x013b013c), },
-	{ .addr = cpu_to_be32(0x63fd9018), .val = cpu_to_be32(0x00011740), },
-	{ .addr = cpu_to_be32(0x63fd9000), .val = cpu_to_be32(0xc3190000), },
-	{ .addr = cpu_to_be32(0x63fd900c), .val = cpu_to_be32(0x9f5152e3), },
-	{ .addr = cpu_to_be32(0x63fd9010), .val = cpu_to_be32(0xb68e8a63), },
-	{ .addr = cpu_to_be32(0x63fd9014), .val = cpu_to_be32(0x01ff00db), },
-	{ .addr = cpu_to_be32(0x63fd902c), .val = cpu_to_be32(0x000026d2), },
-	{ .addr = cpu_to_be32(0x63fd9030), .val = cpu_to_be32(0x009f0e21), },
-	{ .addr = cpu_to_be32(0x63fd9008), .val = cpu_to_be32(0x12273030), },
-	{ .addr = cpu_to_be32(0x63fd9004), .val = cpu_to_be32(0x0002002d), },
-	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00008032), },
-	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00008033), },
-	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00028031), },
-	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x052080b0), },
-	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x04008040), },
-	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x0000803a), },
-	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x0000803b), },
-	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00028039), },
-	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x05208138), },
-	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x04008048), },
-	{ .addr = cpu_to_be32(0x63fd9020), .val = cpu_to_be32(0x00005800), },
-	{ .addr = cpu_to_be32(0x63fd9040), .val = cpu_to_be32(0x04b80003), },
-	{ .addr = cpu_to_be32(0x63fd9058), .val = cpu_to_be32(0x00022227), },
-	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00000000), },
-};
+#define DCD_NAME struct imx_dcd_v2_entry __dcd_entry_section dcd_entry
+
+#include "dcd-data.h"
 
 #define APP_DEST	0x70000000
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
