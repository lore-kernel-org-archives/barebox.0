Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo2.mail-out.ovh.net ([87.98.181.248]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TylNd-0003PI-VH
 for barebox@lists.infradead.org; Fri, 25 Jan 2013 15:39:51 +0000
Received: from mail436.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 48D69DC0855
 for <barebox@lists.infradead.org>; Fri, 25 Jan 2013 16:49:38 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 25 Jan 2013 16:38:27 +0100
Message-Id: <1359128308-31235-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20130125152819.GE26329@game.jcrosoft.org>
References: <20130125152819.GE26329@game.jcrosoft.org>
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
Subject: [PATCH 1/2] mci: add card_write_protected
To: barebox@lists.infradead.org

Currently there is no common way for the mci host driver to tell
that thee car is write protected. This adds a card_write_protected callback
which is used by the framework to tell whether it's protected or not.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/mci/mci-core.c |    6 ++++++
 include/mci.h          |    2 ++
 2 files changed, 8 insertions(+)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index fd052f1..a269aee 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1111,8 +1111,14 @@ static int __maybe_unused mci_sd_write(struct block_device *blk,
 				const void *buffer, int block, int num_blocks)
 {
 	struct mci *mci = container_of(blk, struct mci, blk);
+	struct mci_host *host = mci->host;
 	int rc;
 
+	if (host->card_write_protected && host->card_write_protected(host)) {
+		dev_err(mci->mci_dev, "card write protected\n");
+		return -EPERM;
+	}
+
 	dev_dbg(mci->mci_dev, "%s: Write %d block(s), starting at %d\n",
 		__func__, num_blocks, block);
 
diff --git a/include/mci.h b/include/mci.h
index c0d179b..cf9582d 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -302,6 +302,8 @@ struct mci_host {
 	int (*send_cmd)(struct mci_host*, struct mci_cmd*, struct mci_data*);
 	/** check if a card is inserted */
 	int (*card_present)(struct mci_host *);
+	/** check if a card is write protected */
+	int (*card_write_protected)(struct mci_host *);
 };
 
 /** MMC/SD and interface instance information */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
