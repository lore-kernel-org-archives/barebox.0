Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b08Kv-0007KR-MC
 for barebox@lists.infradead.org; Tue, 10 May 2016 14:08:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 10 May 2016 16:08:04 +0200
Message-Id: <1462889289-24215-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/6] bootm: Move bootm options to common/Kconfig
To: Barebox List <barebox@lists.infradead.org>

bootm has a C API, so the bootm options have to depend on the
option providing the bootm code (CONFIG_BOOTM), not on the
option providing the command (CONFIG_CMD_BOOTM). Fixing the
dependencies makes it possible to fully use bootm from C without
enabling the bootm command support.
This also removes the CMD_ prefix from the options which means
we have to update the defconfigs aswell.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/am335x_defconfig                  |  8 +-
 arch/arm/configs/animeo_ip_defconfig               | 10 +--
 arch/arm/configs/archosg9_defconfig                | 12 +--
 arch/arm/configs/at91rm9200ek_defconfig            | 10 +--
 arch/arm/configs/at91sam9260ek_defconfig           |  8 +-
 arch/arm/configs/at91sam9261ek_defconfig           |  4 +-
 .../configs/at91sam9261ek_first_stage_defconfig    |  4 +-
 arch/arm/configs/at91sam9263ek_defconfig           |  8 +-
 arch/arm/configs/at91sam9g10ek_defconfig           |  4 +-
 arch/arm/configs/at91sam9g20ek_defconfig           |  8 +-
 arch/arm/configs/at91sam9m10g45ek_defconfig        | 10 +--
 arch/arm/configs/at91sam9m10ihd_defconfig          | 12 +--
 arch/arm/configs/at91sam9n12ek_defconfig           |  8 +-
 arch/arm/configs/at91sam9x5ek_defconfig            |  8 +-
 arch/arm/configs/ccmx51_defconfig                  |  2 +-
 arch/arm/configs/cfa10036_defconfig                |  4 +-
 arch/arm/configs/clps711x_defconfig                |  4 +-
 arch/arm/configs/cupid_defconfig                   | 10 +--
 arch/arm/configs/datamodul-edm-qmx6_defconfig      | 10 +--
 arch/arm/configs/duckbill_defconfig                |  6 +-
 arch/arm/configs/efika-mx-smartbook_defconfig      | 10 +--
 arch/arm/configs/eukrea_cpuimx25_defconfig         | 10 +--
 arch/arm/configs/eukrea_cpuimx27_defconfig         |  2 +-
 arch/arm/configs/eukrea_cpuimx35_defconfig         | 10 +--
 arch/arm/configs/eukrea_cpuimx51_defconfig         | 10 +--
 arch/arm/configs/freescale-mx21-ads_defconfig      |  2 +-
 arch/arm/configs/freescale-mx25-3ds_defconfig      | 10 +--
 arch/arm/configs/freescale-mx27-ads_defconfig      |  2 +-
 arch/arm/configs/freescale-mx28-evk_defconfig      |  6 +-
 arch/arm/configs/freescale-mx35-3ds_defconfig      | 10 +--
 arch/arm/configs/freescale-mx53-smd_defconfig      | 10 +--
 arch/arm/configs/friendlyarm_mini6410_defconfig    |  2 +-
 arch/arm/configs/friendlyarm_tiny6410_defconfig    |  2 +-
 arch/arm/configs/haba_knx_lite_defconfig           | 10 +--
 arch/arm/configs/highbank_defconfig                | 10 +--
 arch/arm/configs/imx233-olinuxino_defconfig        | 10 +--
 arch/arm/configs/imx_defconfig                     |  8 +-
 arch/arm/configs/imx_v7_defconfig                  | 10 +--
 arch/arm/configs/lubbock_defconfig                 |  8 +-
 arch/arm/configs/mainstone_defconfig               |  8 +-
 arch/arm/configs/mioa701_defconfig                 |  8 +-
 arch/arm/configs/mmccpu_defconfig                  |  2 +-
 arch/arm/configs/mvebu_defconfig                   | 10 +--
 arch/arm/configs/neso_defconfig                    | 10 +--
 arch/arm/configs/nhk8815_defconfig                 |  2 +-
 arch/arm/configs/omap3530_beagle_defconfig         | 10 +--
 arch/arm/configs/panda_defconfig                   | 10 +--
 arch/arm/configs/phytec-phycard-omap3_defconfig    |  2 +-
 arch/arm/configs/phytec-phycore-imx31_defconfig    | 10 +--
 arch/arm/configs/phytec-phycore-imx35_defconfig    | 10 +--
 arch/arm/configs/phytec-phycore-omap4460_defconfig | 10 +--
 arch/arm/configs/phytec-phycore-pxa270_defconfig   | 10 +--
 arch/arm/configs/pm9261_defconfig                  |  2 +-
 arch/arm/configs/pm9263_defconfig                  |  2 +-
 arch/arm/configs/pm9g45_defconfig                  | 10 +--
 arch/arm/configs/qil_a9260_128mib_defconfig        | 10 +--
 arch/arm/configs/qil_a9260_defconfig               | 10 +--
 arch/arm/configs/qil_a9g20_128mib_defconfig        | 10 +--
 arch/arm/configs/qil_a9g20_defconfig               | 10 +--
 arch/arm/configs/rockchip_defconfig                | 12 +--
 arch/arm/configs/rpi2_defconfig                    |  8 +-
 arch/arm/configs/rpi_defconfig                     |  8 +-
 arch/arm/configs/sama5d3_xplained_defconfig        | 10 +--
 arch/arm/configs/sama5d3xek_defconfig              | 10 +--
 arch/arm/configs/sama5d4_xplained_defconfig        | 10 +--
 arch/arm/configs/sama5d4ek_defconfig               | 10 +--
 arch/arm/configs/scb9328_defconfig                 | 10 +--
 arch/arm/configs/socfpga_defconfig                 |  8 +-
 arch/arm/configs/tegra_v7_defconfig                |  4 +-
 arch/arm/configs/telit_evk_pro3_defconfig          |  8 +-
 arch/arm/configs/tny_a9260_defconfig               |  8 +-
 arch/arm/configs/tny_a9263_defconfig               |  8 +-
 arch/arm/configs/tny_a9g20_defconfig               |  8 +-
 arch/arm/configs/tqma53_defconfig                  | 10 +--
 arch/arm/configs/tx28stk5_defconfig                | 10 +--
 arch/arm/configs/tx51stk5_defconfig                |  6 +-
 arch/arm/configs/tx53stk5_defconfig                | 10 +--
 arch/arm/configs/usb_a9260_defconfig               | 10 +--
 arch/arm/configs/usb_a9263_128mib_defconfig        | 10 +--
 arch/arm/configs/usb_a9263_defconfig               | 10 +--
 arch/arm/configs/usb_a9g20_128mib_defconfig        | 10 +--
 arch/arm/configs/usb_a9g20_defconfig               | 10 +--
 arch/arm/configs/versatilepb_arm1176_defconfig     | 10 +--
 arch/arm/configs/versatilepb_defconfig             | 10 +--
 arch/arm/configs/vexpress_ca9_defconfig            |  8 +-
 arch/arm/configs/vexpress_defconfig                |  8 +-
 arch/arm/configs/vincell_defconfig                 | 10 +--
 arch/arm/configs/zedboard_defconfig                |  8 +-
 arch/arm/configs/zylonite310_defconfig             |  8 +-
 arch/arm/lib/bootm.c                               |  4 +-
 arch/blackfin/configs/ipe337_defconfig             |  2 +-
 arch/efi/configs/efi_defconfig                     |  8 +-
 arch/mips/configs/dlink-dir-320_defconfig          |  2 +-
 arch/mips/configs/gxemul-malta_defconfig           |  2 +-
 arch/mips/configs/img-ci20_defconfig               | 10 +--
 arch/mips/configs/qemu-malta_defconfig             |  2 +-
 arch/mips/configs/ritmix-rzx50_defconfig           | 10 +--
 arch/nios2/configs/generic_defconfig               |  4 +-
 arch/ppc/configs/p1010rdb_defconfig                |  2 +-
 arch/ppc/configs/p1022ds_defconfig                 |  2 +-
 arch/ppc/configs/pcm030_defconfig                  |  2 +-
 commands/Kconfig                                   | 86 +--------------------
 commands/bootm.c                                   | 12 +--
 common/Kconfig                                     | 89 +++++++++++++++++++++-
 common/bootm.c                                     |  8 +-
 common/image.c                                     |  2 +-
 common/uimage.c                                    |  2 +-
 include/boot.h                                     |  2 +-
 include/image.h                                    |  2 +-
 109 files changed, 485 insertions(+), 486 deletions(-)

diff --git a/arch/arm/configs/am335x_defconfig b/arch/arm/configs/am335x_defconfig
index 9196fb8..96c6699 100644
--- a/arch/arm/configs/am335x_defconfig
+++ b/arch/arm/configs/am335x_defconfig
@@ -31,10 +31,10 @@ CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_ARM_MMUINFO=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
 # CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_BOOTZ=y
 CONFIG_CMD_GO=y
diff --git a/arch/arm/configs/animeo_ip_defconfig b/arch/arm/configs/animeo_ip_defconfig
index 825c5e4..d4fbfef 100644
--- a/arch/arm/configs/animeo_ip_defconfig
+++ b/arch/arm/configs/animeo_ip_defconfig
@@ -29,11 +29,11 @@ CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_FLASH=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_UIMAGE=y
 # CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_RESET=y
diff --git a/arch/arm/configs/archosg9_defconfig b/arch/arm/configs/archosg9_defconfig
index 4bafcf9..e7d4672 100644
--- a/arch/arm/configs/archosg9_defconfig
+++ b/arch/arm/configs/archosg9_defconfig
@@ -23,12 +23,12 @@ CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_ARM_MMUINFO=y
 CONFIG_CMD_BOOT_ORDER=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
-CONFIG_CMD_BOOTM_AIMAGE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_AIMAGE=y
 # CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_GO=y
 CONFIG_CMD_RESET=y
diff --git a/arch/arm/configs/at91rm9200ek_defconfig b/arch/arm/configs/at91rm9200ek_defconfig
index 03fca04..cca69b8 100644
--- a/arch/arm/configs/at91rm9200ek_defconfig
+++ b/arch/arm/configs/at91rm9200ek_defconfig
@@ -32,11 +32,11 @@ CONFIG_CMD_MTEST_ALTERNATIVE=y
 CONFIG_CMD_FLASH=y
 CONFIG_CMD_BOOTM_ZLIB=y
 CONFIG_CMD_BOOTM_BZLIB=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 # CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
diff --git a/arch/arm/configs/at91sam9260ek_defconfig b/arch/arm/configs/at91sam9260ek_defconfig
index 6e67f1f..5190b19 100644
--- a/arch/arm/configs/at91sam9260ek_defconfig
+++ b/arch/arm/configs/at91sam9260ek_defconfig
@@ -30,10 +30,10 @@ CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_MTEST=y
 CONFIG_CMD_MTEST_ALTERNATIVE=y
 CONFIG_CMD_FLASH=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_UIMAGE=y
 # CONFIG_CMD_BOOTZ is not set
 # CONFIG_CMD_BOOTU is not set
diff --git a/arch/arm/configs/at91sam9261ek_defconfig b/arch/arm/configs/at91sam9261ek_defconfig
index 59953d7..2febff0 100644
--- a/arch/arm/configs/at91sam9261ek_defconfig
+++ b/arch/arm/configs/at91sam9261ek_defconfig
@@ -33,8 +33,8 @@ CONFIG_CMD_LOADB=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_MTEST=y
 CONFIG_CMD_FLASH=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_INITRD=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_INITRD=y
 CONFIG_CMD_UIMAGE=y
 # CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_RESET=y
diff --git a/arch/arm/configs/at91sam9261ek_first_stage_defconfig b/arch/arm/configs/at91sam9261ek_first_stage_defconfig
index 465f167..36b2dad 100644
--- a/arch/arm/configs/at91sam9261ek_first_stage_defconfig
+++ b/arch/arm/configs/at91sam9261ek_first_stage_defconfig
@@ -34,8 +34,8 @@ CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_FLASH=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_INITRD=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_INITRD=y
 CONFIG_CMD_UIMAGE=y
 # CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_RESET=y
diff --git a/arch/arm/configs/at91sam9263ek_defconfig b/arch/arm/configs/at91sam9263ek_defconfig
index d7d147a..5154c78 100644
--- a/arch/arm/configs/at91sam9263ek_defconfig
+++ b/arch/arm/configs/at91sam9263ek_defconfig
@@ -26,10 +26,10 @@ CONFIG_CMD_LOADB=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_MTEST=y
 CONFIG_CMD_FLASH=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_UIMAGE=y
 # CONFIG_CMD_BOOTZ is not set
 # CONFIG_CMD_BOOTU is not set
diff --git a/arch/arm/configs/at91sam9g10ek_defconfig b/arch/arm/configs/at91sam9g10ek_defconfig
index 862d709..1c913c0 100644
--- a/arch/arm/configs/at91sam9g10ek_defconfig
+++ b/arch/arm/configs/at91sam9g10ek_defconfig
@@ -33,8 +33,8 @@ CONFIG_CMD_LOADB=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_MTEST=y
 CONFIG_CMD_FLASH=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_INITRD=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_INITRD=y
 CONFIG_CMD_UIMAGE=y
 # CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_RESET=y
diff --git a/arch/arm/configs/at91sam9g20ek_defconfig b/arch/arm/configs/at91sam9g20ek_defconfig
index 0faa485..2f22328 100644
--- a/arch/arm/configs/at91sam9g20ek_defconfig
+++ b/arch/arm/configs/at91sam9g20ek_defconfig
@@ -30,10 +30,10 @@ CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_MTEST=y
 CONFIG_CMD_MTEST_ALTERNATIVE=y
 CONFIG_CMD_FLASH=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_UIMAGE=y
 # CONFIG_CMD_BOOTZ is not set
 # CONFIG_CMD_BOOTU is not set
diff --git a/arch/arm/configs/at91sam9m10g45ek_defconfig b/arch/arm/configs/at91sam9m10g45ek_defconfig
index 292b507..1ba7a9c 100644
--- a/arch/arm/configs/at91sam9m10g45ek_defconfig
+++ b/arch/arm/configs/at91sam9m10g45ek_defconfig
@@ -33,11 +33,11 @@ CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_FLASH=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_UIMAGE=y
 # CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_RESET=y
diff --git a/arch/arm/configs/at91sam9m10ihd_defconfig b/arch/arm/configs/at91sam9m10ihd_defconfig
index a39282d..cc6d10c 100644
--- a/arch/arm/configs/at91sam9m10ihd_defconfig
+++ b/arch/arm/configs/at91sam9m10ihd_defconfig
@@ -34,12 +34,12 @@ CONFIG_CMD_LOADB=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_FLASH=y
 CONFIG_CMD_UBIFORMAT=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
-CONFIG_CMD_BOOTM_AIMAGE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_AIMAGE=y
 CONFIG_CMD_UIMAGE=y
 # CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_RESET=y
diff --git a/arch/arm/configs/at91sam9n12ek_defconfig b/arch/arm/configs/at91sam9n12ek_defconfig
index 03fb063..8d1216e 100644
--- a/arch/arm/configs/at91sam9n12ek_defconfig
+++ b/arch/arm/configs/at91sam9n12ek_defconfig
@@ -30,10 +30,10 @@ CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_FLASH=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_UIMAGE=y
 # CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_RESET=y
diff --git a/arch/arm/configs/at91sam9x5ek_defconfig b/arch/arm/configs/at91sam9x5ek_defconfig
index 48c88bd..22ad72f 100644
--- a/arch/arm/configs/at91sam9x5ek_defconfig
+++ b/arch/arm/configs/at91sam9x5ek_defconfig
@@ -30,10 +30,10 @@ CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_FLASH=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_UIMAGE=y
 # CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_RESET=y
diff --git a/arch/arm/configs/ccmx51_defconfig b/arch/arm/configs/ccmx51_defconfig
index 4c54d4d..4e5fe2f 100644
--- a/arch/arm/configs/ccmx51_defconfig
+++ b/arch/arm/configs/ccmx51_defconfig
@@ -24,7 +24,7 @@ CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_CRC=y
 CONFIG_CMD_CRC_CMP=y
 CONFIG_CMD_FLASH=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_CMD_BOOTZ=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
diff --git a/arch/arm/configs/cfa10036_defconfig b/arch/arm/configs/cfa10036_defconfig
index 277a3ec..9d40a3c 100644
--- a/arch/arm/configs/cfa10036_defconfig
+++ b/arch/arm/configs/cfa10036_defconfig
@@ -26,8 +26,8 @@ CONFIG_CMD_MENU_MANAGEMENT=y
 CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_MTEST=y
 CONFIG_CMD_MTEST_ALTERNATIVE=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_OFTREE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_OFTREE=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_OFTREE=y
diff --git a/arch/arm/configs/clps711x_defconfig b/arch/arm/configs/clps711x_defconfig
index 3c81776..9312a25 100644
--- a/arch/arm/configs/clps711x_defconfig
+++ b/arch/arm/configs/clps711x_defconfig
@@ -20,8 +20,8 @@ CONFIG_CMD_IOMEM=y
 CONFIG_CMD_CRC=y
 CONFIG_CMD_CRC_CMP=y
 CONFIG_CMD_FLASH=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_INITRD=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_INITRD=y
 CONFIG_CMD_BOOTZ=y
 # CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_RESET=y
diff --git a/arch/arm/configs/cupid_defconfig b/arch/arm/configs/cupid_defconfig
index 6d5e3f5..4b90556 100644
--- a/arch/arm/configs/cupid_defconfig
+++ b/arch/arm/configs/cupid_defconfig
@@ -31,11 +31,11 @@ CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_FLASH=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_UIMAGE=y
 # CONFIG_CMD_BOOTZ is not set
 # CONFIG_CMD_BOOTU is not set
diff --git a/arch/arm/configs/datamodul-edm-qmx6_defconfig b/arch/arm/configs/datamodul-edm-qmx6_defconfig
index 16d4f3d..2a4a2ef 100644
--- a/arch/arm/configs/datamodul-edm-qmx6_defconfig
+++ b/arch/arm/configs/datamodul-edm-qmx6_defconfig
@@ -39,11 +39,11 @@ CONFIG_CMD_CRC=y
 CONFIG_CMD_CRC_CMP=y
 CONFIG_CMD_MD5SUM=y
 CONFIG_CMD_FLASH=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 # CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
diff --git a/arch/arm/configs/duckbill_defconfig b/arch/arm/configs/duckbill_defconfig
index 6210416..74e0b78 100644
--- a/arch/arm/configs/duckbill_defconfig
+++ b/arch/arm/configs/duckbill_defconfig
@@ -23,9 +23,9 @@ CONFIG_CMD_DMESG=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_UIMAGE=y
diff --git a/arch/arm/configs/efika-mx-smartbook_defconfig b/arch/arm/configs/efika-mx-smartbook_defconfig
index c078ff1..816cf26 100644
--- a/arch/arm/configs/efika-mx-smartbook_defconfig
+++ b/arch/arm/configs/efika-mx-smartbook_defconfig
@@ -43,11 +43,11 @@ CONFIG_CMD_CRC=y
 CONFIG_CMD_CRC_CMP=y
 CONFIG_CMD_MD5SUM=y
 CONFIG_CMD_FLASH=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_UIMAGE=y
 # CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_RESET=y
diff --git a/arch/arm/configs/eukrea_cpuimx25_defconfig b/arch/arm/configs/eukrea_cpuimx25_defconfig
index 5a508dc..0080dcf 100644
--- a/arch/arm/configs/eukrea_cpuimx25_defconfig
+++ b/arch/arm/configs/eukrea_cpuimx25_defconfig
@@ -23,11 +23,11 @@ CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/eukrea_cpuimx25/env"
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_RESET=y
diff --git a/arch/arm/configs/eukrea_cpuimx27_defconfig b/arch/arm/configs/eukrea_cpuimx27_defconfig
index 6580dcb..36261af 100644
--- a/arch/arm/configs/eukrea_cpuimx27_defconfig
+++ b/arch/arm/configs/eukrea_cpuimx27_defconfig
@@ -27,7 +27,7 @@ CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_CRC=y
 CONFIG_CMD_MTEST=y
 CONFIG_CMD_FLASH=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
diff --git a/arch/arm/configs/eukrea_cpuimx35_defconfig b/arch/arm/configs/eukrea_cpuimx35_defconfig
index c163827..5882530 100644
--- a/arch/arm/configs/eukrea_cpuimx35_defconfig
+++ b/arch/arm/configs/eukrea_cpuimx35_defconfig
@@ -24,11 +24,11 @@ CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_IMD=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_RESET=y
diff --git a/arch/arm/configs/eukrea_cpuimx51_defconfig b/arch/arm/configs/eukrea_cpuimx51_defconfig
index 66bee63..8e8fd94 100644
--- a/arch/arm/configs/eukrea_cpuimx51_defconfig
+++ b/arch/arm/configs/eukrea_cpuimx51_defconfig
@@ -28,11 +28,11 @@ CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MD5SUM=y
 CONFIG_CMD_MTEST=y
 CONFIG_CMD_FLASH=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_OFTREE=y
diff --git a/arch/arm/configs/freescale-mx21-ads_defconfig b/arch/arm/configs/freescale-mx21-ads_defconfig
index 73d99b9..c50b2c9 100644
--- a/arch/arm/configs/freescale-mx21-ads_defconfig
+++ b/arch/arm/configs/freescale-mx21-ads_defconfig
@@ -18,7 +18,7 @@ CONFIG_CMD_TFTP=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_CRC=y
 CONFIG_CMD_FLASH=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
diff --git a/arch/arm/configs/freescale-mx25-3ds_defconfig b/arch/arm/configs/freescale-mx25-3ds_defconfig
index ead8cbf..8d2a200 100644
--- a/arch/arm/configs/freescale-mx25-3ds_defconfig
+++ b/arch/arm/configs/freescale-mx25-3ds_defconfig
@@ -30,11 +30,11 @@ CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_FLASH=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_UIMAGE=y
 # CONFIG_CMD_BOOTZ is not set
 # CONFIG_CMD_BOOTU is not set
diff --git a/arch/arm/configs/freescale-mx27-ads_defconfig b/arch/arm/configs/freescale-mx27-ads_defconfig
index a8995ee..dd4cb1f 100644
--- a/arch/arm/configs/freescale-mx27-ads_defconfig
+++ b/arch/arm/configs/freescale-mx27-ads_defconfig
@@ -21,7 +21,7 @@ CONFIG_CMD_CRC=y
 CONFIG_CMD_MTEST=y
 CONFIG_CMD_MTEST_ALTERNATIVE=y
 CONFIG_CMD_FLASH=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
diff --git a/arch/arm/configs/freescale-mx28-evk_defconfig b/arch/arm/configs/freescale-mx28-evk_defconfig
index 22ed7bc..c71bf84 100644
--- a/arch/arm/configs/freescale-mx28-evk_defconfig
+++ b/arch/arm/configs/freescale-mx28-evk_defconfig
@@ -22,9 +22,9 @@ CONFIG_CMD_DMESG=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_UIMAGE=y
diff --git a/arch/arm/configs/freescale-mx35-3ds_defconfig b/arch/arm/configs/freescale-mx35-3ds_defconfig
index 66436b5..f45750f 100644
--- a/arch/arm/configs/freescale-mx35-3ds_defconfig
+++ b/arch/arm/configs/freescale-mx35-3ds_defconfig
@@ -28,11 +28,11 @@ CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_FLASH=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_UIMAGE=y
 # CONFIG_CMD_BOOTZ is not set
 # CONFIG_CMD_BOOTU is not set
diff --git a/arch/arm/configs/freescale-mx53-smd_defconfig b/arch/arm/configs/freescale-mx53-smd_defconfig
index 5ba62f5..b055dc8 100644
--- a/arch/arm/configs/freescale-mx53-smd_defconfig
+++ b/arch/arm/configs/freescale-mx53-smd_defconfig
@@ -31,11 +31,11 @@ CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_FLASH=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_UIMAGE=y
 # CONFIG_CMD_BOOTZ is not set
 # CONFIG_CMD_BOOTU is not set
diff --git a/arch/arm/configs/friendlyarm_mini6410_defconfig b/arch/arm/configs/friendlyarm_mini6410_defconfig
index 0d3f3e3..7d21633 100644
--- a/arch/arm/configs/friendlyarm_mini6410_defconfig
+++ b/arch/arm/configs/friendlyarm_mini6410_defconfig
@@ -20,7 +20,7 @@ CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_MTEST=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
diff --git a/arch/arm/configs/friendlyarm_tiny6410_defconfig b/arch/arm/configs/friendlyarm_tiny6410_defconfig
index 1ab8c08..3342cf8 100644
--- a/arch/arm/configs/friendlyarm_tiny6410_defconfig
+++ b/arch/arm/configs/friendlyarm_tiny6410_defconfig
@@ -21,7 +21,7 @@ CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_MTEST=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
diff --git a/arch/arm/configs/haba_knx_lite_defconfig b/arch/arm/configs/haba_knx_lite_defconfig
index 62d66bc..d33d440 100644
--- a/arch/arm/configs/haba_knx_lite_defconfig
+++ b/arch/arm/configs/haba_knx_lite_defconfig
@@ -21,11 +21,11 @@ CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/haba-knx/env"
 # CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_LONGHELP=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 # CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_GO=y
 CONFIG_CMD_LOADB=y
diff --git a/arch/arm/configs/highbank_defconfig b/arch/arm/configs/highbank_defconfig
index 8c965c8..3e3619d 100644
--- a/arch/arm/configs/highbank_defconfig
+++ b/arch/arm/configs/highbank_defconfig
@@ -28,11 +28,11 @@ CONFIG_CMD_TFTP=y
 CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_UIMAGE=y
 # CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_RESET=y
diff --git a/arch/arm/configs/imx233-olinuxino_defconfig b/arch/arm/configs/imx233-olinuxino_defconfig
index 5aed6a9..eec1ce4 100644
--- a/arch/arm/configs/imx233-olinuxino_defconfig
+++ b/arch/arm/configs/imx233-olinuxino_defconfig
@@ -24,11 +24,11 @@ CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_IMD=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 # CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_GO=y
 CONFIG_CMD_RESET=y
diff --git a/arch/arm/configs/imx_defconfig b/arch/arm/configs/imx_defconfig
index c106f39..886bcef 100644
--- a/arch/arm/configs/imx_defconfig
+++ b/arch/arm/configs/imx_defconfig
@@ -26,10 +26,10 @@ CONFIG_RESET_SOURCE=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
 # CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_GO=y
 CONFIG_CMD_RESET=y
diff --git a/arch/arm/configs/imx_v7_defconfig b/arch/arm/configs/imx_v7_defconfig
index 1b0739c..5ab3433 100644
--- a/arch/arm/configs/imx_v7_defconfig
+++ b/arch/arm/configs/imx_v7_defconfig
@@ -55,11 +55,11 @@ CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_ARM_MMUINFO=y
 CONFIG_CMD_REGULATOR=y
 CONFIG_CMD_MMC_EXTCSD=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 # CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_GO=y
 CONFIG_CMD_RESET=y
diff --git a/arch/arm/configs/lubbock_defconfig b/arch/arm/configs/lubbock_defconfig
index 224854c..df777ba 100644
--- a/arch/arm/configs/lubbock_defconfig
+++ b/arch/arm/configs/lubbock_defconfig
@@ -25,10 +25,10 @@ CONFIG_CMD_DMESG=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_LOADS=y
diff --git a/arch/arm/configs/mainstone_defconfig b/arch/arm/configs/mainstone_defconfig
index 1e735d4..171dda1 100644
--- a/arch/arm/configs/mainstone_defconfig
+++ b/arch/arm/configs/mainstone_defconfig
@@ -26,10 +26,10 @@ CONFIG_CMD_DMESG=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_LOADS=y
diff --git a/arch/arm/configs/mioa701_defconfig b/arch/arm/configs/mioa701_defconfig
index cc4587c..d881b56 100644
--- a/arch/arm/configs/mioa701_defconfig
+++ b/arch/arm/configs/mioa701_defconfig
@@ -55,10 +55,10 @@ CONFIG_CMD_CRC=y
 CONFIG_CMD_CRC_CMP=y
 CONFIG_CMD_FLASH=y
 CONFIG_CMD_UBIFORMAT=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
 CONFIG_FLEXIBLE_BOOTARGS=y
 CONFIG_CMD_BOOT=y
 CONFIG_CMD_RESET=y
diff --git a/arch/arm/configs/mmccpu_defconfig b/arch/arm/configs/mmccpu_defconfig
index 6390b56..0fc4e97 100644
--- a/arch/arm/configs/mmccpu_defconfig
+++ b/arch/arm/configs/mmccpu_defconfig
@@ -20,7 +20,7 @@ CONFIG_CMD_CRC=y
 CONFIG_CMD_MTEST=y
 CONFIG_CMD_MTEST_ALTERNATIVE=y
 CONFIG_CMD_FLASH=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
diff --git a/arch/arm/configs/mvebu_defconfig b/arch/arm/configs/mvebu_defconfig
index 39372fd..bd978a9 100644
--- a/arch/arm/configs/mvebu_defconfig
+++ b/arch/arm/configs/mvebu_defconfig
@@ -28,11 +28,11 @@ CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_ARM_MMUINFO=y
 CONFIG_FLEXIBLE_BOOTARGS=y
 CONFIG_CMD_BOOT=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_LOADS=y
 CONFIG_CMD_LOADY=y
diff --git a/arch/arm/configs/neso_defconfig b/arch/arm/configs/neso_defconfig
index 278916a..209396e 100644
--- a/arch/arm/configs/neso_defconfig
+++ b/arch/arm/configs/neso_defconfig
@@ -31,11 +31,11 @@ CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MTEST=y
 CONFIG_CMD_FLASH=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_UIMAGE=y
 # CONFIG_CMD_BOOTZ is not set
 # CONFIG_CMD_BOOTU is not set
diff --git a/arch/arm/configs/nhk8815_defconfig b/arch/arm/configs/nhk8815_defconfig
index 46c3a68..02eddcc 100644
--- a/arch/arm/configs/nhk8815_defconfig
+++ b/arch/arm/configs/nhk8815_defconfig
@@ -30,7 +30,7 @@ CONFIG_CMD_MTEST=y
 CONFIG_CMD_FLASH=y
 CONFIG_CMD_BOOTM_ZLIB=y
 CONFIG_CMD_BOOTM_BZLIB=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
diff --git a/arch/arm/configs/omap3530_beagle_defconfig b/arch/arm/configs/omap3530_beagle_defconfig
index 070f156..d4e955e 100644
--- a/arch/arm/configs/omap3530_beagle_defconfig
+++ b/arch/arm/configs/omap3530_beagle_defconfig
@@ -28,11 +28,11 @@ CONFIG_CMD_IOMEM=y
 CONFIG_CMD_IMD=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_ARM_MMUINFO=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 # CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_GO=y
 CONFIG_CMD_LOADB=y
diff --git a/arch/arm/configs/panda_defconfig b/arch/arm/configs/panda_defconfig
index 3399bd2..85dd75d 100644
--- a/arch/arm/configs/panda_defconfig
+++ b/arch/arm/configs/panda_defconfig
@@ -38,11 +38,11 @@ CONFIG_CMD_CRC=y
 CONFIG_CMD_CRC_CMP=y
 CONFIG_CMD_MD5SUM=y
 CONFIG_CMD_FLASH=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_UIMAGE=y
 # CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_RESET=y
diff --git a/arch/arm/configs/phytec-phycard-omap3_defconfig b/arch/arm/configs/phytec-phycard-omap3_defconfig
index 5865ebd..f811017 100644
--- a/arch/arm/configs/phytec-phycard-omap3_defconfig
+++ b/arch/arm/configs/phytec-phycard-omap3_defconfig
@@ -105,7 +105,7 @@ CONFIG_CMD_MTEST_ALTERNATIVE=y
 CONFIG_CMD_FLASH=y
 CONFIG_CMD_UBI=y
 CONFIG_CMD_BOOTM=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_CMD_IMINFO=y
 CONFIG_CMD_BOOTZ=n
 CONFIG_CMD_BOOTU=n
diff --git a/arch/arm/configs/phytec-phycore-imx31_defconfig b/arch/arm/configs/phytec-phycore-imx31_defconfig
index b83f74a..2f9e499 100644
--- a/arch/arm/configs/phytec-phycore-imx31_defconfig
+++ b/arch/arm/configs/phytec-phycore-imx31_defconfig
@@ -43,11 +43,11 @@ CONFIG_CMD_CRC=y
 CONFIG_CMD_CRC_CMP=y
 CONFIG_CMD_MD5SUM=y
 CONFIG_CMD_FLASH=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_UIMAGE=y
 # CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_RESET=y
diff --git a/arch/arm/configs/phytec-phycore-imx35_defconfig b/arch/arm/configs/phytec-phycore-imx35_defconfig
index 91fab09..b792b89 100644
--- a/arch/arm/configs/phytec-phycore-imx35_defconfig
+++ b/arch/arm/configs/phytec-phycore-imx35_defconfig
@@ -44,11 +44,11 @@ CONFIG_CMD_CRC=y
 CONFIG_CMD_CRC_CMP=y
 CONFIG_CMD_MD5SUM=y
 CONFIG_CMD_FLASH=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_UIMAGE=y
 # CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_RESET=y
diff --git a/arch/arm/configs/phytec-phycore-omap4460_defconfig b/arch/arm/configs/phytec-phycore-omap4460_defconfig
index 4c7042c..ce5d75d 100644
--- a/arch/arm/configs/phytec-phycore-omap4460_defconfig
+++ b/arch/arm/configs/phytec-phycore-omap4460_defconfig
@@ -30,11 +30,11 @@ CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_FLASH=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_UIMAGE=y
 # CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_RESET=y
diff --git a/arch/arm/configs/phytec-phycore-pxa270_defconfig b/arch/arm/configs/phytec-phycore-pxa270_defconfig
index 304624b..7548c82 100644
--- a/arch/arm/configs/phytec-phycore-pxa270_defconfig
+++ b/arch/arm/configs/phytec-phycore-pxa270_defconfig
@@ -18,11 +18,11 @@ CONFIG_DEBUG_INFO=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 # CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_GO=y
 CONFIG_CMD_RESET=y
diff --git a/arch/arm/configs/pm9261_defconfig b/arch/arm/configs/pm9261_defconfig
index c6df91a..c3cecb2 100644
--- a/arch/arm/configs/pm9261_defconfig
+++ b/arch/arm/configs/pm9261_defconfig
@@ -29,7 +29,7 @@ CONFIG_CMD_MTEST=y
 CONFIG_CMD_FLASH=y
 CONFIG_CMD_BOOTM_ZLIB=y
 CONFIG_CMD_BOOTM_BZLIB=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
diff --git a/arch/arm/configs/pm9263_defconfig b/arch/arm/configs/pm9263_defconfig
index 53e4a62..482f008 100644
--- a/arch/arm/configs/pm9263_defconfig
+++ b/arch/arm/configs/pm9263_defconfig
@@ -20,7 +20,7 @@ CONFIG_CMD_CRC=y
 CONFIG_CMD_MTEST=y
 CONFIG_CMD_MTEST_ALTERNATIVE=y
 CONFIG_CMD_FLASH=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
diff --git a/arch/arm/configs/pm9g45_defconfig b/arch/arm/configs/pm9g45_defconfig
index d3a5624..a5b54ff 100644
--- a/arch/arm/configs/pm9g45_defconfig
+++ b/arch/arm/configs/pm9g45_defconfig
@@ -23,11 +23,11 @@ CONFIG_CMD_READLINE=y
 CONFIG_CMD_TFTP=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_FLASH=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_UIMAGE=y
 # CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_RESET=y
diff --git a/arch/arm/configs/qil_a9260_128mib_defconfig b/arch/arm/configs/qil_a9260_128mib_defconfig
index c735bad..b92847f 100644
--- a/arch/arm/configs/qil_a9260_128mib_defconfig
+++ b/arch/arm/configs/qil_a9260_128mib_defconfig
@@ -33,11 +33,11 @@ CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_FLASH=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_UIMAGE=y
 # CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_RESET=y
diff --git a/arch/arm/configs/qil_a9260_defconfig b/arch/arm/configs/qil_a9260_defconfig
index 8aa7528..72db60b 100644
--- a/arch/arm/configs/qil_a9260_defconfig
+++ b/arch/arm/configs/qil_a9260_defconfig
@@ -32,11 +32,11 @@ CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_FLASH=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_UIMAGE=y
 # CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_RESET=y
diff --git a/arch/arm/configs/qil_a9g20_128mib_defconfig b/arch/arm/configs/qil_a9g20_128mib_defconfig
index 1892399..3e30a07 100644
--- a/arch/arm/configs/qil_a9g20_128mib_defconfig
+++ b/arch/arm/configs/qil_a9g20_128mib_defconfig
@@ -33,11 +33,11 @@ CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_FLASH=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_UIMAGE=y
 # CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_RESET=y
diff --git a/arch/arm/configs/qil_a9g20_defconfig b/arch/arm/configs/qil_a9g20_defconfig
index 2ec9b6e..6294692 100644
--- a/arch/arm/configs/qil_a9g20_defconfig
+++ b/arch/arm/configs/qil_a9g20_defconfig
@@ -32,11 +32,11 @@ CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_FLASH=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_UIMAGE=y
 # CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_RESET=y
diff --git a/arch/arm/configs/rockchip_defconfig b/arch/arm/configs/rockchip_defconfig
index b738620..c9bf874 100644
--- a/arch/arm/configs/rockchip_defconfig
+++ b/arch/arm/configs/rockchip_defconfig
@@ -24,12 +24,12 @@ CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_ARM_MMUINFO=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
-CONFIG_CMD_BOOTM_AIMAGE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_AIMAGE=y
 CONFIG_CMD_BOOTZ=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_RESET=y
diff --git a/arch/arm/configs/rpi2_defconfig b/arch/arm/configs/rpi2_defconfig
index 81f821a..b03df5d 100644
--- a/arch/arm/configs/rpi2_defconfig
+++ b/arch/arm/configs/rpi2_defconfig
@@ -16,10 +16,10 @@ CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/raspberry-pi/env"
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_LOADY=y
diff --git a/arch/arm/configs/rpi_defconfig b/arch/arm/configs/rpi_defconfig
index f7b5910..8ff029f 100644
--- a/arch/arm/configs/rpi_defconfig
+++ b/arch/arm/configs/rpi_defconfig
@@ -16,10 +16,10 @@ CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/raspberry-pi/env"
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_LOADY=y
diff --git a/arch/arm/configs/sama5d3_xplained_defconfig b/arch/arm/configs/sama5d3_xplained_defconfig
index 8b02147..156f032 100644
--- a/arch/arm/configs/sama5d3_xplained_defconfig
+++ b/arch/arm/configs/sama5d3_xplained_defconfig
@@ -32,11 +32,11 @@ CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_FLASH=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_UIMAGE=y
 # CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_RESET=y
diff --git a/arch/arm/configs/sama5d3xek_defconfig b/arch/arm/configs/sama5d3xek_defconfig
index c1cb0f6..9e2d41e 100644
--- a/arch/arm/configs/sama5d3xek_defconfig
+++ b/arch/arm/configs/sama5d3xek_defconfig
@@ -31,11 +31,11 @@ CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_FLASH=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_UIMAGE=y
 # CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_RESET=y
diff --git a/arch/arm/configs/sama5d4_xplained_defconfig b/arch/arm/configs/sama5d4_xplained_defconfig
index 5b9a793..6b1616e 100644
--- a/arch/arm/configs/sama5d4_xplained_defconfig
+++ b/arch/arm/configs/sama5d4_xplained_defconfig
@@ -21,11 +21,11 @@ CONFIG_DEBUG_INFO=y
 # CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_LONGHELP=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 # CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_GO=y
 CONFIG_CMD_LOADB=y
diff --git a/arch/arm/configs/sama5d4ek_defconfig b/arch/arm/configs/sama5d4ek_defconfig
index f050fe4..25f488b 100644
--- a/arch/arm/configs/sama5d4ek_defconfig
+++ b/arch/arm/configs/sama5d4ek_defconfig
@@ -20,11 +20,11 @@ CONFIG_DEBUG_INFO=y
 # CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_LONGHELP=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 # CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_GO=y
 CONFIG_CMD_LOADB=y
diff --git a/arch/arm/configs/scb9328_defconfig b/arch/arm/configs/scb9328_defconfig
index f037a00..09767aa 100644
--- a/arch/arm/configs/scb9328_defconfig
+++ b/arch/arm/configs/scb9328_defconfig
@@ -25,11 +25,11 @@ CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_FLASH=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_UIMAGE=y
 # CONFIG_CMD_BOOTZ is not set
 # CONFIG_CMD_BOOTU is not set
diff --git a/arch/arm/configs/socfpga_defconfig b/arch/arm/configs/socfpga_defconfig
index 6cbc28e..c6a969d 100644
--- a/arch/arm/configs/socfpga_defconfig
+++ b/arch/arm/configs/socfpga_defconfig
@@ -21,10 +21,10 @@ CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_ARM_MMUINFO=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_PARTITION=y
diff --git a/arch/arm/configs/tegra_v7_defconfig b/arch/arm/configs/tegra_v7_defconfig
index ff92c39..6560334 100644
--- a/arch/arm/configs/tegra_v7_defconfig
+++ b/arch/arm/configs/tegra_v7_defconfig
@@ -21,8 +21,8 @@ CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_ARM_MMUINFO=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
 CONFIG_CMD_BOOTZ=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_EXPORT=y
diff --git a/arch/arm/configs/telit_evk_pro3_defconfig b/arch/arm/configs/telit_evk_pro3_defconfig
index 5924449..5fc114c 100644
--- a/arch/arm/configs/telit_evk_pro3_defconfig
+++ b/arch/arm/configs/telit_evk_pro3_defconfig
@@ -28,10 +28,10 @@ CONFIG_CMD_LOADB=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_FLASH=y
 CONFIG_CMD_UBIFORMAT=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_UIMAGE=y
 # CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_RESET=y
diff --git a/arch/arm/configs/tny_a9260_defconfig b/arch/arm/configs/tny_a9260_defconfig
index 7615d22..d9395fa 100644
--- a/arch/arm/configs/tny_a9260_defconfig
+++ b/arch/arm/configs/tny_a9260_defconfig
@@ -39,10 +39,10 @@ CONFIG_CMD_SHA1SUM=y
 CONFIG_CMD_MTEST=y
 CONFIG_CMD_MTEST_ALTERNATIVE=y
 CONFIG_CMD_FLASH=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_UIMAGE=y
 # CONFIG_CMD_BOOTZ is not set
 # CONFIG_CMD_BOOTU is not set
diff --git a/arch/arm/configs/tny_a9263_defconfig b/arch/arm/configs/tny_a9263_defconfig
index 757584a..e250ab3 100644
--- a/arch/arm/configs/tny_a9263_defconfig
+++ b/arch/arm/configs/tny_a9263_defconfig
@@ -39,10 +39,10 @@ CONFIG_CMD_SHA1SUM=y
 CONFIG_CMD_MTEST=y
 CONFIG_CMD_MTEST_ALTERNATIVE=y
 CONFIG_CMD_FLASH=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_UIMAGE=y
 # CONFIG_CMD_BOOTZ is not set
 # CONFIG_CMD_BOOTU is not set
diff --git a/arch/arm/configs/tny_a9g20_defconfig b/arch/arm/configs/tny_a9g20_defconfig
index e25d134..4a8da59 100644
--- a/arch/arm/configs/tny_a9g20_defconfig
+++ b/arch/arm/configs/tny_a9g20_defconfig
@@ -39,10 +39,10 @@ CONFIG_CMD_SHA1SUM=y
 CONFIG_CMD_MTEST=y
 CONFIG_CMD_MTEST_ALTERNATIVE=y
 CONFIG_CMD_FLASH=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_UIMAGE=y
 # CONFIG_CMD_BOOTZ is not set
 # CONFIG_CMD_BOOTU is not set
diff --git a/arch/arm/configs/tqma53_defconfig b/arch/arm/configs/tqma53_defconfig
index 144abbf..b17fe72 100644
--- a/arch/arm/configs/tqma53_defconfig
+++ b/arch/arm/configs/tqma53_defconfig
@@ -33,11 +33,11 @@ CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_CRC=y
 CONFIG_CMD_CRC_CMP=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_UIMAGE=y
 # CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_RESET=y
diff --git a/arch/arm/configs/tx28stk5_defconfig b/arch/arm/configs/tx28stk5_defconfig
index d5714f2..258840a 100644
--- a/arch/arm/configs/tx28stk5_defconfig
+++ b/arch/arm/configs/tx28stk5_defconfig
@@ -25,11 +25,11 @@ CONFIG_CMD_DMESG=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_UIMAGE=y
diff --git a/arch/arm/configs/tx51stk5_defconfig b/arch/arm/configs/tx51stk5_defconfig
index acde46a..dbc2cb3 100644
--- a/arch/arm/configs/tx51stk5_defconfig
+++ b/arch/arm/configs/tx51stk5_defconfig
@@ -84,9 +84,9 @@ CONFIG_CMD_MTEST_ALTERNATIVE=y
 CONFIG_CMD_FLASH=y
 CONFIG_CMD_UBI=y
 CONFIG_CMD_BOOTM=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
 CONFIG_CMD_UIMAGE=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
diff --git a/arch/arm/configs/tx53stk5_defconfig b/arch/arm/configs/tx53stk5_defconfig
index 5751623..0d991cf 100644
--- a/arch/arm/configs/tx53stk5_defconfig
+++ b/arch/arm/configs/tx53stk5_defconfig
@@ -38,11 +38,11 @@ CONFIG_CMD_IOMEM=y
 CONFIG_CMD_CRC=y
 CONFIG_CMD_CRC_CMP=y
 CONFIG_CMD_FLASH=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_UIMAGE=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
diff --git a/arch/arm/configs/usb_a9260_defconfig b/arch/arm/configs/usb_a9260_defconfig
index 5a2ed02..a5785aa 100644
--- a/arch/arm/configs/usb_a9260_defconfig
+++ b/arch/arm/configs/usb_a9260_defconfig
@@ -39,11 +39,11 @@ CONFIG_CMD_SHA1SUM=y
 CONFIG_CMD_MTEST=y
 CONFIG_CMD_MTEST_ALTERNATIVE=y
 CONFIG_CMD_FLASH=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_UIMAGE=y
 # CONFIG_CMD_BOOTZ is not set
 # CONFIG_CMD_BOOTU is not set
diff --git a/arch/arm/configs/usb_a9263_128mib_defconfig b/arch/arm/configs/usb_a9263_128mib_defconfig
index b9222e4..f84743b 100644
--- a/arch/arm/configs/usb_a9263_128mib_defconfig
+++ b/arch/arm/configs/usb_a9263_128mib_defconfig
@@ -40,11 +40,11 @@ CONFIG_CMD_SHA1SUM=y
 CONFIG_CMD_MTEST=y
 CONFIG_CMD_MTEST_ALTERNATIVE=y
 CONFIG_CMD_FLASH=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_UIMAGE=y
 # CONFIG_CMD_BOOTZ is not set
 # CONFIG_CMD_BOOTU is not set
diff --git a/arch/arm/configs/usb_a9263_defconfig b/arch/arm/configs/usb_a9263_defconfig
index da62f48..41d8284 100644
--- a/arch/arm/configs/usb_a9263_defconfig
+++ b/arch/arm/configs/usb_a9263_defconfig
@@ -39,11 +39,11 @@ CONFIG_CMD_SHA1SUM=y
 CONFIG_CMD_MTEST=y
 CONFIG_CMD_MTEST_ALTERNATIVE=y
 CONFIG_CMD_FLASH=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_UIMAGE=y
 # CONFIG_CMD_BOOTZ is not set
 # CONFIG_CMD_BOOTU is not set
diff --git a/arch/arm/configs/usb_a9g20_128mib_defconfig b/arch/arm/configs/usb_a9g20_128mib_defconfig
index 122e0f6..d5e8e5e 100644
--- a/arch/arm/configs/usb_a9g20_128mib_defconfig
+++ b/arch/arm/configs/usb_a9g20_128mib_defconfig
@@ -40,11 +40,11 @@ CONFIG_CMD_SHA1SUM=y
 CONFIG_CMD_MTEST=y
 CONFIG_CMD_MTEST_ALTERNATIVE=y
 CONFIG_CMD_FLASH=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_UIMAGE=y
 # CONFIG_CMD_BOOTZ is not set
 # CONFIG_CMD_BOOTU is not set
diff --git a/arch/arm/configs/usb_a9g20_defconfig b/arch/arm/configs/usb_a9g20_defconfig
index cc99659..6e59cf5 100644
--- a/arch/arm/configs/usb_a9g20_defconfig
+++ b/arch/arm/configs/usb_a9g20_defconfig
@@ -39,11 +39,11 @@ CONFIG_CMD_SHA1SUM=y
 CONFIG_CMD_MTEST=y
 CONFIG_CMD_MTEST_ALTERNATIVE=y
 CONFIG_CMD_FLASH=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_UIMAGE=y
 # CONFIG_CMD_BOOTZ is not set
 # CONFIG_CMD_BOOTU is not set
diff --git a/arch/arm/configs/versatilepb_arm1176_defconfig b/arch/arm/configs/versatilepb_arm1176_defconfig
index cefdb29..50e0983 100644
--- a/arch/arm/configs/versatilepb_arm1176_defconfig
+++ b/arch/arm/configs/versatilepb_arm1176_defconfig
@@ -20,11 +20,11 @@ CONFIG_CMD_DMESG=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_RESET=y
diff --git a/arch/arm/configs/versatilepb_defconfig b/arch/arm/configs/versatilepb_defconfig
index 0876824..f8cbf94 100644
--- a/arch/arm/configs/versatilepb_defconfig
+++ b/arch/arm/configs/versatilepb_defconfig
@@ -19,11 +19,11 @@ CONFIG_CMD_DMESG=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_RESET=y
diff --git a/arch/arm/configs/vexpress_ca9_defconfig b/arch/arm/configs/vexpress_ca9_defconfig
index c5ad315..c24c0ea 100644
--- a/arch/arm/configs/vexpress_ca9_defconfig
+++ b/arch/arm/configs/vexpress_ca9_defconfig
@@ -28,11 +28,11 @@ CONFIG_CMD_TFTP=y
 CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
 CONFIG_CMD_BOO
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_UIMAGE=y
 # CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_RESET=y
diff --git a/arch/arm/configs/vexpress_defconfig b/arch/arm/configs/vexpress_defconfig
index beea11a..241889b 100644
--- a/arch/arm/configs/vexpress_defconfig
+++ b/arch/arm/configs/vexpress_defconfig
@@ -27,11 +27,11 @@ CONFIG_CMD_TFTP=y
 CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
 CONFIG_CMD_BOO
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_UIMAGE=y
 # CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_RESET=y
diff --git a/arch/arm/configs/vincell_defconfig b/arch/arm/configs/vincell_defconfig
index b05fac5..83862de 100644
--- a/arch/arm/configs/vincell_defconfig
+++ b/arch/arm/configs/vincell_defconfig
@@ -26,11 +26,11 @@ CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_ARM_MMUINFO=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 # CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_GO=y
 CONFIG_CMD_RESET=y
diff --git a/arch/arm/configs/zedboard_defconfig b/arch/arm/configs/zedboard_defconfig
index 9ce7c5a..3960c02 100644
--- a/arch/arm/configs/zedboard_defconfig
+++ b/arch/arm/configs/zedboard_defconfig
@@ -18,10 +18,10 @@ CONFIG_DEBUG_LL=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_ARM_MMUINFO=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_PARTITION=y
diff --git a/arch/arm/configs/zylonite310_defconfig b/arch/arm/configs/zylonite310_defconfig
index ffe3215..9de4fff 100644
--- a/arch/arm/configs/zylonite310_defconfig
+++ b/arch/arm/configs/zylonite310_defconfig
@@ -27,10 +27,10 @@ CONFIG_CMD_DMESG=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_LOADS=y
diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
index f6024c8..803aa94 100644
--- a/arch/arm/lib/bootm.c
+++ b/arch/arm/lib/bootm.c
@@ -539,7 +539,7 @@ static struct image_handler aimage_handler = {
 	.filetype = filetype_aimage,
 };
 
-#ifdef CONFIG_CMD_BOOTM_AIMAGE
+#ifdef CONFIG_BOOTM_AIMAGE
 BAREBOX_MAGICVAR(aimage_noverwrite_bootargs, "Disable overwrite of the bootargs with the one present in aimage");
 BAREBOX_MAGICVAR(aimage_noverwrite_tags, "Disable overwrite of the tags addr with the one present in aimage");
 #endif
@@ -571,7 +571,7 @@ static int armlinux_register_image_handler(void)
 	register_image_handler(&uimage_handler);
 	register_image_handler(&rawimage_handler);
 	register_image_handler(&zimage_handler);
-	if (IS_BUILTIN(CONFIG_CMD_BOOTM_AIMAGE)) {
+	if (IS_BUILTIN(CONFIG_BOOTM_AIMAGE)) {
 		register_image_handler(&aimage_handler);
 		binfmt_register(&binfmt_aimage_hook);
 	}
diff --git a/arch/blackfin/configs/ipe337_defconfig b/arch/blackfin/configs/ipe337_defconfig
index 501c59a..a9f2369 100644
--- a/arch/blackfin/configs/ipe337_defconfig
+++ b/arch/blackfin/configs/ipe337_defconfig
@@ -14,7 +14,7 @@ CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_CRC=y
 CONFIG_CMD_FLASH=y
 CONFIG_CMD_BOOTM_ZLIB=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
diff --git a/arch/efi/configs/efi_defconfig b/arch/efi/configs/efi_defconfig
index 3c9a9dc..8fe7e76 100644
--- a/arch/efi/configs/efi_defconfig
+++ b/arch/efi/configs/efi_defconfig
@@ -17,10 +17,10 @@ CONFIG_DEBUG_LL=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_RESET=y
diff --git a/arch/mips/configs/dlink-dir-320_defconfig b/arch/mips/configs/dlink-dir-320_defconfig
index 61798bf..ba535a8 100644
--- a/arch/mips/configs/dlink-dir-320_defconfig
+++ b/arch/mips/configs/dlink-dir-320_defconfig
@@ -13,7 +13,7 @@ CONFIG_POLLER=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_LOADY=y
diff --git a/arch/mips/configs/gxemul-malta_defconfig b/arch/mips/configs/gxemul-malta_defconfig
index 2352d38..f009f0e 100644
--- a/arch/mips/configs/gxemul-malta_defconfig
+++ b/arch/mips/configs/gxemul-malta_defconfig
@@ -17,7 +17,7 @@ CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_IMD=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_LOADY=y
diff --git a/arch/mips/configs/img-ci20_defconfig b/arch/mips/configs/img-ci20_defconfig
index 28319c5..f0347f6 100644
--- a/arch/mips/configs/img-ci20_defconfig
+++ b/arch/mips/configs/img-ci20_defconfig
@@ -13,11 +13,11 @@ CONFIG_DEBUG_LL=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_LOADS=y
diff --git a/arch/mips/configs/qemu-malta_defconfig b/arch/mips/configs/qemu-malta_defconfig
index 62b5e76..5389df4 100644
--- a/arch/mips/configs/qemu-malta_defconfig
+++ b/arch/mips/configs/qemu-malta_defconfig
@@ -16,7 +16,7 @@ CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_IMD=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_LOADY=y
diff --git a/arch/mips/configs/ritmix-rzx50_defconfig b/arch/mips/configs/ritmix-rzx50_defconfig
index eedb329..b143dff 100644
--- a/arch/mips/configs/ritmix-rzx50_defconfig
+++ b/arch/mips/configs/ritmix-rzx50_defconfig
@@ -14,11 +14,11 @@ CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_IMD=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
-CONFIG_CMD_BOOTM_INITRD=y
-CONFIG_CMD_BOOTM_OFTREE=y
-CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_LOADS=y
diff --git a/arch/nios2/configs/generic_defconfig b/arch/nios2/configs/generic_defconfig
index 9f9c85e..39f41dd 100644
--- a/arch/nios2/configs/generic_defconfig
+++ b/arch/nios2/configs/generic_defconfig
@@ -17,8 +17,8 @@ CONFIG_CMD_READLINE=y
 CONFIG_CMD_TFTP=y
 CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_FLASH=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_BOOTM_VERBOSE=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
 CONFIG_CMD_UIMAGE=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
diff --git a/arch/ppc/configs/p1010rdb_defconfig b/arch/ppc/configs/p1010rdb_defconfig
index d193940..a891a6c 100644
--- a/arch/ppc/configs/p1010rdb_defconfig
+++ b/arch/ppc/configs/p1010rdb_defconfig
@@ -8,7 +8,7 @@ CONFIG_AUTO_COMPLETE=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_BOOTM_ZLIB=y
 CONFIG_CMD_BOOTM_BZLIB=y
-CONFIG_CMD_BOOTM_VERBOSE=y
+CONFIG_BOOTM_VERBOSE=y
 CONFIG_ZLIB=y
 CONFIG_BZLIB=y
 CONFIG_CMD_EDIT=y
diff --git a/arch/ppc/configs/p1022ds_defconfig b/arch/ppc/configs/p1022ds_defconfig
index c517336..4d0fe99 100644
--- a/arch/ppc/configs/p1022ds_defconfig
+++ b/arch/ppc/configs/p1022ds_defconfig
@@ -7,7 +7,7 @@ CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_CMD_BOOTM_ZLIB=y
 CONFIG_CMD_BOOTM_BZLIB=y
-CONFIG_CMD_BOOTM_VERBOSE=y
+CONFIG_BOOTM_VERBOSE=y
 CONFIG_ZLIB=y
 CONFIG_BZLIB=y
 CONFIG_CMD_EDIT=y
diff --git a/arch/ppc/configs/pcm030_defconfig b/arch/ppc/configs/pcm030_defconfig
index 61380ac..7c518d6 100644
--- a/arch/ppc/configs/pcm030_defconfig
+++ b/arch/ppc/configs/pcm030_defconfig
@@ -9,7 +9,7 @@ CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/ppc/boards/pcm030/env"
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_UIMAGE=y
diff --git a/commands/Kconfig b/commands/Kconfig
index 80df4dd..64c4fb1 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -293,7 +293,7 @@ config CMD_BOOT_ORDER
 
 config CMD_BOOT
 	tristate
-	select BOOTM
+	depends on BOOTM
 	prompt "boot"
 	help
 	  Select this for booting based on scripts. Unlike the bootm command which
@@ -326,11 +326,10 @@ config CMD_BOOT
 	      -o DTS     specify open firmware device tree
 	      -v         verbose
 
-
 config CMD_BOOTM
 	tristate
 	default y
-	select BOOTM
+	depends on BOOTM
 	select CRC32
 	select UIMAGE
 	select UNCOMPRESS
@@ -349,87 +348,6 @@ config CMD_BOOTM
 		  -e OFFS	entry point to the image relative to start (0)
 		  -o DTS	specify device tree
 
-
-config CMD_BOOTM_SHOW_TYPE
-	bool
-	depends on CMD_BOOTM
-	prompt "show image information"
-	help
-	  Displays some tags from the uImage:
-
-	  - OS type
-	  - architecture,
-	  - type
-	  - compression method.
-
-config CMD_BOOTM_VERBOSE
-	bool
-	prompt "verbose support"
-	depends on CMD_BOOTM
-	help
-	  Adds the verbose (-v switch) command line option.
-
-config CMD_BOOTM_INITRD
-	bool
-	prompt "initial RAM disk (initrd) support"
-	depends on CMD_BOOTM
-	help
-	  Adds support for initial RAM disk and this two command line options:
-
-	  -r INITRD  specify an initrd image
-	  -L ADDR    specify initrd load address
-
-config CMD_BOOTM_OFTREE
-	bool
-	depends on CMD_BOOTM
-	select OFTREE
-	prompt "device tree (oftree) support"
-	help
-	  Add support to pass a device tree (a.k.a Open Firmware Tree, oftree). Adds
-	  this command line option:
-
-	  -o DTS  specify device tree
-
-config CMD_BOOTM_OFTREE_UIMAGE
-	bool
-	prompt "support passing device tree (oftree) uImages"
-	depends on CMD_BOOTM_OFTREE
-	help
-	  Support using oftree uImages. Without this only raw oftree
-	  blobs can be used.
-
-config CMD_BOOTM_AIMAGE
-	bool
-	prompt "Android image support"
-	depends on CMD_BOOTM && ARM
-	help
-	  Support using Android Images.
-
-config CMD_BOOTM_FITIMAGE
-	bool
-	prompt "FIT image support"
-	select FITIMAGE
-	depends on CMD_BOOTM && ARM
-	help
-	  Support using Flattened Image Tree (FIT) Images. FIT is an image
-	  format introduced by U-Boot. A FIT image contains one or multiple
-	  kernels, device trees and initrds. The FIT image itself is a flattened
-	  device tree binary. Have a look at the u-boot source tree
-	  in the "doc/uImage.FIT" folder for more information:
-	  http://git.denx.de/?p=u-boot.git;a=tree;f=doc/uImage.FIT
-
-config CMD_BOOTM_FITIMAGE_SIGNATURE
-	bool
-	prompt "support verifying signed FIT images"
-	depends on CMD_BOOTM_FITIMAGE
-	select FITIMAGE_SIGNATURE
-	help
-	  Support verifying signed FIT images. This requires FIT images
-	  as described in:
-	  http://git.denx.de/?p=u-boot.git;a=blob;f=doc/uImage.FIT/signature.txt
-	  Additionally the barebox device tree needs a /signature node with the
-	  public key with which the image has been signed.
-
 config CMD_BOOTU
 	tristate
 	default y
diff --git a/commands/bootm.c b/commands/bootm.c
index bfec62c..a46faae 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -48,7 +48,7 @@
 
 #define BOOTM_OPTS_COMMON "sca:e:vo:fd"
 
-#ifdef CONFIG_CMD_BOOTM_INITRD
+#ifdef CONFIG_BOOTM_INITRD
 #define BOOTM_OPTS BOOTM_OPTS_COMMON "L:r:"
 #else
 #define BOOTM_OPTS BOOTM_OPTS_COMMON
@@ -71,7 +71,7 @@ static int do_bootm(int argc, char *argv[])
 		case 's':
 			data.verify = BOOTM_VERIFY_SIGNATURE;
 			break;
-#ifdef CONFIG_CMD_BOOTM_INITRD
+#ifdef CONFIG_BOOTM_INITRD
 		case 'L':
 			data.initrd_address = simple_strtoul(optarg, NULL, 0);
 			break;
@@ -126,7 +126,7 @@ BAREBOX_CMD_HELP_OPT ("-c\t",  "hash check image integrity")
 BAREBOX_CMD_HELP_OPT ("-s\t",  "check signature of image")
 BAREBOX_CMD_HELP_OPT ("-d\t",  "dry run: check data, but do not run")
 BAREBOX_CMD_HELP_OPT ("-f\t",  "load images even if type is undetectable")
-#ifdef CONFIG_CMD_BOOTM_INITRD
+#ifdef CONFIG_BOOTM_INITRD
 BAREBOX_CMD_HELP_OPT ("-r INITRD","specify an initrd image")
 BAREBOX_CMD_HELP_OPT ("-L ADDR\t","specify initrd load address")
 #endif
@@ -135,7 +135,7 @@ BAREBOX_CMD_HELP_OPT ("-e OFFS\t","entry point to the image relative to start (0
 #ifdef CONFIG_OFTREE
 BAREBOX_CMD_HELP_OPT ("-o DTB\t","specify open firmware device tree")
 #endif
-#ifdef CONFIG_CMD_BOOTM_VERBOSE
+#ifdef CONFIG_BOOTM_VERBOSE
 BAREBOX_CMD_HELP_OPT ("-v\t","verbose")
 #endif
 BAREBOX_CMD_HELP_END
@@ -144,14 +144,14 @@ BAREBOX_CMD_START(bootm)
 	.cmd		= do_bootm,
 	BAREBOX_CMD_DESC("boot an application image")
 	BAREBOX_CMD_OPTS("[-cdf"
-#ifdef CONFIG_CMD_BOOTM_INITRD
+#ifdef CONFIG_BOOTM_INITRD
 					  "rL"
 #endif
 					  "ae"
 #ifdef CONFIG_OFTREE
 					  "o"
 #endif
-#ifdef CONFIG_CMD_BOOTM_VERBOSE
+#ifdef CONFIG_BOOTM_VERBOSE
 					  "v"
 #endif
 					  "] IMAGE")
diff --git a/common/Kconfig b/common/Kconfig
index 928db0a..aa257bf 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -40,10 +40,6 @@ config HAS_DMA
 config GENERIC_GPIO
 	bool
 
-config BOOTM
-	select UIMAGE
-	bool
-
 config BLOCK
 	bool
 
@@ -546,6 +542,91 @@ config TIMESTAMP
 	  commands like bootm or iminfo. This option is
 	  automatically enabled when you select CFG_CMD_DATE .
 
+menuconfig BOOTM
+	select UIMAGE
+	default y if COMMAND_SUPPORT
+	bool "bootm support"
+
+config BOOTM_SHOW_TYPE
+	bool
+	depends on BOOTM
+	prompt "show image information"
+	help
+	  Displays some tags from the uImage:
+
+	  - OS type
+	  - architecture,
+	  - type
+	  - compression method.
+
+config BOOTM_VERBOSE
+	bool
+	prompt "verbose support"
+	depends on BOOTM
+	help
+	  Adds the verbose (-v switch) command line option.
+
+config BOOTM_INITRD
+	bool
+	prompt "initial RAM disk (initrd) support"
+	depends on BOOTM
+	help
+	  Adds support for initial RAM disk and this two command line options:
+
+	  -r INITRD  specify an initrd image
+	  -L ADDR    specify initrd load address
+
+config BOOTM_OFTREE
+	bool
+	depends on BOOTM
+	select OFTREE
+	prompt "device tree (oftree) support"
+	help
+	  Add support to pass a device tree (a.k.a Open Firmware Tree, oftree). Adds
+	  this command line option:
+
+	  -o DTS  specify device tree
+
+config BOOTM_OFTREE_UIMAGE
+	bool
+	prompt "support passing device tree (oftree) uImages"
+	depends on BOOTM_OFTREE
+	help
+	  Support using oftree uImages. Without this only raw oftree
+	  blobs can be used.
+
+config BOOTM_AIMAGE
+	bool
+	prompt "Android image support"
+	depends on BOOTM && ARM
+	help
+	  Support using Android Images.
+
+config BOOTM_FITIMAGE
+	bool
+	prompt "FIT image support"
+	select FITIMAGE
+	depends on BOOTM && ARM
+	help
+	  Support using Flattened Image Tree (FIT) Images. FIT is an image
+	  format introduced by U-Boot. A FIT image contains one or multiple
+	  kernels, device trees and initrds. The FIT image itself is a flattened
+	  device tree binary. Have a look at the u-boot source tree
+	  in the "doc/uImage.FIT" folder for more information:
+	  http://git.denx.de/?p=u-boot.git;a=tree;f=doc/uImage.FIT
+
+config BOOTM_FITIMAGE_SIGNATURE
+	bool
+	prompt "support verifying signed FIT images"
+	depends on BOOTM_FITIMAGE
+	select FITIMAGE_SIGNATURE
+	help
+	  Support verifying signed FIT images. This requires FIT images
+	  as described in:
+	  http://git.denx.de/?p=u-boot.git;a=blob;f=doc/uImage.FIT/signature.txt
+	  Additionally the barebox device tree needs a /signature node with the
+	  public key with which the image has been signed.
+
 config BLSPEC
 	depends on BLOCK
 	depends on FLEXIBLE_BOOTARGS
diff --git a/common/bootm.c b/common/bootm.c
index cad8c73..b74b922 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -142,7 +142,7 @@ int bootm_load_os(struct image_data *data, unsigned long load_address)
 
 bool bootm_has_initrd(struct image_data *data)
 {
-	if (!IS_ENABLED(CONFIG_CMD_BOOTM_INITRD))
+	if (!IS_ENABLED(CONFIG_BOOTM_INITRD))
 		return false;
 
 	if (data->os_fit && data->os_fit->initrd)
@@ -196,7 +196,7 @@ int bootm_load_initrd(struct image_data *data, unsigned long load_address)
 	enum filetype type;
 	int ret;
 
-	if (!IS_ENABLED(CONFIG_CMD_BOOTM_INITRD))
+	if (!IS_ENABLED(CONFIG_BOOTM_INITRD))
 		return -ENOSYS;
 
 	if (!bootm_has_initrd(data))
@@ -274,7 +274,7 @@ static int bootm_open_oftree_uimage(struct image_data *data, size_t *size,
 
 	printf("Loading devicetree from '%s'@%d\n", oftree, num);
 
-	if (!IS_ENABLED(CONFIG_CMD_BOOTM_OFTREE_UIMAGE))
+	if (!IS_ENABLED(CONFIG_BOOTM_OFTREE_UIMAGE))
 		return -EINVAL;
 
 	if (!strcmp(data->os_file, oftree)) {
@@ -651,7 +651,7 @@ static int bootm_init(void)
 	globalvar_add_simple("bootm.image.loadaddr", NULL);
 	globalvar_add_simple("bootm.oftree", NULL);
 	globalvar_add_simple_bool("bootm.appendroot", &bootm_appendroot);
-	if (IS_ENABLED(CONFIG_CMD_BOOTM_INITRD)) {
+	if (IS_ENABLED(CONFIG_BOOTM_INITRD)) {
 		globalvar_add_simple("bootm.initrd", NULL);
 		globalvar_add_simple("bootm.initrd.loadaddr", NULL);
 	}
diff --git a/common/image.c b/common/image.c
index 9252d5e..f3ec071 100644
--- a/common/image.c
+++ b/common/image.c
@@ -31,7 +31,7 @@
 #include <time.h>
 #endif
 
-#if defined(CONFIG_CMD_BOOTM_SHOW_TYPE) || !defined(__BAREBOX__)
+#if defined(CONFIG_BOOTM_SHOW_TYPE) || !defined(__BAREBOX__)
 typedef struct table_entry {
 	int	id;		/* as defined in image.h	*/
 	char	*sname;		/* short (input) name		*/
diff --git a/common/uimage.c b/common/uimage.c
index 34daf70..28a25bb 100644
--- a/common/uimage.c
+++ b/common/uimage.c
@@ -50,7 +50,7 @@ void uimage_print_contents(struct uimage_handle *handle)
 			tm.tm_year, tm.tm_mon, tm.tm_mday,
 			tm.tm_hour, tm.tm_min, tm.tm_sec);
 #endif
-#if defined(CONFIG_CMD_BOOTM_SHOW_TYPE)
+#if defined(CONFIG_BOOTM_SHOW_TYPE)
 	printf("   OS:           %s\n", image_get_os_name(hdr->ih_os));
 	printf("   Architecture: %s\n", image_get_arch_name(hdr->ih_arch));
 	printf("   Type:         %s\n", image_get_type_name(hdr->ih_type));
diff --git a/include/boot.h b/include/boot.h
index 8fcbb7f..2683d72 100644
--- a/include/boot.h
+++ b/include/boot.h
@@ -97,7 +97,7 @@ struct image_handler {
 
 int register_image_handler(struct image_handler *handle);
 
-#ifdef CONFIG_CMD_BOOTM_VERBOSE
+#ifdef CONFIG_BOOTM_VERBOSE
 static inline int bootm_verbose(struct image_data *data)
 {
 	return data->verbose;
diff --git a/include/image.h b/include/image.h
index 730e3d7..07ab0f1 100644
--- a/include/image.h
+++ b/include/image.h
@@ -189,7 +189,7 @@ typedef struct image_header {
 	uint8_t		ih_name[IH_NMLEN];	/* Image Name		*/
 } image_header_t;
 
-#if defined(CONFIG_CMD_BOOTM_SHOW_TYPE) || !defined(__BAREBOX__)
+#if defined(CONFIG_BOOTM_SHOW_TYPE) || !defined(__BAREBOX__)
 const char *image_get_os_name(uint8_t os);
 const char *image_get_arch_name(uint8_t arch);
 const char *image_get_type_name(uint8_t type);
-- 
2.8.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
