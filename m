Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 68.mail-out.ovh.net ([91.121.185.69])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OwbEV-00064y-NR
	for barebox@lists.infradead.org; Fri, 17 Sep 2010 13:44:09 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 17 Sep 2010 15:42:56 +0200
Message-Id: <1284730976-19565-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] Support for the at91sam9g20 : Atmel 400Mhz ARM 926ej-s
	SOC.
To: barebox@lists.infradead.org
Cc: Patrice Vilchez <patrice.vilchez@atmel.com>, Nicolas Ferre <nicolas.ferre@atmel.com>

AT91sam9g20 is an evolution of the at91sam9260 with a faster clock
speed.
We created a new board for this device but based the chip support
directly on 9260 files with little updates.
Here is the chip page on Atmel wabsite:
http://atmel.com/dyn/products/product_card.asp?part_id=4337

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: Nicolas Ferre <nicolas.ferre@atmel.com>
Cc: Patrice Vilchez <patrice.vilchez@atmel.com>
---
 arch/arm/Makefile                        |    1 +
 arch/arm/boards/at91sam9260ek/init.c     |   21 +++++++++++++++-
 arch/arm/configs/at91sam9g20ek_defconfig |   38 ++++++++++++++++++++++++++++++
 arch/arm/mach-at91/Kconfig               |   30 ++++++++++++++++++++++-
 arch/arm/mach-at91/Makefile              |    1 +
 5 files changed, 88 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm/configs/at91sam9g20ek_defconfig

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index e404ad0..77b6cf4 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -52,6 +52,7 @@ board-$(CONFIG_MACH_A9M2410)			:= a9m2410
 board-$(CONFIG_MACH_A9M2440)			:= a9m2440
 board-$(CONFIG_MACH_AT91SAM9260EK)		:= at91sam9260ek
 board-$(CONFIG_MACH_AT91SAM9263EK)		:= at91sam9263ek
+board-$(CONFIG_MACH_AT91SAM9G20EK)		:= at91sam9260ek
 board-$(CONFIG_MACH_EDB9301)			:= edb93xx
 board-$(CONFIG_MACH_EDB9302)			:= edb93xx
 board-$(CONFIG_MACH_EDB9302A)			:= edb93xx
diff --git a/arch/arm/boards/at91sam9260ek/init.c b/arch/arm/boards/at91sam9260ek/init.c
index 7bb3c45..966dd2f 100644
--- a/arch/arm/boards/at91sam9260ek/init.c
+++ b/arch/arm/boards/at91sam9260ek/init.c
@@ -40,6 +40,25 @@
 #include <mach/at91_pmc.h>
 #include <mach/at91_rstc.h>
 
+/*
+ * board revision encoding
+ * bit 0:
+ *	0 => 1 mmc
+ *	1 => 2 mmcs (board from revision C)
+ */
+#define HAVE_2MMC	(1 << 0)
+static void ek_set_board_type(void)
+{
+	if (machine_is_at91sam9g20ek()) {
+		armlinux_set_architecture(MACH_TYPE_AT91SAM9G20EK);
+#ifdef CONFIG_AT91_HAVE_2MMC
+		armlinux_set_revision(HAVE_2MMC);
+#endif
+	} else {
+		armlinux_set_architecture(MACH_TYPE_AT91SAM9260EK);
+	}
+}
+
 static struct atmel_nand_data nand_pdata = {
 	.ale		= 21,
 	.cle		= 22,
@@ -130,7 +149,7 @@ static int at91sam9260ek_devices_init(void)
 
 	at91_add_device_sdram(64 * 1024 * 1024);
 	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
-	armlinux_set_architecture(MACH_TYPE_AT91SAM9260EK);
+	ek_set_board_type();
 
 	devfs_add_partition("nand0", 0x00000, 0x80000, PARTITION_FIXED, "self_raw");
 	dev_add_bb_dev("self_raw", "self0");
diff --git a/arch/arm/configs/at91sam9g20ek_defconfig b/arch/arm/configs/at91sam9g20ek_defconfig
new file mode 100644
index 0000000..0612547
--- /dev/null
+++ b/arch/arm/configs/at91sam9g20ek_defconfig
@@ -0,0 +1,38 @@
+CONFIG_ARCH_AT91SAM9G20=y
+CONFIG_MACH_AT91SAM9G20EK=y
+CONFIG_AT91_HAVE_2MMC=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_LONGHELP=y
+CONFIG_GLOB=y
+CONFIG_PROMPT_HUSH_PS2="y"
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_PARTITION=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/pm9263/env/"
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
+CONFIG_CMD_MTEST_ALTERNATIVE=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_GPIO=y
+CONFIG_NET=y
+CONFIG_NET_DHCP=y
+CONFIG_NET_PING=y
+CONFIG_NET_TFTP=y
+CONFIG_DRIVER_NET_MACB=y
+# CONFIG_SPI is not set
+CONFIG_I2C=y
+CONFIG_DRIVER_CFI=y
+CONFIG_CFI_BUFFER_WRITE=y
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 99d0f4d..fa432a5 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -7,6 +7,7 @@ config ARCH_TEXT_BASE
 config BOARDINFO
 	default "Atmel 91SAM9260-EK" if MACH_AT91SAM9260EK
 	default "Atmel at91sam9263-ek" if MACH_AT91SAM9263EK
+	default "Atmel at91sam9g20-ek" if MACH_AT91SAM9G20EK
 	default "Bucyrus MMC-CPU" if MACH_MMCCPU
 	default "Ronetix PM9263" if MACH_PM9263
 
@@ -26,21 +27,34 @@ config ARCH_AT91SAM9263
 	select MACH_HAS_LOWLEVEL_INIT
 	select HAS_MACB
 
+config ARCH_AT91SAM9G20
+	bool "AT91SAM9G20"
+	select CPU_ARM926T
+	select HAS_MACB
+
 endchoice
 
 # ----------------------------------------------------------
 
-if ARCH_AT91SAM9260
+if (ARCH_AT91SAM9260 || ARCH_AT91SAM9G20)
 
 choice
 
-	prompt "AT91SAM9260 Board Type"
+	prompt "AT91SAM9260/AT91SAM9G20 Board Type"
 
 config MACH_AT91SAM9260EK
 	bool "Atmel AT91SAM9260-EK"
 	help
 	  Say y here if you are using Atmel's AT91SAM9260-EK Evaluation board
 
+config MACH_AT91SAM9G20EK
+	bool "Atmel AT91SAM9G20-EK Evaluation Kit"
+	select HAVE_AT91_DATAFLASH_CARD
+	select HAVE_NAND_ATMEL_BUSWIDTH_16
+	help
+	  Select this if you are using Atmel's AT91SAM9G20-EK Evaluation Kit
+	  that embeds only one SD/MMC slot.
+
 endchoice
 
 endif
@@ -71,4 +85,16 @@ endchoice
 
 endif
 
+# ----------------------------------------------------------
+
+comment "AT91 Board Options"
+
+config AT91_HAVE_2MMC
+	bool "Have 2 MMC"
+	depends on MACH_AT91SAM9G20EK
+	help
+	  Select this if you are using an Atmel AT91SAM9G20-EK Evaluation Kit
+	  with 2 SD/MMC Slots. This is the case for AT91SAM9G20-EK rev. C and
+	  onwards.
+
 endif
diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index 2878b04..1bedadb 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -5,3 +5,4 @@ obj-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += lowlevel_init.o
 # CPU-specific support
 obj-$(CONFIG_ARCH_AT91SAM9260) += at91sam9260.o at91sam926x_time.o at91sam9260_devices.o sam9_smc.o
 obj-$(CONFIG_ARCH_AT91SAM9263) += at91sam9263.o at91sam926x_time.o at91sam9263_devices.o sam9_smc.o
+obj-$(CONFIG_ARCH_AT91SAM9G20) += at91sam9260.o at91sam926x_time.o at91sam9260_devices.o sam9_smc.o
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
