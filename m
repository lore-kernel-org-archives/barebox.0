Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uwt4N-0001jj-BU
 for barebox@lists.infradead.org; Wed, 10 Jul 2013 12:00:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 10 Jul 2013 13:59:57 +0200
Message-Id: <1373457601-7225-8-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/11] dma: apbh: cleanup includes
To: barebox@lists.infradead.org

Several includes are unused, remove them.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/dma/apbh_dma.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/dma/apbh_dma.c b/drivers/dma/apbh_dma.c
index 89948bc..665d394 100644
--- a/drivers/dma/apbh_dma.c
+++ b/drivers/dma/apbh_dma.c
@@ -15,19 +15,17 @@
  * (at your option) any later version.
  */
 
+#include <dma/apbh-dma.h>
+#include <stmp-device.h>
 #include <linux/list.h>
-
 #include <common.h>
 #include <driver.h>
-#include <init.h>
 #include <malloc.h>
 #include <errno.h>
-#include <dma/apbh-dma.h>
-#include <stmp-device.h>
+#include <init.h>
+#include <io.h>
+
 #include <asm/mmu.h>
-#include <asm/io.h>
-#include <mach/clock.h>
-#include <mach/imx-regs.h>
 
 #define HW_APBHX_CTRL0				0x000
 #define BM_APBH_CTRL0_APB_BURST8_EN		(1 << 29)
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
