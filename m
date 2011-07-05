Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qe06y-0007D0-S7
	for barebox@lists.infradead.org; Tue, 05 Jul 2011 07:32:03 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  5 Jul 2011 09:31:53 +0200
Message-Id: <1309851114-2069-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1309851114-2069-1-git-send-email-s.hauer@pengutronix.de>
References: <1309851114-2069-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] MCI imx-esdhc: Fix multiblock transfers on i.MX53
To: barebox@lists.infradead.org

In the Kernel this bug is described like this:

> The CMDTYPE of the CMD register (offset 0xE) should be set to
> "11" when the STOP CMD12 is issued on imx53 to abort one
> open ended multi-blk IO. Otherwise the TC INT wouldn't
> be generated.
> In exact block transfer, the controller doesn't complete the
> operations automatically as required at the end of the
> transfer and remains on hold if the abort command is not sent.
> As a result, the TC flag is not asserted and SW  received timeout
> exeception. Bit1 of Vendor Spec registor is used to fix it.

We do not use exact block transfers in barebox, so we only need
the first part of this fix.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/imx-esdhc.c |   21 +++++++++++++--------
 1 files changed, 13 insertions(+), 8 deletions(-)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 7595a93..27ec4ed 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -35,6 +35,7 @@
 #include <asm/io.h>
 #include <asm/mmu.h>
 #include <mach/clock.h>
+#include <mach/generic.h>
 
 #include "imx-esdhc.h"
 
@@ -75,6 +76,8 @@ struct fsl_esdhc_host {
 
 #define to_fsl_esdhc(mci)	container_of(mci, struct fsl_esdhc_host, mci)
 
+#define  SDHCI_CMD_ABORTCMD (0xC0 << 16)
+
 /* Return the XFERTYP flags for a given command and data packet */
 u32 esdhc_xfertyp(struct mci_cmd *cmd, struct mci_data *data)
 {
@@ -104,6 +107,8 @@ u32 esdhc_xfertyp(struct mci_cmd *cmd, struct mci_data *data)
 		xfertyp |= XFERTYP_RSPTYP_48_BUSY;
 	else if (cmd->resp_type & MMC_RSP_PRESENT)
 		xfertyp |= XFERTYP_RSPTYP_48;
+	if (cpu_is_mx53() && cmd->cmdidx == MMC_CMD_STOP_TRANSMISSION)
+		xfertyp |= SDHCI_CMD_ABORTCMD;
 
 	return XFERTYP_CMD(cmd->cmdidx) | xfertyp;
 }
@@ -233,14 +238,6 @@ esdhc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 
 	esdhc_write32(&regs->irqstat, -1);
 
-	/* Wait for the bus to be idle */
-	while ((esdhc_read32(&regs->prsstat) & PRSSTAT_CICHB) ||
-			(esdhc_read32(&regs->prsstat) & PRSSTAT_CIDHB))
-		;
-
-	while (esdhc_read32(&regs->prsstat) & PRSSTAT_DLA)
-		;
-
 	/* Wait at least 8 SD clock cycles before the next command */
 	/*
 	 * Note: This is way more than 8 cycles, but 1ms seems to
@@ -324,6 +321,14 @@ esdhc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 
 	esdhc_write32(&regs->irqstat, -1);
 
+	/* Wait for the bus to be idle */
+	while ((esdhc_read32(&regs->prsstat) & PRSSTAT_CICHB) ||
+			(esdhc_read32(&regs->prsstat) & PRSSTAT_CIDHB))
+		;
+
+	while (esdhc_read32(&regs->prsstat) & PRSSTAT_DLA)
+		;
+
 	return 0;
 }
 
-- 
1.7.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
