Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo3.mail-out.ovh.net ([87.98.178.36]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Rky2s-0008Jr-GD
 for barebox@lists.infradead.org; Wed, 11 Jan 2012 13:16:53 +0000
Received: from mail617.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 09F1E1000819
 for <barebox@lists.infradead.org>; Wed, 11 Jan 2012 14:18:09 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 11 Jan 2012 14:09:59 +0100
Message-Id: <1326287399-30162-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] at91sam9/lowlevel_init: allow to select the smc chipselect
To: barebox@lists.infradead.org

this will allow to configure the nand as example

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91sam9263ek/config.h         |    9 ++++---
 arch/arm/boards/mmccpu/config.h                |   25 ++++++++++++-----------
 arch/arm/boards/pm9261/config.h                |    9 ++++---
 arch/arm/boards/pm9263/config.h                |    9 ++++---
 arch/arm/mach-at91/at91sam926x_lowlevel_init.c |    8 +++---
 5 files changed, 32 insertions(+), 28 deletions(-)

diff --git a/arch/arm/boards/at91sam9263ek/config.h b/arch/arm/boards/at91sam9263ek/config.h
index 8f764eb..14eb4fe 100644
--- a/arch/arm/boards/at91sam9263ek/config.h
+++ b/arch/arm/boards/at91sam9263ek/config.h
@@ -61,15 +61,16 @@
 #define CONFIG_SYS_SDRC_TR_VAL2		1200		/* SDRAM_TR */
 
 /* setup SMC0, CS0 (NOR Flash) - 16-bit, 15 WS */
-#define CONFIG_SYS_SMC0_SETUP0_VAL					\
+#define CONFIG_SYS_SMC_CS	0
+#define CONFIG_SYS_SMC_SETUP_VAL					\
 		(AT91_SMC_NWESETUP_(10) | AT91_SMC_NCS_WRSETUP_(10) |	\
 		 AT91_SMC_NRDSETUP_(10) | AT91_SMC_NCS_RDSETUP_(10))
-#define CONFIG_SYS_SMC0_PULSE0_VAL					\
+#define CONFIG_SYS_SMC_PULSE_VAL					\
 		(AT91_SMC_NWEPULSE_(11) | AT91_SMC_NCS_WRPULSE_(11) |	\
 		 AT91_SMC_NRDPULSE_(11) | AT91_SMC_NCS_RDPULSE_(11))
-#define CONFIG_SYS_SMC0_CYCLE0_VAL	\
+#define CONFIG_SYS_SMC_CYCLE_VAL	\
 		(AT91_SMC_NWECYCLE_(22) | AT91_SMC_NRDCYCLE_(22))
-#define CONFIG_SYS_SMC0_MODE0_VAL				\
+#define CONFIG_SYS_SMC_MODE_VAL					\
 		(AT91_SMC_READMODE | AT91_SMC_WRITEMODE |	\
 		 AT91_SMC_DBW_16 |				\
 		 AT91_SMC_TDFMODE |				\
diff --git a/arch/arm/boards/mmccpu/config.h b/arch/arm/boards/mmccpu/config.h
index 765b610..e6215dc 100644
--- a/arch/arm/boards/mmccpu/config.h
+++ b/arch/arm/boards/mmccpu/config.h
@@ -62,44 +62,45 @@
 #define CONFIG_SYS_SDRC_TR_VAL2		780		/* SDRAM_TR */
 
 /* setup CS0 (NOR Flash) - 16-bit */
+#define CONFIG_SYS_SMC_CS	0
 #if 1
-#define CONFIG_SYS_SMC0_SETUP0_VAL					\
+#define CONFIG_SYS_SMC_SETUP_VAL					\
 		(AT91_SMC_NWESETUP_(3) | AT91_SMC_NCS_WRSETUP_(2) |	\
 		 AT91_SMC_NRDSETUP_(8) | AT91_SMC_NCS_RDSETUP_(0))
-#define CONFIG_SYS_SMC0_PULSE0_VAL					\
+#define CONFIG_SYS_SMC_PULSE_VAL					\
 		(AT91_SMC_NWEPULSE_(5) | AT91_SMC_NCS_WRPULSE_(7) |	\
 		 AT91_SMC_NRDPULSE_(5) | AT91_SMC_NCS_RDPULSE_(13))
-#define CONFIG_SYS_SMC0_CYCLE0_VAL	\
+#define CONFIG_SYS_SMC_CYCLE_VAL	\
 		(AT91_SMC_NWECYCLE_(16) | AT91_SMC_NRDCYCLE_(16))
-#define CONFIG_SYS_SMC0_MODE0_VAL				\
+#define CONFIG_SYS_SMC_MODE_VAL					\
 		(AT91_SMC_READMODE | AT91_SMC_WRITEMODE |	\
 		 AT91_SMC_DBW_16 |				\
 		 AT91_SMC_TDFMODE |				\
 		 AT91_SMC_TDF_(6))
 #elif 0	/* slow setup */
-#define CONFIG_SYS_SMC0_SETUP0_VAL					\
+#define CONFIG_SYS_SMC_SETUP_VAL					\
 		(AT91_SMC_NWESETUP_(3) | AT91_SMC_NCS_WRSETUP_(2) |	\
 		 AT91_SMC_NRDSETUP_(8) | AT91_SMC_NCS_RDSETUP_(0))
-#define CONFIG_SYS_SMC0_PULSE0_VAL					\
+#define CONFIG_SYS_SMC_PULSE_VAL					\
 		(AT91_SMC_NWEPULSE_(5) | AT91_SMC_NCS_WRPULSE_(7) |	\
 		 AT91_SMC_NRDPULSE_(5) | AT91_SMC_NCS_RDPULSE_(13))
-#define CONFIG_SYS_SMC0_CYCLE0_VAL	\
+#define CONFIG_SYS_SMC_CYCLE_VAL	\
 		(AT91_SMC_NWECYCLE_(0xd00) | AT91_SMC_NRDCYCLE_(0xd00))
-#define CONFIG_SYS_SMC0_MODE0_VAL				\
+#define CONFIG_SYS_SMC_MODE_VAL					\
 		(AT91_SMC_READMODE | AT91_SMC_WRITEMODE |	\
 		 AT91_SMC_DBW_16 |				\
 		 AT91_SMC_TDFMODE |				\
 		 AT91_SMC_TDF_(1))
 #else	/* RONETIX' original values */
-#define CONFIG_SYS_SMC0_SETUP0_VAL					\
+#define CONFIG_SYS_SMC_SETUP_VAL					\
 		(AT91_SMC_NWESETUP_(10) | AT91_SMC_NCS_WRSETUP_(10) |	\
 		 AT91_SMC_NRDSETUP_(10) | AT91_SMC_NCS_RDSETUP_(10))
-#define CONFIG_SYS_SMC0_PULSE0_VAL					\
+#define CONFIG_SYS_SMC_PULSE_VAL					\
 		(AT91_SMC_NWEPULSE_(11) | AT91_SMC_NCS_WRPULSE_(11) |	\
 		 AT91_SMC_NRDPULSE_(11) | AT91_SMC_NCS_RDPULSE_(11))
-#define CONFIG_SYS_SMC0_CYCLE0_VAL	\
+#define CONFIG_SYS_SMC_CYCLE_VAL	\
 		(AT91_SMC_NWECYCLE_(22) | AT91_SMC_NRDCYCLE_(22))
-#define CONFIG_SYS_SMC0_MODE0_VAL				\
+#define CONFIG_SYS_SMC_MODE_VAL					\
 		(AT91_SMC_READMODE | AT91_SMC_WRITEMODE |	\
 		 AT91_SMC_DBW_16 |				\
 		 AT91_SMC_TDFMODE |				\
diff --git a/arch/arm/boards/pm9261/config.h b/arch/arm/boards/pm9261/config.h
index e8822a5..4602aa7 100644
--- a/arch/arm/boards/pm9261/config.h
+++ b/arch/arm/boards/pm9261/config.h
@@ -61,15 +61,16 @@
 #define CONFIG_SYS_SDRC_TR_VAL2		1200		/* SDRAM_TR */
 
 /* setup SMC0, CS0 (NOR Flash) - 16-bit, 15 WS */
-#define CONFIG_SYS_SMC0_SETUP0_VAL					\
+#define CONFIG_SYS_SMC_CS	0
+#define CONFIG_SYS_SMC_SETUP_VAL					\
 		(AT91_SMC_NWESETUP_(10) | AT91_SMC_NCS_WRSETUP_(10) |	\
 		 AT91_SMC_NRDSETUP_(10) | AT91_SMC_NCS_RDSETUP_(10))
-#define CONFIG_SYS_SMC0_PULSE0_VAL					\
+#define CONFIG_SYS_SMC_PULSE_VAL					\
 		(AT91_SMC_NWEPULSE_(11) | AT91_SMC_NCS_WRPULSE_(11) |	\
 		 AT91_SMC_NRDPULSE_(11) | AT91_SMC_NCS_RDPULSE_(11))
-#define CONFIG_SYS_SMC0_CYCLE0_VAL	\
+#define CONFIG_SYS_SMC_CYCLE_VAL	\
 		(AT91_SMC_NWECYCLE_(22) | AT91_SMC_NRDCYCLE_(22))
-#define CONFIG_SYS_SMC0_MODE0_VAL				\
+#define CONFIG_SYS_SMC_MODE_VAL					\
 		(AT91_SMC_READMODE | AT91_SMC_WRITEMODE |	\
 		 AT91_SMC_DBW_16 |				\
 		 AT91_SMC_TDFMODE |				\
diff --git a/arch/arm/boards/pm9263/config.h b/arch/arm/boards/pm9263/config.h
index d5add0f..322c1f3 100644
--- a/arch/arm/boards/pm9263/config.h
+++ b/arch/arm/boards/pm9263/config.h
@@ -76,15 +76,16 @@
 #define CONFIG_SYS_SDRC_TR_VAL2		1200		/* SDRAM_TR */
 
 /* setup SMC0, CS0 (NOR Flash) - 16-bit, 15 WS */
-#define CONFIG_SYS_SMC0_SETUP0_VAL					\
+#define CONFIG_SYS_SMC_CS	0
+#define CONFIG_SYS_SMC_SETUP_VAL					\
 		(AT91_SMC_NWESETUP_(10) | AT91_SMC_NCS_WRSETUP_(10) |	\
 		 AT91_SMC_NRDSETUP_(10) | AT91_SMC_NCS_RDSETUP_(10))
-#define CONFIG_SYS_SMC0_PULSE0_VAL					\
+#define CONFIG_SYS_SMC_PULSE_VAL					\
 		(AT91_SMC_NWEPULSE_(11) | AT91_SMC_NCS_WRPULSE_(11) |	\
 		 AT91_SMC_NRDPULSE_(11) | AT91_SMC_NCS_RDPULSE_(11))
-#define CONFIG_SYS_SMC0_CYCLE0_VAL	\
+#define CONFIG_SYS_SMC_CYCLE_VAL	\
 		(AT91_SMC_NWECYCLE_(22) | AT91_SMC_NRDCYCLE_(22))
-#define CONFIG_SYS_SMC0_MODE0_VAL				\
+#define CONFIG_SYS_SMC_MODE_VAL					\
 		(AT91_SMC_READMODE | AT91_SMC_WRITEMODE |	\
 		 AT91_SMC_DBW_16 |				\
 		 AT91_SMC_TDFMODE |				\
diff --git a/arch/arm/mach-at91/at91sam926x_lowlevel_init.c b/arch/arm/mach-at91/at91sam926x_lowlevel_init.c
index 211074c..669f377 100644
--- a/arch/arm/mach-at91/at91sam926x_lowlevel_init.c
+++ b/arch/arm/mach-at91/at91sam926x_lowlevel_init.c
@@ -57,13 +57,13 @@ void __naked __bare_init board_init_lowlevel(void)
 #endif
 
 	/* flash */
-	at91_sys_write(AT91_SMC_MODE(0), CONFIG_SYS_SMC0_MODE0_VAL);
+	at91_sys_write(AT91_SMC_MODE(CONFIG_SYS_SMC_CS), CONFIG_SYS_SMC_MODE_VAL);
 
-	at91_sys_write(AT91_SMC_CYCLE(0), CONFIG_SYS_SMC0_CYCLE0_VAL);
+	at91_sys_write(AT91_SMC_CYCLE(CONFIG_SYS_SMC_CS), CONFIG_SYS_SMC_CYCLE_VAL);
 
-	at91_sys_write(AT91_SMC_PULSE(0), CONFIG_SYS_SMC0_PULSE0_VAL);
+	at91_sys_write(AT91_SMC_PULSE(CONFIG_SYS_SMC_CS), CONFIG_SYS_SMC_PULSE_VAL);
 
-	at91_sys_write(AT91_SMC_SETUP(0), CONFIG_SYS_SMC0_SETUP0_VAL);
+	at91_sys_write(AT91_SMC_SETUP(CONFIG_SYS_SMC_CS), CONFIG_SYS_SMC_SETUP_VAL);
 
 	/*
 	 * PMC Check if the PLL is already initialized
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
