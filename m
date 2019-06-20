Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdsNd-0005Bf-FT
 for barebox@lists.infradead.org; Thu, 20 Jun 2019 08:25:16 +0000
Received: by mail-lj1-x244.google.com with SMTP id i21so1865542ljj.3
 for <barebox@lists.infradead.org>; Thu, 20 Jun 2019 01:25:12 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 20 Jun 2019 11:25:09 +0300
Message-Id: <20190620082509.20605-1-antonynpavlov@gmail.com>
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
Subject: [PATCH v2] treewide: remove CONFIG_DEBUG_INFO from defconfigs
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

The commit b917f7864115a35 ("remove CONFIG_DEBUG_INFO")
has dropped Kconfig DEBUG_INFO option however we
still have very many DEBUG_INFO mentions in defconfig
files. Drop them using sed:

  find -iname '*defconfig' -type f -exec \
      sed -i "/CONFIG_DEBUG_INFO=y/d" {} ';'

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---

Changes since v1:

  * drop out-of-tree arch/riscv/configs/qemu-sifive-u500_defconfig
    changes.

 arch/arm/configs/a9m2410_defconfig                   | 1 -
 arch/arm/configs/a9m2440_defconfig                   | 1 -
 arch/arm/configs/cfa10036_defconfig                  | 1 -
 arch/arm/configs/chumbyone_defconfig                 | 1 -
 arch/arm/configs/duckbill_defconfig                  | 1 -
 arch/arm/configs/freescale-mx23-evk_defconfig        | 1 -
 arch/arm/configs/freescale-mx28-evk_defconfig        | 1 -
 arch/arm/configs/freescale-mx53-smd_defconfig        | 1 -
 arch/arm/configs/friendlyarm_mini2440_defconfig      | 1 -
 arch/arm/configs/friendlyarm_mini6410_defconfig      | 1 -
 arch/arm/configs/friendlyarm_tiny6410_defconfig      | 1 -
 arch/arm/configs/imx233-olinuxino_defconfig          | 1 -
 arch/arm/configs/lubbock_defconfig                   | 1 -
 arch/arm/configs/mainstone_defconfig                 | 1 -
 arch/arm/configs/microchip_ksz9477_evb_defconfig     | 1 -
 arch/arm/configs/mioa701_defconfig                   | 1 -
 arch/arm/configs/omap3430_sdp3430_per_uart_defconfig | 1 -
 arch/arm/configs/omap_defconfig                      | 1 -
 arch/arm/configs/phytec-phycore-pxa270_defconfig     | 1 -
 arch/arm/configs/qemu_virt64_defconfig               | 1 -
 arch/arm/configs/rk3288_defconfig                    | 1 -
 arch/arm/configs/sama5d4_xplained_defconfig          | 1 -
 arch/arm/configs/sama5d4ek_defconfig                 | 1 -
 arch/arm/configs/socfpga-arria10_defconfig           | 1 -
 arch/arm/configs/tqma53_defconfig                    | 1 -
 arch/arm/configs/tx28stk5_defconfig                  | 1 -
 arch/arm/configs/zedboard_defconfig                  | 1 -
 arch/arm/configs/zylonite310_defconfig               | 1 -
 arch/mips/configs/loongson-ls1b_defconfig            | 1 -
 arch/mips/configs/qemu-malta_defconfig               | 1 -
 arch/sandbox/configs/sandbox_defconfig               | 1 -
 arch/x86/configs/efi_defconfig                       | 1 -
 arch/x86/configs/generic_defconfig                   | 1 -
 33 files changed, 33 deletions(-)

diff --git a/arch/arm/configs/a9m2410_defconfig b/arch/arm/configs/a9m2410_defconfig
index 44d1edfc03..ea70a121af 100644
--- a/arch/arm/configs/a9m2410_defconfig
+++ b/arch/arm/configs/a9m2410_defconfig
@@ -8,7 +8,6 @@ CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/a9m2410/env"
-CONFIG_DEBUG_INFO=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_GO=y
diff --git a/arch/arm/configs/a9m2440_defconfig b/arch/arm/configs/a9m2440_defconfig
index d1ae580571..5843d29d7f 100644
--- a/arch/arm/configs/a9m2440_defconfig
+++ b/arch/arm/configs/a9m2440_defconfig
@@ -10,7 +10,6 @@ CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/a9m2440/env"
-CONFIG_DEBUG_INFO=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_GO=y
diff --git a/arch/arm/configs/cfa10036_defconfig b/arch/arm/configs/cfa10036_defconfig
index 2283658364..c34af8319a 100644
--- a/arch/arm/configs/cfa10036_defconfig
+++ b/arch/arm/configs/cfa10036_defconfig
@@ -14,7 +14,6 @@ CONFIG_BOOTM_OFTREE=y
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/crystalfontz-cfa10036/env"
-CONFIG_DEBUG_INFO=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_RESET=y
diff --git a/arch/arm/configs/chumbyone_defconfig b/arch/arm/configs/chumbyone_defconfig
index bb7473fc89..2b38b8cf88 100644
--- a/arch/arm/configs/chumbyone_defconfig
+++ b/arch/arm/configs/chumbyone_defconfig
@@ -10,7 +10,6 @@ CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/chumby_falconwing/env"
-CONFIG_DEBUG_INFO=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_GO=y
diff --git a/arch/arm/configs/duckbill_defconfig b/arch/arm/configs/duckbill_defconfig
index 28ea405fe1..6f80e15bb8 100644
--- a/arch/arm/configs/duckbill_defconfig
+++ b/arch/arm/configs/duckbill_defconfig
@@ -21,7 +21,6 @@ CONFIG_BOOTM_INITRD=y
 CONFIG_BLSPEC=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_RESET_SOURCE=y
-CONFIG_DEBUG_INFO=y
 CONFIG_CMD_DMESG=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
diff --git a/arch/arm/configs/freescale-mx23-evk_defconfig b/arch/arm/configs/freescale-mx23-evk_defconfig
index 3dc8cc46a2..2b12e297b3 100644
--- a/arch/arm/configs/freescale-mx23-evk_defconfig
+++ b/arch/arm/configs/freescale-mx23-evk_defconfig
@@ -5,7 +5,6 @@ CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_RESET_SOURCE=y
-CONFIG_DEBUG_INFO=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_PARTITION=y
diff --git a/arch/arm/configs/freescale-mx28-evk_defconfig b/arch/arm/configs/freescale-mx28-evk_defconfig
index 6c0bb02891..03457a4a95 100644
--- a/arch/arm/configs/freescale-mx28-evk_defconfig
+++ b/arch/arm/configs/freescale-mx28-evk_defconfig
@@ -20,7 +20,6 @@ CONFIG_BOOTM_INITRD=y
 CONFIG_BLSPEC=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_RESET_SOURCE=y
-CONFIG_DEBUG_INFO=y
 CONFIG_CMD_DMESG=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
diff --git a/arch/arm/configs/freescale-mx53-smd_defconfig b/arch/arm/configs/freescale-mx53-smd_defconfig
index 4677e07099..b292b972a3 100644
--- a/arch/arm/configs/freescale-mx53-smd_defconfig
+++ b/arch/arm/configs/freescale-mx53-smd_defconfig
@@ -19,7 +19,6 @@ CONFIG_BOOTM_INITRD=y
 CONFIG_BOOTM_OFTREE=y
 CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_DEBUG_INFO=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
diff --git a/arch/arm/configs/friendlyarm_mini2440_defconfig b/arch/arm/configs/friendlyarm_mini2440_defconfig
index 19a5a4ed3d..1b2c363f51 100644
--- a/arch/arm/configs/friendlyarm_mini2440_defconfig
+++ b/arch/arm/configs/friendlyarm_mini2440_defconfig
@@ -10,7 +10,6 @@ CONFIG_GLOB=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/friendlyarm-mini2440/env"
-CONFIG_DEBUG_INFO=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_GO=y
diff --git a/arch/arm/configs/friendlyarm_mini6410_defconfig b/arch/arm/configs/friendlyarm_mini6410_defconfig
index 209e3f8bf6..8beee6f194 100644
--- a/arch/arm/configs/friendlyarm_mini6410_defconfig
+++ b/arch/arm/configs/friendlyarm_mini6410_defconfig
@@ -8,7 +8,6 @@ CONFIG_AUTO_COMPLETE=y
 CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_DEBUG_INFO=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_GO=y
diff --git a/arch/arm/configs/friendlyarm_tiny6410_defconfig b/arch/arm/configs/friendlyarm_tiny6410_defconfig
index 85ae78129f..12dbea1317 100644
--- a/arch/arm/configs/friendlyarm_tiny6410_defconfig
+++ b/arch/arm/configs/friendlyarm_tiny6410_defconfig
@@ -9,7 +9,6 @@ CONFIG_AUTO_COMPLETE=y
 CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_DEBUG_INFO=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_GO=y
diff --git a/arch/arm/configs/imx233-olinuxino_defconfig b/arch/arm/configs/imx233-olinuxino_defconfig
index 47d485b4e9..d683c8f9de 100644
--- a/arch/arm/configs/imx233-olinuxino_defconfig
+++ b/arch/arm/configs/imx233-olinuxino_defconfig
@@ -24,7 +24,6 @@ CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_DEFAULT_COMPRESSION_LZO=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_RESET_SOURCE=y
-CONFIG_DEBUG_INFO=y
 CONFIG_CMD_DMESG=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
diff --git a/arch/arm/configs/lubbock_defconfig b/arch/arm/configs/lubbock_defconfig
index a45d723879..9f4f904235 100644
--- a/arch/arm/configs/lubbock_defconfig
+++ b/arch/arm/configs/lubbock_defconfig
@@ -24,7 +24,6 @@ CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/lubbock/env"
 CONFIG_RESET_SOURCE=y
-CONFIG_DEBUG_INFO=y
 CONFIG_CMD_DMESG=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
diff --git a/arch/arm/configs/mainstone_defconfig b/arch/arm/configs/mainstone_defconfig
index c8e4f780a6..80e72b27ab 100644
--- a/arch/arm/configs/mainstone_defconfig
+++ b/arch/arm/configs/mainstone_defconfig
@@ -25,7 +25,6 @@ CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/mainstone/env"
 CONFIG_RESET_SOURCE=y
-CONFIG_DEBUG_INFO=y
 CONFIG_CMD_DMESG=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
diff --git a/arch/arm/configs/microchip_ksz9477_evb_defconfig b/arch/arm/configs/microchip_ksz9477_evb_defconfig
index e7d05bd13b..4189b2c039 100644
--- a/arch/arm/configs/microchip_ksz9477_evb_defconfig
+++ b/arch/arm/configs/microchip_ksz9477_evb_defconfig
@@ -16,7 +16,6 @@ CONFIG_BOOTM_OFTREE=y
 CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CONSOLE_ALLOW_COLOR=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
-CONFIG_DEBUG_INFO=y
 CONFIG_CMD_DMESG=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
diff --git a/arch/arm/configs/mioa701_defconfig b/arch/arm/configs/mioa701_defconfig
index 99430112ff..a786d1618e 100644
--- a/arch/arm/configs/mioa701_defconfig
+++ b/arch/arm/configs/mioa701_defconfig
@@ -24,7 +24,6 @@ CONFIG_BOOTM_OFTREE=y
 CONFIG_FLEXIBLE_BOOTARGS=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/mioa701/env"
 CONFIG_RESET_SOURCE=y
-CONFIG_DEBUG_INFO=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
diff --git a/arch/arm/configs/omap3430_sdp3430_per_uart_defconfig b/arch/arm/configs/omap3430_sdp3430_per_uart_defconfig
index 1c30933261..1944340516 100644
--- a/arch/arm/configs/omap3430_sdp3430_per_uart_defconfig
+++ b/arch/arm/configs/omap3430_sdp3430_per_uart_defconfig
@@ -6,7 +6,6 @@ CONFIG_SHELL_SIMPLE=y
 # CONFIG_ERRNO_MESSAGES is not set
 # CONFIG_TIMESTAMP is not set
 # CONFIG_DEFAULT_ENVIRONMENT is not set
-CONFIG_DEBUG_INFO=y
 # CONFIG_CMD_HELP is not set
 # CONFIG_CMD_BOOTM is not set
 CONFIG_CMD_GO=y
diff --git a/arch/arm/configs/omap_defconfig b/arch/arm/configs/omap_defconfig
index 8615283453..10305b27aa 100644
--- a/arch/arm/configs/omap_defconfig
+++ b/arch/arm/configs/omap_defconfig
@@ -34,7 +34,6 @@ CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_STATE=y
 CONFIG_BOOTCHOOSER=y
 CONFIG_RESET_SOURCE=y
-CONFIG_DEBUG_INFO=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
diff --git a/arch/arm/configs/phytec-phycore-pxa270_defconfig b/arch/arm/configs/phytec-phycore-pxa270_defconfig
index ed1116940b..370902c3c1 100644
--- a/arch/arm/configs/phytec-phycore-pxa270_defconfig
+++ b/arch/arm/configs/phytec-phycore-pxa270_defconfig
@@ -19,7 +19,6 @@ CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/phytec-phycore-pxa270/env"
-CONFIG_DEBUG_INFO=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
diff --git a/arch/arm/configs/qemu_virt64_defconfig b/arch/arm/configs/qemu_virt64_defconfig
index 9b7e11ff73..557ac1ffbe 100644
--- a/arch/arm/configs/qemu_virt64_defconfig
+++ b/arch/arm/configs/qemu_virt64_defconfig
@@ -11,7 +11,6 @@ CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_DEBUG_INFO=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_MEMINFO=y
 # CONFIG_CMD_BOOTU is not set
diff --git a/arch/arm/configs/rk3288_defconfig b/arch/arm/configs/rk3288_defconfig
index 15e6c15a03..3f956519d0 100644
--- a/arch/arm/configs/rk3288_defconfig
+++ b/arch/arm/configs/rk3288_defconfig
@@ -24,7 +24,6 @@ CONFIG_CONSOLE_ACTIVATE_NONE=y
 CONFIG_DEFAULT_COMPRESSION_LZO=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_RESET_SOURCE=y
-CONFIG_DEBUG_INFO=y
 CONFIG_DEBUG_LL=y
 CONFIG_DEBUG_ROCKCHIP_UART_PORT=2
 CONFIG_CMD_DMESG=y
diff --git a/arch/arm/configs/sama5d4_xplained_defconfig b/arch/arm/configs/sama5d4_xplained_defconfig
index 648c813c49..d20239cd94 100644
--- a/arch/arm/configs/sama5d4_xplained_defconfig
+++ b/arch/arm/configs/sama5d4_xplained_defconfig
@@ -22,7 +22,6 @@ CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/sama5d4_xplained/env"
-CONFIG_DEBUG_INFO=y
 # CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_LONGHELP=y
 CONFIG_CMD_MEMINFO=y
diff --git a/arch/arm/configs/sama5d4ek_defconfig b/arch/arm/configs/sama5d4ek_defconfig
index 2aa38baf87..881836e3c5 100644
--- a/arch/arm/configs/sama5d4ek_defconfig
+++ b/arch/arm/configs/sama5d4ek_defconfig
@@ -21,7 +21,6 @@ CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/sama5d4ek/env"
-CONFIG_DEBUG_INFO=y
 # CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_LONGHELP=y
 CONFIG_CMD_MEMINFO=y
diff --git a/arch/arm/configs/socfpga-arria10_defconfig b/arch/arm/configs/socfpga-arria10_defconfig
index 53e932d64b..bbaef311ff 100644
--- a/arch/arm/configs/socfpga-arria10_defconfig
+++ b/arch/arm/configs/socfpga-arria10_defconfig
@@ -21,7 +21,6 @@ CONFIG_DEFAULT_COMPRESSION_LZO=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_POLLER=y
 CONFIG_STATE=y
-CONFIG_DEBUG_INFO=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
diff --git a/arch/arm/configs/tqma53_defconfig b/arch/arm/configs/tqma53_defconfig
index f2025c8326..e5e4d60de5 100644
--- a/arch/arm/configs/tqma53_defconfig
+++ b/arch/arm/configs/tqma53_defconfig
@@ -23,7 +23,6 @@ CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_BLSPEC=y
 CONFIG_CONSOLE_ACTIVATE_NONE=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
-CONFIG_DEBUG_INFO=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
diff --git a/arch/arm/configs/tx28stk5_defconfig b/arch/arm/configs/tx28stk5_defconfig
index 504501524a..f717a16f87 100644
--- a/arch/arm/configs/tx28stk5_defconfig
+++ b/arch/arm/configs/tx28stk5_defconfig
@@ -24,7 +24,6 @@ CONFIG_PBL_CONSOLE=y
 CONFIG_DEFAULT_COMPRESSION_LZO=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_RESET_SOURCE=y
-CONFIG_DEBUG_INFO=y
 CONFIG_DEBUG_LL=y
 CONFIG_CMD_DMESG=y
 CONFIG_LONGHELP=y
diff --git a/arch/arm/configs/zedboard_defconfig b/arch/arm/configs/zedboard_defconfig
index bcd604f341..cc03368751 100644
--- a/arch/arm/configs/zedboard_defconfig
+++ b/arch/arm/configs/zedboard_defconfig
@@ -17,7 +17,6 @@ CONFIG_BOOTM_INITRD=y
 CONFIG_BOOTM_OFTREE=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/avnet-zedboard/env"
-CONFIG_DEBUG_INFO=y
 CONFIG_DEBUG_LL=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_MEMINFO=y
diff --git a/arch/arm/configs/zylonite310_defconfig b/arch/arm/configs/zylonite310_defconfig
index f1cd92af84..e81566565b 100644
--- a/arch/arm/configs/zylonite310_defconfig
+++ b/arch/arm/configs/zylonite310_defconfig
@@ -26,7 +26,6 @@ CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/zylonite/env"
 CONFIG_RESET_SOURCE=y
 CONFIG_DEFAULT_LOGLEVEL=8
-CONFIG_DEBUG_INFO=y
 CONFIG_CMD_DMESG=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
diff --git a/arch/mips/configs/loongson-ls1b_defconfig b/arch/mips/configs/loongson-ls1b_defconfig
index 25444e373e..b800f95c5c 100644
--- a/arch/mips/configs/loongson-ls1b_defconfig
+++ b/arch/mips/configs/loongson-ls1b_defconfig
@@ -14,7 +14,6 @@ CONFIG_PARTITION=y
 # CONFIG_DEFAULT_ENVIRONMENT is not set
 CONFIG_POLLER=y
 CONFIG_RESET_SOURCE=y
-CONFIG_DEBUG_INFO=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_MEMINFO=y
diff --git a/arch/mips/configs/qemu-malta_defconfig b/arch/mips/configs/qemu-malta_defconfig
index 69c7b0b10a..ea49e37553 100644
--- a/arch/mips/configs/qemu-malta_defconfig
+++ b/arch/mips/configs/qemu-malta_defconfig
@@ -13,7 +13,6 @@ CONFIG_CONSOLE_ALLOW_COLOR=y
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_POLLER=y
-CONFIG_DEBUG_INFO=y
 CONFIG_CMD_DMESG=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
diff --git a/arch/sandbox/configs/sandbox_defconfig b/arch/sandbox/configs/sandbox_defconfig
index 68fe40f40a..f8341644b4 100644
--- a/arch/sandbox/configs/sandbox_defconfig
+++ b/arch/sandbox/configs/sandbox_defconfig
@@ -6,7 +6,6 @@ CONFIG_PARTITION=y
 CONFIG_DEFAULT_COMPRESSION_GZIP=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/sandbox/board/env"
-CONFIG_DEBUG_INFO=y
 CONFIG_CMD_DMESG=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IMD=y
diff --git a/arch/x86/configs/efi_defconfig b/arch/x86/configs/efi_defconfig
index f489770eba..dab299fa5e 100644
--- a/arch/x86/configs/efi_defconfig
+++ b/arch/x86/configs/efi_defconfig
@@ -16,7 +16,6 @@ CONFIG_PARTITION_DISK_EFI=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_POLLER=y
 CONFIG_STATE=y
-CONFIG_DEBUG_INFO=y
 CONFIG_DEBUG_LL=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
diff --git a/arch/x86/configs/generic_defconfig b/arch/x86/configs/generic_defconfig
index 3b94e02a7e..4620280136 100644
--- a/arch/x86/configs/generic_defconfig
+++ b/arch/x86/configs/generic_defconfig
@@ -7,7 +7,6 @@ CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/x86/boards/x86_generic/env"
-CONFIG_DEBUG_INFO=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_MEMINFO=y
 # CONFIG_CMD_BOOTM is not set
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
