Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.tricorecenter.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SrTrO-0003os-FX
 for barebox@lists.infradead.org; Wed, 18 Jul 2012 13:00:23 +0000
From: Juergen Kilb <J.Kilb@phytec.de>
Date: Wed, 18 Jul 2012 14:58:45 +0200
Message-Id: <1342616327-2765-2-git-send-email-J.Kilb@phytec.de>
In-Reply-To: <1342616327-2765-1-git-send-email-J.Kilb@phytec.de>
References: <1342616327-2765-1-git-send-email-J.Kilb@phytec.de>
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
Subject: [PATCH] omap_hsmmc: Hack allert! Add delay in omap_hsmmc.
To: barebox@lists.infradead.org
Cc: Juergen Kilb <J.Kilb@phytec.de>

Most of the time, a SD card was not found during probing.
This hack fixed the problem.
Further investigation needed !!

Signed-off-by: Juergen Kilb <J.Kilb@phytec.de>
---
 drivers/mci/omap_hsmmc.c |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/drivers/mci/omap_hsmmc.c b/drivers/mci/omap_hsmmc.c
index e0b245b..125e8a4 100644
--- a/drivers/mci/omap_hsmmc.c
+++ b/drivers/mci/omap_hsmmc.c
@@ -472,6 +472,8 @@ static int mmc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 	writel(cmd->cmdarg, &mmc_base->arg);
 	writel((cmd->cmdidx << 24) | flags, &mmc_base->cmd);
 
+	mdelay(5); /* wait 5 ms */
+
 	start = get_time_ns();
 	do {
 		mmc_stat = readl(&mmc_base->stat);
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
