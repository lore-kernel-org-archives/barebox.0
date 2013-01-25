Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo2.mail-out.ovh.net ([188.165.52.147]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tyl3m-0007pb-V2
 for barebox@lists.infradead.org; Fri, 25 Jan 2013 15:19:27 +0000
Received: from mail436.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id DF27DDC1CEF
 for <barebox@lists.infradead.org>; Fri, 25 Jan 2013 16:29:07 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 25 Jan 2013 16:17:43 +0100
Message-Id: <1359127067-30079-10-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1359127067-30079-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130125151448.GD26329@game.jcrosoft.org>
 <1359127067-30079-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 10/14] atmel_mci: after a software timeout the IP need to be
 reset
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/mci/atmel_mci.c |    5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/mci/atmel_mci.c b/drivers/mci/atmel_mci.c
index 1b60348..53df2e3 100644
--- a/drivers/mci/atmel_mci.c
+++ b/drivers/mci/atmel_mci.c
@@ -48,6 +48,7 @@ struct atmel_mci {
 
 	unsigned long		bus_hz;
 	u32			mode_reg;
+	bool			need_reset;
 };
 
 #define to_mci_host(mci)	container_of(mci, struct atmel_mci, mci)
@@ -118,6 +119,7 @@ static int atmci_poll_status(struct atmel_mci *host, u32 mask)
 			return stat;
 		if (is_timeout(start, SECOND)) {
 			dev_err(host->hw_dev, "timeout\n");
+			host->need_reset = true;
 			return ATMCI_RTOE | stat;
 		}
 		if (stat & mask)
@@ -412,10 +414,11 @@ static int atmci_request(struct mci_host *mci, struct mci_cmd *cmd, struct mci_d
 	u32 stat, cmdat = 0;
 	int ret;
 
-	if (host->caps.need_reset_after_xfer) {
+	if (host->need_reset || host->caps.need_reset_after_xfer) {
 		atmci_writel(host, ATMCI_CR, ATMCI_CR_SWRST);
 		atmci_writel(host, ATMCI_CR, ATMCI_CR_MCIEN);
 		atmci_writel(host, ATMCI_MR, host->mode_reg);
+		host->need_reset = false;
 	}
 
 	if (cmd->resp_type != MMC_RSP_NONE)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
