Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOyua-0008Ov-Sl
 for barebox@lists.infradead.org; Fri, 10 May 2019 06:21:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 10 May 2019 08:21:34 +0200
Message-Id: <20190510062135.11534-14-s.hauer@pengutronix.de>
In-Reply-To: <20190510062135.11534-1-s.hauer@pengutronix.de>
References: <20190510062135.11534-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 13/14] ARM: Layerscape: TQMLS1046a: Add environment and update
 handlers
To: Barebox List <barebox@lists.infradead.org>

The TQMLS1046a can boot from QSPI and SD/MMC. Add partitioning for these
devices and barebox environment / barebox update handlers on them.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/tqmls1046a/board.c        | 24 ++++++++++
 arch/arm/dts/fsl-tqmls1046a-mbls10xxa.dts | 56 +++++++++++++++++++++++
 2 files changed, 80 insertions(+)

diff --git a/arch/arm/boards/tqmls1046a/board.c b/arch/arm/boards/tqmls1046a/board.c
index caf0f7ce38..8cc4d73de5 100644
--- a/arch/arm/boards/tqmls1046a/board.c
+++ b/arch/arm/boards/tqmls1046a/board.c
@@ -3,11 +3,15 @@
 #include <common.h>
 #include <init.h>
 #include <envfs.h>
+#include <bbu.h>
+#include <bootsource.h>
 #include <asm/memory.h>
 #include <linux/sizes.h>
 #include <linux/clk.h>
 #include <linux/clkdev.h>
 #include <soc/fsl/immap_lsch2.h>
+#include <mach/bbu.h>
+#include <mach/layerscape.h>
 
 static int tqmls1046a_mem_init(void)
 {
@@ -23,6 +27,8 @@ mem_initcall(tqmls1046a_mem_init);
 static int tqmls1046a_postcore_init(void)
 {
 	struct ccsr_scfg *scfg = IOMEM(LSCH2_SCFG_ADDR);
+	enum bootsource bootsource;
+	unsigned long sd_bbu_flags = 0, qspi_bbu_flags = 0;
 
 	if (!of_machine_is_compatible("tqc,tqmls1046a"))
 		return 0;
@@ -35,6 +41,24 @@ static int tqmls1046a_postcore_init(void)
 	/* divide CGA1/CGA2 PLL by 24 to get QSPI interface clock */
 	out_be32(&scfg->qspi_cfg, 0x30100000);
 
+	bootsource = ls1046_bootsource_get();
+
+	switch (bootsource) {
+	case BOOTSOURCE_MMC:
+		of_device_enable_path("/chosen/environment-sd");
+		sd_bbu_flags = BBU_HANDLER_FLAG_DEFAULT;
+		break;
+	case BOOTSOURCE_SPI_NOR:
+		of_device_enable_path("/chosen/environment-qspi");
+		qspi_bbu_flags = BBU_HANDLER_FLAG_DEFAULT;
+		break;
+	default:
+		break;
+	}
+
+	ls1046a_bbu_mmc_register_handler("sd", "/dev/mmc0.barebox", sd_bbu_flags);
+	ls1046a_bbu_qspi_register_handler("qspi", "/dev/qspiflash0.barebox", qspi_bbu_flags);
+
 	return 0;
 }
 
diff --git a/arch/arm/dts/fsl-tqmls1046a-mbls10xxa.dts b/arch/arm/dts/fsl-tqmls1046a-mbls10xxa.dts
index d783d50baf..f0332e3999 100644
--- a/arch/arm/dts/fsl-tqmls1046a-mbls10xxa.dts
+++ b/arch/arm/dts/fsl-tqmls1046a-mbls10xxa.dts
@@ -20,6 +20,8 @@
 		serial0 = &duart0;
 		serial1 = &duart1;
 		mmc0 = &esdhc;
+		qspiflash0 = &qflash0;
+		qspiflash1 = &qflash1;
 		qsgmii_s1_p1 = &qsgmii1_phy1;
 		qsgmii_s1_p2 = &qsgmii1_phy2;
 		qsgmii_s2_p1 = &qsgmii2_phy1;
@@ -30,6 +32,18 @@
 
 	chosen {
 		stdout-path = "serial1:115200n8";
+
+		environment-sd {
+			compatible = "barebox,environment";
+			device-path = &environment_sd;
+			status = "disabled";
+		};
+
+		environment-qspi {
+			compatible = "barebox,environment";
+			device-path = &environment_qspi;
+			status = "disabled";
+		};
 	};
 
 	gpio-keys-polled {
@@ -63,6 +77,24 @@
 
 };
 
+&esdhc {
+	partitions {
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		compatible = "fixed-partitions";
+
+		partition@0 {
+			label = "barebox";
+			reg = <0x1000 0xdf000>;
+		};
+
+		environment_sd: partition@e0000 {
+			label = "barebox-environment";
+			reg = <0xe0000 0x20000>;
+		};
+	};
+};
 
 &duart0 {
 	status = "okay";
@@ -259,3 +291,27 @@
 		status = "disabled";
 	};
 };
+
+&qflash0 {
+	partitions {
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		compatible = "fixed-partitions";
+
+		partition@0 {
+			label = "barebox";
+			reg = <0x0 0x200000>;
+		};
+
+		environment_qspi: partition@200000 {
+			label = "barebox-environment";
+			reg = <0x200000 0x80000>;
+		};
+
+		partition@280000 {
+			label = "data";
+			reg = <0x280000 0x0>;
+		};
+	};
+};
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
