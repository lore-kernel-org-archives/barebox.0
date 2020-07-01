Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jqYmU-0001G3-1g
 for barebox@lists.infradead.org; Wed, 01 Jul 2020 09:11:55 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  1 Jul 2020 11:11:18 +0200
Message-Id: <20200701091122.3437-25-a.fatoum@pengutronix.de>
In-Reply-To: <20200701091122.3437-1-a.fatoum@pengutronix.de>
References: <20200701091122.3437-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 24/28] ARM: at91: sama5d2: read back memory size from DDRAM
 controller
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

We hard code memory size at three places:
 - In the configuration we use to initialize the DDRAM controller
 - In the minimal available size passed from PBL to barebox proper
 - In the device tree memory node override

Remove the two latter ones and replace them with code that reads the
size back from controller.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .../arm/boards/sama5d27-giantboard/lowlevel.c |  2 +-
 arch/arm/boards/sama5d27-som1/lowlevel.c      |  2 +-
 arch/arm/dts/at91-sama5d27_giantboard.dts     |  4 --
 arch/arm/dts/at91-sama5d27_som1_ek.dts        |  4 --
 arch/arm/dts/sama5d2.dtsi                     |  2 +
 arch/arm/mach-at91/Kconfig                    |  4 ++
 arch/arm/mach-at91/Makefile                   |  1 +
 arch/arm/mach-at91/ddramc.c                   | 57 +++++++++++++++++++
 arch/arm/mach-at91/include/mach/ddramc.h      |  2 +
 9 files changed, 68 insertions(+), 10 deletions(-)
 create mode 100644 arch/arm/mach-at91/ddramc.c

diff --git a/arch/arm/boards/sama5d27-giantboard/lowlevel.c b/arch/arm/boards/sama5d27-giantboard/lowlevel.c
index a30441d7ccfa..0bb3a7289c99 100644
--- a/arch/arm/boards/sama5d27-giantboard/lowlevel.c
+++ b/arch/arm/boards/sama5d27-giantboard/lowlevel.c
@@ -36,5 +36,5 @@ ENTRY_FUNCTION(start_sama5d27_giantboard, r0, r1, r2)
 
 	fdt = __dtb_z_at91_sama5d27_giantboard_start + get_runtime_offset();
 
-	barebox_arm_entry(SAMA5_DDRCS, SZ_128M, fdt);
+	sama5d2_barebox_entry(fdt);
 }
diff --git a/arch/arm/boards/sama5d27-som1/lowlevel.c b/arch/arm/boards/sama5d27-som1/lowlevel.c
index d52c4ca7465e..bf01b161e2f4 100644
--- a/arch/arm/boards/sama5d27-som1/lowlevel.c
+++ b/arch/arm/boards/sama5d27-som1/lowlevel.c
@@ -71,5 +71,5 @@ SAMA5_ENTRY_FUNCTION(start_sama5d27_som1_ek, r4)
 	fdt = __dtb_z_at91_sama5d27_som1_ek_start + get_runtime_offset();
 
 	ek_turn_led(RGB_LED_GREEN);
-	barebox_arm_entry(SAMA5_DDRCS, SZ_128M, fdt);
+	sama5d2_barebox_entry(fdt);
 }
diff --git a/arch/arm/dts/at91-sama5d27_giantboard.dts b/arch/arm/dts/at91-sama5d27_giantboard.dts
index 2ef516bd9e95..6ba094c3da1a 100644
--- a/arch/arm/dts/at91-sama5d27_giantboard.dts
+++ b/arch/arm/dts/at91-sama5d27_giantboard.dts
@@ -40,10 +40,6 @@
 	};
 };
 
-&{/memory} {
-	reg = <0x20000000 0x8000000>;
-};
-
 &slow_xtal {
 	clock-frequency = <32768>;
 };
diff --git a/arch/arm/dts/at91-sama5d27_som1_ek.dts b/arch/arm/dts/at91-sama5d27_som1_ek.dts
index cd038dc7c169..b9042d11317a 100644
--- a/arch/arm/dts/at91-sama5d27_som1_ek.dts
+++ b/arch/arm/dts/at91-sama5d27_som1_ek.dts
@@ -13,10 +13,6 @@
 			device-path = &barebox_env;
 		};
 	};
-
-	memory {
-		reg = <0x20000000 0x8000000>;
-	};
 };
 
 &qspi1 {
diff --git a/arch/arm/dts/sama5d2.dtsi b/arch/arm/dts/sama5d2.dtsi
index fadcc8381570..c9af5f2f7ad4 100644
--- a/arch/arm/dts/sama5d2.dtsi
+++ b/arch/arm/dts/sama5d2.dtsi
@@ -7,6 +7,8 @@
 	};
 };
 
+/delete-node/ &{/memory};
+
 &sdmmc0 {
 	assigned-clock-parents = <&pmc PMC_TYPE_CORE PMC_UTMI>;
 };
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index f388d00b8f47..8584dcd97944 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -40,6 +40,9 @@ config HAVE_AT91_I2S_MUX_CLK
 config HAVE_AT91_SAM9X60_PLL
 	bool
 
+config HAVE_AT91_DDRAMC
+	bool
+
 config AT91_MCI_PBL
 	bool
 	depends on MCI_ATMEL_SDHCI_PBL
@@ -87,6 +90,7 @@ config SOC_SAMA5D2
 	select PINCTRL_AT91PIO4
 	select HAS_MACB
 	select HAVE_MACH_ARM_HEAD
+	select HAVE_AT91_DDRAMC
 
 config SOC_SAMA5D3
 	bool
diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index 31a91b967ef4..3b9f60a95af3 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -12,6 +12,7 @@ obj-$(CONFIG_AT91_BOOTSTRAP)	+= bootstrap.o
 
 obj-y += at91sam9_reset.o
 obj-y += at91sam9g45_reset.o
+obj-pbl-$(CONFIG_HAVE_AT91_DDRAMC) += ddramc.o
 pbl-$(CONFIG_AT91_MCI_PBL) +=  xload-mmc.o
 
 obj-$(CONFIG_AT91SAM9_SMC) += sam9_smc.o
diff --git a/arch/arm/mach-at91/ddramc.c b/arch/arm/mach-at91/ddramc.c
new file mode 100644
index 000000000000..6dac7946896b
--- /dev/null
+++ b/arch/arm/mach-at91/ddramc.c
@@ -0,0 +1,57 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2020 Ahmad Fatoum <a.fatoum@pengutronix.de>
+ */
+
+#include <common.h>
+#include <init.h>
+#include <mach/ddramc.h>
+#include <mach/hardware.h>
+#include <asm/barebox-arm.h>
+#include <mach/at91_ddrsdrc.h>
+#include <asm/memory.h>
+#include <pbl.h>
+#include <io.h>
+
+static unsigned sama5_ramsize(void __iomem *base)
+{
+	return at91_get_ddram_size(base, true);
+}
+
+void __noreturn sama5d2_barebox_entry(void *boarddata)
+{
+	barebox_arm_entry(SAMA5_DDRCS, sama5_ramsize(SAMA5D2_BASE_MPDDRC),
+			  boarddata);
+}
+
+static int sama5_ddr_probe(struct device_d *dev)
+{
+	struct resource *iores;
+	void __iomem *base;
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+	base = IOMEM(iores->start);
+
+	arm_add_mem_device("ram0", SAMA5_DDRCS, sama5_ramsize(base));
+
+	return 0;
+}
+
+static struct of_device_id sama5_ddr_dt_ids[] = {
+	{ .compatible = "atmel,sama5d3-ddramc" },
+	{ /* sentinel */ }
+};
+
+static struct driver_d sama5_ddr_driver = {
+	.name   = "sama5-ddramc",
+	.probe  = sama5_ddr_probe,
+	.of_compatible = sama5_ddr_dt_ids,
+};
+
+static int sama5_ddr_init(void)
+{
+	return platform_driver_register(&sama5_ddr_driver);
+}
+mem_initcall(sama5_ddr_init);
diff --git a/arch/arm/mach-at91/include/mach/ddramc.h b/arch/arm/mach-at91/include/mach/ddramc.h
index 0b33afc21353..cd85bb6eab21 100644
--- a/arch/arm/mach-at91/include/mach/ddramc.h
+++ b/arch/arm/mach-at91/include/mach/ddramc.h
@@ -32,5 +32,7 @@ void at91_lpddr1_sdram_initialize(void __iomem *base_address,
 				  void __iomem *ram_address,
 				  struct at91_ddramc_register *ddramc_config);
 
+void __noreturn sama5d2_barebox_entry(void *boarddata);
+
 
 #endif /* #ifndef __DDRAMC_H__ */
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
