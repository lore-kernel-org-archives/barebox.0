Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x436.google.com ([2607:f8b0:4864:20::436])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heEeC-0006EI-7D
 for barebox@lists.infradead.org; Fri, 21 Jun 2019 08:11:51 +0000
Received: by mail-pf1-x436.google.com with SMTP id x15so3208506pfq.0
 for <barebox@lists.infradead.org>; Fri, 21 Jun 2019 01:11:47 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 21 Jun 2019 01:11:14 -0700
Message-Id: <20190621081116.18335-8-andrew.smirnov@gmail.com>
In-Reply-To: <20190621081116.18335-1-andrew.smirnov@gmail.com>
References: <20190621081116.18335-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 08/10] ARM: Rename zii-imx7d-rpu2 to zii-imx7d-dev
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

To prepare for addition of another ZII i.MX7D based board, i.MX7D
RMU2, rename zii-imx7d-rpu2 to zii-imx7d-dev to avoid any image naming
confusion.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 .../imx/{zii-imx7d-rpu2 => zii-imx7d-dev}/bootstrap.sh    | 0
 .../imx/{zii-imx7d-rpu2 => zii-imx7d-dev}/openocd.cfg     | 2 +-
 .../imx/{zii-imx7d-rpu2 => zii-imx7d-dev}/readme.rst      | 4 ++--
 arch/arm/boards/Makefile                                  | 2 +-
 .../arm/boards/{zii-imx7d-rpu2 => zii-imx7d-dev}/Makefile | 0
 arch/arm/boards/{zii-imx7d-rpu2 => zii-imx7d-dev}/board.c | 0
 .../flash-header-zii-imx7d-dev.imxcfg}                    | 0
 .../boards/{zii-imx7d-rpu2 => zii-imx7d-dev}/lowlevel.c   | 2 +-
 arch/arm/dts/Makefile                                     | 2 +-
 arch/arm/mach-imx/Kconfig                                 | 4 ++--
 images/Makefile.imx                                       | 8 ++++----
 11 files changed, 12 insertions(+), 12 deletions(-)
 rename Documentation/boards/imx/{zii-imx7d-rpu2 => zii-imx7d-dev}/bootstrap.sh (100%)
 rename Documentation/boards/imx/{zii-imx7d-rpu2 => zii-imx7d-dev}/openocd.cfg (98%)
 rename Documentation/boards/imx/{zii-imx7d-rpu2 => zii-imx7d-dev}/readme.rst (91%)
 rename arch/arm/boards/{zii-imx7d-rpu2 => zii-imx7d-dev}/Makefile (100%)
 rename arch/arm/boards/{zii-imx7d-rpu2 => zii-imx7d-dev}/board.c (100%)
 rename arch/arm/boards/{zii-imx7d-rpu2/flash-header-zii-imx7d-rpu2.imxcfg => zii-imx7d-dev/flash-header-zii-imx7d-dev.imxcfg} (100%)
 rename arch/arm/boards/{zii-imx7d-rpu2 => zii-imx7d-dev}/lowlevel.c (95%)

diff --git a/Documentation/boards/imx/zii-imx7d-rpu2/bootstrap.sh b/Documentation/boards/imx/zii-imx7d-dev/bootstrap.sh
similarity index 100%
rename from Documentation/boards/imx/zii-imx7d-rpu2/bootstrap.sh
rename to Documentation/boards/imx/zii-imx7d-dev/bootstrap.sh
diff --git a/Documentation/boards/imx/zii-imx7d-rpu2/openocd.cfg b/Documentation/boards/imx/zii-imx7d-dev/openocd.cfg
similarity index 98%
rename from Documentation/boards/imx/zii-imx7d-rpu2/openocd.cfg
rename to Documentation/boards/imx/zii-imx7d-dev/openocd.cfg
index 33e3bce9d..f971c3fb2 100644
--- a/Documentation/boards/imx/zii-imx7d-rpu2/openocd.cfg
+++ b/Documentation/boards/imx/zii-imx7d-dev/openocd.cfg
@@ -132,7 +132,7 @@ proc start_barebox { } {
 	set MX7_DDR_BASE_ADDR 0x80000000
  	echo "Bootstrap: Loading Barebox"
 	halt
-	load_image images/barebox-zii-imx7d-rpu2.img $MX7_DDR_BASE_ADDR bin
+	load_image images/barebox-zii-imx7d-dev.img $MX7_DDR_BASE_ADDR bin
 	arm core_state arm
 	echo [format "Bootstrap: Jumping to 0x%08x" $MX7_DDR_BASE_ADDR]
 	resume $MX7_DDR_BASE_ADDR
diff --git a/Documentation/boards/imx/zii-imx7d-rpu2/readme.rst b/Documentation/boards/imx/zii-imx7d-dev/readme.rst
similarity index 91%
rename from Documentation/boards/imx/zii-imx7d-rpu2/readme.rst
rename to Documentation/boards/imx/zii-imx7d-dev/readme.rst
index dd984ac17..d47bc90b0 100644
--- a/Documentation/boards/imx/zii-imx7d-rpu2/readme.rst
+++ b/Documentation/boards/imx/zii-imx7d-dev/readme.rst
@@ -21,14 +21,14 @@ follows:
 .. code-block:: sh
 
   cd barebox
-  Documentation/boards/imx/zii-imx7d-rpu2/bootstrap.sh
+  Documentation/boards/imx/zii-imx7d-dev/bootstrap.sh
 
 A custom OpenOCD binary and options can be specified as follows:
 
 .. code-block:: sh
 
   OPENOCD="../openocd/src/openocd -s ../openocd/tcl " \
-    Documentation/boards/imx/zii-imx7d-rpu2/bootstrap.sh
+    Documentation/boards/imx/zii-imx7d-dev/bootstrap.sh
 
 
 Disabling DSA in Embedeed Switch
diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index bdf78d068..a814ab823 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -164,7 +164,7 @@ obj-$(CONFIG_MACH_ZII_RDU1)			+= zii-imx51-rdu1/
 obj-$(CONFIG_MACH_ZII_RDU2)			+= zii-imx6q-rdu2/
 obj-$(CONFIG_MACH_ZII_IMX8MQ_DEV)		+= zii-imx8mq-dev/
 obj-$(CONFIG_MACH_ZII_VF610_DEV)		+= zii-vf610-dev/
-obj-$(CONFIG_MACH_ZII_IMX7D_RPU2)		+= zii-imx7d-rpu2/
+obj-$(CONFIG_MACH_ZII_IMX7D_DEV)		+= zii-imx7d-dev/
 obj-$(CONFIG_MACH_WAGO_PFC_AM35XX)		+= wago-pfc-am35xx/
 obj-$(CONFIG_MACH_LS1046ARDB)			+= ls1046ardb/
 obj-$(CONFIG_MACH_TQMLS1046A)			+= tqmls1046a/
diff --git a/arch/arm/boards/zii-imx7d-rpu2/Makefile b/arch/arm/boards/zii-imx7d-dev/Makefile
similarity index 100%
rename from arch/arm/boards/zii-imx7d-rpu2/Makefile
rename to arch/arm/boards/zii-imx7d-dev/Makefile
diff --git a/arch/arm/boards/zii-imx7d-rpu2/board.c b/arch/arm/boards/zii-imx7d-dev/board.c
similarity index 100%
rename from arch/arm/boards/zii-imx7d-rpu2/board.c
rename to arch/arm/boards/zii-imx7d-dev/board.c
diff --git a/arch/arm/boards/zii-imx7d-rpu2/flash-header-zii-imx7d-rpu2.imxcfg b/arch/arm/boards/zii-imx7d-dev/flash-header-zii-imx7d-dev.imxcfg
similarity index 100%
rename from arch/arm/boards/zii-imx7d-rpu2/flash-header-zii-imx7d-rpu2.imxcfg
rename to arch/arm/boards/zii-imx7d-dev/flash-header-zii-imx7d-dev.imxcfg
diff --git a/arch/arm/boards/zii-imx7d-rpu2/lowlevel.c b/arch/arm/boards/zii-imx7d-dev/lowlevel.c
similarity index 95%
rename from arch/arm/boards/zii-imx7d-rpu2/lowlevel.c
rename to arch/arm/boards/zii-imx7d-dev/lowlevel.c
index 1eeab7d21..d7f8feb95 100644
--- a/arch/arm/boards/zii-imx7d-rpu2/lowlevel.c
+++ b/arch/arm/boards/zii-imx7d-dev/lowlevel.c
@@ -39,7 +39,7 @@ static inline void setup_uart(void)
 	putc_ll('>');
 }
 
-ENTRY_FUNCTION(start_zii_imx7d_rpu2, r0, r1, r2)
+ENTRY_FUNCTION(start_zii_imx7d_dev, r0, r1, r2)
 {
 	imx7_cpu_lowlevel_init();
 
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 561653930..4c79b9880 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -133,7 +133,7 @@ pbl-dtb-$(CONFIG_MACH_MICROCHIP_KSZ9477_EVB) += at91-microchip-ksz9477-evb.dtb.o
 pbl-dtb-$(CONFIG_MACH_AT91SAM9X5EK) += at91sam9x5ek.dtb.o
 pbl-dtb-$(CONFIG_MACH_XILINX_ZCU104) += zynqmp-zcu104-revA.dtb.o
 
-pbl-dtb-$(CONFIG_MACH_ZII_IMX7D_RPU2) += imx7d-zii-rpu2.dtb.o
+pbl-dtb-$(CONFIG_MACH_ZII_IMX7D_DEV) += imx7d-zii-rpu2.dtb.o
 pbl-dtb-$(CONFIG_MACH_WAGO_PFC_AM35XX) += am35xx-pfc-750_820x.dtb.o
 pbl-dtb-$(CONFIG_MACH_LS1046ARDB) += fsl-ls1046a-rdb.dtb.o
 pbl-dtb-$(CONFIG_MACH_TQMLS1046A) += fsl-tqmls1046a-mbls10xxa.dtb.o
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 6a6aab634..b9374fe1d 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -461,8 +461,8 @@ config MACH_ZII_VF610_DEV
 	select ARCH_VF610
 	select CLKDEV_LOOKUP
 
-config MACH_ZII_IMX7D_RPU2
-	bool "ZII i.MX7D RPU2"
+config MACH_ZII_IMX7D_DEV
+	bool "ZII i.MX7D based devices"
 	select ARCH_IMX7
 
 config MACH_PHYTEC_PHYCORE_IMX7
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 9a7187ac7..826e774aa 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -551,10 +551,10 @@ CFG_start_imx7s_element14_warp7.pblb.imximg = $(board)/element14-warp7/flash-hea
 FILE_barebox-element14-imx7s-warp7.img = start_imx7s_element14_warp7.pblb.imximg
 image-$(CONFIG_MACH_WARP7) += barebox-element14-imx7s-warp7.img
 
-pblb-$(CONFIG_MACH_ZII_IMX7D_RPU2) += start_zii_imx7d_rpu2
-CFG_start_zii_imx7d_rpu2.pblb.imximg = $(board)/zii-imx7d-rpu2/flash-header-zii-imx7d-rpu2.imxcfg
-FILE_barebox-zii-imx7d-rpu2.img = start_zii_imx7d_rpu2.pblb.imximg
-image-$(CONFIG_MACH_ZII_IMX7D_RPU2) += barebox-zii-imx7d-rpu2.img
+pblb-$(CONFIG_MACH_ZII_IMX7D_DEV) += start_zii_imx7d_dev
+CFG_start_zii_imx7d_dev.pblb.imximg = $(board)/zii-imx7d-dev/flash-header-zii-imx7d-dev.imxcfg
+FILE_barebox-zii-imx7d-dev.img = start_zii_imx7d_dev.pblb.imximg
+image-$(CONFIG_MACH_ZII_IMX7D_DEV) += barebox-zii-imx7d-dev.img
 
 # ----------------------- i.MX8mq based boards --------------------------
 pblb-$(CONFIG_MACH_NXP_IMX8MQ_EVK) += start_nxp_imx8mq_evk
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
