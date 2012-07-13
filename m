Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Spl7A-0002eq-V5
 for barebox@lists.infradead.org; Fri, 13 Jul 2012 19:01:40 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1Spl73-0008F1-09
 for barebox@lists.infradead.org; Fri, 13 Jul 2012 21:01:13 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jbe@pengutronix.de>) id 1Spl72-0005Xo-Qx
 for barebox@lists.infradead.org; Fri, 13 Jul 2012 21:01:12 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 13 Jul 2012 21:01:09 +0200
Message-Id: <1342206070-29698-18-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1342206070-29698-1-git-send-email-jbe@pengutronix.de>
References: <1342206070-29698-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 17/18] ARM/Samsung: add the S3C6410 SoC
To: barebox@lists.infradead.org

After adding the base support, the CPU can now be enabled in the build system.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/Kconfig              |    6 ++++++
 arch/arm/mach-samsung/Kconfig |   21 ++++++++++++++++++++-
 drivers/serial/Kconfig        |    2 +-
 3 files changed, 27 insertions(+), 2 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 9590db9..2e79005 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -81,6 +81,12 @@ config ARCH_S3C24xx
 #	select CPU_V7
 #	select GENERIC_GPIO
 
+config ARCH_S3C64xx
+	bool "Samsung S3C64xx"
+	select ARCH_SAMSUNG
+	select CPU_V6
+	select GENERIC_GPIO
+
 config ARCH_VERSATILE
 	bool "ARM Versatile boards (ARM926EJ-S)"
 	select CPU_ARM926T
diff --git a/arch/arm/mach-samsung/Kconfig b/arch/arm/mach-samsung/Kconfig
index 28bbc97..8acb7c9 100644
--- a/arch/arm/mach-samsung/Kconfig
+++ b/arch/arm/mach-samsung/Kconfig
@@ -19,6 +19,8 @@ config BOARDINFO
 config ARCH_BAREBOX_MAX_BARE_INIT_SIZE
 	hex
 	default 0x1ff0 if ARCH_S5PCxx
+# TODO
+	default 0x2000 if ARCH_S3C64xx
 
 config SAMSUNG_IMPROVED_UART
 	bool
@@ -89,6 +91,24 @@ endmenu
 
 endif
 
+if ARCH_S3C64xx
+
+config CPU_S3C6410
+	select SAMSUNG_IMPROVED_UART
+	bool
+
+choice
+
+	prompt "S3C64xx Board Type"
+
+endchoice
+
+menu "Board specific settings       "
+
+endmenu
+
+endif
+
 if ARCH_S5PCxx
 
 config CPU_S5PC110
@@ -114,7 +134,6 @@ endchoice
 
 endif
 
-
 menu "S3C Features              "
 
 config S3C_LOWLEVEL_INIT
diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
index a118aaf..283573e 100644
--- a/drivers/serial/Kconfig
+++ b/drivers/serial/Kconfig
@@ -90,7 +90,7 @@ config DRIVER_SERIAL_S3C_CLK
 	prompt "input clock reference"
 	depends on DRIVER_SERIAL_S3C
 	default 0 if ARCH_S3C24xx
-	default 3 if ARCH_S5PCxx
+	default 3 if ARCH_S3C64xx || ARCH_S5PCxx
 	help
 	  Select one of up to four available clock sources for the UART:
 	   0+1: PCLK, 2: UCLK0, 3: UCLK1
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
