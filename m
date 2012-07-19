Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Srlr9-0005KK-HZ
 for barebox@lists.infradead.org; Thu, 19 Jul 2012 08:13:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 19 Jul 2012 10:12:56 +0200
Message-Id: <1342685582-13244-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1342685582-13244-1-git-send-email-s.hauer@pengutronix.de>
References: <1342685582-13244-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/9] ARM: remove board linker script option
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig      |   12 ------------
 arch/arm/Makefile     |    3 +--
 arch/arm/lib/Makefile |    3 +--
 3 files changed, 2 insertions(+), 16 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index af4cb59..d988455 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -1,15 +1,3 @@
-#
-#
-#
-config BOARD_LINKER_SCRIPT
-	bool
-	default n
-
-config GENERIC_LINKER_SCRIPT
-	bool
-	default y
-	depends on !BOARD_LINKER_SCRIPT
-
 config ARM
 	bool
 	select HAS_KALLSYMS
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 1225df7..cbbc0a0 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -207,7 +207,6 @@ endif
 common-y += $(BOARD) $(MACH)
 common-y += arch/arm/lib/ arch/arm/cpu/
 
-lds-$(CONFIG_GENERIC_LINKER_SCRIPT)	:= arch/arm/lib/barebox.lds
-lds-$(CONFIG_BOARD_LINKER_SCRIPT)	:= $(BOARD)/barebox.lds
+lds-y	:= arch/arm/lib/barebox.lds
 
 CLEAN_FILES += include/generated/mach-types.h arch/arm/lib/barebox.lds
diff --git a/arch/arm/lib/Makefile b/arch/arm/lib/Makefile
index 27a4b88..1eaf474 100644
--- a/arch/arm/lib/Makefile
+++ b/arch/arm/lib/Makefile
@@ -20,5 +20,4 @@ obj-$(CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS)	+= memcpy.o
 obj-$(CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS)	+= memset.o
 obj-$(CONFIG_ARM_UNWIND) += unwind.o
 obj-$(CONFIG_MODULES) += module.o
-extra-$(CONFIG_GENERIC_LINKER_SCRIPT) += barebox.lds
-
+extra-y += barebox.lds
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
