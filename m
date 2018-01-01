Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eVzwL-00031o-38
 for barebox@lists.infradead.org; Mon, 01 Jan 2018 13:15:50 +0000
From: Sam Ravnborg <sam@ravnborg.org>
Date: Mon,  1 Jan 2018 14:15:22 +0100
Message-Id: <20180101131523.1508-3-sam@ravnborg.org>
In-Reply-To: <20171231100244.GA16379@ravnborg.org>
References: <20171231100244.GA16379@ravnborg.org>
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
Subject: [PATCH 3/4] at91sam9263ek: enable multi-image build
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

Convert at91sam9263ek to multi-image build as we already do
for many of the i.MX based boards and recently for
the at91sam9x5ek board.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 arch/arm/boards/at91sam9263ek/lowlevel_init.c |  2 +-
 arch/arm/configs/at91sam9263ek_defconfig      |  4 +++-
 arch/arm/mach-at91/Kconfig                    | 20 ++++++++++++--------
 images/Makefile.at91                          |  4 ++++
 4 files changed, 20 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boards/at91sam9263ek/lowlevel_init.c b/arch/arm/boards/at91sam9263ek/lowlevel_init.c
index 70e0da3b1..3138bc7ca 100644
--- a/arch/arm/boards/at91sam9263ek/lowlevel_init.c
+++ b/arch/arm/boards/at91sam9263ek/lowlevel_init.c
@@ -115,7 +115,7 @@ static void __bare_init at91sam9263ek_init(void)
 	                  NULL);
 }
 
-void __naked __bare_init barebox_arm_reset_vector(void)
+ENTRY_FUNCTION(start_at91sam9263ek, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/configs/at91sam9263ek_defconfig b/arch/arm/configs/at91sam9263ek_defconfig
index b28614d43..fc92615eb 100644
--- a/arch/arm/configs/at91sam9263ek_defconfig
+++ b/arch/arm/configs/at91sam9263ek_defconfig
@@ -1,10 +1,12 @@
 CONFIG_ARCH_AT91SAM9263=y
+CONFIG_AT91_MULTI_BOARDS=y
+CONFIG_MACH_AT91SAM9263EK=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
+CONFIG_RELOCATABLE=y
 CONFIG_PROMPT="9263-EK:"
 CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index b877c269d..f5160ade1 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -228,6 +228,8 @@ config SUPPORT_CALAO_DAB_MMX
 config SUPPORT_CALAO_MOB_TNY_MD2
 	bool
 
+if !AT91_MULTI_BOARDS
+
 # ----------------------------------------------------------
 
 if ARCH_AT91RM9200
@@ -399,14 +401,6 @@ if ARCH_AT91SAM9263
 choice
 	prompt "AT91SAM9263 Board Type"
 
-config MACH_AT91SAM9263EK
-	bool "Atmel AT91SAM9263-EK"
-	select HAVE_NAND_ATMEL_BUSWIDTH_16
-	select HAVE_AT91_BOOTSTRAP
-	select AT91SAM926X_BOARD_INIT
-	help
-	  Say y here if you are using Atmel's AT91SAM9263-EK Evaluation board
-
 config MACH_MMCCPU
 	bool "Bucyrus MMC-CPU"
 	help
@@ -523,6 +517,7 @@ config MACH_SAMA5D4_XPLAINED
 endchoice
 
 endif
+endif
 
 # ----------------------------------------------------------
 
@@ -533,6 +528,15 @@ config AT91_MULTI_BOARDS
 
 if AT91_MULTI_BOARDS
 
+config MACH_AT91SAM9263EK
+	bool "Atmel AT91SAM9263-EK"
+	depends on ARCH_AT91SAM9263
+	select HAVE_NAND_ATMEL_BUSWIDTH_16
+	select HAVE_AT91_BOOTSTRAP
+	select AT91SAM926X_BOARD_INIT
+	help
+	  Say y here if you are using Atmel's AT91SAM9263-EK Evaluation board
+
 config MACH_AT91SAM9X5EK
 	bool "Atmel AT91SAM9x5 Series Evaluation Kit"
 	depends on ARCH_AT91SAM9X5
diff --git a/images/Makefile.at91 b/images/Makefile.at91
index dc6c1db4b..c7d86563a 100644
--- a/images/Makefile.at91
+++ b/images/Makefile.at91
@@ -5,3 +5,7 @@
 pblx-$(CONFIG_MACH_AT91SAM9X5EK) += start_at91sam9x5ek
 FILE_barebox-at91sam9x5ek.img = start_at91sam9x5ek.pblx
 image-$(CONFIG_MACH_AT91SAM9X5EK) += barebox-at91sam9x5ek.img
+
+pblx-$(CONFIG_MACH_AT91SAM9263EK) += start_at91sam9263ek
+FILE_barebox-at91sam9263ek.img = start_at91sam9263ek.pblx
+image-$(CONFIG_MACH_AT91SAM9263EK) += barebox-at91sam9263ek.img
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
