Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTpoy-00022n-Lz
 for barebox@lists.infradead.org; Thu, 23 May 2019 15:39:59 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 23 May 2019 17:39:37 +0200
Message-Id: <20190523153943.7995-4-a.fatoum@pengutronix.de>
In-Reply-To: <20190523153943.7995-1-a.fatoum@pengutronix.de>
References: <20190523153943.7995-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
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
Subject: [PATCH v3 3/9] ARM: at91: remove references to non-existing
 CONFIG_ARCH_AT91*
To: barebox@lists.infradead.org
Cc: sam@ravnborg.org

These symbols aren't set anywhere in barebox and in some
cases they guard non-existing headers. Remove them.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-at91/include/mach/at91_dbgu.h | 2 --
 arch/arm/mach-at91/include/mach/hardware.h  | 6 ------
 2 files changed, 8 deletions(-)

diff --git a/arch/arm/mach-at91/include/mach/at91_dbgu.h b/arch/arm/mach-at91/include/mach/at91_dbgu.h
index 3b5948566e52..e33a358153f9 100644
--- a/arch/arm/mach-at91/include/mach/at91_dbgu.h
+++ b/arch/arm/mach-at91/include/mach/at91_dbgu.h
@@ -16,7 +16,6 @@
 #ifndef AT91_DBGU_H
 #define AT91_DBGU_H
 
-#if !defined(CONFIG_ARCH_AT91X40)
 #define AT91_DBGU_CR		(0x00)	/* Control Register */
 #define AT91_DBGU_MR		(0x04)	/* Mode Register */
 #define AT91_DBGU_IER		(0x08)	/* Interrupt Enable Register */
@@ -34,7 +33,6 @@
 #define AT91_DBGU_FNR		(0x48)	/* Force NTRST Register [SAM9 only] */
 #define		AT91_DBGU_FNTRST	(1 << 0)		/* Force NTRST */
 
-#endif /* AT91_DBGU */
 
 /*
  * Some AT91 parts that don't have full DEBUG units still support the ID
diff --git a/arch/arm/mach-at91/include/mach/hardware.h b/arch/arm/mach-at91/include/mach/hardware.h
index e2e01343d475..58dc6edfa93f 100644
--- a/arch/arm/mach-at91/include/mach/hardware.h
+++ b/arch/arm/mach-at91/include/mach/hardware.h
@@ -30,8 +30,6 @@
 #include <mach/at91sam9261.h>
 #elif defined(CONFIG_ARCH_AT91SAM9263)
 #include <mach/at91sam9263.h>
-#elif defined(CONFIG_ARCH_AT91SAM9RL)
-#include <mach/at91sam9rl.h>
 #elif defined(CONFIG_ARCH_AT91SAM9G45)
 #include <mach/at91sam9g45.h>
 #elif defined(CONFIG_ARCH_AT91SAM9N12)
@@ -42,10 +40,6 @@
 #include <mach/sama5d3.h>
 #elif defined(CONFIG_ARCH_SAMA5D4)
 #include <mach/sama5d4.h>
-#elif defined(CONFIG_ARCH_AT91CAP9)
-#include <mach/at91cap9.h>
-#elif defined(CONFIG_ARCH_AT91X40)
-#include <mach/at91x40.h>
 #else
 #error "Unsupported AT91 processor"
 #endif
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
