Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp30.i.mail.ru ([94.100.177.90])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U3kn7-0000Vv-LS
 for barebox@lists.infradead.org; Fri, 08 Feb 2013 10:02:46 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Fri,  8 Feb 2013 14:02:15 +0400
Message-Id: <1360317743-25975-3-git-send-email-shc_work@mail.ru>
In-Reply-To: <1360317743-25975-1-git-send-email-shc_work@mail.ru>
References: <1360317743-25975-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 03/11] ARM: clps711x: Adds config option for CPU PLL multiplier
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-clps711x/Kconfig    |   13 +++++++++++++
 arch/arm/mach-clps711x/lowlevel.c |    4 ++--
 2 files changed, 15 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-clps711x/Kconfig b/arch/arm/mach-clps711x/Kconfig
index f0adeda..d2873b4 100644
--- a/arch/arm/mach-clps711x/Kconfig
+++ b/arch/arm/mach-clps711x/Kconfig
@@ -10,6 +10,19 @@ config MACH_CLEP7212
 
 endchoice
 
+menu "CLPS711X specific settings"
+
+config CLPS711X_CPU_PLL_MULT
+	int "CPU PLL multiplier (20-50)"
+	range 20 50
+	default "40"
+	help
+	  Define CPU PLL multiplier. PLL is calculated by formula:
+	    PLL Frequency = (PLL Multiplier / 2) * 3686400 Hz
+	  Default value is 40, for achieve 73 MHz.
+
+endmenu
+
 config BOARDINFO
 	default "Cirrus Logic CLEP7212" if MACH_CLEP7212
 
diff --git a/arch/arm/mach-clps711x/lowlevel.c b/arch/arm/mach-clps711x/lowlevel.c
index 0249c60..245ac93 100644
--- a/arch/arm/mach-clps711x/lowlevel.c
+++ b/arch/arm/mach-clps711x/lowlevel.c
@@ -18,10 +18,10 @@
 #include <mach/clps711x.h>
 
 #define MAIN_CLOCK		3686400
-#define CPU_SPEED		92160000
+#define CPU_SPEED		((CONFIG_CLPS711X_CPU_PLL_MULT * MAIN_CLOCK) / 2)
 #define BUS_SPEED		(CPU_SPEED / 2)
 
-#define PLL_VALUE		(((CPU_SPEED * 2) / MAIN_CLOCK) << 24)
+#define PLL_VALUE		(CONFIG_CLPS711X_CPU_PLL_MULT << 24)
 #define SDRAM_REFRESH_RATE	(64 * (BUS_SPEED / (8192 * 1000)))
 
 void __naked __bare_init barebox_arm_reset_vector(void)
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
