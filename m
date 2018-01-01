Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eW0wg-0004gK-OJ
 for barebox@lists.infradead.org; Mon, 01 Jan 2018 14:20:57 +0000
From: Sam Ravnborg <sam@ravnborg.org>
Date: Mon,  1 Jan 2018 15:19:38 +0100
Message-Id: <20180101141939.20606-8-sam@ravnborg.org>
In-Reply-To: <20171231083407.GA16645@ravnborg.org>
References: <20171231083407.GA16645@ravnborg.org>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 24/25] at91rm9200ek: move reset vector to board code
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

Include deletion of now unused at91rm9200_lowlevel_init.c
and related CONFIG symbols

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 arch/arm/boards/at91rm9200ek/Makefile                      |  3 +++
 .../at91rm9200ek/lowlevel.c}                               | 14 ++++++--------
 arch/arm/mach-at91/Kconfig                                 |  3 ---
 arch/arm/mach-at91/Makefile                                |  1 -
 4 files changed, 9 insertions(+), 12 deletions(-)
 rename arch/arm/{mach-at91/at91rm9200_lowlevel_init.c => boards/at91rm9200ek/lowlevel.c} (97%)

diff --git a/arch/arm/boards/at91rm9200ek/Makefile b/arch/arm/boards/at91rm9200ek/Makefile
index dec1c5045..a07c06a6d 100644
--- a/arch/arm/boards/at91rm9200ek/Makefile
+++ b/arch/arm/boards/at91rm9200ek/Makefile
@@ -1,2 +1,5 @@
 obj-y += init.o
+
+lwl-y += lowlevel.o
+
 bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-at91rm9200ek
diff --git a/arch/arm/mach-at91/at91rm9200_lowlevel_init.c b/arch/arm/boards/at91rm9200ek/lowlevel.c
similarity index 97%
rename from arch/arm/mach-at91/at91rm9200_lowlevel_init.c
rename to arch/arm/boards/at91rm9200ek/lowlevel.c
index f78e36808..a85a22e79 100644
--- a/arch/arm/mach-at91/at91rm9200_lowlevel_init.c
+++ b/arch/arm/boards/at91rm9200ek/lowlevel.c
@@ -4,19 +4,17 @@
  * Under GPLv2
  */
 
-#define __LOWLEVEL_INIT__
-
 #include <common.h>
-#include <asm/system.h>
-#include <asm/barebox-arm.h>
+#include <init.h>
+
 #include <asm/barebox-arm-head.h>
-#include <mach/hardware.h>
-#include <mach/at91rm9200.h>
+#include <asm/barebox-arm.h>
+
 #include <mach/at91rm9200_mc.h>
+#include <mach/at91rm9200.h>
 #include <mach/at91_pio.h>
 #include <mach/at91_pmc.h>
-#include <mach/io.h>
-#include <init.h>
+#include <mach/hardware.h>
 
 void static inline access_sdram(void)
 {
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 67adb3cf3..2c379d96c 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -47,8 +47,6 @@ config AT91SAM9260_LWL
 	bool
 config AT91SAM9263_LWL
 	bool
-config AT91RM9200_LWL
-	bool
 
 config AT91SAM9_SMC
 	bool
@@ -251,7 +249,6 @@ choice
 config MACH_AT91RM9200EK
 	bool "Atmel AT91RM9200-EK Evaluation Kit"
 	select HAVE_AT91_DATAFLASH_CARD
-	select AT91RM9200_LWL
 	help
 	  Select this if you are using Atmel's AT91RM9200-EK Evaluation Kit.
 	  <http://www.atmel.com/dyn/products/tools_card.asp?tool_id=3507>
diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index c430498ff..7193b8690 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -10,7 +10,6 @@ obj-$(CONFIG_AT91_BOOTSTRAP)	+= bootstrap.o
 
 lwl-$(CONFIG_AT91SAM926X_LWL)	+= at91sam926x_lowlevel_init.o
 
-lwl-$(CONFIG_AT91RM9200_LWL)	+= at91rm9200_lowlevel_init.o
 lwl-$(CONFIG_AT91SAM9260_LWL)	+= at91sam9260_lowlevel_init.o
 lwl-$(CONFIG_AT91SAM9263_LWL)	+= at91sam9263_lowlevel_init.o
 
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
