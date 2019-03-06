Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h1T4b-0006wS-SL
 for barebox@lists.infradead.org; Wed, 06 Mar 2019 09:42:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  6 Mar 2019 10:42:35 +0100
Message-Id: <20190306094239.29413-2-s.hauer@pengutronix.de>
In-Reply-To: <20190306094239.29413-1-s.hauer@pengutronix.de>
References: <20190306094239.29413-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/5] ARM: rpi: Move UART base address definitions to header
 file
To: Barebox List <barebox@lists.infradead.org>

Move defines to header file to make them reusable.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/raspberry-pi/rpi-common.c     | 5 +----
 arch/arm/mach-bcm283x/include/mach/platform.h | 4 ++++
 2 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index 9d334cde12..60cea7f8e9 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -34,6 +34,7 @@
 
 #include <mach/core.h>
 #include <mach/mbox.h>
+#include <mach/platform.h>
 
 #include "rpi.h"
 #include "lowlevel.h"
@@ -320,10 +321,6 @@ static int rpi_clock_init(void)
 }
 postconsole_initcall(rpi_clock_init);
 
-#define BCM2835_PL011_BASE 0x20201000
-#define BCM2836_PL011_BASE 0x3f201000
-#define BCM2836_MINIUART_BASE 0x3f215040
-
 static int rpi_console_clock_init(void)
 {
 	struct clk *clk;
diff --git a/arch/arm/mach-bcm283x/include/mach/platform.h b/arch/arm/mach-bcm283x/include/mach/platform.h
index 80b529a46f..d8561c1610 100644
--- a/arch/arm/mach-bcm283x/include/mach/platform.h
+++ b/arch/arm/mach-bcm283x/include/mach/platform.h
@@ -30,6 +30,10 @@
 
 #define BCM2835_CACHELINE_SIZE	64
 
+#define BCM2835_PL011_BASE 0x20201000
+#define BCM2836_PL011_BASE 0x3f201000
+#define BCM2836_MINIUART_BASE 0x3f215040
+
 #endif
 
 /* END */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
