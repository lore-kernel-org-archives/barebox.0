Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo5.mail-out.ovh.net ([46.105.39.65]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TzANT-0004ox-6n
 for barebox@lists.infradead.org; Sat, 26 Jan 2013 18:21:19 +0000
Received: from mail609.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id B7EACFFA091
 for <barebox@lists.infradead.org>; Sat, 26 Jan 2013 19:31:15 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 26 Jan 2013 19:19:56 +0100
Message-Id: <1359224399-569-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1359224399-569-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130126181809.GH26329@game.jcrosoft.org>
 <1359224399-569-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/5] at91: introduce AT91_LOAD_BAREBOX_SRAM to specifcy which
 size load for external boot
To: barebox@lists.infradead.org

Some SoC as sam9261 or sam9263 have enough sram to directly load a barebox
from external boot.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/Kconfig                         |   11 +++++++++++
 arch/arm/mach-at91/include/mach/barebox-arm-head.h |    2 +-
 2 files changed, 12 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 0216a7e..661ff35 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -62,6 +62,9 @@ config AT91SAM9_RESET
 config AT91SAM9G45_RESET
 	bool
 
+config HAVE_AT91_LOAD_BAREBOX_SRAM
+	bool
+
 config AT91SAM9_LOWLEVEL_INIT
 	bool
 
@@ -101,6 +104,7 @@ config SOC_AT91SAM9263
 	select HAS_MACB
 	select AT91SAM9_RESET
 	select AT91SAM9_LOWLEVEL_INIT
+	select HAVE_AT91_LOAD_BAREBOX_SRAM
 
 config SOC_AT91SAM9G45
 	bool
@@ -148,6 +152,7 @@ config ARCH_AT91SAM9260
 config ARCH_AT91SAM9261
 	bool "AT91SAM9261"
 	select SOC_AT91SAM9261
+	select HAVE_AT91_LOAD_BAREBOX_SRAM
 
 config ARCH_AT91SAM9263
 	bool "AT91SAM9263"
@@ -517,4 +522,10 @@ config AT91_BOOTSTRAP
 	depends on MACH_HAS_LOWLEVEL_INIT
 	select BOOTSTRAP
 
+config AT91_LOAD_BAREBOX_SRAM
+	bool "at91 laad barebox in sram"
+	depends on MACH_HAS_LOWLEVEL_INIT
+	depends on SHELL_NONE || HAVE_AT91_LOAD_BAREBOX_SRAM
+	default y if SHELL_NONE
+
 endif
diff --git a/arch/arm/mach-at91/include/mach/barebox-arm-head.h b/arch/arm/mach-at91/include/mach/barebox-arm-head.h
index a9c8dd4..7d6a009 100644
--- a/arch/arm/mach-at91/include/mach/barebox-arm-head.h
+++ b/arch/arm/mach-at91/include/mach/barebox-arm-head.h
@@ -1,7 +1,7 @@
 #ifndef __MACH_ARM_HEAD_H
 #define __MACH_ARM_HEAD_H
 
-#ifdef CONFIG_SHELL_NONE
+#ifdef CONFIG_AT91_LOAD_BAREBOX_SRAM
 #define AT91_EXV6	".word _barebox_image_size\n"
 #else
 #define AT91_EXV6	".word _barebox_bare_init_size\n"
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
