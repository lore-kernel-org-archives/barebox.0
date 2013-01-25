Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo2.mail-out.ovh.net ([87.98.181.248]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tyl3n-0007pW-7r
 for barebox@lists.infradead.org; Fri, 25 Jan 2013 15:19:28 +0000
Received: from mail436.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id CFB7BDC1CFC
 for <barebox@lists.infradead.org>; Fri, 25 Jan 2013 16:29:07 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 25 Jan 2013 16:17:42 +0100
Message-Id: <1359127067-30079-9-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 09/14] atmel_mci: on version 0x0 we need to reset the IP at
 each request
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/mci/atmel_mci.c |   10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/mci/atmel_mci.c b/drivers/mci/atmel_mci.c
index bf0adb0..1b60348 100644
--- a/drivers/mci/atmel_mci.c
+++ b/drivers/mci/atmel_mci.c
@@ -30,6 +30,7 @@
 struct atmel_mci_caps {
 	bool    has_rwproof;
 	bool	has_odd_clk_div;
+	bool	need_reset_after_xfer;
 };
 
 struct atmel_mci {
@@ -411,6 +412,12 @@ static int atmci_request(struct mci_host *mci, struct mci_cmd *cmd, struct mci_d
 	u32 stat, cmdat = 0;
 	int ret;
 
+	if (host->caps.need_reset_after_xfer) {
+		atmci_writel(host, ATMCI_CR, ATMCI_CR_SWRST);
+		atmci_writel(host, ATMCI_CR, ATMCI_CR_MCIEN);
+		atmci_writel(host, ATMCI_MR, host->mode_reg);
+	}
+
 	if (cmd->resp_type != MMC_RSP_NONE)
 		cmdat |= ATMCI_CMDR_MAXLAT_64CYC;
 
@@ -471,6 +478,8 @@ static void atmci_get_cap(struct atmel_mci *host)
 
 	dev_info(host->hw_dev, "version: 0x%x\n", version);
 
+	host->caps.need_reset_after_xfer = 1;
+
 	switch (version & 0xf00) {
 	case 0x500:
 		host->caps.has_odd_clk_div = 1;
@@ -479,6 +488,7 @@ static void atmci_get_cap(struct atmel_mci *host)
 	case 0x200:
 		host->caps.has_rwproof = 1;
 	case 0x100:
+		host->caps.need_reset_after_xfer = 0;
 	case 0x0:
 		break;
 	default:
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
