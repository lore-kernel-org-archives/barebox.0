Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QmNTj-0000qP-E0
	for barebox@lists.infradead.org; Thu, 28 Jul 2011 10:06:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 Jul 2011 12:06:00 +0200
Message-Id: <1311847560-22946-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1311847560-22946-1-git-send-email-s.hauer@pengutronix.de>
References: <1311847560-22946-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] ARM i.MX51 babbage: set fec ethernet address from IIM
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/freescale-mx51-pdk/board.c |    5 ++++-
 1 files changed, 4 insertions(+), 1 deletions(-)

diff --git a/arch/arm/boards/freescale-mx51-pdk/board.c b/arch/arm/boards/freescale-mx51-pdk/board.c
index d0b8b89..c763719 100644
--- a/arch/arm/boards/freescale-mx51-pdk/board.c
+++ b/arch/arm/boards/freescale-mx51-pdk/board.c
@@ -19,7 +19,6 @@
  */
 
 #include <common.h>
-#include <net.h>
 #include <init.h>
 #include <environment.h>
 #include <mach/imx-regs.h>
@@ -40,6 +39,7 @@
 #include <mach/generic.h>
 #include <mach/iomux-mx51.h>
 #include <mach/devices-imx51.h>
+#include <mach/iim.h>
 
 static struct fec_platform_data fec_info = {
 	.xcv_type = MII100,
@@ -230,11 +230,14 @@ static void babbage_power_init(void)
 static int f3s_devices_init(void)
 {
 	struct device_d *sdram_dev;
+
 	babbage_mmu_init();
 
 	sdram_dev = add_mem_device("ram0", 0x90000000, 512 * 1024 * 1024,
 				   IORESOURCE_MEM_WRITEABLE);
 	armlinux_add_dram(sdram_dev);
+
+	imx51_iim_register_fec_ethaddr();
 	imx51_add_fec(&fec_info);
 	imx51_add_mmc0(NULL);
 
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
