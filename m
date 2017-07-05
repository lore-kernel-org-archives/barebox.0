Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dSrLA-0004Rf-Dx
 for barebox@lists.infradead.org; Wed, 05 Jul 2017 20:56:07 +0000
Received: from ravnborg.org (unknown [188.228.89.252])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id 426E320039
 for <barebox@lists.infradead.org>; Wed,  5 Jul 2017 22:55:42 +0200 (CEST)
Date: Wed, 5 Jul 2017 22:55:41 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20170705205541.GA19343@ravnborg.org>
References: <20170705204935.GA20093@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170705204935.GA20093@ravnborg.org>
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
Subject: [PATCH 1/5] at91: refactor lowlevel_init selection
To: barebox@lists.infradead.org

From e8753cfcadd7b32e304b5d98e6429392c197852e Mon Sep 17 00:00:00 2001
From: Sam Ravnborg <srn@skov.dk>
Date: Wed, 5 Jul 2017 19:54:40 +0200
Subject: [PATCH 1/5] at91: refactor lowlevel_init selection

Push selection of lowlevel_init functions out to the individual
boards.
Pushing it to the individual boards allows us on a per board basis
to migrate to a design where the mach-at91 code no longer
calls the board specific code.

When the dependency mach-at91 => boards is dropped for
a board the migration to a multi-image setup is one step closer.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 arch/arm/boards/at91sam9261ek/Makefile             |  2 +-
 arch/arm/boards/at91sam9263ek/Makefile             |  2 +-
 arch/arm/boards/mmccpu/Makefile                    |  2 +-
 arch/arm/boards/pm9261/Makefile                    |  2 +-
 arch/arm/boards/pm9263/Makefile                    |  2 +-
 arch/arm/boards/tny-a926x/Makefile                 |  8 +--
 arch/arm/boards/usb-a926x/Makefile                 |  6 +-
 arch/arm/mach-at91/Kconfig                         | 81 ++++++++++++++++++----
 arch/arm/mach-at91/Makefile                        | 24 +++----
 .../mach-at91/include/mach/at91_lowlevel_init.h    |  2 +-
 10 files changed, 91 insertions(+), 40 deletions(-)

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
index 1398c26a0..a34efd541 100644
--- a/arch/arm/boards/mmccpu/Makefile
+++ b/arch/arm/boards/mmccpu/Makefile
@@ -1,3 +1,3 @@
 obj-y += init.o
 
-lwl-$(CONFIG_HAVE_AT91_LOWLEVEL_INIT) += lowlevel_init.o
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
index dba2f8cfc..5dee09a11 100644
--- a/arch/arm/boards/tny-a926x/Makefile
+++ b/arch/arm/boards/tny-a926x/Makefile
@@ -1,9 +1,7 @@
 obj-y += init.o
 
-bootstrap-$(CONFIG_MACH_TNY_A9263) = tny_a9263_bootstrap.o
-obj-$(CONFIG_AT91_BOOTSTRAP) += $(bootstrap-y)
+obj-$(CONFIG_AT91_BOOTSTRAP) += tny_a9263_bootstrap.o
 
-lowlevel_init-$(CONFIG_MACH_TNY_A9263) = tny_a9263_lowlevel_init.o
-
-lwl-$(CONFIG_HAVE_AT91_LOWLEVEL_INIT) += $(lowlevel_init-y)
+# Not used, documented by an -n assignment
+lwl-n += tny_a9263_lowlevel_init.o
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
index 9db53b226..37907b217 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -29,7 +29,33 @@ config HAVE_AT91_H32MX
 config HAVE_AT91_GENERATED_CLK
 	bool
 
-config HAVE_AT91_LOWLEVEL_INIT
+# Select if board support bootstrap
+config HAVE_AT91_BOOTSTRAP
+	bool
+
+# Select is board uses the common at91sam926x_lowlevel_init
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
@@ -71,9 +97,6 @@ config AT91SAM9G45_RESET
 config HAVE_AT91_LOAD_BAREBOX_SRAM
 	bool
 
-config AT91SAM9_LOWLEVEL_INIT
-	bool
-
 comment "Atmel AT91 System-on-Chip"
 
 config SOC_AT91RM9200
@@ -88,7 +111,6 @@ config SOC_AT91SAM9260
 	select HAVE_AT91_DBGU0
 	select HAS_MACB
 	select AT91SAM9_RESET
-	select AT91SAM9_LOWLEVEL_INIT
 	help
 	  Select this if you are using one of Atmel's AT91SAM9260, AT91SAM9XE
 	  or AT91SAM9G20 SoC.
@@ -98,7 +120,6 @@ config SOC_AT91SAM9261
 	select SOC_AT91SAM9
 	select HAVE_AT91_DBGU0
 	select AT91SAM9_RESET
-	select AT91SAM9_LOWLEVEL_INIT
 	help
 	  Select this if you are using one of Atmel's AT91SAM9261 or AT91SAM9G10 SoC.
 
@@ -108,7 +129,6 @@ config SOC_AT91SAM9263
 	select HAVE_AT91_DBGU1
 	select HAS_MACB
 	select AT91SAM9_RESET
-	select AT91SAM9_LOWLEVEL_INIT
 	select HAVE_AT91_LOAD_BAREBOX_SRAM
 
 config SOC_AT91SAM9G45
@@ -239,6 +259,7 @@ choice
 config MACH_AT91RM9200EK
 	bool "Atmel AT91RM9200-EK Evaluation Kit"
 	select HAVE_AT91_DATAFLASH_CARD
+	select AT91RM9200_LWL
 	help
 	  Select this if you are using Atmel's AT91RM9200-EK Evaluation Kit.
 	  <http://www.atmel.com/dyn/products/tools_card.asp?tool_id=3507>
@@ -256,15 +277,18 @@ choice
 
 config MACH_ANIMEO_IP
 	bool "Somfy Animeo IP"
+	select AT91SAM9260_LWL
 
 config MACH_AT91SAM9260EK
 	bool "Atmel AT91SAM9260-EK"
 	select HAVE_NAND_ATMEL_BUSWIDTH_16
+	select AT91SAM9260_LWL
 	help
 	  Say y here if you are using Atmel's AT91SAM9260-EK Evaluation board
 
 config MACH_QIL_A9260
 	bool "CALAO QIL-A9260 board"
+	select AT91SAM9260_LWL
 	help
 	  Select this if you are using a Calao Systems QIL-A9260 Board.
 	  <http://www.calao-systems.com>
@@ -272,6 +296,7 @@ config MACH_QIL_A9260
 config MACH_TNY_A9260
 	bool "CALAO TNY-A9260"
 	select SUPPORT_CALAO_MOB_TNY_MD2
+	select AT91SAM9260_LWL
 	help
 	  Select this if you are using a Calao Systems TNY-A9260.
 	  <http://www.calao-systems.com>
@@ -279,12 +304,14 @@ config MACH_TNY_A9260
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
@@ -305,7 +332,9 @@ config MACH_AT91SAM9261EK
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
@@ -313,7 +342,9 @@ config MACH_AT91SAM9261EK
 config MACH_PM9261
 	bool "Ronetix PM9261"
 	select HAS_DM9000
-	select HAVE_AT91_LOWLEVEL_INIT
+	select HAVE_AT91_BOOTSTRAP
+	select AT91SAM9261_LWL
+	select AT91SAM926X_LWL
 	help
 	  Say y here if you are using the Ronetix PM9261 Board
 
@@ -332,6 +363,7 @@ config MACH_AT91SAM9G10EK
 	bool "Atmel AT91SAM9G10-EK Evaluation Kit"
 	select HAVE_NAND_ATMEL_BUSWIDTH_16
 	select HAS_DM9000
+	select AT91SAM9261_LWL
 	help
 	  Select this if you are using Atmel's AT91SAM9G10-EK Evaluation Kit.
 	  <http://www.atmel.com/dyn/products/tools_card.asp?tool_id=4588>
@@ -350,6 +382,7 @@ choice
 config MACH_AT91SAM9G20EK
 	bool "Atmel AT91SAM9G20-EK Evaluation Kit"
 	select HAVE_NAND_ATMEL_BUSWIDTH_16
+	select AT91SAM9260_LWL
 	help
 	  Select this if you are using Atmel's AT91SAM9G20-EK Evaluation Kit
 	  that embeds only one SD/MMC slot.
@@ -357,6 +390,7 @@ config MACH_AT91SAM9G20EK
 config MACH_TNY_A9G20
 	select SUPPORT_CALAO_MOB_TNY_MD2
 	bool "CALAO TNY-A9G20"
+	select AT91SAM9260_LWL
 	help
 	  Select this if you are using a Calao Systems TNY-A9G20.
 	  <http://www.calao-systems.com>
@@ -364,6 +398,7 @@ config MACH_TNY_A9G20
 config MACH_USB_A9G20
 	bool "CALAO USB-A9G20"
 	select SUPPORT_CALAO_DAB_MMX
+	select AT91SAM9260_LWL
 	help
 	  Select this if you are using a Calao Systems USB-A9G20.
 	  <http://www.calao-systems.com>
@@ -371,18 +406,21 @@ config MACH_USB_A9G20
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
@@ -399,32 +437,41 @@ choice
 
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
@@ -440,12 +487,14 @@ choice
 
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
@@ -453,6 +502,7 @@ config MACH_AT91SAM9M10G45EK
 
 config MACH_PM9G45
 	bool "Ronetix PM9G45"
+	select AT91SAM9G45_LWL
 	help
 	  Say y here if you are using the Ronetix PM9G45 Board
 
@@ -469,6 +519,7 @@ choice
 
 config MACH_AT91SAM9N12EK
 	bool "Atmel AT91SAM9N12 Evaluation Kit"
+	select AT91SAM9N12_LWL
 	help
 	  Select this if you are using Atmel's AT91SAM9N12-EK Evaluation Kit.
 
@@ -485,11 +536,13 @@ choice
 
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
 
@@ -506,11 +559,13 @@ choice
 
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
 
@@ -595,7 +650,7 @@ config CALAO_MB_QIL_A9260
 
 config AT91_BOOTSTRAP
 	bool "at91 bootstrap"
-	depends on HAVE_AT91_LOWLEVEL_INIT
+	depends on HAVE_AT91_BOOTSTRAP
 	select BOOTSTRAP
 
 config AT91_LOAD_BAREBOX_SRAM
diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index 0892fb4b5..5516b5f4f 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -7,18 +7,18 @@ endif
 obj-$(CONFIG_CMD_AT91_BOOT_TEST) += boot_test_cmd.o
 
 obj-$(CONFIG_AT91_BOOTSTRAP) += bootstrap.o
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
+
+lwl-$(CONFIG_AT91SAM926X_LWL) += at91sam926x_lowlevel_init.o
+
+lwl-$(CONFIG_AT91SAM9260_LWL) += at91sam9260_lowlevel_init.o
+lwl-$(CONFIG_AT91SAM9261_LWL) += at91sam9261_lowlevel_init.o
+lwl-$(CONFIG_AT91SAM9263_LWL) += at91sam9263_lowlevel_init.o
+lwl-$(CONFIG_AT91SAM9G45_LWL) += at91sam9g45_lowlevel_init.o
+lwl-$(CONFIG_AT91SAM9X5_LWL) += at91sam9x5_lowlevel_init.o
+lwl-$(CONFIG_AT91SAM9N12_LWL) += at91sam9n12_lowlevel_init.o
+lwl-$(CONFIG_AT91RM9200_LWL) += at91rm9200_lowlevel_init.o
+lwl-$(CONFIG_SAMA5D3_LWL) += sama5d3_lowlevel_init.o
+lwl-$(CONFIG_SAMA5D4_LWL) += sama5d3_lowlevel_init.o
 
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
