Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([2a01:4f8:c17:c88::2]
 helo=margratgarlick.emantor.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ8Bp-0008Mc-4s
 for barebox@lists.infradead.org; Mon, 13 May 2019 10:28:15 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Mon, 13 May 2019 12:28:05 +0200
Message-Id: <20190513102805.4326-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH v2] ARM: i.MX6: add support for Digi CCIMX6UL SBC Pro
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Add support for the Digi CCIMX6UL SBC Pro.
It is based on the Digi CCIMX6UL SOM with 256MB RAM and 256MB NAND
flash.

v2:
- fix includes
- rename folder to som
- switch to compressed dtb
- remove the unnecessary get_runtime_offset
all from Ahmad Fatoum

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 .../boards/imx/digi-ccimx6ulsbcpro.rst        | 26 ++++++
 arch/arm/boards/Makefile                      |  3 +-
 arch/arm/boards/digi-ccimx6ulsom/Makefile     |  2 +
 arch/arm/boards/digi-ccimx6ulsom/board.c      | 36 ++++++++
 .../flash-header-imx6ul-ccimx6ulsbcpro.imxcfg | 82 +++++++++++++++++++
 arch/arm/boards/digi-ccimx6ulsom/lowlevel.c   | 32 ++++++++
 arch/arm/dts/Makefile                         |  1 +
 arch/arm/dts/imx6ul-ccimx6ulsbcpro.dts        | 41 ++++++++++
 arch/arm/mach-imx/Kconfig                     |  6 ++
 images/Makefile.imx                           |  5 ++
 10 files changed, 233 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/boards/imx/digi-ccimx6ulsbcpro.rst
 create mode 100644 arch/arm/boards/digi-ccimx6ulsom/Makefile
 create mode 100644 arch/arm/boards/digi-ccimx6ulsom/board.c
 create mode 100644 arch/arm/boards/digi-ccimx6ulsom/flash-header-imx6ul-ccimx6ulsbcpro.imxcfg
 create mode 100644 arch/arm/boards/digi-ccimx6ulsom/lowlevel.c
 create mode 100644 arch/arm/dts/imx6ul-ccimx6ulsbcpro.dts

diff --git a/Documentation/boards/imx/digi-ccimx6ulsbcpro.rst b/Documentation/boards/imx/digi-ccimx6ulsbcpro.rst
new file mode 100644
index 0000000000..bcb2ec2f07
--- /dev/null
+++ b/Documentation/boards/imx/digi-ccimx6ulsbcpro.rst
@@ -0,0 +1,26 @@
+Digi CC-IMX6UL-SBC-PRO
+======================
+
+This board is based on the i.MX6UL SoC.
+
+The SBC Pro is shipped with:
+
+  * 256MiB NAND flash
+  * 256MiB DDR3 SDRAM
+
+see https://www.digi.com/products/embedded-systems/single-board-computers/connectcore-for-i-mx6ul-sbc-pro
+for more information.
+
+MAC addresses
+-------------
+The Digi modules save their MAC addresses not in the OCOTP nodes, but in the
+U-Boot environment. It is advised to boot the board using the shipped U-Boot
+Bootloader and to read out and save the MAC addresses for the board.
+The environment variables which contain the addresses are `$ethaddr` and
+`$eth1addr`.
+The MAC addresses can than be persisted to the barebox environment by using
+
+.. code-block:: sh
+
+  nv dev.eth0.ethaddr=<eth0addr>
+  nv dev.eth1.ethaddr=<eth1addr>
diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index cbd6bd1ed6..bdf78d068d 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -23,6 +23,7 @@ obj-$(CONFIG_MACH_CFA10036)			+= crystalfontz-cfa10036/
 obj-$(CONFIG_MACH_CHUMBY)			+= chumby_falconwing/
 obj-$(CONFIG_MACH_CLEP7212)			+= clep7212/
 obj-$(CONFIG_MACH_DFI_FS700_M60)		+= dfi-fs700-m60/
+obj-$(CONFIG_MACH_DIGI_CCIMX6ULSBCPRO)		+= digi-ccimx6ulsom/
 obj-$(CONFIG_MACH_DUCKBILL)			+= duckbill/
 obj-$(CONFIG_MACH_DSS11)			+= dss11/
 obj-$(CONFIG_MACH_EDB93012)			+= edb93xx/
@@ -166,4 +167,4 @@ obj-$(CONFIG_MACH_ZII_VF610_DEV)		+= zii-vf610-dev/
 obj-$(CONFIG_MACH_ZII_IMX7D_RPU2)		+= zii-imx7d-rpu2/
 obj-$(CONFIG_MACH_WAGO_PFC_AM35XX)		+= wago-pfc-am35xx/
 obj-$(CONFIG_MACH_LS1046ARDB)			+= ls1046ardb/
-obj-$(CONFIG_MACH_TQMLS1046A)			+= tqmls1046a/
\ No newline at end of file
+obj-$(CONFIG_MACH_TQMLS1046A)			+= tqmls1046a/
diff --git a/arch/arm/boards/digi-ccimx6ulsom/Makefile b/arch/arm/boards/digi-ccimx6ulsom/Makefile
new file mode 100644
index 0000000000..01c7a259e9
--- /dev/null
+++ b/arch/arm/boards/digi-ccimx6ulsom/Makefile
@@ -0,0 +1,2 @@
+obj-y += board.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/digi-ccimx6ulsom/board.c b/arch/arm/boards/digi-ccimx6ulsom/board.c
new file mode 100644
index 0000000000..1fb451548f
--- /dev/null
+++ b/arch/arm/boards/digi-ccimx6ulsom/board.c
@@ -0,0 +1,36 @@
+/*
+ * Copyright (C) 2019 Rouven Czerwinski, Pengutronix
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation.
+ *
+ */
+
+#include <common.h>
+#include <init.h>
+#include <mach/generic.h>
+#include <mach/bbu.h>
+
+static int digi_ccimx6ulsbcpro_device_init(void)
+{
+	if (!of_machine_is_compatible("digi,ccimx6ulsbcpro"))
+		return 0;
+
+	imx6_bbu_nand_register_handler("nand", BBU_HANDLER_FLAG_DEFAULT);
+
+	barebox_set_hostname("ccimx6ulsbcpro");
+
+	return 0;
+}
+device_initcall(digi_ccimx6ulsbcpro_device_init);
diff --git a/arch/arm/boards/digi-ccimx6ulsom/flash-header-imx6ul-ccimx6ulsbcpro.imxcfg b/arch/arm/boards/digi-ccimx6ulsom/flash-header-imx6ul-ccimx6ulsbcpro.imxcfg
new file mode 100644
index 0000000000..36edad7a3e
--- /dev/null
+++ b/arch/arm/boards/digi-ccimx6ulsom/flash-header-imx6ul-ccimx6ulsbcpro.imxcfg
@@ -0,0 +1,82 @@
+loadaddr 0x80000000
+soc imx6
+dcdofs 0x400
+
+/* Enable all clocks */
+wm 32 0x020c4068 0xffffffff
+wm 32 0x020c406c 0xffffffff
+wm 32 0x020c4070 0xffffffff
+wm 32 0x020c4074 0xffffffff
+wm 32 0x020c4078 0xffffffff
+wm 32 0x020c407c 0xffffffff
+wm 32 0x020c4080 0xffffffff
+
+/* IOMUX */
+/* DDR IO type */
+wm 32 0x020E04B4 0x000C0000
+wm 32 0x020E04AC 0x00000000
+/* Clock */
+wm 32 0x020E027C 0x00000030
+/* Control */
+wm 32 0x020E0250 0x00000030
+wm 32 0x020E024C 0x00000030
+wm 32 0x020E0490 0x00000030
+wm 32 0x020E0288 0x00000030
+wm 32 0x020E0270 0x00000000
+wm 32 0x020E0260 0x00000030
+wm 32 0x020E0264 0x00000030
+wm 32 0x020E04A0 0x00000030
+/* Data strobe */
+wm 32 0x020E0494 0x00020000
+wm 32 0x020E0280 0x00000030
+wm 32 0x020E0284 0x00000030
+/* Data */
+wm 32 0x020E04B0 0x00020000
+wm 32 0x020E0498 0x00000030
+wm 32 0x020E04A4 0x00000030
+wm 32 0x020E0244 0x00000030
+wm 32 0x020E0248 0x00000030
+
+/* DDR Controller registers */
+wm 32 0x021B001C 0x00008000
+wm 32 0x021B0800 0xA1390003
+/* Calibration values */
+wm 32 0x021B080C 0x00000000
+wm 32 0x021B083C 0x413B013B
+wm 32 0x021B0848 0x4040373E
+wm 32 0x021B0850 0x40405954
+wm 32 0x021B081C 0x33333333
+wm 32 0x021B0820 0x33333333
+wm 32 0x021B082C 0xf3333333
+wm 32 0x021B0830 0xf3333333
+/* END of calibration values */
+wm 32 0x021B08C0 0x00921012
+wm 32 0x021B08b8 0x00000800
+
+/* MMDC init */
+wm 32 0x021B0004 0x0002002D
+wm 32 0x021B0008 0x1b333030
+wm 32 0x021B000C 0x676B52F3
+wm 32 0x021B0010 0xB66D0B63
+wm 32 0x021B0014 0x01FF00DB
+/* Consider reducing RALAT (currently set to 5) */
+wm 32 0x021B0018 0x00201740
+wm 32 0x021B001C 0x00008000
+wm 32 0x021B002C 0x000026D2
+wm 32 0x021B0030 0x006B1023
+wm 32 0x021B0040 0x00000047
+wm 32 0x021B0000 0x83180000
+
+/* Mode registers writes for CS0 */
+wm 32 0x021B001C 0x02008032
+wm 32 0x021B001C 0x00008033
+wm 32 0x021B001C 0x00048031
+wm 32 0x021B001C 0x15208030
+wm 32 0x021B001C 0x04008040
+
+/* Final DDR setup */
+wm 32 0x021B0020 0x00000800
+wm 32 0x021B0818 0x00000227
+wm 32 0x021B0004 0x0002552D
+wm 32 0x021B0404 0x00011006
+wm 32 0x021B001C 0x00000000
diff --git a/arch/arm/boards/digi-ccimx6ulsom/lowlevel.c b/arch/arm/boards/digi-ccimx6ulsom/lowlevel.c
new file mode 100644
index 0000000000..ac76a843ac
--- /dev/null
+++ b/arch/arm/boards/digi-ccimx6ulsom/lowlevel.c
@@ -0,0 +1,32 @@
+#include <common.h>
+#include <mach/generic.h>
+#include <asm/barebox-arm.h>
+#include <mach/esdctl.h>
+#include <asm/cache.h>
+
+
+extern char __dtb_z_imx6ul_ccimx6ulsbcpro_start[];
+
+ENTRY_FUNCTION(start_imx6ul_ccimx6ulsbcpro, r0, r1, r2)
+{
+	void *fdt;
+
+	imx6ul_cpu_lowlevel_init();
+
+	arm_setup_stack(0x00910000 - 8);
+
+	arm_early_mmu_cache_invalidate();
+
+	relocate_to_current_adr();
+	setup_c();
+	barrier();
+
+	/* disable all watchdog powerdown counters */
+	writew(0x0, 0x020bc008);
+	writew(0x0, 0x020c0008);
+	writew(0x0, 0x021e4008);
+
+	fdt = __dtb_z_imx6ul_ccimx6ulsbcpro_start;
+
+	imx6ul_barebox_entry(fdt);
+}
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index c3292354a1..561653930b 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -23,6 +23,7 @@ pbl-dtb-$(CONFIG_MACH_FREESCALE_MX53_LOCO) += imx53-qsb.dtb.o imx53-qsrb.dtb.o
 pbl-dtb-$(CONFIG_MACH_TX53) += imx53-tx53-xx30.dtb.o imx53-tx53-1011.dtb.o
 pbl-dtb-$(CONFIG_MACH_CCMX51) += imx51-ccxmx51.dtb.o
 pbl-dtb-$(CONFIG_MACH_CCMX53) += imx53-ccxmx53.dtb.o
+pbl-dtb-$(CONFIG_MACH_DIGI_CCIMX6ULSBCPRO) += imx6ul-ccimx6ulsbcpro.dtb.o
 pbl-dtb-$(CONFIG_MACH_FREESCALE_MX53_VMX53) += imx53-voipac-bsb.dtb.o
 pbl-dtb-$(CONFIG_MACH_FREESCALE_MX7_SABRESD) += imx7d-sdb.dtb.o
 pbl-dtb-$(CONFIG_MACH_GK802) += imx6q-gk802.dtb.o
diff --git a/arch/arm/dts/imx6ul-ccimx6ulsbcpro.dts b/arch/arm/dts/imx6ul-ccimx6ulsbcpro.dts
new file mode 100644
index 0000000000..1139c4b7d6
--- /dev/null
+++ b/arch/arm/dts/imx6ul-ccimx6ulsbcpro.dts
@@ -0,0 +1,41 @@
+#include <arm/imx6ul-ccimx6ulsbcpro.dts>
+
+/{
+	chosen {
+		stdout-path = &uart5;
+
+		environment-nand {
+			compatible = "barebox,environment";
+			device-path = &gpmi, "partname:barebox-environment";
+			status = "okay";
+		};
+	};
+};
+
+&gpmi {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_gpmi_nand>;
+	nand-on-flash-bbt;
+	status = "okay";
+
+	partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		partition@0 {
+			label = "barebox";
+			reg = <0x0 0x400000>;
+		};
+
+		partition@400000 {
+			label = "barebox-environment";
+			reg = <0x400000 0x100000>;
+		};
+
+		partition@500000 {
+			label = "root";
+			reg = <0x500000 0x0>;
+		};
+	};
+};
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 71d37cee90..6a6aab634c 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -505,6 +505,12 @@ config MACH_GRINN_LITEBOARD
 	bool "Grinn liteboard"
 	select ARCH_IMX6UL
 
+config MACH_DIGI_CCIMX6ULSBCPRO
+	bool "Digi Internal CC-IMX6UL SBC Pro"
+	select ARCH_IMX6
+	select ARCH_IMX6UL
+	select ARM_USE_COMPRESSED_DTB
+
 endif
 
 # ----------------------------------------------------------
diff --git a/images/Makefile.imx b/images/Makefile.imx
index e6f741cdb4..9a7187ac78 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -519,6 +519,11 @@ CFG_start_imx6ul_pico_hobbit_512mb.pblb.imximg = $(board)/technexion-pico-hobbit
 FILE_barebox-imx6ul-pico-hobbit-512mb.img = start_imx6ul_pico_hobbit_512mb.pblb.imximg
 image-$(CONFIG_MACH_TECHNEXION_PICO_HOBBIT) += barebox-imx6ul-pico-hobbit-512mb.img
 
+pblb-$(CONFIG_MACH_DIGI_CCIMX6ULSBCPRO) += start_imx6ul_ccimx6ulsbcpro
+CFG_start_imx6ul_ccimx6ulsbcpro.pblb.imximg = $(board)/digi-ccimx6ulsom/flash-header-imx6ul-ccimx6ulsbcpro.imxcfg
+FILE_barebox-imx6ul-ccimx6ulsbcpro.img = start_imx6ul_ccimx6ulsbcpro.pblb.imximg
+image-$(CONFIG_MACH_DIGI_CCIMX6ULSBCPRO) += barebox-imx6ul-ccimx6ulsbcpro.img
+
 # ----------------------- vf6xx based boards ---------------------------
 pblb-$(CONFIG_MACH_VF610_TWR) += start_vf610_twr
 CFG_start_vf610_twr.pblb.imximg = $(board)/freescale-vf610-twr/flash-header-vf610-twr.imxcfg
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
