Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rpgoz-0004cp-9G
 for barebox@lists.infradead.org; Tue, 24 Jan 2012 13:54:04 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Tue, 24 Jan 2012 14:53:47 +0100
Message-Id: <1327413231-17495-2-git-send-email-w.sang@pengutronix.de>
In-Reply-To: <1327413231-17495-1-git-send-email-w.sang@pengutronix.de>
References: <1327413231-17495-1-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH 1/5] net: fec_imx: small cleanups
To: barebox@lists.infradead.org

remove double include, remove unused (and double in case of RCNTRL)
defines, sort the includes at least somewhat.

Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---
 drivers/net/fec_imx.c |    8 ++++----
 drivers/net/fec_imx.h |   14 --------------
 2 files changed, 4 insertions(+), 18 deletions(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index ae63fdc..1101dad 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -22,21 +22,21 @@
 #include <malloc.h>
 #include <net.h>
 #include <init.h>
-#include <miidev.h>
 #include <driver.h>
 #include <miidev.h>
 #include <fec.h>
+#include <io.h>
+#include <clock.h>
+#include <xfuncs.h>
 
 #include <asm/mmu.h>
-#include <io.h>
+
 #include <mach/generic.h>
 #include <mach/imx-regs.h>
-#include <clock.h>
 #include <mach/clock.h>
 #ifndef CONFIG_ARCH_MXS
 # include <mach/iim.h>
 #endif
-#include <xfuncs.h>
 
 #include "fec_imx.h"
 
diff --git a/drivers/net/fec_imx.h b/drivers/net/fec_imx.h
index 19f4709..b75b4d6 100644
--- a/drivers/net/fec_imx.h
+++ b/drivers/net/fec_imx.h
@@ -94,20 +94,6 @@
 #define FEC_IMASK_COL_RETRY_LIM         0x00100000
 #define FEC_IMASK_XFIFO_UN              0x00080000
 
-#define FEC_RCNTRL_MAX_FL_SHIFT         16
-#define FEC_RCNTRL_LOOP                 0x01
-#define FEC_RCNTRL_DRT                  0x02
-#define FEC_RCNTRL_MII_MODE             0x04
-#define FEC_RCNTRL_PROM                 0x08
-#define FEC_RCNTRL_BC_REJ               0x10
-#define FEC_RCNTRL_FCE                  0x20
-
-#define FEC_TCNTRL_GTS                  0x00000001
-#define FEC_TCNTRL_HBC                  0x00000002
-#define FEC_TCNTRL_FDEN                 0x00000004
-#define FEC_TCNTRL_TFC_PAUSE            0x00000008
-#define FEC_TCNTRL_RFC_PAUSE            0x00000010
-
 #define FEC_ECNTRL_RESET                0x00000001	/**< reset the FEC */
 #define FEC_ECNTRL_ETHER_EN             0x00000002	/**< enable the FEC */
 
-- 
1.7.8.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
