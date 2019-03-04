Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h0nUu-0002RL-NA
 for barebox@lists.infradead.org; Mon, 04 Mar 2019 13:19:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Mar 2019 14:18:49 +0100
Message-Id: <20190304131853.30864-2-s.hauer@pengutronix.de>
In-Reply-To: <20190304131853.30864-1-s.hauer@pengutronix.de>
References: <20190304131853.30864-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/5] esdhc-xload: Move to drivers/mci
To: Barebox List <barebox@lists.infradead.org>

The esdhc-xload code will be used by upcoming Layerscape support aswell,
so move it from architecture code to drivers/mci/.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig                            |  2 ++
 arch/arm/mach-imx/Makefile                           |  2 +-
 drivers/mci/Kconfig                                  |  3 +++
 drivers/mci/Makefile                                 |  1 +
 .../xload-esdhc.c => drivers/mci/imx-esdhc-pbl.c     | 12 ++++++++----
 5 files changed, 15 insertions(+), 5 deletions(-)
 rename arch/arm/mach-imx/xload-esdhc.c => drivers/mci/imx-esdhc-pbl.c (98%)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 3c69ce00a3..3d59228628 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -388,6 +388,7 @@ config MACH_TECHNEXION_WANDBOARD
 	bool "Technexion Wandboard"
 	select ARCH_IMX6
 	select ARM_USE_COMPRESSED_DTB
+	select MCI_IMX_ESDHC_PBL
 
 config MACH_EMBEST_RIOTBOARD
 	bool "Embest RIoTboard"
@@ -439,6 +440,7 @@ config MACH_ZII_RDU1
 config MACH_ZII_RDU2
 	bool "ZII i.MX6Q(+) RDU2"
 	select ARCH_IMX6
+	select MCI_IMX_ESDHC_PBL
 
 config MACH_ZII_IMX8MQ_DEV
 	bool "ZII i.MX8MQ based devices"
diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index 97c54406e6..2b817e5dd8 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -26,4 +26,4 @@ obj-$(CONFIG_BAREBOX_UPDATE) += imx-bbu-internal.o
 obj-$(CONFIG_BAREBOX_UPDATE_IMX_EXTERNAL_NAND) += imx-bbu-external-nand.o
 obj-$(CONFIG_RESET_IMX_SRC) += src.o
 lwl-y += cpu_init.o
-pbl-y += xload-spi.o xload-esdhc.o xload-common.o xload-imx-nand.o
+pbl-y += xload-spi.o xload-common.o xload-imx-nand.o
diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index 2075151d67..cd28fefa43 100644
--- a/drivers/mci/Kconfig
+++ b/drivers/mci/Kconfig
@@ -93,6 +93,9 @@ config MCI_IMX_ESDHC_PIO
 	help
 	  mostly useful for debugging. Normally you should use DMA.
 
+config MCI_IMX_ESDHC_PBL
+	bool
+
 config MCI_OMAP_HSMMC
 	bool "OMAP HSMMC"
 	depends on ARCH_OMAP4 || ARCH_OMAP3 || ARCH_AM33XX
diff --git a/drivers/mci/Makefile b/drivers/mci/Makefile
index fe2c8adbac..f6214c0cbb 100644
--- a/drivers/mci/Makefile
+++ b/drivers/mci/Makefile
@@ -4,6 +4,7 @@ obj-$(CONFIG_MCI_BCM283X)	+= mci-bcm2835.o
 obj-$(CONFIG_MCI_DOVE)		+= dove-sdhci.o
 obj-$(CONFIG_MCI_IMX)		+= imx.o
 obj-$(CONFIG_MCI_IMX_ESDHC)	+= imx-esdhc.o
+pbl-$(CONFIG_MCI_IMX_ESDHC_PBL)	+= imx-esdhc-pbl.o
 obj-$(CONFIG_MCI_MXS)		+= mxs.o
 obj-$(CONFIG_MCI_OMAP_HSMMC)	+= omap_hsmmc.o
 obj-$(CONFIG_MCI_PXA)		+= pxamci.o
diff --git a/arch/arm/mach-imx/xload-esdhc.c b/drivers/mci/imx-esdhc-pbl.c
similarity index 98%
rename from arch/arm/mach-imx/xload-esdhc.c
rename to drivers/mci/imx-esdhc-pbl.c
index 6455cabf98..fb40ecf654 100644
--- a/arch/arm/mach-imx/xload-esdhc.c
+++ b/drivers/mci/imx-esdhc-pbl.c
@@ -14,14 +14,16 @@
 #include <common.h>
 #include <io.h>
 #include <mci.h>
+#include <linux/sizes.h>
+#ifdef CONFIG_ARCH_IMX
 #include <mach/atf.h>
 #include <mach/imx6-regs.h>
 #include <mach/imx8mq-regs.h>
 #include <mach/xload.h>
-#include <linux/sizes.h>
 #include <mach/imx-header.h>
-#include "../../../drivers/mci/sdhci.h"
-#include "../../../drivers/mci/imx-esdhc.h"
+#endif
+#include "sdhci.h"
+#include "imx-esdhc.h"
 
 #define SECTOR_SIZE 512
 
@@ -219,6 +221,7 @@ static int esdhc_read_blocks(struct esdhc *esdhc, void *dst, size_t len)
 	return 0;
 }
 
+#ifdef CONFIG_ARCH_IMX
 static int
 esdhc_start_image(struct esdhc *esdhc, ptrdiff_t address, ptrdiff_t entry, u32 offset)
 {
@@ -380,4 +383,5 @@ int imx8_esdhc_start_image(int instance)
 
 	return esdhc_start_image(&esdhc, MX8MQ_DDR_CSD1_BASE_ADDR,
 				 MX8MQ_ATF_BL33_BASE_ADDR, SZ_32K);
-}
\ No newline at end of file
+}
+#endif
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
