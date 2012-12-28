Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo3.mail-out.ovh.net ([87.98.172.162]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TofRK-0004I3-3i
 for barebox@lists.infradead.org; Fri, 28 Dec 2012 19:18:01 +0000
Received: from mail637.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 79D7EFF975A
 for <barebox@lists.infradead.org>; Fri, 28 Dec 2012 20:30:33 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 28 Dec 2012 20:16:13 +0100
Message-Id: <1356722174-22598-12-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 12/13] at91: introduce AT91SAM9_SMC and AT91SAM9_TIMER
To: barebox@lists.infradead.org

to select the smc and timer for at91sam9 soc

This will allow to simplify the Makefile

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/Kconfig  |   24 ++++++++++++++++++------
 arch/arm/mach-at91/Makefile |   19 +++++++++++--------
 2 files changed, 29 insertions(+), 14 deletions(-)

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index d470e5c..fcba7fb 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -6,6 +6,18 @@ config HAVE_AT91_DBGU0
 config HAVE_AT91_DBGU1
 	bool
 
+config AT91SAM9_SMC
+	bool
+
+config AT91SAM9_TIMER
+	bool
+
+config SOC_AT91SAM9
+	bool
+	select CPU_ARM926T
+	select AT91SAM9_SMC
+	select AT91SAM9_TIMER
+
 config ARCH_TEXT_BASE
 	hex
 	default 0x73f00000 if ARCH_AT91SAM9G45
@@ -58,7 +70,7 @@ config SOC_AT91RM9200
 
 config SOC_AT91SAM9260
 	bool
-	select CPU_ARM926T
+	select SOC_AT91SAM9
 	select HAVE_AT91_DBGU0
 	select HAS_MACB
 	select AT91SAM9_RESET
@@ -68,7 +80,7 @@ config SOC_AT91SAM9260
 
 config SOC_AT91SAM9261
 	bool
-	select CPU_ARM926T
+	select SOC_AT91SAM9
 	select HAVE_AT91_DBGU0
 	select AT91SAM9_RESET
 	help
@@ -76,14 +88,14 @@ config SOC_AT91SAM9261
 
 config SOC_AT91SAM9263
 	bool
-	select CPU_ARM926T
+	select SOC_AT91SAM9
 	select HAVE_AT91_DBGU1
 	select HAS_MACB
 	select AT91SAM9_RESET
 
 config SOC_AT91SAM9G45
 	bool
-	select CPU_ARM926T
+	select SOC_AT91SAM9
 	select HAVE_AT91_DBGU1
 	select HAS_MACB
 	select AT91SAM9G45_RESET
@@ -93,7 +105,7 @@ config SOC_AT91SAM9G45
 
 config SOC_AT91SAM9X5
 	bool
-	select CPU_ARM926T
+	select SOC_AT91SAM9
 	select HAVE_AT91_DBGU0
 	select HAS_MACB
 	select AT91SAM9G45_RESET
@@ -106,7 +118,7 @@ config SOC_AT91SAM9X5
 
 config SOC_AT91SAM9N12
 	bool
-	select CPU_ARM926T
+	select SOC_AT91SAM9
 	select HAVE_AT91_DBGU0
 	select AT91SAM9G45_RESET
 	help
diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index 865988e..53b4dd8 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -9,13 +9,16 @@ pbl-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += $(lowlevel_init-y)
 obj-$(CONFIG_AT91SAM9_RESET) += at91sam9_reset.o
 obj-$(CONFIG_AT91SAM9G45_RESET) += at91sam9g45_reset.o
 
+obj-$(CONFIG_AT91SAM9_SMC) += sam9_smc.o
+obj-$(CONFIG_AT91SAM9_TIMER) += at91sam926x_time.o
+
 # CPU-specific support
 obj-$(CONFIG_ARCH_AT91RM9200)	+= at91rm9200.o at91rm9200_time.o at91rm9200_devices.o
-obj-$(CONFIG_ARCH_AT91SAM9260) += at91sam9260.o at91sam926x_time.o at91sam9260_devices.o sam9_smc.o
-obj-$(CONFIG_ARCH_AT91SAM9261) += at91sam9261.o at91sam926x_time.o at91sam9261_devices.o sam9_smc.o
-obj-$(CONFIG_ARCH_AT91SAM9263) += at91sam9263.o at91sam926x_time.o at91sam9263_devices.o sam9_smc.o
-obj-$(CONFIG_ARCH_AT91SAM9G10) += at91sam9261.o at91sam926x_time.o at91sam9261_devices.o sam9_smc.o
-obj-$(CONFIG_ARCH_AT91SAM9G20) += at91sam9260.o at91sam926x_time.o at91sam9260_devices.o sam9_smc.o
-obj-$(CONFIG_ARCH_AT91SAM9G45) += at91sam9g45.o at91sam926x_time.o at91sam9g45_devices.o sam9_smc.o
-obj-$(CONFIG_ARCH_AT91SAM9X5)	+= at91sam9x5.o at91sam926x_time.o at91sam9x5_devices.o sam9_smc.o
-obj-$(CONFIG_ARCH_AT91SAM9N12)	+= at91sam9n12.o at91sam926x_time.o at91sam9n12_devices.o sam9_smc.o
+obj-$(CONFIG_ARCH_AT91SAM9260) += at91sam9260.o at91sam9260_devices.o
+obj-$(CONFIG_ARCH_AT91SAM9261) += at91sam9261.o at91sam9261_devices.o
+obj-$(CONFIG_ARCH_AT91SAM9263) += at91sam9263.o at91sam9263_devices.o
+obj-$(CONFIG_ARCH_AT91SAM9G10) += at91sam9261.o at91sam9261_devices.o
+obj-$(CONFIG_ARCH_AT91SAM9G20) += at91sam9260.o at91sam9260_devices.o
+obj-$(CONFIG_ARCH_AT91SAM9G45) += at91sam9g45.o at91sam9g45_devices.o
+obj-$(CONFIG_ARCH_AT91SAM9X5)	+= at91sam9x5.o at91sam9x5_devices.o
+obj-$(CONFIG_ARCH_AT91SAM9N12)	+= at91sam9n12.o at91sam9n12_devices.o
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
