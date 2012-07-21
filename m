Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SsWYE-0002hi-Lb
 for barebox@lists.infradead.org; Sat, 21 Jul 2012 10:04:57 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1SsWY7-0003vd-Gp
 for barebox@lists.infradead.org; Sat, 21 Jul 2012 12:04:35 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jbe@pengutronix.de>) id 1SsWY6-0001Vb-IQ
 for barebox@lists.infradead.org; Sat, 21 Jul 2012 12:04:34 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Sat, 21 Jul 2012 12:04:31 +0200
Message-Id: <1342865073-5209-7-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1342865073-5209-1-git-send-email-jbe@pengutronix.de>
References: <1342865073-5209-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 6/8] ARM/Samsung: add the S3C6410 SoC
To: barebox@lists.infradead.org

After adding the base support, the CPU can now be enabled in the build system.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/Kconfig              |    6 ++++++
 arch/arm/mach-samsung/Kconfig |   21 ++++++++++++++++++++-
 2 files changed, 26 insertions(+), 1 deletion(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 2dbac66..4b7a39c 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -79,6 +79,12 @@ config ARCH_S5PCxx
 	select CPU_V7
 	select GENERIC_GPIO
 
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
index 37d1aa3..8f63963 100644
--- a/arch/arm/mach-samsung/Kconfig
+++ b/arch/arm/mach-samsung/Kconfig
@@ -17,6 +17,8 @@ config BOARDINFO
 config ARCH_BAREBOX_MAX_BARE_INIT_SIZE
 	hex
 	default 0x1ff0 if ARCH_S5PCxx
+# TODO
+	default 0x2000 if ARCH_S3C64xx
 
 config SAMSUNG_IMPROVED_UART
 	bool
@@ -87,6 +89,24 @@ endmenu
 
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
@@ -106,7 +126,6 @@ config CPU_S5PV210
 
 endif
 
-
 menu "S3C Features              "
 
 config S3C_LOWLEVEL_INIT
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
