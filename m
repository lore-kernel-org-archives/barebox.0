Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h454B-0007hh-S8
 for barebox@lists.infradead.org; Wed, 13 Mar 2019 14:41:15 +0000
From: David Brandt <d.brandt@phytec.de>
Date: Wed, 13 Mar 2019 15:41:09 +0100
Message-Id: <20190313144109.1066-1-d.brandt@phytec.de>
In-Reply-To: <20190311134125.10946-1-d.brandt@phytec.de>
References: <20190311134125.10946-1-d.brandt@phytec.de>
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
Subject: [PATCH v2] commands: bootaux: New command bootaux for iMX
To: barebox@lists.infradead.org

This patch add the bootaux command which starts
auxiliary cores of iMX processors, currently only
iMX8MQ. This is based on the u-boot-imx command.

The currently unnecessary parameter for the core
to start is necessary for the iMX8QM and other
processors having multiple auxiliary cores.

Signed-off-by: David Brandt <d.brandt@phytec.de>
---
Changes v1->v2:
- removed ifdef around imx_auxiliary functions
  in arch/arm/mach-imx/imx8mq.c
- cleaned up includes in commands/bootaux.c
- clarified what ADDR is and what is done
- core is now specified with -c option
- added some checks and message to hint what
  could be wrong
- use kstrtouint/kstrtoul
---
 arch/arm/mach-imx/imx8mq.c               | 37 ++++++++++++
 arch/arm/mach-imx/include/mach/generic.h |  4 ++
 commands/Kconfig                         | 16 ++++++
 commands/Makefile                        |  1 +
 commands/bootaux.c                       | 73 ++++++++++++++++++++++++
 5 files changed, 131 insertions(+)
 create mode 100644 commands/bootaux.c

diff --git a/arch/arm/mach-imx/imx8mq.c b/arch/arm/mach-imx/imx8mq.c
index 3f6b433a5..98c62b58d 100644
--- a/arch/arm/mach-imx/imx8mq.c
+++ b/arch/arm/mach-imx/imx8mq.c
@@ -124,3 +124,40 @@ static int imx8mq_report_hdmi_firmware(void)
 	return 0;
 }
 console_initcall(imx8mq_report_hdmi_firmware);
+
+#define FSL_SIP_SRC             0xC2000005
+#define FSL_SIP_SRC_M4_START    0x00
+#define FSL_SIP_SRC_M4_STARTED  0x01
+int imx_auxiliary_core_up(unsigned int core_id, ulong boot_private_data)
+{
+	u32 stack, pc;
+	struct arm_smccc_res res;
+
+	if (core_id || !boot_private_data)
+		return -EINVAL;
+
+	stack = *(u32 *)boot_private_data;
+	pc = *(u32 *)(boot_private_data + 4);
+
+	/* Set the stack and pc to M4 bootROM */
+	writel(stack, MX8MQ_M4_BOOTROM_BASE_ADDR);
+	writel(pc, MX8MQ_M4_BOOTROM_BASE_ADDR + 4);
+
+	/* Enable M4 */
+	arm_smccc_smc(FSL_SIP_SRC, FSL_SIP_SRC_M4_START,
+			0, 0, 0, 0, 0, 0, &res);
+
+	return res.a0;
+}
+
+int imx_auxiliary_core_check_up(unsigned int core_id)
+{
+	struct arm_smccc_res res;
+
+	if (core_id)
+		return -EINVAL;
+
+	arm_smccc_smc(FSL_SIP_SRC, FSL_SIP_SRC_M4_STARTED,
+			0, 0, 0, 0, 0, 0, &res);
+	return res.a0;
+}
diff --git a/arch/arm/mach-imx/include/mach/generic.h b/arch/arm/mach-imx/include/mach/generic.h
index be58da4da..c5929dcab 100644
--- a/arch/arm/mach-imx/include/mach/generic.h
+++ b/arch/arm/mach-imx/include/mach/generic.h
@@ -59,6 +59,10 @@ void imx6ul_cpu_lowlevel_init(void);
 void imx7_cpu_lowlevel_init(void);
 void vf610_cpu_lowlevel_init(void);
 
+/* processor specific functions to boot auxiliary core */
+int imx_auxiliary_core_up(unsigned int core_id, ulong boot_private_data);
+int imx_auxiliary_core_check_up(unsigned int core_id);
+
 /* There's a off-by-one betweem the gpio bank number and the gpiochip */
 /* range e.g. GPIO_1_5 is gpio 5 under linux */
 #define IMX_GPIO_NR(bank, nr)		(((bank) - 1) * 32 + (nr))
diff --git a/commands/Kconfig b/commands/Kconfig
index 4f5d84ac1..fe960c029 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -270,6 +270,22 @@ config CMD_AT91_BOOT_TEST
 	  -j ADDR  jump address
 	  -s SRAM  SRAM device (default /dev/sram0)
 
+config CMD_BOOTAUX
+	tristate
+	default y
+	depends on ARCH_IMX8MQ
+	prompt "bootaux"
+	help
+	  Boot auxiliary core.
+
+	  Usage: bootaux [-c CORE] ADDRESS
+
+	  ADDRESS points to an isr table from which the
+	  reset handler will be started.
+
+	  Options:
+	  -c CORE  auxiliary core to start, defaults to 0
+
 config CMD_BOOT_ORDER
 	tristate
 	depends on ARCH_OMAP4
diff --git a/commands/Makefile b/commands/Makefile
index 358671bb5..c72b52c27 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -1,6 +1,7 @@
 obj-$(CONFIG_STDDEV)		+= stddev.o
 obj-$(CONFIG_CMD_DIGEST)	+= digest.o
 obj-$(CONFIG_COMPILE_HASH)	+= hashsum.o
+obj-$(CONFIG_CMD_BOOTAUX)	+= bootaux.o
 obj-$(CONFIG_CMD_BOOTM)		+= bootm.o
 obj-$(CONFIG_CMD_UIMAGE)	+= uimage.o
 obj-$(CONFIG_CMD_LINUX16)	+= linux16.o
diff --git a/commands/bootaux.c b/commands/bootaux.c
new file mode 100644
index 000000000..517f49ff3
--- /dev/null
+++ b/commands/bootaux.c
@@ -0,0 +1,73 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * bootaux - boot auxiliary core
+ *
+ * Copyright (C) 2019 David Brandt <d.brandt@phytec.de>
+ *
+ * Based on code from u-boot-imx from Freescale Semiconductor, Inc.
+ *
+ */
+
+#include <command.h>
+#include <getopt.h>
+#include <common.h>
+#include <mach/generic.h>
+
+static int do_bootaux(int argc, char *argv[])
+{
+	ulong addr;
+	unsigned int core = 0;
+	int ret, up, opt;
+
+	while ((opt = getopt(argc, argv, "c:")) > 0) {
+		switch (opt) {
+		case 'c':
+			if (kstrtouint(optarg, 0, &core))
+				return COMMAND_ERROR_USAGE;
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+
+	if (optind != argc - 1 ||
+	    kstrtoul(argv[optind], 0, &addr))
+		return COMMAND_ERROR_USAGE;
+
+	up = imx_auxiliary_core_check_up(core);
+	if (up == -EINVAL) {
+		printf("Unknown auxiliary core %u\n", core);
+		return 1;
+	} else if (up) {
+		printf("Auxiliary core %u is already up\n", core);
+		return 0;
+	}
+
+	printf("Starting auxiliary core %u at 0x%08lX ...\n", core, addr);
+
+	ret = imx_auxiliary_core_up(core, addr);
+	if (ret) {
+		printf("Error starting auxiliary core %u\n", core);
+		return 1;
+	}
+
+	return 0;
+}
+
+BAREBOX_CMD_HELP_START(bootaux)
+BAREBOX_CMD_HELP_TEXT("Boots the auxiliary core with the isr table at")
+BAREBOX_CMD_HELP_TEXT("ADDR, setting the PC to the reset handler entry.")
+BAREBOX_CMD_HELP_TEXT("Passing the load address of the M4 code works,")
+BAREBOX_CMD_HELP_TEXT("as long as the isr table is the first section.")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT("-c CORE", "select core to start (default 0)")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(bootaux)
+	.cmd		= do_bootaux,
+	BAREBOX_CMD_DESC("boot auxiliary core with isr table at ADDR")
+	BAREBOX_CMD_OPTS("[-c CORE] ADDR")
+	BAREBOX_CMD_GROUP(CMD_GRP_BOOT)
+	BAREBOX_CMD_HELP(cmd_bootaux_help)
+BAREBOX_CMD_END
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
