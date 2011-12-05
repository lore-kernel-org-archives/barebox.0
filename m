Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RXUNB-0003li-8J
 for barebox@lists.infradead.org; Mon, 05 Dec 2011 08:58:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  5 Dec 2011 09:57:55 +0100
Message-Id: <1323075477-28567-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1323075477-28567-1-git-send-email-s.hauer@pengutronix.de>
References: <1323075477-28567-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] mci imx esdhc: enable i.MX53 fix for i.MX51 aswell
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/imx-esdhc.c |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index a0e61f0..94b2738 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -107,7 +107,8 @@ u32 esdhc_xfertyp(struct mci_cmd *cmd, struct mci_data *data)
 		xfertyp |= XFERTYP_RSPTYP_48_BUSY;
 	else if (cmd->resp_type & MMC_RSP_PRESENT)
 		xfertyp |= XFERTYP_RSPTYP_48;
-	if (cpu_is_mx53() && cmd->cmdidx == MMC_CMD_STOP_TRANSMISSION)
+	if ((cpu_is_mx51() || cpu_is_mx53()) &&
+			cmd->cmdidx == MMC_CMD_STOP_TRANSMISSION)
 		xfertyp |= SDHCI_CMD_ABORTCMD;
 
 	return XFERTYP_CMD(cmd->cmdidx) | xfertyp;
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
