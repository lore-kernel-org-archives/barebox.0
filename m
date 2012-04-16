Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp6-g21.free.fr ([2a01:e0c:1:1599::15])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SJru1-0001tZ-Lp
 for barebox@lists.infradead.org; Mon, 16 Apr 2012 19:47:58 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Mon, 16 Apr 2012 21:47:17 +0200
Message-Id: <1334605638-23095-6-git-send-email-robert.jarzmik@free.fr>
In-Reply-To: <1334605638-23095-1-git-send-email-robert.jarzmik@free.fr>
References: <1334605638-23095-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH 5/6] mci: pxamci fix R1b responses
To: barebox@lists.infradead.org

The pxamci driver was not waiting for the BUSY line to be
deasserted. This was specifically breaking the CMD12 at
the end of block multiple writes, when the SD card had not
time enough to commit the last write.

Fix it by waiting for PRG_DONE bit (which is actually the
busy signal end condition).

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 drivers/mci/pxamci.c |    8 ++++++--
 1 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/mci/pxamci.c b/drivers/mci/pxamci.c
index c51fb77..9665196 100644
--- a/drivers/mci/pxamci.c
+++ b/drivers/mci/pxamci.c
@@ -239,13 +239,17 @@ static int pxamci_cmd_response(struct pxamci_host *host, struct mci_cmd *cmd)
 static int pxamci_mmccmd(struct pxamci_host *host, struct mci_cmd *cmd,
 			 struct mci_data *data, unsigned int cmddat)
 {
-	int ret = 0;
+	int ret = 0, stat_mask;
 	uint64_t start;
 
 	pxamci_start_cmd(host, cmd, cmddat);
+
+	stat_mask = STAT_END_CMD_RES;
+	if (cmd->resp_type & MMC_RSP_BUSY)
+		stat_mask |= STAT_PRG_DONE;
 	for (start = get_time_ns(), ret = -ETIMEDOUT;
 	     ret && !is_timeout(start, CMD_TIMEOUT);)
-		if (mmc_readl(MMC_STAT) & STAT_END_CMD_RES)
+		if ((mmc_readl(MMC_STAT) & stat_mask) == stat_mask)
 			ret = 0;
 
 	if (!ret && data)
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
