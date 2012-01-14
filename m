Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo3.mail-out.ovh.net ([87.98.178.36]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Rm4xG-0003Po-CJ
 for barebox@lists.infradead.org; Sat, 14 Jan 2012 14:51:40 +0000
Received: from mail617.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 4D3471008F38
 for <barebox@lists.infradead.org>; Sat, 14 Jan 2012 15:53:03 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 14 Jan 2012 15:51:05 +0100
Message-Id: <1326552668-8859-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/4] omap3: move platform lowlevel init to mach-omap
To: barebox@lists.infradead.org

this will allow to switch omap3 to standard organisation

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/omap/Makefile                      |    1 -
 arch/arm/boards/omap/board-beagle.c                |    4 ++--
 arch/arm/boards/omap/board-omap3evm.c              |    4 ++--
 arch/arm/boards/omap/board-sdp343x.c               |    4 ++--
 arch/arm/mach-omap/Kconfig                         |    4 ++++
 arch/arm/mach-omap/Makefile                        |    1 +
 .../omap => mach-omap/include/mach}/board.h        |    2 +-
 .../omap/platform.S => mach-omap/omap3_platform.S} |    2 +-
 8 files changed, 13 insertions(+), 9 deletions(-)
 rename arch/arm/{boards/omap => mach-omap/include/mach}/board.h (97%)
 rename arch/arm/{boards/omap/platform.S => mach-omap/omap3_platform.S} (99%)

diff --git a/arch/arm/boards/omap/Makefile b/arch/arm/boards/omap/Makefile
index 8e0418c..8cd9105 100644
--- a/arch/arm/boards/omap/Makefile
+++ b/arch/arm/boards/omap/Makefile
@@ -20,7 +20,6 @@
 # Foundation, Inc., 59 Temple Place, Suite 330, Boston,
 # MA 02111-1307 USA
 
-obj-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += platform.o
 obj-$(CONFIG_MACH_OMAP343xSDP) += board-sdp343x.o
 obj-$(CONFIG_MACH_BEAGLE) += board-beagle.o
 obj-$(CONFIG_MACH_OMAP3EVM) += board-omap3evm.o
diff --git a/arch/arm/boards/omap/board-beagle.c b/arch/arm/boards/omap/board-beagle.c
index 9f0acad..0be3ff2 100644
--- a/arch/arm/boards/omap/board-beagle.c
+++ b/arch/arm/boards/omap/board-beagle.c
@@ -74,7 +74,7 @@
 #include <linux/err.h>
 #include <usb/ehci.h>
 #include <mach/xload.h>
-#include "board.h"
+#include <mach/board.h>
 
 /******************** Board Boot Time *******************/
 
@@ -221,7 +221,7 @@ static void mux_config(void)
  *
  * @return void
  */
-void board_init(void)
+void omap3_board_init(void)
 {
 	int in_sdram = running_in_sdram();
 
diff --git a/arch/arm/boards/omap/board-omap3evm.c b/arch/arm/boards/omap/board-omap3evm.c
index 9e292d2..e286209 100644
--- a/arch/arm/boards/omap/board-omap3evm.c
+++ b/arch/arm/boards/omap/board-omap3evm.c
@@ -59,8 +59,8 @@
 #include <mach/control.h>
 #include <mach/omap3-mux.h>
 #include <mach/gpmc.h>
+#include <mach/board.h>
 #include <errno.h>
-#include "board.h"
 
 
 /*
@@ -196,7 +196,7 @@ static void mux_config(void)
  *
  * @return void
  */
-void board_init(void)
+void omap3_board_init(void)
 {
 	int in_sdram = running_in_sdram();
 
diff --git a/arch/arm/boards/omap/board-sdp343x.c b/arch/arm/boards/omap/board-sdp343x.c
index 73aefb2..e9fc36d 100644
--- a/arch/arm/boards/omap/board-sdp343x.c
+++ b/arch/arm/boards/omap/board-sdp343x.c
@@ -61,8 +61,8 @@
 #include <mach/control.h>
 #include <mach/omap3-mux.h>
 #include <mach/gpmc.h>
+#include <mach/board.h>
 #include <errno.h>
-#include "board.h"
 
 /******************** Board Boot Time *******************/
 static void sdrc_init(void);
@@ -77,7 +77,7 @@ static void mux_config(void);
  *
  * @return void
  */
-void board_init(void)
+void omap3_board_init(void)
 {
 	int in_sdram = running_in_sdram();
 	mux_config();
diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index 72c6850..c370827 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -26,6 +26,9 @@ menu "OMAP Features"
 config MACH_OMAP
 	bool
 
+config OMAP3_LOWLEVEL_INIT
+	bool
+
 choice
 	prompt "Select OMAP Variant"
 
@@ -33,6 +36,7 @@ config ARCH_OMAP3
 	bool "OMAP3"
 	select CPU_V7
 	select GENERIC_GPIO
+	select OMAP3_LOWLEVEL_INIT
 	select ARCH_HAS_LOWLEVEL_INIT
 	select OMAP_CLOCK_SOURCE_S32K
 	help
diff --git a/arch/arm/mach-omap/Makefile b/arch/arm/mach-omap/Makefile
index 9bd2b62..f8d9abd 100644
--- a/arch/arm/mach-omap/Makefile
+++ b/arch/arm/mach-omap/Makefile
@@ -20,6 +20,7 @@
 # MA 02111-1307 USA
 #
 obj-$(CONFIG_ARCH_OMAP) += syslib.o
+obj-$(CONFIG_OMAP3_LOWLEVEL_INIT) += omap3_platform.o
 obj-$(CONFIG_OMAP_CLOCK_SOURCE_S32K) += s32k_clksource.o
 obj-$(CONFIG_ARCH_OMAP3) += omap3_core.o omap3_generic.o
 obj-$(CONFIG_ARCH_OMAP4) += omap4_generic.o omap4_clock.o
diff --git a/arch/arm/boards/omap/board.h b/arch/arm/mach-omap/include/mach/board.h
similarity index 97%
rename from arch/arm/boards/omap/board.h
rename to arch/arm/mach-omap/include/mach/board.h
index cf231a2..2216bb8 100644
--- a/arch/arm/boards/omap/board.h
+++ b/arch/arm/mach-omap/include/mach/board.h
@@ -30,6 +30,6 @@
 #define __BOARD_OMAP_H_
 
 /** Generic Board initialization called from platform.S */
-void board_init(void);
+void omap3_board_init(void);
 
 #endif         /* __BOARD_OMAP_H_ */
diff --git a/arch/arm/boards/omap/platform.S b/arch/arm/mach-omap/omap3_platform.S
similarity index 99%
rename from arch/arm/boards/omap/platform.S
rename to arch/arm/mach-omap/omap3_platform.S
index 77b7eed..2b8b51b 100644
--- a/arch/arm/boards/omap/platform.S
+++ b/arch/arm/mach-omap/omap3_platform.S
@@ -54,7 +54,7 @@ board_init_lowlevel:
         str     lr,	[sp]    /* stash current link register */
 	mov	ip,	lr	/* save link reg across call */
 	/* Do the pin muxes, sdram init etc..board-xxx.c */
-	bl	board_init
+	bl	omap3_board_init
         ldr     lr,	[sp]    /* restore current link register */
         ldr     ip,	[sp]    /* restore save ip */
 	/* back to arch calling code */
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
