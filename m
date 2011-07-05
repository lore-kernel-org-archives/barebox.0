Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qe06y-0007Cz-S1
	for barebox@lists.infradead.org; Tue, 05 Jul 2011 07:32:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  5 Jul 2011 09:31:54 +0200
Message-Id: <1309851114-2069-4-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] MCI imx-esdhc: remove unnecessary large delay
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/imx-esdhc.c |    6 +-----
 1 files changed, 1 insertions(+), 5 deletions(-)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 27ec4ed..f592e1e 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -239,11 +239,7 @@ esdhc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 	esdhc_write32(&regs->irqstat, -1);
 
 	/* Wait at least 8 SD clock cycles before the next command */
-	/*
-	 * Note: This is way more than 8 cycles, but 1ms seems to
-	 * resolve timing issues with some cards
-	 */
-	udelay(1000);
+	udelay(1);
 
 	/* Set up for a data transfer if we have one */
 	if (data) {
-- 
1.7.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
