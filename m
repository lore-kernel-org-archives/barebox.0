Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ShepE-00014X-Cm
 for barebox@lists.infradead.org; Thu, 21 Jun 2012 10:41:21 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Thu, 21 Jun 2012 12:41:16 +0200
Message-Id: <1340275276-24051-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH] mtd nand: mxs: add missing include for mxs_reset_block
To: sha@pengutronix.de
Cc: barebox@lists.infradead.org

This patch fixes this warning:

drivers/mtd/nand/nand_mxs.c: In function 'mxs_nand_scan_bbt':
drivers/mtd/nand/nand_mxs.c:1043:2: warning:
implicit declaration of function 'mxs_reset_block'
[-Wimplicit-function-declaration]

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
...applied to current next.

Marc

 drivers/mtd/nand/nand_mxs.c |    1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index 8964436..ba49287 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -31,6 +31,7 @@
 #include <mach/clock.h>
 #include <mach/imx-regs.h>
 #include <mach/dma.h>
+#include <mach/mxs.h>
 
 #define	MX28_BLOCK_SFTRST				(1 << 31)
 #define	MX28_BLOCK_CLKGATE				(1 << 30)
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
