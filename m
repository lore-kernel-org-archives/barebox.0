Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dTS98-0007Hv-2v
 for barebox@lists.infradead.org; Fri, 07 Jul 2017 12:14:12 +0000
From: Sam Ravnborg <sam@ravnborg.org>
Date: Fri,  7 Jul 2017 14:12:38 +0200
Message-Id: <20170707121242.18499-19-sam@ravnborg.org>
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
Subject: [PATCH 19/23] pm9g45: move reset vector to board code
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

Include deletion of now unused at91sam9g45_lowlevel_init.c
and related CONFIG symbols

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 arch/arm/boards/pm9g45/Makefile                             |  1 +
 .../pm9g45/lowlevel.c}                                      | 13 +++++--------
 arch/arm/mach-at91/Kconfig                                  |  3 ---
 arch/arm/mach-at91/Makefile                                 |  1 -
 4 files changed, 6 insertions(+), 12 deletions(-)
 rename arch/arm/{mach-at91/at91sam9g45_lowlevel_init.c => boards/pm9g45/lowlevel.c} (84%)

diff --git a/arch/arm/boards/pm9g45/Makefile b/arch/arm/boards/pm9g45/Makefile
index d81b1881b..bd47d837b 100644
--- a/arch/arm/boards/pm9g45/Makefile
+++ b/arch/arm/boards/pm9g45/Makefile
@@ -1,2 +1,3 @@
 obj-y += init.o
+lwl-y += lowlevel.o
 bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-pm9g45
diff --git a/arch/arm/mach-at91/at91sam9g45_lowlevel_init.c b/arch/arm/boards/pm9g45/lowlevel.c
similarity index 84%
rename from arch/arm/mach-at91/at91sam9g45_lowlevel_init.c
rename to arch/arm/boards/pm9g45/lowlevel.c
index 2cdb7a6a5..182b9ea7d 100644
--- a/arch/arm/mach-at91/at91sam9g45_lowlevel_init.c
+++ b/arch/arm/boards/pm9g45/lowlevel.c
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
index 4ce4e6078..bae049726 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -37,8 +37,6 @@ config HAVE_AT91_BOOTSTRAP
 # as implemented in the *lowlevel_init.c files
 config AT91SAM9260_LWL
 	bool
-config AT91SAM9G45_LWL
-	bool
 
 config AT91SAM9_SMC
 	bool
@@ -459,7 +457,6 @@ config MACH_AT91SAM9M10G45EK
 
 config MACH_PM9G45
 	bool "Ronetix PM9G45"
-	select AT91SAM9G45_LWL
 	help
 	  Say y here if you are using the Ronetix PM9G45 Board
 
diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index b853d9f02..af41802cf 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -9,7 +9,6 @@ obj-$(CONFIG_CMD_AT91_BOOT_TEST) += boot_test_cmd.o
 obj-$(CONFIG_AT91_BOOTSTRAP) += bootstrap.o
 
 lwl-$(CONFIG_AT91SAM9260_LWL) += at91sam9260_lowlevel_init.o
-lwl-$(CONFIG_AT91SAM9G45_LWL) += at91sam9g45_lowlevel_init.o
 
 obj-$(CONFIG_AT91SAM9_RESET) += at91sam9_reset.o
 obj-$(CONFIG_AT91SAM9G45_RESET) += at91sam9g45_reset.o
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
