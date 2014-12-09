Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XyQ4o-00086J-5t
 for barebox@lists.infradead.org; Tue, 09 Dec 2014 19:04:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  9 Dec 2014 20:03:27 +0100
Message-Id: <1418151816-24593-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1418151816-24593-1-git-send-email-s.hauer@pengutronix.de>
References: <1418151816-24593-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/13] drivers: remove unnecessary mach/imx-regs.h include
To: barebox@lists.infradead.org
Cc: Marek Vasut <marex@denx.de>

And replace the ones needed with the SoC specific header.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/mxs/clk-imx23.c   | 2 +-
 drivers/clk/mxs/clk-imx28.c   | 2 +-
 drivers/mci/mxs.c             | 1 -
 drivers/serial/serial_auart.c | 1 -
 drivers/serial/stm-serial.c   | 1 -
 drivers/spi/mxs_spi.c         | 1 -
 drivers/video/stm.c           | 1 -
 7 files changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/clk/mxs/clk-imx23.c b/drivers/clk/mxs/clk-imx23.c
index 1f84e9f..8bf27c1 100644
--- a/drivers/clk/mxs/clk-imx23.c
+++ b/drivers/clk/mxs/clk-imx23.c
@@ -22,7 +22,7 @@
 #include <io.h>
 #include <linux/clkdev.h>
 #include <linux/err.h>
-#include <mach/imx-regs.h>
+#include <mach/imx23-regs.h>
 
 #include "clk.h"
 
diff --git a/drivers/clk/mxs/clk-imx28.c b/drivers/clk/mxs/clk-imx28.c
index aa2924c..77a13bc 100644
--- a/drivers/clk/mxs/clk-imx28.c
+++ b/drivers/clk/mxs/clk-imx28.c
@@ -22,7 +22,7 @@
 #include <io.h>
 #include <linux/clkdev.h>
 #include <linux/err.h>
-#include <mach/imx-regs.h>
+#include <mach/imx28-regs.h>
 
 #include "clk.h"
 
diff --git a/drivers/mci/mxs.c b/drivers/mci/mxs.c
index d6565ca..367964c 100644
--- a/drivers/mci/mxs.c
+++ b/drivers/mci/mxs.c
@@ -40,7 +40,6 @@
 #include <linux/clk.h>
 #include <linux/err.h>
 #include <asm/bitops.h>
-#include <mach/imx-regs.h>
 #include <mach/mci.h>
 #include <mach/clock.h>
 #include <mach/ssp.h>
diff --git a/drivers/serial/serial_auart.c b/drivers/serial/serial_auart.c
index ae6c5b8..87b2e33 100644
--- a/drivers/serial/serial_auart.c
+++ b/drivers/serial/serial_auart.c
@@ -47,7 +47,6 @@
 #include <linux/err.h>
 
 #include <mach/clock.h>
-#include <mach/imx-regs.h>
 
 #define HW_UARTAPP_CTRL0		(0x00000000)
 
diff --git a/drivers/serial/stm-serial.c b/drivers/serial/stm-serial.c
index 39ff7ae..e5f57dc 100644
--- a/drivers/serial/stm-serial.c
+++ b/drivers/serial/stm-serial.c
@@ -31,7 +31,6 @@
 #include <malloc.h>
 #include <linux/clk.h>
 #include <linux/err.h>
-#include <mach/imx-regs.h>
 #include <mach/clock.h>
 
 #define UARTDBGDR 0x00
diff --git a/drivers/spi/mxs_spi.c b/drivers/spi/mxs_spi.c
index 9a35e09..8932103 100644
--- a/drivers/spi/mxs_spi.c
+++ b/drivers/spi/mxs_spi.c
@@ -25,7 +25,6 @@
 #include <linux/err.h>
 #include <asm/mmu.h>
 #include <mach/generic.h>
-#include <mach/imx-regs.h>
 #include <mach/clock.h>
 #include <mach/ssp.h>
 
diff --git a/drivers/video/stm.c b/drivers/video/stm.c
index 175e4b6..3c90c0d 100644
--- a/drivers/video/stm.c
+++ b/drivers/video/stm.c
@@ -27,7 +27,6 @@
 #include <stmp-device.h>
 #include <linux/clk.h>
 #include <linux/err.h>
-#include <mach/imx-regs.h>
 #include <mach/fb.h>
 
 #define HW_LCDIF_CTRL 0x00
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
