Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x242.google.com ([2a00:1450:4010:c07::242])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eW3GF-0001x6-Q1
 for barebox@lists.infradead.org; Mon, 01 Jan 2018 16:48:30 +0000
Received: by mail-lf0-x242.google.com with SMTP id m20so40632535lfi.6
 for <barebox@lists.infradead.org>; Mon, 01 Jan 2018 08:48:17 -0800 (PST)
From: Sam Ravnborg <sam@ravnborg.org>
Date: Mon,  1 Jan 2018 17:48:04 +0100
Message-Id: <20180101164808.32371-1-sam@ravnborg.org>
In-Reply-To: <20171231083407.GA16645@ravnborg.org>
References: <20171231083407.GA16645@ravnborg.org>
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
Subject: [PATCH 01/25] arm: at91: refactor lowlevel_init selection
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

The aim with this conversion is to drop the dependency
where the mach-at91/ code call code in the boards file.
This dependency must be dropepd to enable multi-image builds.

The selection of lowlevel_init functions are pushed to
the individual boards.

Use AT91SAM926X_BOARD_INIT for the boards that share the
at91sam926x_board_init file, and push this to the
individual boards.

bootstrap is likewise pushed out to the individual boards.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 arch/arm/boards/at91sam9261ek/Makefile             |  2 +-
 arch/arm/boards/at91sam9263ek/Makefile             |  2 +-
 arch/arm/boards/mmccpu/Makefile                    |  3 +-
 arch/arm/boards/pm9261/Makefile                    |  2 +-
 arch/arm/boards/pm9263/Makefile                    |  2 +-
 arch/arm/boards/tny-a926x/Makefile                 |  7 +-
 arch/arm/boards/usb-a926x/Makefile                 |  6 +-
 arch/arm/mach-at91/Kconfig                         | 85 ++++++++++++++++++----
 arch/arm/mach-at91/Makefile                        | 26 +++----
 .../mach-at91/include/mach/at91_lowlevel_init.h    |  2 +-
 10 files changed, 97 insertions(+), 40 deletions(-)

diff --git a/arch/arm/boards/at91sam9261ek/Makefile b/arch/arm/boards/at91sam9261ek/Makefile
index 1764da93f..667095ae4 100644
--- a/arch/arm/boards/at91sam9261ek/Makefile
+++ b/arch/arm/boards/at91sam9261ek/Makefile
@@ -1,4 +1,4 @@
 obj-y += init.o
 
-lwl-$(CONFIG_HAVE_AT91_LOWLEVEL_INIT) += lowlevel_init.o
+lwl-$(CONFIG_AT91SAM926X_LWL) += lowlevel_init.o
 bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-at91sam9261ek
diff --git a/arch/arm/boards/at91sam9263ek/Makefile b/arch/arm/boards/at91sam9263ek/Makefile
index 2072cd416..de4d75690 100644
--- a/arch/arm/boards/at91sam9263ek/Makefile
+++ b/arch/arm/boards/at91sam9263ek/Makefile
@@ -1,4 +1,4 @@
 obj-y += init.o
 
-lwl-$(CONFIG_HAVE_AT91_LOWLEVEL_INIT) += lowlevel_init.o
+lwl-y += lowlevel_init.o
 bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-at91sam9263ek
diff --git a/arch/arm/boards/mmccpu/Makefile b/arch/arm/boards/mmccpu/Makefile
index 1398c26a0..d8289a341 100644
--- a/arch/arm/boards/mmccpu/Makefile
+++ b/arch/arm/boards/mmccpu/Makefile
@@ -1,3 +1,4 @@
 obj-y += init.o
 
-lwl-$(CONFIG_HAVE_AT91_LOWLEVEL_INIT) += lowlevel_init.o
+# Not used, documented by a lwl-n assignment
+lwl-n += lowlevel_init.o
diff --git a/arch/arm/boards/pm9261/Makefile b/arch/arm/boards/pm9261/Makefile
index bff467b1d..e9bf1212f 100644
--- a/arch/arm/boards/pm9261/Makefile
+++ b/arch/arm/boards/pm9261/Makefile
@@ -1,4 +1,4 @@
 obj-y += init.o
 
-lwl-$(CONFIG_HAVE_AT91_LOWLEVEL_INIT) += lowlevel_init.o
+lwl-y += lowlevel_init.o
 bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-pm9261
diff --git a/arch/arm/boards/pm9263/Makefile b/arch/arm/boards/pm9263/Makefile
index 1398c26a0..68bfbfa92 100644
--- a/arch/arm/boards/pm9263/Makefile
+++ b/arch/arm/boards/pm9263/Makefile
@@ -1,3 +1,3 @@
 obj-y += init.o
 
-lwl-$(CONFIG_HAVE_AT91_LOWLEVEL_INIT) += lowlevel_init.o
+lwl-y += lowlevel_init.o
diff --git a/arch/arm/boards/tny-a926x/Makefile b/arch/arm/boards/tny-a926x/Makefile
index dba2f8cfc..24bbf2356 100644
--- a/arch/arm/boards/tny-a926x/Makefile
+++ b/arch/arm/boards/tny-a926x/Makefile
@@ -1,9 +1,8 @@
 obj-y += init.o
 
-bootstrap-$(CONFIG_MACH_TNY_A9263) = tny_a9263_bootstrap.o
-obj-$(CONFIG_AT91_BOOTSTRAP) += $(bootstrap-y)
+obj-$(CONFIG_AT91_BOOTSTRAP) += tny_a9263_bootstrap.o
 
-lowlevel_init-$(CONFIG_MACH_TNY_A9263) = tny_a9263_lowlevel_init.o
+# Not used, documented with a lwl-n assignment
+lwl-n += tny_a9263_lowlevel_init.o
 
-lwl-$(CONFIG_HAVE_AT91_LOWLEVEL_INIT) += $(lowlevel_init-y)
 bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-tny-a926x
diff --git a/arch/arm/boards/usb-a926x/Makefile b/arch/arm/boards/usb-a926x/Makefile
index 4f09581e3..a4eae1844 100644
--- a/arch/arm/boards/usb-a926x/Makefile
+++ b/arch/arm/boards/usb-a926x/Makefile
@@ -1,9 +1,7 @@
 obj-y += init.o
 
-bootstrap-$(CONFIG_MACH_USB_A9263) = usb_a9263_bootstrap.o
-obj-$(CONFIG_AT91_BOOTSTRAP) += $(bootstrap-y)
+obj-$(CONFIG_AT91_BOOTSTRAP) += usb_a9263_bootstrap.o
 
-lowlevel_init-$(CONFIG_MACH_USB_A9263) = usb_a9263_lowlevel_init.o
+lwl-$(CONFIG_AT91SAM926X_LWL) += usb_a9263_lowlevel_init.o
 
-lwl-$(CONFIG_HAVE_AT91_LOWLEVEL_INIT) += $(lowlevel_init-y)
 bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-usb-a926x
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 3b572ebdf..e94c5b0a8 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -29,7 +29,37 @@ config HAVE_AT91_H32MX
 config HAVE_AT91_GENERATED_CLK
 	bool
 
-config HAVE_AT91_LOWLEVEL_INIT
+# Select if board support bootstrap
+config HAVE_AT91_BOOTSTRAP
+	bool
+
+# Select if board uses the common at91sam926x_board_init
+config AT91SAM926X_BOARD_INIT
+	bool
+
+# Select if board uses the common at91sam926x_lowlevel_init
+config AT91SAM926X_LWL
+	bool
+
+# Select if board uses barebox reset vector from mach-at91
+# as implemented in the *lowlevel_init.c files
+config AT91SAM9260_LWL
+	bool
+config AT91SAM9261_LWL
+	bool
+config AT91SAM9263_LWL
+	bool
+config AT91SAM9G45_LWL
+	bool
+config AT91SAM9X5_LWL
+	bool
+config AT91SAM9N12_LWL
+	bool
+config AT91RM9200_LWL
+	bool
+config SAMA5D3_LWL
+	bool
+config SAMA5D4_LWL
 	bool
 
 config AT91SAM9_SMC
@@ -71,9 +101,6 @@ config AT91SAM9G45_RESET
 config HAVE_AT91_LOAD_BAREBOX_SRAM
 	bool
 
-config AT91SAM9_LOWLEVEL_INIT
-	bool
-
 comment "Atmel AT91 System-on-Chip"
 
 config SOC_AT91RM9200
@@ -88,7 +115,6 @@ config SOC_AT91SAM9260
 	select HAVE_AT91_DBGU0
 	select HAS_MACB
 	select AT91SAM9_RESET
-	select AT91SAM9_LOWLEVEL_INIT
 	help
 	  Select this if you are using one of Atmel's AT91SAM9260, AT91SAM9XE
 	  or AT91SAM9G20 SoC.
@@ -98,7 +124,6 @@ config SOC_AT91SAM9261
 	select SOC_AT91SAM9
 	select HAVE_AT91_DBGU0
 	select AT91SAM9_RESET
-	select AT91SAM9_LOWLEVEL_INIT
 	help
 	  Select this if you are using one of Atmel's AT91SAM9261 or AT91SAM9G10 SoC.
 
@@ -108,7 +133,6 @@ config SOC_AT91SAM9263
 	select HAVE_AT91_DBGU1
 	select HAS_MACB
 	select AT91SAM9_RESET
-	select AT91SAM9_LOWLEVEL_INIT
 	select HAVE_AT91_LOAD_BAREBOX_SRAM
 
 config SOC_AT91SAM9G45
@@ -239,6 +263,7 @@ choice
 config MACH_AT91RM9200EK
 	bool "Atmel AT91RM9200-EK Evaluation Kit"
 	select HAVE_AT91_DATAFLASH_CARD
+	select AT91RM9200_LWL
 	help
 	  Select this if you are using Atmel's AT91RM9200-EK Evaluation Kit.
 	  <http://www.atmel.com/dyn/products/tools_card.asp?tool_id=3507>
@@ -256,16 +281,19 @@ choice
 
 config MACH_ANIMEO_IP
 	bool "Somfy Animeo IP"
+	select AT91SAM9260_LWL
 	depends on !CONSOLE_NONE
 
 config MACH_AT91SAM9260EK
 	bool "Atmel AT91SAM9260-EK"
+	select AT91SAM9260_LWL
 	select HAVE_NAND_ATMEL_BUSWIDTH_16
 	help
 	  Say y here if you are using Atmel's AT91SAM9260-EK Evaluation board
 
 config MACH_QIL_A9260
 	bool "CALAO QIL-A9260 board"
+	select AT91SAM9260_LWL
 	help
 	  Select this if you are using a Calao Systems QIL-A9260 Board.
 	  <http://www.calao-systems.com>
@@ -273,6 +301,7 @@ config MACH_QIL_A9260
 config MACH_TNY_A9260
 	bool "CALAO TNY-A9260"
 	select SUPPORT_CALAO_MOB_TNY_MD2
+	select AT91SAM9260_LWL
 	help
 	  Select this if you are using a Calao Systems TNY-A9260.
 	  <http://www.calao-systems.com>
@@ -280,12 +309,14 @@ config MACH_TNY_A9260
 config MACH_USB_A9260
 	bool "CALAO USB-A9260"
 	select SUPPORT_CALAO_DAB_MMX
+	select AT91SAM9260_LWL
 	help
 	  Select this if you are using a Calao Systems USB-A9260.
 	  <http://www.calao-systems.com>
 
 config MACH_GE863
 	bool "Telit EVK-PRO3"
+	select AT91SAM9260_LWL
 	help
 	  Say y here if you are using Telit EVK-PRO3 with GE863-PRO3
 	  <http://www.telit.com>
@@ -306,7 +337,9 @@ config MACH_AT91SAM9261EK
 	select HAS_DM9000
 	select HAVE_AT91_DATAFLASH_CARD
 	select HAVE_NAND_ATMEL_BUSWIDTH_16
-	select HAVE_AT91_LOWLEVEL_INIT
+	select HAVE_AT91_BOOTSTRAP
+	select AT91SAM9261_LWL
+	select AT91SAM926X_LWL
 	help
 	  Select this if you are using Atmel's AT91SAM9261-EK Evaluation Kit.
 	  <http://www.atmel.com/dyn/products/tools_card.asp?tool_id=3820>
@@ -314,7 +347,9 @@ config MACH_AT91SAM9261EK
 config MACH_PM9261
 	bool "Ronetix PM9261"
 	select HAS_DM9000
-	select HAVE_AT91_LOWLEVEL_INIT
+	select HAVE_AT91_BOOTSTRAP
+	select AT91SAM9261_LWL
+	select AT91SAM926X_LWL
 	help
 	  Say y here if you are using the Ronetix PM9261 Board
 
@@ -333,6 +368,7 @@ config MACH_AT91SAM9G10EK
 	bool "Atmel AT91SAM9G10-EK Evaluation Kit"
 	select HAVE_NAND_ATMEL_BUSWIDTH_16
 	select HAS_DM9000
+	select AT91SAM9261_LWL
 	help
 	  Select this if you are using Atmel's AT91SAM9G10-EK Evaluation Kit.
 	  <http://www.atmel.com/dyn/products/tools_card.asp?tool_id=4588>
@@ -351,6 +387,7 @@ choice
 config MACH_AT91SAM9G20EK
 	bool "Atmel AT91SAM9G20-EK Evaluation Kit"
 	select HAVE_NAND_ATMEL_BUSWIDTH_16
+	select AT91SAM9260_LWL
 	help
 	  Select this if you are using Atmel's AT91SAM9G20-EK Evaluation Kit
 	  that embeds only one SD/MMC slot.
@@ -358,6 +395,7 @@ config MACH_AT91SAM9G20EK
 config MACH_TNY_A9G20
 	select SUPPORT_CALAO_MOB_TNY_MD2
 	bool "CALAO TNY-A9G20"
+	select AT91SAM9260_LWL
 	help
 	  Select this if you are using a Calao Systems TNY-A9G20.
 	  <http://www.calao-systems.com>
@@ -365,6 +403,7 @@ config MACH_TNY_A9G20
 config MACH_USB_A9G20
 	bool "CALAO USB-A9G20"
 	select SUPPORT_CALAO_DAB_MMX
+	select AT91SAM9260_LWL
 	help
 	  Select this if you are using a Calao Systems USB-A9G20.
 	  <http://www.calao-systems.com>
@@ -372,18 +411,21 @@ config MACH_USB_A9G20
 config MACH_DSS11
 	bool "aizo dSS11"
 	select HAVE_NAND_ATMEL_BUSWIDTH_16
+	select AT91SAM9260_LWL
 	help
 	  Select this if you are using aizo dSS11
 	  that embeds only one SD/MMC slot.
 
 config MACH_QIL_A9G20
 	bool "CALAO QIL-A9G20 board"
+	select AT91SAM9260_LWL
 	help
 	  Select this if you are using a Calao Systems QIL-A9G20 Board.
 	  <http://www.calao-systems.com>
 
 config MACH_HABA_KNX_LITE
 	bool "CALAO HABA-KNX-LITE"
+	select AT91SAM9260_LWL
 	help
 	  Select this if you are using a Calao Systems HABA-KNX-LITE.
 	  <http://www.calao-systems.com>
@@ -400,32 +442,41 @@ choice
 
 config MACH_AT91SAM9263EK
 	bool "Atmel AT91SAM9263-EK"
-	select HAVE_AT91_LOWLEVEL_INIT
 	select HAVE_NAND_ATMEL_BUSWIDTH_16
+	select HAVE_AT91_BOOTSTRAP
+	select AT91SAM9263_LWL
+	select AT91SAM926X_LWL
 	help
 	  Say y here if you are using Atmel's AT91SAM9263-EK Evaluation board
 
 config MACH_MMCCPU
 	bool "Bucyrus MMC-CPU"
+	select AT91SAM9263_LWL
 	help
 	  Say y here if you are using the Bucyrus MMC-CPU
 
 config MACH_PM9263
 	bool "Ronetix PM9263"
-	select HAVE_AT91_LOWLEVEL_INIT
+	select HAVE_AT91_BOOTSTRAP
+	select AT91SAM9263_LWL
+	select AT91SAM926X_LWL
 	help
 	  Say y here if you are using the Ronetix PM9263 Board
 
 config MACH_TNY_A9263
 	bool "CALAO TNY-A9263"
 	select SUPPORT_CALAO_MOB_TNY_MD2
+	select HAVE_AT91_BOOTSTRAP
+	select AT91SAM9263_LWL
 	help
 	  Select this if you are using a Calao Systems TNY-A9263.
 	  <http://www.calao-systems.com>
 
 config MACH_USB_A9263
 	bool "CALAO USB-A9263"
-	select HAVE_AT91_LOWLEVEL_INIT
+	select HAVE_AT91_BOOTSTRAP
+	select AT91SAM9263_LWL
+	select AT91SAM926X_LWL
 	help
 	  Select this if you are using a Calao Systems USB-A9263.
 	  <http://www.calao-systems.com>
@@ -441,12 +492,14 @@ choice
 
 config MACH_AT91SAM9M10IHD
 	bool "Atmel AT91SAM9M10IDH Tablet"
+	select AT91SAM9G45_LWL
 	help
 	  Select this if you are using Atmel's AT91SAM9M10IHD Tablet
 
 config MACH_AT91SAM9M10G45EK
 	bool "Atmel AT91SAM9M10G45-EK Evaluation Kit"
 	select HAVE_NAND_ATMEL_BUSWIDTH_16
+	select AT91SAM9G45_LWL
 	help
 	  Select this if you are using Atmel's AT91SAM9M10G45-EK Evaluation Kit
 	  or AT91SAM9G45-EKES or AT91SAM9M10-EKES (for those 2 select the LG LCD)
@@ -454,6 +507,7 @@ config MACH_AT91SAM9M10G45EK
 
 config MACH_PM9G45
 	bool "Ronetix PM9G45"
+	select AT91SAM9G45_LWL
 	help
 	  Say y here if you are using the Ronetix PM9G45 Board
 
@@ -470,6 +524,7 @@ choice
 
 config MACH_AT91SAM9N12EK
 	bool "Atmel AT91SAM9N12 Evaluation Kit"
+	select AT91SAM9N12_LWL
 	help
 	  Select this if you are using Atmel's AT91SAM9N12-EK Evaluation Kit.
 
@@ -486,11 +541,13 @@ choice
 
 config MACH_SAMA5D3XEK
 	bool "Atmel SAMA5D3X Evaluation Kit"
+	select SAMA5D3_LWL
 	help
 	  Select this if you are using Atmel's SAMA5D3X-EK Evaluation Kit.
 
 config MACH_SAMA5D3_XPLAINED
 	bool "Atmel SAMA5D3_XPLAINED Evaluation Kit"
+	select SAMA5D3_LWL
 	help
 	  Select this if you are using Atmel's SAMA5D3_XPLAINED Evaluation Kit.
 
@@ -507,11 +564,13 @@ choice
 
 config MACH_SAMA5D4EK
 	bool "Atmel SAMA5D4 Evaluation Kit"
+	select SAMA5D4_LWL
 	help
 	  Select this if you are using Atmel's SAMA5D4-EK Evaluation Kit.
 
 config MACH_SAMA5D4_XPLAINED
 	bool "Atmel SAMA5D4 XPLAINED ULTRA Evaluation Kit"
+	select SAMA5D4_LWL
 	help
 	  Select this if you are using Atmel's SAMA5D4_XPLAINED ULTRA Evaluation Kit.
 
@@ -596,7 +655,7 @@ config CALAO_MB_QIL_A9260
 
 config AT91_BOOTSTRAP
 	bool "at91 bootstrap"
-	depends on HAVE_AT91_LOWLEVEL_INIT
+	depends on HAVE_AT91_BOOTSTRAP
 	select BOOTSTRAP
 
 config AT91_LOAD_BAREBOX_SRAM
diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index 0892fb4b5..71851d26c 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -6,19 +6,19 @@ endif
 
 obj-$(CONFIG_CMD_AT91_BOOT_TEST) += boot_test_cmd.o
 
-obj-$(CONFIG_AT91_BOOTSTRAP) += bootstrap.o
-sam926x_lowlevel_init-$(CONFIG_AT91SAM9_LOWLEVEL_INIT) = at91sam926x_lowlevel_init.o
-lowlevel_init-$(CONFIG_HAVE_AT91_LOWLEVEL_INIT) = $(sam926x_lowlevel_init-y)
-lowlevel_init-$(CONFIG_SOC_AT91SAM9260) += at91sam9260_lowlevel_init.o
-lowlevel_init-$(CONFIG_SOC_AT91SAM9261) += at91sam9261_lowlevel_init.o
-lowlevel_init-$(CONFIG_SOC_AT91SAM9263) += at91sam9263_lowlevel_init.o
-lowlevel_init-$(CONFIG_SOC_AT91SAM9G45) += at91sam9g45_lowlevel_init.o
-lowlevel_init-$(CONFIG_SOC_AT91SAM9X5) += at91sam9x5_lowlevel_init.o
-lowlevel_init-$(CONFIG_SOC_AT91SAM9N12) += at91sam9n12_lowlevel_init.o
-lowlevel_init-$(CONFIG_ARCH_AT91RM9200) = at91rm9200_lowlevel_init.o
-lowlevel_init-$(CONFIG_ARCH_SAMA5D3) += sama5d3_lowlevel_init.o
-lowlevel_init-$(CONFIG_ARCH_SAMA5D4) += sama5d3_lowlevel_init.o
-lwl-y += $(lowlevel_init-y)
+obj-$(CONFIG_AT91_BOOTSTRAP)	+= bootstrap.o
+
+lwl-$(CONFIG_AT91SAM926X_LWL)	+= at91sam926x_lowlevel_init.o
+
+lwl-$(CONFIG_AT91RM9200_LWL)	+= at91rm9200_lowlevel_init.o
+lwl-$(CONFIG_AT91SAM9260_LWL)	+= at91sam9260_lowlevel_init.o
+lwl-$(CONFIG_AT91SAM9261_LWL)	+= at91sam9261_lowlevel_init.o
+lwl-$(CONFIG_AT91SAM9263_LWL)	+= at91sam9263_lowlevel_init.o
+lwl-$(CONFIG_AT91SAM9G45_LWL)	+= at91sam9g45_lowlevel_init.o
+lwl-$(CONFIG_AT91SAM9X5_LWL)	+= at91sam9x5_lowlevel_init.o
+lwl-$(CONFIG_AT91SAM9N12_LWL)	+= at91sam9n12_lowlevel_init.o
+lwl-$(CONFIG_SAMA5D3_LWL)	+= sama5d3_lowlevel_init.o
+lwl-$(CONFIG_SAMA5D4_LWL)	+= sama5d3_lowlevel_init.o
 
 obj-$(CONFIG_AT91SAM9_RESET) += at91sam9_reset.o
 obj-$(CONFIG_AT91SAM9G45_RESET) += at91sam9g45_reset.o
diff --git a/arch/arm/mach-at91/include/mach/at91_lowlevel_init.h b/arch/arm/mach-at91/include/mach/at91_lowlevel_init.h
index 6b37e49e9..d72dfff38 100644
--- a/arch/arm/mach-at91/include/mach/at91_lowlevel_init.h
+++ b/arch/arm/mach-at91/include/mach/at91_lowlevel_init.h
@@ -35,7 +35,7 @@ struct at91sam926x_lowlevel_cfg {
 	u32 rstc_rmr;
 };
 
-#ifdef CONFIG_HAVE_AT91_LOWLEVEL_INIT
+#ifdef CONFIG_AT91SAM926X_LWL
 void at91sam926x_lowlevel_board_config(struct at91sam926x_lowlevel_cfg *cfg);
 void at91sam926x_lowlevel_init(struct at91sam926x_lowlevel_cfg *cfg);
 #else
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
