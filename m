Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo4.mail-out.ovh.net ([188.165.33.112]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U21Eb-0000ZN-HB
 for barebox@lists.infradead.org; Sun, 03 Feb 2013 15:12:23 +0000
Received: from mail403.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 73530104EC64
 for <barebox@lists.infradead.org>; Sun,  3 Feb 2013 16:22:01 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun,  3 Feb 2013 16:10:18 +0100
Message-Id: <1359904236-11622-18-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1359904236-11622-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130203150333.GE18068@game.jcrosoft.org>
 <1359904236-11622-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 18/36] ARM AT91: switch at91sam9 to barebox_arm_entry part1
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

This switches the at91sam926x, 9g10 and 9g20 over to barebox_arm_entry.
For these SoCs we currently support reading back the memory size from
the SDRAM controller, so all of these can have a common reset() function.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91sam9261ek/Makefile               |    4 ++--
 arch/arm/boards/at91sam9263ek/Makefile               |    4 ++--
 arch/arm/boards/mmccpu/Makefile                      |    4 ++--
 arch/arm/boards/pm9261/Makefile                      |    4 ++--
 arch/arm/boards/pm9263/Makefile                      |    4 ++--
 arch/arm/boards/tny-a926x/Makefile                   |    4 ++--
 arch/arm/boards/usb-a926x/Makefile                   |    4 ++--
 arch/arm/mach-at91/Kconfig                           |   16 +++++++++++-----
 arch/arm/mach-at91/Makefile                          |    7 ++++---
 arch/arm/mach-at91/at91sam9260_lowlevel_init.c       |    2 ++
 arch/arm/mach-at91/at91sam9261_lowlevel_init.c       |    2 ++
 arch/arm/mach-at91/at91sam9263_lowlevel_init.c       |    2 ++
 arch/arm/mach-at91/at91sam926x_lowlevel_init.c       |    7 ++-----
 arch/arm/mach-at91/include/mach/at91_lowlevel_init.h |    5 +++++
 14 files changed, 42 insertions(+), 27 deletions(-)

diff --git a/arch/arm/boards/at91sam9261ek/Makefile b/arch/arm/boards/at91sam9261ek/Makefile
index b6460c3..1702783 100644
--- a/arch/arm/boards/at91sam9261ek/Makefile
+++ b/arch/arm/boards/at91sam9261ek/Makefile
@@ -1,5 +1,5 @@
 obj-y += init.o
 
-obj-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += lowlevel_init.o
+obj-$(CONFIG_HAVE_AT91_LOWLEVEL_INIT) += lowlevel_init.o
 
-pbl-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += lowlevel_init.o
+pbl-$(CONFIG_HAVE_AT91_LOWLEVEL_INIT) += lowlevel_init.o
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
index 14bab55..4e687c4 100644
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
 
@@ -76,6 +79,8 @@ config HAVE_AT91_LOAD_BAREBOX_SRAM
 
 config AT91SAM9_LOWLEVEL_INIT
 	bool
+	select MACH_HAS_LOWLEVEL_INIT
+	select MACH_DO_LOWLEVEL_INIT
 
 comment "Atmel AT91 System-on-Chip"
 
@@ -293,6 +298,7 @@ config MACH_AT91SAM9261EK
 	select HAVE_AT91_DATAFLASH_CARD
 	select MACH_HAS_LOWLEVEL_INIT
 	select HAVE_NAND_ATMEL_BUSWIDTH_16
+	select HAVE_AT91_LOWLEVEL_INIT
 	help
 	  Select this if you are using Atmel's AT91SAM9261-EK Evaluation Kit.
 	  <http://www.atmel.com/dyn/products/tools_card.asp?tool_id=3820>
@@ -300,7 +306,7 @@ config MACH_AT91SAM9261EK
 config MACH_PM9261
 	bool "Ronetix PM9261"
 	select HAS_DM9000
-	select MACH_HAS_LOWLEVEL_INIT
+	select HAVE_AT91_LOWLEVEL_INIT
 	help
 	  Say y here if you are using the Ronetix PM9261 Board
 
@@ -375,7 +381,7 @@ choice
 
 config MACH_AT91SAM9263EK
 	bool "Atmel AT91SAM9263-EK"
-	select MACH_HAS_LOWLEVEL_INIT
+	select HAVE_AT91_LOWLEVEL_INIT
 	select HAVE_NAND_ATMEL_BUSWIDTH_16
 	help
 	  Say y here if you are using Atmel's AT91SAM9263-EK Evaluation board
@@ -387,7 +393,7 @@ config MACH_MMCCPU
 
 config MACH_PM9263
 	bool "Ronetix PM9263"
-	select MACH_HAS_LOWLEVEL_INIT
+	select HAVE_AT91_LOWLEVEL_INIT
 	help
 	  Say y here if you are using the Ronetix PM9263 Board
 
@@ -401,7 +407,7 @@ config MACH_TNY_A9263
 
 config MACH_USB_A9263
 	bool "CALAO USB-A9263"
-	select MACH_HAS_LOWLEVEL_INIT
+	select HAVE_AT91_LOWLEVEL_INIT
 	help
 	  Select this if you are using a Calao Systems USB-A9263.
 	  <http://www.calao-systems.com>
@@ -565,7 +571,7 @@ endif
 
 config AT91_BOOTSTRAP
 	bool "at91 bootstrap"
-	depends on MACH_HAS_LOWLEVEL_INIT
+	depends on HAVE_AT91_LOWLEVEL_INIT
 	select BOOTSTRAP
 
 config AT91_LOAD_BAREBOX_SRAM
diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index f6c8500..1f335f6 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -2,14 +2,15 @@ obj-y += setup.o clock.o gpio.o
 obj-$(CONFIG_CMD_AT91_BOOT_TEST) += boot_test_cmd.o
 
 obj-$(CONFIG_AT91_BOOTSTRAP) += bootstrap.o
-lowlevel_init-$(CONFIG_AT91SAM9_LOWLEVEL_INIT) = at91sam926x_lowlevel_init.o
+sam926x_lowlevel_init-$(CONFIG_AT91SAM9_LOWLEVEL_INIT) = at91sam926x_lowlevel_init.o
+lowlevel_init-$(CONFIG_HAVE_AT91_LOWLEVEL_INIT) = $(sam926x_lowlevel_init-y)
 lowlevel_init-$(CONFIG_SOC_AT91SAM9260) += at91sam9260_lowlevel_init.o
 lowlevel_init-$(CONFIG_SOC_AT91SAM9261) += at91sam9261_lowlevel_init.o
 lowlevel_init-$(CONFIG_SOC_AT91SAM9263) += at91sam9263_lowlevel_init.o
 lowlevel_init-$(CONFIG_ARCH_AT91RM9200) = at91rm9200_lowlevel_init.o
-obj-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += $(lowlevel_init-y)
+obj-y += $(lowlevel_init-y)
 
-pbl-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += $(lowlevel_init-y)
+pbl-y += $(lowlevel_init-y)
 
 obj-$(CONFIG_AT91SAM9_RESET) += at91sam9_reset.o
 obj-$(CONFIG_AT91SAM9G45_RESET) += at91sam9g45_reset.o
diff --git a/arch/arm/mach-at91/at91sam9260_lowlevel_init.c b/arch/arm/mach-at91/at91sam9260_lowlevel_init.c
index c2cf8bf..875c767 100644
--- a/arch/arm/mach-at91/at91sam9260_lowlevel_init.c
+++ b/arch/arm/mach-at91/at91sam9260_lowlevel_init.c
@@ -31,4 +31,6 @@ void __naked __bare_init reset(void)
 
 	at91sam926x_lowlevel_init(IOMEM(AT91SAM9260_BASE_PIOC), false,
 				  AT91_MATRIX_EBICSA);
+
+	barebox_arm_entry(AT91_CHIPSELECT_1, at91_get_sdram_size(), 0);
 }
diff --git a/arch/arm/mach-at91/at91sam9261_lowlevel_init.c b/arch/arm/mach-at91/at91sam9261_lowlevel_init.c
index a2e065f..beaddc8 100644
--- a/arch/arm/mach-at91/at91sam9261_lowlevel_init.c
+++ b/arch/arm/mach-at91/at91sam9261_lowlevel_init.c
@@ -31,4 +31,6 @@ void __naked __bare_init reset(void)
 
 	at91sam926x_lowlevel_init(IOMEM(AT91SAM9261_BASE_PIOC), false,
 				  AT91_MATRIX_EBICSA);
+
+	barebox_arm_entry(AT91_CHIPSELECT_1, at91_get_sdram_size(), 0);
 }
diff --git a/arch/arm/mach-at91/at91sam9263_lowlevel_init.c b/arch/arm/mach-at91/at91sam9263_lowlevel_init.c
index 5260658..5102051 100644
--- a/arch/arm/mach-at91/at91sam9263_lowlevel_init.c
+++ b/arch/arm/mach-at91/at91sam9263_lowlevel_init.c
@@ -31,4 +31,6 @@ void __naked __bare_init reset(void)
 
 	at91sam926x_lowlevel_init(IOMEM(AT91SAM9263_BASE_PIOD), true,
 				  AT91_MATRIX_EBI0CSA);
+
+	barebox_arm_entry(AT91_CHIPSELECT_1, at91_get_sdram_size(), 0);
 }
diff --git a/arch/arm/mach-at91/at91sam926x_lowlevel_init.c b/arch/arm/mach-at91/at91sam926x_lowlevel_init.c
index 8b9b33e..b62615e 100644
--- a/arch/arm/mach-at91/at91sam926x_lowlevel_init.c
+++ b/arch/arm/mach-at91/at91sam926x_lowlevel_init.c
@@ -80,7 +80,7 @@ void __bare_init at91sam926x_lowlevel_init(void *pio, bool is_pio_asr,
 	 */
 	r = at91_pmc_read(AT91_PMC_MCKR);
 	if (r & AT91_PMC_CSS && !in_sram)
-		goto end;
+		return;
 
 	/*
 	 * Enable the Main Oscillator
@@ -123,7 +123,7 @@ void __bare_init at91sam926x_lowlevel_init(void *pio, bool is_pio_asr,
 	 */
 	r = at91_sys_read(AT91_SDRAMC_TR);
 	if (r && !in_sram)
-		goto end;
+		return;
 
 	/* SDRAMC_MR : Normal Mode */
 	at91_sys_write(AT91_SDRAMC_MR, AT91_SDRAMC_MODE_NORMAL);
@@ -182,7 +182,4 @@ void __bare_init at91sam926x_lowlevel_init(void *pio, bool is_pio_asr,
 	 * We will shutdown what we don't need later
 	 */
 	at91_pmc_write(AT91_PMC_PCER, 0xffffffff);
-
-end:
-	board_init_lowlevel_return();
 }
diff --git a/arch/arm/mach-at91/include/mach/at91_lowlevel_init.h b/arch/arm/mach-at91/include/mach/at91_lowlevel_init.h
index 8c53ce7..f8c020b 100644
--- a/arch/arm/mach-at91/include/mach/at91_lowlevel_init.h
+++ b/arch/arm/mach-at91/include/mach/at91_lowlevel_init.h
@@ -28,7 +28,12 @@ struct at91sam926x_lowlevel_cfg {
 	u32 rstc_rmr;
 };
 
+#ifdef CONFIG_HAVE_AT91_LOWLEVEL_INIT
 void at91sam926x_lowlevel_board_config(struct at91sam926x_lowlevel_cfg *cfg);
 void at91sam926x_lowlevel_init(void *pio, bool is_pio_asr, u32 matrix_csa);
+#else
+static inline void at91sam926x_lowlevel_board_config(struct at91sam926x_lowlevel_cfg *cfg) {}
+static inline void at91sam926x_lowlevel_init(void *pio, bool is_pio_asr, u32 matrix_csa) {}
+#endif
 
 #endif /* __AT91_LOWLEVEL_INIT_H__ */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
