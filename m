Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sv8fc-0003Fp-S0
 for barebox@lists.infradead.org; Sat, 28 Jul 2012 15:11:10 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1Sv8fL-000356-52
 for barebox@lists.infradead.org; Sat, 28 Jul 2012 17:10:51 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jbe@pengutronix.de>) id 1Sv8fL-0003YP-2S
 for barebox@lists.infradead.org; Sat, 28 Jul 2012 17:10:51 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Sat, 28 Jul 2012 17:10:48 +0200
Message-Id: <1343488250-12570-7-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1343488250-12570-1-git-send-email-jbe@pengutronix.de>
References: <1343488250-12570-1-git-send-email-jbe@pengutronix.de>
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

After adding the base support, the SoC can now be enabled in the build system.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/Kconfig              |    6 ++++++
 arch/arm/mach-samsung/Kconfig |    9 +++++++++
 2 files changed, 15 insertions(+)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index af4cb59..af937d1 100644
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
index c60f5ed..7e41880 100644
--- a/arch/arm/mach-samsung/Kconfig
+++ b/arch/arm/mach-samsung/Kconfig
@@ -17,6 +17,8 @@ config BOARDINFO
 config ARCH_BAREBOX_MAX_BARE_INIT_SIZE
 	hex
 	default 0x1ff0 if ARCH_S5PCxx
+# TODO
+	default 0x2000 if ARCH_S3C64xx
 
 if ARCH_S3C24xx
 
@@ -84,6 +86,13 @@ endmenu
 
 endif
 
+if ARCH_S3C64xx
+
+config CPU_S3C6410
+	bool
+
+endif
+
 if ARCH_S5PCxx
 
 config CPU_S5PC110
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
