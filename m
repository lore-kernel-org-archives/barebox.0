Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-oi0-x243.google.com ([2607:f8b0:4003:c06::243])
 by merlin.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dalWb-0006rH-Cz
 for barebox@lists.infradead.org; Thu, 27 Jul 2017 16:20:34 +0000
Received: by mail-oi0-x243.google.com with SMTP id j194so10250567oib.4
 for <barebox@lists.infradead.org>; Thu, 27 Jul 2017 09:20:10 -0700 (PDT)
MIME-Version: 1.0
From: Mabcded Babcde <thepusherpushes@gmail.com>
Date: Thu, 27 Jul 2017 18:20:07 +0200
Message-ID: <CAArhposKY9Ai1OFPX+w2f4ajuw_D8jRTc2tttdiJcO8djj01eg@mail.gmail.com>
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
Subject: [PATCH] Add new command fs2bridge for socfpga
To: barebox@lists.infradead.org

Hi,
this patch adds a new command to barebox. It is used to enable or
disable the fpga-to-sdram bridges on socfpgas. The patch is based on a
manual from altera
(https://www.altera.com/support/support-resources/knowledge-base/embedded/2016/how-and-when-can-i-enable-the-fpga2sdram-bridge-on-cyclone-v-soc.html)
and a implementation for u-boot
(https://github.com/rogerq/u-boot/blob/master/arch/arm/mach-socfpga/misc.c).
The fpga2sdram fpga configuration can only be set when the SDRAM
interface is idle. So it is necessary to use the on-chip ram. To bring
all fpga2sdram bridges out of reset it is necessary to write 0x3FFF to
the register. Only the fpga2sdram bridges are enabled or disabled but
no other bridges like the axi bridges. I'm a beginner to embedded and
open-source software. This is the reason why I don't know to which
branch I have to push this patch and I don't know which license should
be applied here because I used some code from another source (see
above GPL License / Altera). Nevertheless I would be happy to
contribute to Barebox.
Thanks, Mathieu


---
 commands/Kconfig     |  7 ++++
 commands/Makefile    |  1 +
 commands/f2sbridge.c | 92 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 100 insertions(+)
 create mode 100644 commands/f2sbridge.c

diff --git a/commands/Kconfig b/commands/Kconfig
index ae2dc4b..328ab1b 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -2127,6 +2127,13 @@ config CMD_SEED
     help
       Seed the pseudo random number generator (PRNG)

+config CMD_F2SBRIDGE
+    bool
+    depends on ARCH_SOCFPGA
+    prompt "f2sbridge"
+    help
+      Enables or disables the fpga2sdram bridge
+
 # end Miscellaneous commands
 endmenu

diff --git a/commands/Makefile b/commands/Makefile
index 37486dc..2006bca 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -123,3 +123,4 @@ obj-$(CONFIG_CMD_SPD_DECODE)    += spd_decode.o
 obj-$(CONFIG_CMD_MMC_EXTCSD)    += mmc_extcsd.o
 obj-$(CONFIG_CMD_NAND_BITFLIP)    += nand-bitflip.o
 obj-$(CONFIG_CMD_SEED)        += seed.o
+obj-$(CONFIG_CMD_F2SBRIDGE)    += f2sbridge.o
diff --git a/commands/f2sbridge.c b/commands/f2sbridge.c
new file mode 100644
index 0000000..8d3bbcc
--- /dev/null
+++ b/commands/f2sbridge.c
@@ -0,0 +1,92 @@
+/*
+ *  Copyright (C) ???
+ *
+ * SPDX-License-Identifier:    GPL-2.0+
+ */
+
+
+#include <common.h>
+#include <io.h>
+#include <command.h>
+
+#define SOCFPGA_SYSMGR_ADDRESS    0xFFD08000
+#define SOCFPGA_SDR_ADDRESS    0xFFC20000
+
+#define SDR_CTRLGRP_FPGAPORTRST_ADDRESS    0x5080
+#define SDR_CTRLGRP_STATICCFG_ADDRESS    0x505C
+#define SDR_CTRLGRP_STATICCFG_APPLYCFG_MASK    0x00000008
+
+#define SYSMGR_FPGAINTF_MODULE    (SOCFPGA_SYSMGR_ADDRESS + 0x28)
+
+
+static void socfpga_sdram_apply_staticcfg(void)
+{
+    const uint32_t staticcfg = SOCFPGA_SDR_ADDRESS +
SDR_CTRLGRP_STATICCFG_ADDRESS;
+    const uint32_t applymask = SDR_CTRLGRP_STATICCFG_APPLYCFG_MASK;
+    uint32_t val = readl(staticcfg) | applymask;
+
+    /*
+     * SDRAM staticcfg register specific:
+     * When applying the register setting, the CPU must not access
+     * SDRAM. Luckily for us, we can abuse i-cache here to help us
+     * circumvent the SDRAM access issue. The idea is to make sure
+     * that the code is in one full i-cache line by branching past
+     * it and back. Once it is in the i-cache, we execute the core
+     * of the code and apply the register settings.
+     *
+     * The code below uses 7 instructions, while the Cortex-A9 has
+     * 32-byte cachelines, thus the limit is 8 instructions total.
+     */
+    asm volatile(
+        ".align    5            \n"
+        "    b    2f        \n"
+        "1:    str    %0,    [%1]    \n"
+        "    dsb            \n"
+        "    isb            \n"
+        "    b    3f        \n"
+        "2:    b    1b        \n"
+        "3:    nop            \n"
+    : : "r"(val), "r"(staticcfg) : "memory", "cc");
+}
+
+
+int do_f2sbridge(int argc, char *argv[])
+{
+    if (argc != 2)
+        return COMMAND_ERROR_USAGE;
+
+    switch (*argv[1]) {
+    case 'e':    // Enable
+        // hps peripheral controller to fpga
+        iowrite32(0, SYSMGR_FPGAINTF_MODULE);
+        socfpga_sdram_apply_staticcfg();
+        // enable all fpga2sdram bridge ports
+        iowrite32(0x3fff, SOCFPGA_SDR_ADDRESS +
SDR_CTRLGRP_FPGAPORTRST_ADDRESS);
+
+        break;
+    case 'd':    // Disable
+        iowrite32(0, SYSMGR_FPGAINTF_MODULE);
+        iowrite32(0, SOCFPGA_SDR_ADDRESS + SDR_CTRLGRP_FPGAPORTRST_ADDRESS);
+        socfpga_sdram_apply_staticcfg();
+
+        break;
+    default:
+        return COMMAND_ERROR_USAGE;
+    }
+
+    return 0;
+}
+
+
+BAREBOX_CMD_HELP_START(f2sbridge)
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-e \t",  "enable f2s bridge")
+BAREBOX_CMD_HELP_OPT ("-d \t",  "disable f2s bridge")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(f2sbridge)
+    .cmd        = do_f2sbridge,
+    BAREBOX_CMD_DESC("Enables or disables the fpga2sdram bridge.")
+    BAREBOX_CMD_GROUP(CMD_GRP_MISC)
+    BAREBOX_CMD_HELP(cmd_f2sbridge_help)
+BAREBOX_CMD_END
-- 
2.7.4

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
