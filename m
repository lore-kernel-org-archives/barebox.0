Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo3.mail-out.ovh.net ([188.165.41.191]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TYMni-0003AF-1s
 for barebox@lists.infradead.org; Tue, 13 Nov 2012 20:09:39 +0000
Received: from mail417.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id A3BA4FF943E
 for <barebox@lists.infradead.org>; Tue, 13 Nov 2012 21:20:16 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 13 Nov 2012 21:07:19 +0100
Message-Id: <1352837241-16777-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1352837241-16777-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121113200248.GG25679@game.jcrosoft.org>
 <1352837241-16777-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/4] mci-core: spi fix op cond support
To: barebox@lists.infradead.org

so we can detect sd card version 2.0 on spi

as we need to the OCR_HCS on version 2.0 regardless if it's a SPI or not

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/mci/mci-core.c |   10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 216a8a5..d006869 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -222,6 +222,7 @@ static int sd_send_op_cond(struct mci *mci)
 	int err;
 	unsigned voltages;
 	unsigned busy;
+	unsigned arg;
 
 	/*
 	 * Most cards do not answer if some reserved bits
@@ -240,9 +241,12 @@ static int sd_send_op_cond(struct mci *mci)
 			return err;
 		}
 
-		mci_setup_cmd(&cmd, SD_CMD_APP_SEND_OP_COND,
-			mmc_host_is_spi(host) ? 0 : (voltages | (mci->version == SD_VERSION_2 ? OCR_HCS : 0)),
-			MMC_RSP_R3);
+		arg = mmc_host_is_spi(host) ? 0 : voltages;
+
+		if (mci->version == SD_VERSION_2)
+			arg |= OCR_HCS;
+
+		mci_setup_cmd(&cmd, SD_CMD_APP_SEND_OP_COND, arg, MMC_RSP_R3);
 		err = mci_send_cmd(mci, &cmd, NULL);
 		if (err) {
 			dev_dbg(mci->mci_dev, "SD operation condition set failed: %d\n", err);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
