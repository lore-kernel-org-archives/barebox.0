Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo3.mail-out.ovh.net ([87.98.172.162]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TofRK-0004Hz-3k
 for barebox@lists.infradead.org; Fri, 28 Dec 2012 19:18:02 +0000
Received: from mail637.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 659C4FF9756
 for <barebox@lists.infradead.org>; Fri, 28 Dec 2012 20:30:33 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 28 Dec 2012 20:16:12 +0100
Message-Id: <1356722174-22598-11-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1356722174-22598-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121228191327.GC7216@game.jcrosoft.org>
 <1356722174-22598-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 11/13] at91: wdt: drop AT91_SYS_BASE
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/at91sam926x_lowlevel_init.c |    2 +-
 arch/arm/mach-at91/include/mach/at91_wdt.h     |    6 +++---
 arch/arm/mach-at91/include/mach/at91sam9260.h  |    2 +-
 arch/arm/mach-at91/include/mach/at91sam9261.h  |    2 +-
 arch/arm/mach-at91/include/mach/at91sam9263.h  |    2 +-
 arch/arm/mach-at91/include/mach/at91sam9g45.h  |    2 +-
 arch/arm/mach-at91/include/mach/at91sam9n12.h  |    2 +-
 arch/arm/mach-at91/include/mach/at91sam9x5.h   |    2 +-
 8 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/arch/arm/mach-at91/at91sam926x_lowlevel_init.c b/arch/arm/mach-at91/at91sam926x_lowlevel_init.c
index 6e4101d..cfae982 100644
--- a/arch/arm/mach-at91/at91sam926x_lowlevel_init.c
+++ b/arch/arm/mach-at91/at91sam926x_lowlevel_init.c
@@ -43,7 +43,7 @@ void __naked __bare_init reset(void)
 
 	common_reset();
 
-	at91_sys_write(AT91_WDT_MR, CONFIG_SYS_WDTC_WDMR_VAL);
+	__raw_writel(CONFIG_SYS_WDTC_WDMR_VAL, AT91_BASE_WDT + AT91_WDT_MR);
 
 	/* configure PIOx as EBI0 D[16-31] */
 #ifdef CONFIG_ARCH_AT91SAM9263
diff --git a/arch/arm/mach-at91/include/mach/at91_wdt.h b/arch/arm/mach-at91/include/mach/at91_wdt.h
index 7e18537..36d37b9 100644
--- a/arch/arm/mach-at91/include/mach/at91_wdt.h
+++ b/arch/arm/mach-at91/include/mach/at91_wdt.h
@@ -17,11 +17,11 @@
 #ifndef AT91_WDT_H
 #define AT91_WDT_H
 
-#define AT91_WDT_CR		(AT91_WDT + 0x00)	/* Watchdog Control Register */
+#define AT91_WDT_CR		0x00			/* Watchdog Control Register */
 #define		AT91_WDT_WDRSTT		(1    << 0)		/* Restart */
 #define		AT91_WDT_KEY		(0xa5 << 24)		/* KEY Password */
 
-#define AT91_WDT_MR		(AT91_WDT + 0x04)	/* Watchdog Mode Register */
+#define AT91_WDT_MR		 0x04			/* Watchdog Mode Register */
 #define		AT91_WDT_WDV		(0xfff << 0)		/* Counter Value */
 #define		AT91_WDT_WDFIEN		(1     << 12)		/* Fault Interrupt Enable */
 #define		AT91_WDT_WDRSTEN	(1     << 13)		/* Reset Processor */
@@ -31,7 +31,7 @@
 #define		AT91_WDT_WDDBGHLT	(1     << 28)		/* Debug Halt */
 #define		AT91_WDT_WDIDLEHLT	(1     << 29)		/* Idle Halt */
 
-#define AT91_WDT_SR		(AT91_WDT + 0x08)	/* Watchdog Status Register */
+#define AT91_WDT_SR		0x08			/* Watchdog Status Register */
 #define		AT91_WDT_WDUNF		(1 << 0)		/* Watchdog Underflow */
 #define		AT91_WDT_WDERR		(1 << 1)		/* Watchdog Error */
 
diff --git a/arch/arm/mach-at91/include/mach/at91sam9260.h b/arch/arm/mach-at91/include/mach/at91sam9260.h
index 0804dc3..3f3a0e1 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9260.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9260.h
@@ -104,8 +104,8 @@
 #define AT91_DBGU	(0xfffff200 - AT91_BASE_SYS)
 #define AT91_RSTC	(0xfffffd00 - AT91_BASE_SYS)
 #define AT91_SHDWC	(0xfffffd10 - AT91_BASE_SYS)
-#define AT91_WDT	(0xfffffd40 - AT91_BASE_SYS)
 
+#define AT91_BASE_WDT	AT91SAM9260_BASE_WDT
 #define AT91_BASE_SMC	AT91SAM9260_BASE_SMC
 #define AT91_BASE_PIOA	AT91SAM9260_BASE_PIOA
 #define AT91_BASE_PIOA	AT91SAM9260_BASE_PIOA
diff --git a/arch/arm/mach-at91/include/mach/at91sam9261.h b/arch/arm/mach-at91/include/mach/at91sam9261.h
index 0565e1b..1b48e23 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9261.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9261.h
@@ -90,8 +90,8 @@
 #define AT91_DBGU	(0xfffff200 - AT91_BASE_SYS)
 #define AT91_RSTC	(0xfffffd00 - AT91_BASE_SYS)
 #define AT91_SHDWC	(0xfffffd10 - AT91_BASE_SYS)
-#define AT91_WDT	(0xfffffd40 - AT91_BASE_SYS)
 
+#define AT91_BASE_WDT	AT91SAM9261_BASE_WDT
 #define AT91_BASE_SMC	AT91SAM9261_BASE_SMC
 #define AT91_BASE_PIOA	AT91SAM9261_BASE_PIOA
 #define AT91_BASE_PIOB	AT91SAM9261_BASE_PIOB
diff --git a/arch/arm/mach-at91/include/mach/at91sam9263.h b/arch/arm/mach-at91/include/mach/at91sam9263.h
index 9eff27a..b42d191 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9263.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9263.h
@@ -108,8 +108,8 @@
 #define AT91_DBGU	(0xffffee00 - AT91_BASE_SYS)
 #define AT91_RSTC	(0xfffffd00 - AT91_BASE_SYS)
 #define AT91_SHDWC	(0xfffffd10 - AT91_BASE_SYS)
-#define AT91_WDT	(0xfffffd40 - AT91_BASE_SYS)
 
+#define AT91_BASE_WDT	AT91SAM9263_BASE_WDT
 #define AT91_BASE_SMC	AT91SAM9263_BASE_SMC0
 #define AT91_BASE_PIOA	AT91SAM9263_BASE_PIOA
 #define AT91_BASE_PIOB	AT91SAM9263_BASE_PIOB
diff --git a/arch/arm/mach-at91/include/mach/at91sam9g45.h b/arch/arm/mach-at91/include/mach/at91sam9g45.h
index 9c5234a..c81bb80 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9g45.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9g45.h
@@ -119,8 +119,8 @@
 #define AT91_DBGU	(0xffffee00 - AT91_BASE_SYS)
 #define AT91_RSTC	(0xfffffd00 - AT91_BASE_SYS)
 #define AT91_SHDWC	(0xfffffd10 - AT91_BASE_SYS)
-#define AT91_WDT	(0xfffffd40 - AT91_BASE_SYS)
 
+#define AT91_BASE_WDT	AT91SAM9G45_BASE_WDT
 #define AT91_BASE_SMC	AT91SAM9G45_BASE_SMC
 #define AT91_BASE_PIOA	AT91SAM9G45_BASE_PIOA
 #define AT91_BASE_PIOB	AT91SAM9G45_BASE_PIOB
diff --git a/arch/arm/mach-at91/include/mach/at91sam9n12.h b/arch/arm/mach-at91/include/mach/at91sam9n12.h
index b55e5f0..26bdd13 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9n12.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9n12.h
@@ -115,8 +115,8 @@
 #define AT91_DBGU	(0xfffff200 - AT91_BASE_SYS)
 #define AT91_RSTC	(0xfffffe00 - AT91_BASE_SYS)
 #define AT91_SHDWC	(0xfffffe10 - AT91_BASE_SYS)
-#define AT91_WDT	(0xfffffe40 - AT91_BASE_SYS)
 
+#define AT91_BASE_WDT	AT91SAM9N12_BASE_WDT
 #define AT91_BASE_SMC	AT91SAM9N12_BASE_SMC
 #define AT91_BASE_PIOA	AT91SAM9N12_BASE_PIOA
 #define AT91_BASE_PIOB	AT91SAM9N12_BASE_PIOB
diff --git a/arch/arm/mach-at91/include/mach/at91sam9x5.h b/arch/arm/mach-at91/include/mach/at91sam9x5.h
index 8a48eed..13b4f44 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9x5.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9x5.h
@@ -122,8 +122,8 @@
 #define AT91_DBGU	(0xfffff200 - AT91_BASE_SYS)
 #define AT91_RSTC	(0xfffffe00 - AT91_BASE_SYS)
 #define AT91_SHDWC	(0xfffffe10 - AT91_BASE_SYS)
-#define AT91_WDT	(0xfffffe40 - AT91_BASE_SYS)
 
+#define AT91_BASE_WDT	AT91SAM9X5_BASE_WDT
 #define AT91_BASE_SMC	AT91SAM9X5_BASE_SMC
 #define AT91_BASE_PIOA	AT91SAM9X5_BASE_PIOA
 #define AT91_BASE_PIOB	AT91SAM9X5_BASE_PIOB
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
