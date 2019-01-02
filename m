Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gen5s-000391-JS
 for barebox@lists.infradead.org; Wed, 02 Jan 2019 20:26:26 +0000
Received: by mail-lj1-x242.google.com with SMTP id t18-v6so28007076ljd.4
 for <barebox@lists.infradead.org>; Wed, 02 Jan 2019 12:26:24 -0800 (PST)
From: Sam Ravnborg <sam@ravnborg.org>
Date: Wed,  2 Jan 2019 21:26:11 +0100
Message-Id: <20190102202611.6530-4-sam@ravnborg.org>
In-Reply-To: <20190102202611.6530-1-sam@ravnborg.org>
References: <20190102202611.6530-1-sam@ravnborg.org>
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
Subject: [PATCH v1 3/3] at91sam9263ek: add bootstrap support
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

Fix lowlevel init to get reset vector.

Add new MACH_AT91SAM9263EK_BOOTSTRAP config entry
used when building the bootstrap variant.
The new config entry is required as we cannot combine MULTI_IMAGE
with a bootstrap variant.
With this we have two config symbols that points to the same
board directory. This was the simple way to share the same low_level.c
implmentation.

Add at91sam9263ek_bootstrap_defconfig that can boot barebox.bin
from SD card (must be named BOOT.BIN)

Boot log:

barebox 2018.12.0-00266-g1e927dc53-dirty #41 Wed Jan 2 20:51:43 CET 2019

Board: Atmel at91sam9263-ek
Clocks: CPU 199 MHz, master 99 MHz, main 16.367 MHz
atmel_mci atmel_mci1: version: 0x210
atmel_mci atmel_mci1: registered as mci0
malloc space: 0x23be4000 -> 0x23fe3fff (size 4 MiB)
Boot from mmc
mci0: detected SD card version 2.0
mci0: registered disk0

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 arch/arm/boards/Makefile                           |  1 +
 arch/arm/boards/at91sam9263ek/Makefile             |  4 +---
 arch/arm/boards/at91sam9263ek/lowlevel_init.c      |  9 +++++++++
 arch/arm/configs/at91sam9263ek_bootstrap_defconfig | 19 +++++++++++++++++++
 arch/arm/mach-at91/Kconfig                         | 14 ++++++++++++++
 5 files changed, 44 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm/configs/at91sam9263ek_bootstrap_defconfig

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index ab5191fe0..d09c1385c 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -6,6 +6,7 @@ obj-$(CONFIG_MACH_ARCHOSG9)			+= archosg9/
 obj-$(CONFIG_MACH_AT91SAM9260EK)		+= at91sam9260ek/
 obj-$(CONFIG_MACH_AT91SAM9261EK)		+= at91sam9261ek/
 obj-$(CONFIG_MACH_AT91SAM9263EK)		+= at91sam9263ek/
+obj-$(CONFIG_MACH_AT91SAM9263EK_BOOTSTRAP)	+= at91sam9263ek/
 obj-$(CONFIG_MACH_AT91SAM9G10EK)		+= at91sam9261ek/
 obj-$(CONFIG_MACH_AT91SAM9G20EK)		+= at91sam9260ek/
 obj-$(CONFIG_MACH_AT91SAM9M10G45EK)		+= at91sam9m10g45ek/
diff --git a/arch/arm/boards/at91sam9263ek/Makefile b/arch/arm/boards/at91sam9263ek/Makefile
index d4d5e7639..9be057599 100644
--- a/arch/arm/boards/at91sam9263ek/Makefile
+++ b/arch/arm/boards/at91sam9263ek/Makefile
@@ -1,6 +1,4 @@
-ifeq ($(CONFIG_OFDEVICE),)
-obj-y += init.o
-endif
+obj-$(CONFIG_MACH_AT91SAM9263EK_BOOTSTRAP) += init.o
 obj-$(CONFIG_OFDEVICE) += of_init.o
 
 lwl-y += lowlevel_init.o
diff --git a/arch/arm/boards/at91sam9263ek/lowlevel_init.c b/arch/arm/boards/at91sam9263ek/lowlevel_init.c
index f5d68cd7e..820f9123f 100644
--- a/arch/arm/boards/at91sam9263ek/lowlevel_init.c
+++ b/arch/arm/boards/at91sam9263ek/lowlevel_init.c
@@ -115,6 +115,7 @@ static void __bare_init at91sam9263ek_init(void *fdt)
 			  fdt);
 }
 
+#ifdef CONFIG_OFDEVICE
 extern char __dtb_at91sam9263ek_start[];
 
 ENTRY_FUNCTION(start_at91sam9263ek, r0, r1, r2)
@@ -132,3 +133,11 @@ ENTRY_FUNCTION(start_at91sam9263ek, r0, r1, r2)
 
 	at91sam9263ek_init(fdt);
 }
+#else
+void __naked __bare_init barebox_arm_reset_vector(void)
+{
+	arm_cpu_lowlevel_init();
+	arm_setup_stack(AT91SAM9263_SRAM0_BASE + AT91SAM9263_SRAM0_SIZE - 16);
+	at91sam9263ek_init(NULL);
+}
+#endif
diff --git a/arch/arm/configs/at91sam9263ek_bootstrap_defconfig b/arch/arm/configs/at91sam9263ek_bootstrap_defconfig
new file mode 100644
index 000000000..6b80be373
--- /dev/null
+++ b/arch/arm/configs/at91sam9263ek_bootstrap_defconfig
@@ -0,0 +1,19 @@
+CONFIG_ARCH_AT91SAM9263=y
+CONFIG_AT91_BOOTSTRAP=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
+CONFIG_AEABI=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_MALLOC_DUMMY=y
+CONFIG_PROMPT="9263-EK:"
+CONFIG_SHELL_NONE=y
+# CONFIG_TIMESTAMP is not set
+CONFIG_CONSOLE_SIMPLE=y
+# CONFIG_SPI is not set
+CONFIG_MCI=y
+# CONFIG_MCI_WRITE is not set
+CONFIG_MCI_ATMEL=y
+# CONFIG_FS_RAMFS is not set
+# CONFIG_FS_DEVFS is not set
+CONFIG_FS_FAT=y
+CONFIG_BOOTSTRAP_DEVFS=y
+CONFIG_BOOTSTRAP_DISK=y
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index b101e61d2..5e078cc86 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -394,6 +394,20 @@ if ARCH_AT91SAM9263
 choice
 	prompt "AT91SAM9263 Board Type"
 
+config MACH_AT91SAM9263EK_BOOTSTRAP
+	bool "Atmel AT91SAM9263-EK bootstrap"
+	depends on ARCH_AT91SAM9263
+	select HAVE_AT91_USB_CLK
+	select HAVE_NAND_ATMEL_BUSWIDTH_16
+	select HAVE_AT91_BOOTSTRAP
+	select AT91SAM926X_BOARD_INIT
+	help
+	  Say y here to build the bootstrap variant of barebox
+	  for the Atmel AT91SAM9263-EK Evaluation board.
+	  barebox.bin can be copied to a SD card, named BOOT.BIN,
+	  then ROMBOOT in the at91sam9263 will load the bootstrap
+	  and then bootstrap can load the real barebox
+
 config MACH_PM9263
 	bool "Ronetix PM9263"
 	select HAVE_AT91_BOOTSTRAP
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
