Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l2YAE-0001lj-JZ
 for barebox@lists.infradead.org; Thu, 21 Jan 2021 11:30:14 +0000
From: Steffen Trumtrar <str@pengutronix.de>
Date: Thu, 21 Jan 2021 12:29:57 +0100
Message-Id: <20210121112958.25937-12-str@pengutronix.de>
In-Reply-To: <20210121112958.25937-1-str@pengutronix.de>
References: <20210121112958.25937-1-str@pengutronix.de>
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
Subject: [PATCH 12/13] drivers: firmware: socfpga: remove bridges shutdown
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

From: Steffen Trumtrar <s.trumtrar@pengutronix.de>

The bridges are now handled via the bridges driver. There is no
need to hardcode the memory writes anymore.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/firmware/socfpga.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/firmware/socfpga.c b/drivers/firmware/socfpga.c
index 605c931604..eb3fc557c7 100644
--- a/drivers/firmware/socfpga.c
+++ b/drivers/firmware/socfpga.c
@@ -294,15 +294,6 @@ static int socfpga_fpgamgr_program_start(struct firmware_handler *fh)
 	/* disable all signals from hps peripheral controller to fpga */
 	writel(0, SYSMGR_FPGAINTF_MODULE);
 
-	/* disable all signals from fpga to hps sdram */
-	writel(0, (CYCLONE5_SDR_ADDRESS + SDR_CTRLGRP_FPGAPORTRST_ADDRESS));
-
-	/* disable all axi bridge (hps2fpga, lwhps2fpga & fpga2hps) */
-	writel(~0, CYCLONE5_RSTMGR_ADDRESS + RESET_MGR_BRG_MOD_RESET_OFS);
-
-	/* unmap the bridges from NIC-301 */
-	writel(0x1, CYCLONE5_L3REGS_ADDRESS);
-
 	dev_dbg(&mgr->dev, "start programming...\n");
 
 	/* initialize the FPGA Manager */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
