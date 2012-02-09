Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RvSZq-0007A4-E3
 for barebox@lists.infradead.org; Thu, 09 Feb 2012 11:54:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  9 Feb 2012 12:53:58 +0100
Message-Id: <1328788438-19717-16-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1328788438-19717-1-git-send-email-s.hauer@pengutronix.de>
References: <1328788438-19717-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 15/15] mci: Be more verbose on what device is associated to
 which disk
To: barebox@lists.infradead.org

This is quite useful when multiple SD cards are present so spare
some bytes to print this information.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci-core.c |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index c39faf3..17a6656 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1300,6 +1300,8 @@ static int mci_card_probe(struct mci *mci)
 		goto on_error;
 	}
 
+	dev_info(mci->mci_dev, "registered disk%d\n", rc);
+
 	/* create partitions on demand */
 	rc = parse_partition_table(&mci->blk);
 	if (rc != 0) {
@@ -1382,6 +1384,8 @@ static int mci_probe(struct device_d *mci_dev)
 	mci->mci_dev = mci_dev;
 	mci->host = mci_dev->platform_data;
 
+	dev_info(mci->host->hw_dev, "registered as %s\n", dev_name(mci_dev));
+
 #ifdef CONFIG_MCI_STARTUP
 	/* if enabled, probe the attached card immediately */
 	rc = mci_card_probe(mci);
-- 
1.7.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
