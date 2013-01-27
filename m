Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TzPlU-000645-2K
 for barebox@lists.infradead.org; Sun, 27 Jan 2013 10:47:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 27 Jan 2013 11:46:48 +0100
Message-Id: <1359283623-1782-20-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1359283623-1782-1-git-send-email-s.hauer@pengutronix.de>
References: <1359283623-1782-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 19/34] ARM AT91: switch to barebox_arm_entry part1
To: barebox@lists.infradead.org

This switches the at91sam926x, 9g10 and 9g20 over to barebox_arm_entry.
For these SoCs we currently support reading back the memory size from
the SDRAM controller, so all of these can have a common reset() function.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/at91sam9263ek/Makefile         |    4 ++--
 arch/arm/boards/mmccpu/Makefile                |    4 ++--
 arch/arm/boards/pm9261/Makefile                |    4 ++--
 arch/arm/boards/pm9263/Makefile                |    4 ++--
 arch/arm/boards/tny-a926x/Makefile             |    4 ++--
 arch/arm/boards/usb-a926x/Makefile             |    4 ++--
 arch/arm/mach-at91/Kconfig                     |   19 ++++++++++++++-----
 arch/arm/mach-at91/Makefile                    |   10 +++++++---
 arch/arm/mach-at91/at91sam926x_lowlevel_init.c |   11 ++++++++++-
 9 files changed, 43 insertions(+), 21 deletions(-)

diff --git a/arch/arm/boards/at91sam9263ek/Makefile b/arch/arm/boards/at91sam9263ek/Makefile
index b6460c3..1702783 100644
--- a/arch/arm/boards/at91sam9263ek/Makefile
+++ b/arch/arm/boards/at91sam9263ek/Makefile
@@ -1,5 +1,5 @@
 obj-y += init.o
 
-obj-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += lowlevel_init.o
+obj-$(CONFIG_HAVE_AT91_LOWLEVEL_INIT) += lowlevel_init.o
 
-pbl-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += lowlevel_init.o
+pbl-$(CONFIG_HAVE_AT91_LOWLEVEL_INIT) += lowlevel_init.o
diff --git a/arch/arm/boards/mmccpu/Makefile b/arch/arm/boards/mmccpu/Makefile
index b6460c3..1702783 100644
--- a/arch/arm/boards/mmccpu/Makefile
+++ b/arch/arm/boards/mmccpu/Makefile
@@ -1,5 +1,5 @@
 obj-y += init.o
 
-obj-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += lowlevel_init.o
+obj-$(CONFIG_HAVE_AT91_LOWLEVEL_INIT) += lowlevel_init.o
 
-pbl-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += lowlevel_init.o
+pbl-$(CONFIG_HAVE_AT91_LOWLEVEL_INIT) += lowlevel_init.o
diff --git a/arch/arm/boards/pm9261/Makefile b/arch/arm/boards/pm9261/Makefile
index b6460c3..1702783 100644
--- a/arch/arm/boards/pm9261/Makefile
+++ b/arch/arm/boards/pm9261/Makefile
@@ -1,5 +1,5 @@
 obj-y += init.o
 
-obj-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += lowlevel_init.o
+obj-$(CONFIG_HAVE_AT91_LOWLEVEL_INIT) += lowlevel_init.o
 
-pbl-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += lowlevel_init.o
+pbl-$(CONFIG_HAVE_AT91_LOWLEVEL_INIT) += lowlevel_init.o
diff --git a/arch/arm/boards/pm9263/Makefile b/arch/arm/boards/pm9263/Makefile
index b6460c3..1702783 100644
--- a/arch/arm/boards/pm9263/Makefile
+++ b/arch/arm/boards/pm9263/Makefile
@@ -1,5 +1,5 @@
 obj-y += init.o
 
-obj-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += lowlevel_init.o
+obj-$(CONFIG_HAVE_AT91_LOWLEVEL_INIT) += lowlevel_init.o
 
-pbl-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += lowlevel_init.o
+pbl-$(CONFIG_HAVE_AT91_LOWLEVEL_INIT) += lowlevel_init.o
diff --git a/arch/arm/boards/tny-a926x/Makefile b/arch/arm/boards/tny-a926x/Makefile
index 36ea09f..caa7163 100644
--- a/arch/arm/boards/tny-a926x/Makefile
+++ b/arch/arm/boards/tny-a926x/Makefile
@@ -5,6 +5,6 @@ obj-$(CONFIG_AT91_BOOTSTRAP) += $(bootstrap-y)
 
 lowlevel_init-$(CONFIG_MACH_TNY_A9263) = tny_a9263_lowlevel_init.o
 
-obj-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += $(lowlevel_init-y)
+obj-$(CONFIG_HAVE_AT91_LOWLEVEL_INIT) += $(lowlevel_init-y)
 
-pbl-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += $(lowlevel_init-y)
+pbl-$(CONFIG_HAVE_AT91_LOWLEVEL_INIT) += $(lowlevel_init-y)
diff --git a/arch/arm/boards/usb-a926x/Makefile b/arch/arm/boards/usb-a926x/Makefile
index e314dd5..88f163f 100644
--- a/arch/arm/boards/usb-a926x/Makefile
+++ b/arch/arm/boards/usb-a926x/Makefile
@@ -5,6 +5,6 @@ obj-$(CONFIG_AT91_BOOTSTRAP) += $(bootstrap-y)
 
 lowlevel_init-$(CONFIG_MACH_USB_A9263) = usb_a9263_lowlevel_init.o
 
-obj-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += $(lowlevel_init-y)
+obj-$(CONFIG_HAVE_AT91_LOWLEVEL_INIT) += $(lowlevel_init-y)
 
-pbl-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += $(lowlevel_init-y)
+pbl-$(CONFIG_HAVE_AT91_LOWLEVEL_INIT) += $(lowlevel_init-y)
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 9d4359e..4f30650 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -6,6 +6,9 @@ config HAVE_AT91_DBGU0
 config HAVE_AT91_DBGU1
 	bool
 
+config HAVE_AT91_LOWLEVEL_INIT
+	bool
+
 config AT91SAM9_SMC
 	bool
 
@@ -77,6 +80,8 @@ config SOC_AT91SAM9260
 	select HAVE_AT91_DBGU0
 	select HAS_MACB
 	select AT91SAM9_RESET
+	select MACH_HAS_LOWLEVEL_INIT
+	select MACH_DO_LOWLEVEL_INIT
 	help
 	  Select this if you are using one of Atmel's AT91SAM9260, AT91SAM9XE
 	  or AT91SAM9G20 SoC.
@@ -86,6 +91,8 @@ config SOC_AT91SAM9261
 	select SOC_AT91SAM9
 	select HAVE_AT91_DBGU0
 	select AT91SAM9_RESET
+	select MACH_HAS_LOWLEVEL_INIT
+	select MACH_DO_LOWLEVEL_INIT
 	help
 	  Select this if you are using one of Atmel's AT91SAM9261 or AT91SAM9G10 SoC.
 
@@ -95,6 +102,8 @@ config SOC_AT91SAM9263
 	select HAVE_AT91_DBGU1
 	select HAS_MACB
 	select AT91SAM9_RESET
+	select MACH_HAS_LOWLEVEL_INIT
+	select MACH_DO_LOWLEVEL_INIT
 
 config SOC_AT91SAM9G45
 	bool
@@ -263,7 +272,7 @@ config MACH_AT91SAM9261EK
 config MACH_PM9261
 	bool "Ronetix PM9261"
 	select HAS_DM9000
-	select MACH_HAS_LOWLEVEL_INIT
+	select HAVE_AT91_LOWLEVEL_INIT
 	help
 	  Say y here if you are using the Ronetix PM9261 Board
 
@@ -338,7 +347,7 @@ choice
 
 config MACH_AT91SAM9263EK
 	bool "Atmel AT91SAM9263-EK"
-	select MACH_HAS_LOWLEVEL_INIT
+	select HAVE_AT91_LOWLEVEL_INIT
 	select HAVE_NAND_ATMEL_BUSWIDTH_16
 	help
 	  Say y here if you are using Atmel's AT91SAM9263-EK Evaluation board
@@ -350,7 +359,7 @@ config MACH_MMCCPU
 
 config MACH_PM9263
 	bool "Ronetix PM9263"
-	select MACH_HAS_LOWLEVEL_INIT
+	select HAVE_AT91_LOWLEVEL_INIT
 	help
 	  Say y here if you are using the Ronetix PM9263 Board
 
@@ -364,7 +373,7 @@ config MACH_TNY_A9263
 
 config MACH_USB_A9263
 	bool "CALAO USB-A9263"
-	select MACH_HAS_LOWLEVEL_INIT
+	select HAVE_AT91_LOWLEVEL_INIT
 	help
 	  Select this if you are using a Calao Systems USB-A9263.
 	  <http://www.calao-systems.com>
@@ -508,7 +517,7 @@ endif
 
 config AT91_BOOTSTRAP
 	bool "at91 bootstrap"
-	depends on MACH_HAS_LOWLEVEL_INIT
+	depends on HAVE_AT91_LOWLEVEL_INIT
 	select BOOTSTRAP
 
 endif
diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index 634b160..b94424e 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -2,11 +2,15 @@ obj-y += setup.o clock.o gpio.o
 obj-$(CONFIG_CMD_AT91_BOOT_TEST) += boot_test_cmd.o
 
 obj-$(CONFIG_AT91_BOOTSTRAP) += bootstrap.o
-lowlevel_init-y = at91sam926x_lowlevel_init.o
+lowlevel_init-$(CONFIG_ARCH_AT91SAM9260) = at91sam926x_lowlevel_init.o
+lowlevel_init-$(CONFIG_ARCH_AT91SAM9261) = at91sam926x_lowlevel_init.o
+lowlevel_init-$(CONFIG_ARCH_AT91SAM9263) = at91sam926x_lowlevel_init.o
+lowlevel_init-$(CONFIG_ARCH_AT91SAM9G10) = at91sam926x_lowlevel_init.o
+lowlevel_init-$(CONFIG_ARCH_AT91SAM9G20) = at91sam926x_lowlevel_init.o
 lowlevel_init-$(CONFIG_ARCH_AT91RM9200) = at91rm9200_lowlevel_init.o
-obj-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += $(lowlevel_init-y)
+obj-y += $(lowlevel_init-y)
 
-pbl-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += $(lowlevel_init-y)
+pbl-y += $(lowlevel_init-y)
 
 obj-$(CONFIG_AT91SAM9_RESET) += at91sam9_reset.o
 obj-$(CONFIG_AT91SAM9G45_RESET) += at91sam9g45_reset.o
diff --git a/arch/arm/mach-at91/at91sam926x_lowlevel_init.c b/arch/arm/mach-at91/at91sam926x_lowlevel_init.c
index 14afbc9..31e9f54 100644
--- a/arch/arm/mach-at91/at91sam926x_lowlevel_init.c
+++ b/arch/arm/mach-at91/at91sam926x_lowlevel_init.c
@@ -46,6 +46,7 @@ static int inline running_in_sram(void)
 	return addr == 0;
 }
 
+#ifdef CONFIG_HAVE_AT91_LOWLEVEL_INIT
 void __bare_init at91sam926x_lowlevel_init(void)
 {
 	u32 r;
@@ -191,8 +192,14 @@ void __bare_init at91sam926x_lowlevel_init(void)
 	at91_pmc_write(AT91_PMC_PCER, 0xffffffff);
 
 end:
-	board_init_lowlevel_return();
+	barebox_arm_entry(AT91_SDRAM_BASE, at91_get_sdram_size(), 0);
 }
+#else
+static inline void at91sam926x_lowlevel_init(void)
+{
+}
+#endif
+
 
 void __naked __bare_init reset(void)
 {
@@ -207,4 +214,6 @@ void __naked __bare_init reset(void)
 #endif
 
 	at91sam926x_lowlevel_init();
+
+	barebox_arm_entry(AT91_SDRAM_BASE, at91_get_sdram_size(), 0);
 }
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
