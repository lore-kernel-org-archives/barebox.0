Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dTS93-0007Hp-2Z
 for barebox@lists.infradead.org; Fri, 07 Jul 2017 12:14:05 +0000
From: Sam Ravnborg <sam@ravnborg.org>
Date: Fri,  7 Jul 2017 14:12:36 +0200
Message-Id: <20170707121242.18499-17-sam@ravnborg.org>
In-Reply-To: <20170707121000.GA16920@ravnborg.org>
References: <20170707121000.GA16920@ravnborg.org>
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
Subject: [PATCH 17/23] at91rm9200ek: move reset vector to board code
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

Include deletion of now unused at91rm9200_lowlevel_init.c
and related CONFIG symbols

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 arch/arm/boards/at91rm9200ek/Makefile                    |  1 +
 .../at91rm9200ek/lowlevel.c}                             | 16 ++++++++--------
 arch/arm/mach-at91/Kconfig                               |  3 ---
 arch/arm/mach-at91/Makefile                              |  1 -
 4 files changed, 9 insertions(+), 12 deletions(-)
 rename arch/arm/{mach-at91/at91rm9200_lowlevel_init.c => boards/at91rm9200ek/lowlevel.c} (97%)

diff --git a/arch/arm/boards/at91rm9200ek/Makefile b/arch/arm/boards/at91rm9200ek/Makefile
index dec1c5045..b2d865e5d 100644
--- a/arch/arm/boards/at91rm9200ek/Makefile
+++ b/arch/arm/boards/at91rm9200ek/Makefile
@@ -1,2 +1,3 @@
 obj-y += init.o
+lwl-y += lowlevel.o
 bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-at91rm9200ek
diff --git a/arch/arm/mach-at91/at91rm9200_lowlevel_init.c b/arch/arm/boards/at91rm9200ek/lowlevel.c
similarity index 97%
rename from arch/arm/mach-at91/at91rm9200_lowlevel_init.c
rename to arch/arm/boards/at91rm9200ek/lowlevel.c
index f78e36808..d96ef5a6d 100644
--- a/arch/arm/mach-at91/at91rm9200_lowlevel_init.c
+++ b/arch/arm/boards/at91rm9200ek/lowlevel.c
@@ -4,19 +4,19 @@
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
+//#include <mach/io.h>
+//#include <init.h>
 
 void static inline access_sdram(void)
 {
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index cf59f0ce4..14cfa4759 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -39,8 +39,6 @@ config AT91SAM9260_LWL
 	bool
 config AT91SAM9G45_LWL
 	bool
-config AT91RM9200_LWL
-	bool
 
 config AT91SAM9_SMC
 	bool
@@ -243,7 +241,6 @@ choice
 config MACH_AT91RM9200EK
 	bool "Atmel AT91RM9200-EK Evaluation Kit"
 	select HAVE_AT91_DATAFLASH_CARD
-	select AT91RM9200_LWL
 	help
 	  Select this if you are using Atmel's AT91RM9200-EK Evaluation Kit.
 	  <http://www.atmel.com/dyn/products/tools_card.asp?tool_id=3507>
diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index 89a88bf03..b853d9f02 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -10,7 +10,6 @@ obj-$(CONFIG_AT91_BOOTSTRAP) += bootstrap.o
 
 lwl-$(CONFIG_AT91SAM9260_LWL) += at91sam9260_lowlevel_init.o
 lwl-$(CONFIG_AT91SAM9G45_LWL) += at91sam9g45_lowlevel_init.o
-lwl-$(CONFIG_AT91RM9200_LWL) += at91rm9200_lowlevel_init.o
 
 obj-$(CONFIG_AT91SAM9_RESET) += at91sam9_reset.o
 obj-$(CONFIG_AT91SAM9G45_RESET) += at91sam9g45_reset.o
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
