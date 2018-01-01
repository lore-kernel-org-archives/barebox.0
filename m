Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eW0wS-0004dR-Qd
 for barebox@lists.infradead.org; Mon, 01 Jan 2018 14:19:55 +0000
From: Sam Ravnborg <sam@ravnborg.org>
Date: Mon,  1 Jan 2018 15:19:32 +0100
Message-Id: <20180101141939.20606-2-sam@ravnborg.org>
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
Subject: [PATCH 18/25] at91sam9n12ek: move reset vector to board code
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

Delete the unused at91sam9n12_lowlevel_init.c
Create new lowlevel.c that contains the reset vector.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 arch/arm/boards/at91sam9n12ek/Makefile                      |  3 +++
 .../at91sam9n12ek/lowlevel.c}                               | 13 +++++--------
 arch/arm/mach-at91/Kconfig                                  |  3 ---
 arch/arm/mach-at91/Makefile                                 |  1 -
 4 files changed, 8 insertions(+), 12 deletions(-)
 rename arch/arm/{mach-at91/at91sam9n12_lowlevel_init.c => boards/at91sam9n12ek/lowlevel.c} (84%)

diff --git a/arch/arm/boards/at91sam9n12ek/Makefile b/arch/arm/boards/at91sam9n12ek/Makefile
index f5d125a0e..458b05591 100644
--- a/arch/arm/boards/at91sam9n12ek/Makefile
+++ b/arch/arm/boards/at91sam9n12ek/Makefile
@@ -1,2 +1,5 @@
 obj-y += init.o
+
+lwl-y += lowlevel.o
+
 bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-at91sam9n12ek
diff --git a/arch/arm/mach-at91/at91sam9n12_lowlevel_init.c b/arch/arm/boards/at91sam9n12ek/lowlevel.c
similarity index 84%
rename from arch/arm/mach-at91/at91sam9n12_lowlevel_init.c
rename to arch/arm/boards/at91sam9n12ek/lowlevel.c
index 2b5cb158b..3c5234eb5 100644
--- a/arch/arm/mach-at91/at91sam9n12_lowlevel_init.c
+++ b/arch/arm/boards/at91sam9n12ek/lowlevel.c
@@ -4,17 +4,14 @@
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
-#include <mach/io.h>
+#include <asm/barebox-arm.h>
+
 #include <mach/at91sam9_ddrsdr.h>
-#include <init.h>
-#include <linux/sizes.h>
+#include <mach/hardware.h>
 
 void __naked __bare_init barebox_arm_reset_vector(void)
 {
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 991600fe4..94d85dbcf 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -49,8 +49,6 @@ config AT91SAM9263_LWL
 	bool
 config AT91SAM9G45_LWL
 	bool
-config AT91SAM9N12_LWL
-	bool
 config AT91RM9200_LWL
 	bool
 
@@ -501,7 +499,6 @@ choice
 
 config MACH_AT91SAM9N12EK
 	bool "Atmel AT91SAM9N12 Evaluation Kit"
-	select AT91SAM9N12_LWL
 	help
 	  Select this if you are using Atmel's AT91SAM9N12-EK Evaluation Kit.
 
diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index cb8dade6d..b51f1873b 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -14,7 +14,6 @@ lwl-$(CONFIG_AT91RM9200_LWL)	+= at91rm9200_lowlevel_init.o
 lwl-$(CONFIG_AT91SAM9260_LWL)	+= at91sam9260_lowlevel_init.o
 lwl-$(CONFIG_AT91SAM9263_LWL)	+= at91sam9263_lowlevel_init.o
 lwl-$(CONFIG_AT91SAM9G45_LWL)	+= at91sam9g45_lowlevel_init.o
-lwl-$(CONFIG_AT91SAM9N12_LWL)	+= at91sam9n12_lowlevel_init.o
 
 obj-$(CONFIG_AT91SAM9_RESET) += at91sam9_reset.o
 obj-$(CONFIG_AT91SAM9G45_RESET) += at91sam9g45_reset.o
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
