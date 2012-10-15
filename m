Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TNkVq-0008EO-Tj
 for barebox@lists.infradead.org; Mon, 15 Oct 2012 13:15:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 15 Oct 2012 15:15:06 +0200
Message-Id: <1350306908-25206-4-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/5] ARM i.MX51 babbage: register MMC update handler
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/freescale-mx51-pdk/board.c        |    9 +++
 arch/arm/boards/freescale-mx51-pdk/dcd-data.h     |   60 ++++++++++++++++++++
 arch/arm/boards/freescale-mx51-pdk/flash_header.c |   61 +--------------------
 3 files changed, 72 insertions(+), 58 deletions(-)
 create mode 100644 arch/arm/boards/freescale-mx51-pdk/dcd-data.h

diff --git a/arch/arm/boards/freescale-mx51-pdk/board.c b/arch/arm/boards/freescale-mx51-pdk/board.c
index 0adceac..9db0ed9 100644
--- a/arch/arm/boards/freescale-mx51-pdk/board.c
+++ b/arch/arm/boards/freescale-mx51-pdk/board.c
@@ -25,6 +25,7 @@
 #include <partition.h>
 #include <fs.h>
 #include <fcntl.h>
+#include <mach/bbu.h>
 #include <nand.h>
 #include <notifier.h>
 #include <spi/spi.h>
@@ -39,6 +40,7 @@
 #include <mach/devices-imx51.h>
 #include <mach/revision.h>
 #include <mach/iim.h>
+#include <mach/imx-flash-header.h>
 
 static struct fec_platform_data fec_info = {
 	.xcv_type = MII100,
@@ -235,6 +237,10 @@ static void babbage_power_init(void)
 	mdelay(50);
 }
 
+#define DCD_NAME static struct imx_dcd_entry dcd_entry
+
+#include "dcd-data.h"
+
 static int f3s_devices_init(void)
 {
 	spi_register_board_info(mx51_babbage_spi_board_info,
@@ -255,6 +261,9 @@ static int f3s_devices_init(void)
 	armlinux_set_bootparams((void *)0x90000100);
 	armlinux_set_architecture(MACH_TYPE_MX51_BABBAGE);
 
+	imx51_bbu_internal_mmc_register_handler("mmc", "/dev/disk0",
+		BBU_HANDLER_FLAG_DEFAULT, dcd_entry, sizeof(dcd_entry));
+
 	return 0;
 }
 
diff --git a/arch/arm/boards/freescale-mx51-pdk/dcd-data.h b/arch/arm/boards/freescale-mx51-pdk/dcd-data.h
new file mode 100644
index 0000000..4dd6c0d
--- /dev/null
+++ b/arch/arm/boards/freescale-mx51-pdk/dcd-data.h
@@ -0,0 +1,60 @@
+
+DCD_NAME[] = {
+	{ .ptr_type = 4, .addr = 0x73fa88a0, .val = 0x00000200, },
+	{ .ptr_type = 4, .addr = 0x73fa850c, .val = 0x000020c5, },
+	{ .ptr_type = 4, .addr = 0x73fa8510, .val = 0x000020c5, },
+	{ .ptr_type = 4, .addr = 0x73fa883c, .val = 0x00000002, },
+	{ .ptr_type = 4, .addr = 0x73fa8848, .val = 0x00000002, },
+	{ .ptr_type = 4, .addr = 0x73fa84b8, .val = 0x000000e7, },
+	{ .ptr_type = 4, .addr = 0x73fa84bc, .val = 0x00000045, },
+	{ .ptr_type = 4, .addr = 0x73fa84c0, .val = 0x00000045, },
+	{ .ptr_type = 4, .addr = 0x73fa84c4, .val = 0x00000045, },
+	{ .ptr_type = 4, .addr = 0x73fa84c8, .val = 0x00000045, },
+	{ .ptr_type = 4, .addr = 0x73fa8820, .val = 0x00000000, },
+	{ .ptr_type = 4, .addr = 0x73fa84a4, .val = 0x00000003, },
+	{ .ptr_type = 4, .addr = 0x73fa84a8, .val = 0x00000003, },
+	{ .ptr_type = 4, .addr = 0x73fa84ac, .val = 0x000000e3, },
+	{ .ptr_type = 4, .addr = 0x73fa84b0, .val = 0x000000e3, },
+	{ .ptr_type = 4, .addr = 0x73fa84b4, .val = 0x000000e3, },
+	{ .ptr_type = 4, .addr = 0x73fa84cc, .val = 0x000000e3, },
+	{ .ptr_type = 4, .addr = 0x73fa84d0, .val = 0x000000e2, },
+	{ .ptr_type = 4, .addr = 0x73fa882c, .val = 0x00000004, },
+	{ .ptr_type = 4, .addr = 0x73fa88a4, .val = 0x00000004, },
+	{ .ptr_type = 4, .addr = 0x73fa88ac, .val = 0x00000004, },
+	{ .ptr_type = 4, .addr = 0x73fa88b8, .val = 0x00000004, },
+	{ .ptr_type = 4, .addr = 0x83fd9000, .val = 0x82a20000, },
+	{ .ptr_type = 4, .addr = 0x83fd9008, .val = 0x82a20000, },
+	{ .ptr_type = 4, .addr = 0x83fd9010, .val = 0x000ad0d0, },
+	{ .ptr_type = 4, .addr = 0x83fd9004, .val = 0x3f3584ab, },
+	{ .ptr_type = 4, .addr = 0x83fd900c, .val = 0x3f3584ab, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x04008008, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x0000801a, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x0000801b, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x00448019, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x07328018, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x04008008, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x00008010, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x00008010, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x06328018, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x03808019, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x00408019, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x00008000, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x0400800c, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x0000801e, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x0000801f, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x0000801d, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x0732801c, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x0400800c, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x00008014, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x00008014, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x0632801c, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x0380801d, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x0040801d, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x00008004, },
+	{ .ptr_type = 4, .addr = 0x83fd9000, .val = 0xb2a20000, },
+	{ .ptr_type = 4, .addr = 0x83fd9008, .val = 0xb2a20000, },
+	{ .ptr_type = 4, .addr = 0x83fd9010, .val = 0x000ad6d0, },
+	{ .ptr_type = 4, .addr = 0x83fd9034, .val = 0x90000000, },
+	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x00000000, },
+};
+
diff --git a/arch/arm/boards/freescale-mx51-pdk/flash_header.c b/arch/arm/boards/freescale-mx51-pdk/flash_header.c
index c148eea..f3f1e4b 100644
--- a/arch/arm/boards/freescale-mx51-pdk/flash_header.c
+++ b/arch/arm/boards/freescale-mx51-pdk/flash_header.c
@@ -7,64 +7,9 @@ void __naked __flash_header_start go(void)
 	barebox_arm_head();
 }
 
-struct imx_dcd_entry __dcd_entry_section dcd_entry[] = {
-	{ .ptr_type = 4, .addr = 0x73fa88a0, .val = 0x00000200, },
-	{ .ptr_type = 4, .addr = 0x73fa850c, .val = 0x000020c5, },
-	{ .ptr_type = 4, .addr = 0x73fa8510, .val = 0x000020c5, },
-	{ .ptr_type = 4, .addr = 0x73fa883c, .val = 0x00000002, },
-	{ .ptr_type = 4, .addr = 0x73fa8848, .val = 0x00000002, },
-	{ .ptr_type = 4, .addr = 0x73fa84b8, .val = 0x000000e7, },
-	{ .ptr_type = 4, .addr = 0x73fa84bc, .val = 0x00000045, },
-	{ .ptr_type = 4, .addr = 0x73fa84c0, .val = 0x00000045, },
-	{ .ptr_type = 4, .addr = 0x73fa84c4, .val = 0x00000045, },
-	{ .ptr_type = 4, .addr = 0x73fa84c8, .val = 0x00000045, },
-	{ .ptr_type = 4, .addr = 0x73fa8820, .val = 0x00000000, },
-	{ .ptr_type = 4, .addr = 0x73fa84a4, .val = 0x00000003, },
-	{ .ptr_type = 4, .addr = 0x73fa84a8, .val = 0x00000003, },
-	{ .ptr_type = 4, .addr = 0x73fa84ac, .val = 0x000000e3, },
-	{ .ptr_type = 4, .addr = 0x73fa84b0, .val = 0x000000e3, },
-	{ .ptr_type = 4, .addr = 0x73fa84b4, .val = 0x000000e3, },
-	{ .ptr_type = 4, .addr = 0x73fa84cc, .val = 0x000000e3, },
-	{ .ptr_type = 4, .addr = 0x73fa84d0, .val = 0x000000e2, },
-	{ .ptr_type = 4, .addr = 0x73fa882c, .val = 0x00000004, },
-	{ .ptr_type = 4, .addr = 0x73fa88a4, .val = 0x00000004, },
-	{ .ptr_type = 4, .addr = 0x73fa88ac, .val = 0x00000004, },
-	{ .ptr_type = 4, .addr = 0x73fa88b8, .val = 0x00000004, },
-	{ .ptr_type = 4, .addr = 0x83fd9000, .val = 0x82a20000, },
-	{ .ptr_type = 4, .addr = 0x83fd9008, .val = 0x82a20000, },
-	{ .ptr_type = 4, .addr = 0x83fd9010, .val = 0x000ad0d0, },
-	{ .ptr_type = 4, .addr = 0x83fd9004, .val = 0x3f3584ab, },
-	{ .ptr_type = 4, .addr = 0x83fd900c, .val = 0x3f3584ab, },
-	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x04008008, },
-	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x0000801a, },
-	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x0000801b, },
-	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x00448019, },
-	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x07328018, },
-	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x04008008, },
-	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x00008010, },
-	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x00008010, },
-	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x06328018, },
-	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x03808019, },
-	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x00408019, },
-	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x00008000, },
-	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x0400800c, },
-	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x0000801e, },
-	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x0000801f, },
-	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x0000801d, },
-	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x0732801c, },
-	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x0400800c, },
-	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x00008014, },
-	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x00008014, },
-	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x0632801c, },
-	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x0380801d, },
-	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x0040801d, },
-	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x00008004, },
-	{ .ptr_type = 4, .addr = 0x83fd9000, .val = 0xb2a20000, },
-	{ .ptr_type = 4, .addr = 0x83fd9008, .val = 0xb2a20000, },
-	{ .ptr_type = 4, .addr = 0x83fd9010, .val = 0x000ad6d0, },
-	{ .ptr_type = 4, .addr = 0x83fd9034, .val = 0x90000000, },
-	{ .ptr_type = 4, .addr = 0x83fd9014, .val = 0x00000000, },
-};
+#define DCD_NAME struct imx_dcd_entry __dcd_entry_section dcd_entry
+
+#include "dcd-data.h"
 
 #define APP_DEST	0x90000000
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
