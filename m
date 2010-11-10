Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 31.mail-out.ovh.net ([213.186.62.10])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PG9EI-0000Ai-9t
	for barebox@lists.infradead.org; Wed, 10 Nov 2010 11:52:43 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 10 Nov 2010 12:49:18 +0100
Message-Id: <1289389758-9290-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1289389500-7690-1-git-send-email-plagnioj@jcrosoft.com>
References: <1289389500-7690-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 5/6] at91: Support for at91sam9g10: core chip & board support
To: barebox@lists.infradead.org

Here are the modification to at91sam9261 files dedicated to the support of
at91sam9g10. This direction has been adopted to minimize code duplication.

All at91sam9261 drivers are enabled in _devices and board files. Modificaton
to peripherals that support at91sam9g10 will be added in future patches.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/Makefile                                 |    1 +
 arch/arm/boards/at91sam9261ek/init.c              |    5 ++-
 arch/arm/configs/at91sam9g10ek_defconfig          |   41 +++++++++++++++++++++
 arch/arm/mach-at91/Kconfig                        |   24 ++++++++++++
 arch/arm/mach-at91/Makefile                       |    1 +
 arch/arm/mach-at91/include/mach/at91sam9_matrix.h |    2 +-
 arch/arm/mach-at91/lowlevel_init.S                |    2 +-
 7 files changed, 73 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm/configs/at91sam9g10ek_defconfig

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index b1a30f2..4f2d48c 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -54,6 +54,7 @@ board-$(CONFIG_MACH_A9M2440)			:= a9m2440
 board-$(CONFIG_MACH_AT91SAM9260EK)		:= at91sam9260ek
 board-$(CONFIG_MACH_AT91SAM9261EK)		:= at91sam9261ek
 board-$(CONFIG_MACH_AT91SAM9263EK)		:= at91sam9263ek
+board-$(CONFIG_MACH_AT91SAM9G10EK)		:= at91sam9261ek
 board-$(CONFIG_MACH_AT91SAM9G20EK)		:= at91sam9260ek
 board-$(CONFIG_MACH_AT91SAM9M10G45EK)		:= at91sam9m10g45ek
 board-$(CONFIG_MACH_EDB9301)			:= edb93xx
diff --git a/arch/arm/boards/at91sam9261ek/init.c b/arch/arm/boards/at91sam9261ek/init.c
index e7242ad..576a022 100644
--- a/arch/arm/boards/at91sam9261ek/init.c
+++ b/arch/arm/boards/at91sam9261ek/init.c
@@ -155,7 +155,10 @@ static int at91sam9261ek_devices_init(void)
 	dev_add_bb_dev("env_raw", "env0");
 
 	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
-	armlinux_set_architecture(MACH_TYPE_AT91SAM9261EK);
+	if (machine_is_at91sam9g10ek())
+		armlinux_set_architecture(MACH_TYPE_AT91SAM9G10EK);
+	else
+		armlinux_set_architecture(MACH_TYPE_AT91SAM9261EK);
 
 	return 0;
 }
diff --git a/arch/arm/configs/at91sam9g10ek_defconfig b/arch/arm/configs/at91sam9g10ek_defconfig
new file mode 100644
index 0000000..d39639a
--- /dev/null
+++ b/arch/arm/configs/at91sam9g10ek_defconfig
@@ -0,0 +1,41 @@
+CONFIG_ARCH_AT91SAM9G10=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_PROMPT="9G10-EK:"
+CONFIG_LONGHELP=y
+CONFIG_GLOB=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_PARTITION=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/at91sam9261ek/env"
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_MTEST=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_BOOTM_ZLIB=y
+CONFIG_CMD_BOOTM_BZLIB=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_UNLZO=y
+CONFIG_NET=y
+CONFIG_NET_DHCP=y
+CONFIG_NET_NFS=y
+CONFIG_NET_PING=y
+CONFIG_NET_TFTP=y
+CONFIG_DRIVER_NET_DM9000=y
+# CONFIG_SPI is not set
+CONFIG_MTD=y
+CONFIG_NAND=y
+CONFIG_NAND_ATMEL=y
+CONFIG_UBI=y
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 331a9f9..60b693c 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -8,6 +8,7 @@ config BOARDINFO
 	default "Atmel 91SAM9260-EK" if MACH_AT91SAM9260EK
 	default "Atmel at91sam9261-ek" if MACH_AT91SAM9261EK
 	default "Atmel at91sam9263-ek" if MACH_AT91SAM9263EK
+	default "Atmel at91sam9g10-ek" if MACH_AT91SAM9G10EK
 	default "Atmel at91sam9g20-ek" if MACH_AT91SAM9G20EK
 	default "Atmel at91sam9m10g45-ek" if MACH_AT91SAM9M10G45EK
 	default "Bucyrus MMC-CPU" if MACH_MMCCPU
@@ -36,6 +37,10 @@ config ARCH_AT91SAM9263
 	select CPU_ARM926T
 	select HAS_MACB
 
+config ARCH_AT91SAM9G10
+	bool "AT91SAM9G10"
+	select CPU_ARM926T
+
 config ARCH_AT91SAM9G20
 	bool "AT91SAM9G20"
 	select CPU_ARM926T
@@ -94,6 +99,25 @@ endif
 
 # ----------------------------------------------------------
 
+if ARCH_AT91SAM9G10
+
+choice
+	prompt "AT91SAM9G10 Board Type"
+
+config MACH_AT91SAM9G10EK
+	bool "Atmel AT91SAM9G10-EK Evaluation Kit"
+	select HAVE_NAND_ATMEL_BUSWIDTH_16
+	select HAS_DM9000
+	help
+	  Select this if you are using Atmel's AT91SAM9G10-EK Evaluation Kit.
+	  <http://www.atmel.com/dyn/products/tools_card.asp?tool_id=4588>
+
+endchoice
+
+endif
+
+# ----------------------------------------------------------
+
 if ARCH_AT91SAM9G20
 
 choice
diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index 0a5539f..d57c8f5 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -6,5 +6,6 @@ obj-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += lowlevel_init.o
 obj-$(CONFIG_ARCH_AT91SAM9260) += at91sam9260.o at91sam926x_time.o at91sam9260_devices.o sam9_smc.o
 obj-$(CONFIG_ARCH_AT91SAM9261) += at91sam9261.o at91sam926x_time.o at91sam9261_devices.o sam9_smc.o
 obj-$(CONFIG_ARCH_AT91SAM9263) += at91sam9263.o at91sam926x_time.o at91sam9263_devices.o sam9_smc.o
+obj-$(CONFIG_ARCH_AT91SAM9G10) += at91sam9261.o at91sam926x_time.o at91sam9261_devices.o sam9_smc.o
 obj-$(CONFIG_ARCH_AT91SAM9G20) += at91sam9260.o at91sam926x_time.o at91sam9260_devices.o sam9_smc.o
 obj-$(CONFIG_ARCH_AT91SAM9G45) += at91sam9g45.o at91sam926x_time.o at91sam9g45_devices.o sam9_smc.o
diff --git a/arch/arm/mach-at91/include/mach/at91sam9_matrix.h b/arch/arm/mach-at91/include/mach/at91sam9_matrix.h
index 58cafd8..1d1d905 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9_matrix.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9_matrix.h
@@ -13,7 +13,7 @@
 
 #if defined(CONFIG_ARCH_AT91SAM9260) || defined(CONFIG_ARCH_AT91SAM9G20)
 #include <mach/at91sam9260_matrix.h>
-#elif defined(CONFIG_ARCH_AT91SAM9261)
+#elif defined(CONFIG_ARCH_AT91SAM9261) || defined(CONFIG_ARCH_AT91SAM9G10)
 #include <mach/at91sam9261_matrix.h>
 #elif defined(CONFIG_ARCH_AT91SAM9263)
 #include <mach/at91sam9263_matrix.h>
diff --git a/arch/arm/mach-at91/lowlevel_init.S b/arch/arm/mach-at91/lowlevel_init.S
index 8a0ae02..805b201 100644
--- a/arch/arm/mach-at91/lowlevel_init.S
+++ b/arch/arm/mach-at91/lowlevel_init.S
@@ -194,7 +194,7 @@ SMRDATA:
 	.word (AT91_BASE_SYS + AT91_PIOD + PIO_ASR)
 	.word CONFIG_SYS_PIOD_PPUDR_VAL
 #elif defined(CONFIG_ARCH_AT91SAM9260) || defined(CONFIG_ARCH_AT91SAM9261) \
-	|| defined(CONFIG_ARCH_AT91SAM9G20)
+	|| defined(CONFIG_ARCH_AT91SAM9G20) || defined(CONFIG_ARCH_AT91SAM9G10)
 	.word (AT91_BASE_SYS + AT91_PIOC + PIO_PDR)
 	.word CONFIG_SYS_PIOC_PDR_VAL1
 	.word (AT91_BASE_SYS + AT91_PIOC + PIO_PUDR)
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
