Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uwt4c-0001nl-3P
 for barebox@lists.infradead.org; Wed, 10 Jul 2013 12:00:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 10 Jul 2013 13:59:59 +0200
Message-Id: <1373457601-7225-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1373457601-7225-1-git-send-email-s.hauer@pengutronix.de>
References: <1373457601-7225-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/11] mtd: nand: gpmi: cleanup includes
To: barebox@lists.infradead.org

remove unused includes and use <io.h> instead of <asm/io.h>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_mxs.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index 52a4959..0611d7a 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -28,12 +28,10 @@
 #include <errno.h>
 #include <driver.h>
 #include <init.h>
+#include <io.h>
 #include <dma/apbh-dma.h>
 #include <stmp-device.h>
 #include <asm/mmu.h>
-#include <asm/io.h>
-#include <mach/clock.h>
-#include <mach/imx-regs.h>
 
 #define	MX28_BLOCK_SFTRST				(1 << 31)
 #define	MX28_BLOCK_CLKGATE				(1 << 30)
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
