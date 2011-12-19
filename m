Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp6-g21.free.fr ([2a01:e0c:1:1599::15])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RckMh-0008Ub-TI
 for barebox@lists.infradead.org; Mon, 19 Dec 2011 21:03:22 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Mon, 19 Dec 2011 22:03:05 +0100
Message-Id: <1324328585-30806-1-git-send-email-robert.jarzmik@free.fr>
In-Reply-To: <20111219111424.GM27267@pengutronix.de>
References: <20111219111424.GM27267@pengutronix.de>
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
Subject: [PATCH] drivers/mci: pxa fix clockrate
To: barebox@lists.infradead.org

The clock rate was incorrectly calculated, leading to a
frequency of 19.5MHz / 64 instead of 19.5Mz for the host
controller.

with the fix applied, a copy of a file of 230 kB shrinks
from 6000ms to 123ms.

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 drivers/mci/pxamci.c |   14 +++++++++-----
 1 files changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/mci/pxamci.c b/drivers/mci/pxamci.c
index 1634a1d..75b61f0 100644
--- a/drivers/mci/pxamci.c
+++ b/drivers/mci/pxamci.c
@@ -161,7 +161,8 @@ static int pxamci_transfer_data(struct pxamci_host *host,
 static void pxamci_start_cmd(struct pxamci_host *host, struct mci_cmd *cmd,
 			     unsigned int cmdat)
 {
-	mci_dbg("cmd=(idx=%d,type=%d)\n", cmd->cmdidx, cmd->resp_type);
+	mci_dbg("cmd=(idx=%d,type=%d,clkrt=%d)\n", cmd->cmdidx, cmd->resp_type,
+		host->clkrt);
 	if (cmd->resp_type & MMC_RSP_BUSY)
 		cmdat |= CMDAT_BUSY;
 
@@ -277,11 +278,14 @@ static void pxamci_set_ios(struct mci_host *mci, struct device_d *dev,
 {
 	struct pxamci_host *host = to_pxamci(mci);
 	unsigned int clk_in = pxa_get_mmcclk();
-	unsigned long fact;
+	int fact;
 
-	mci_dbg("bus_width=%d, clock=%ud\n", bus_width, clock);
-	fact = min_t(int, clock / clk_in, 1);
-	fact = max_t(int, fact, 1 << 6);
+	mci_dbg("bus_width=%d, clock=%u\n", bus_width, clock);
+	if (clock)
+		fact = min_t(int, clk_in / clock, 1 << 6);
+	else
+		fact = 1 << 6;
+	fact = max_t(int, fact, 1);
 
 	/*
 	 * We calculate clkrt here, and will write it on the next command
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
