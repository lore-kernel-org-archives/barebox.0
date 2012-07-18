Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.co.uk ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SrTVY-0001Rg-LH
 for barebox@lists.infradead.org; Wed, 18 Jul 2012 12:37:41 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 7239DBF0E8
 for <barebox@lists.infradead.org>; Wed, 18 Jul 2012 14:37:20 +0200 (CEST)
From: Jan Weitzel <j.weitzel@phytec.de>
Date: Wed, 18 Jul 2012 14:37:12 +0200
Message-Id: <1342615033-3232-3-git-send-email-j.weitzel@phytec.de>
In-Reply-To: <1342615033-3232-1-git-send-email-j.weitzel@phytec.de>
References: <1342615033-3232-1-git-send-email-j.weitzel@phytec.de>
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
Subject: [PATCH 2/3] gpmc: Add reset to gpmc_generic_init
To: barebox@lists.infradead.org

Add reset to gpmc_generic_init as proposed by TRM.
This also fixes some strange timing issue while GPMC Initialization for
NAND OMAP4460

Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
---
 arch/arm/mach-omap/gpmc.c |   10 +++++++++-
 1 files changed, 9 insertions(+), 1 deletions(-)

diff --git a/arch/arm/mach-omap/gpmc.c b/arch/arm/mach-omap/gpmc.c
index 399f68a..4649a1d 100644
--- a/arch/arm/mach-omap/gpmc.c
+++ b/arch/arm/mach-omap/gpmc.c
@@ -28,6 +28,7 @@
  * MA 02111-1307 USA
  */
 #include <common.h>
+#include <clock.h>
 #include <init.h>
 #include <io.h>
 #include <mach/silicon.h>
@@ -48,13 +49,20 @@
  */
 void gpmc_generic_init(unsigned int cfg)
 {
+	uint64_t start;
 	unsigned int reg = GPMC_REG(CONFIG7_0);
 	char x = 0;
 
 	debug("gpmccfg=%x\n", cfg);
 	/* Generic Configurations */
+	/* reset gpmc */
+	start = get_time_ns();
 	/* No idle, L3 clock free running */
-	writel(0x10, GPMC_REG(SYS_CONFIG));
+	writel(0x12, GPMC_REG(SYS_CONFIG));
+	while (!readl(GPMC_REG(SYS_STATUS)))
+		if (is_timeout(start, MSECOND))
+			printf("timeout on gpmc reset\n");
+
 	/* No Timeout */
 	writel(0x00, GPMC_REG(TIMEOUT_CONTROL));
 	/* No IRQs */
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
