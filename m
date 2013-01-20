Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Twrfq-0006Fq-UX
 for barebox@lists.infradead.org; Sun, 20 Jan 2013 09:58:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 20 Jan 2013 10:58:41 +0100
Message-Id: <1358675923-13628-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1358675923-13628-1-git-send-email-s.hauer@pengutronix.de>
References: <1358675923-13628-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/5] mci: Add card_present callback
To: barebox@lists.infradead.org

Currently there is no common way for the mci host driver to tell
that there is no card present. This adds a card_present callback
which is used by the framework to tell whether it's present or not.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci-core.c |    5 +++++
 include/mci.h          |    2 ++
 2 files changed, 7 insertions(+)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 7d43fe3..fd052f1 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1352,6 +1352,11 @@ static int mci_card_probe(struct mci *mci)
 	struct mci_host *host = mci->host;
 	int rc, disknum;
 
+	if (host->card_present && !host->card_present(host)) {
+		dev_err(mci->mci_dev, "no card inserted\n");
+		return -ENODEV;
+	}
+
 	/* start with a host interface reset */
 	rc = (host->init)(host, mci->mci_dev);
 	if (rc) {
diff --git a/include/mci.h b/include/mci.h
index 0041e27..c0d179b 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -300,6 +300,8 @@ struct mci_host {
 	void (*set_ios)(struct mci_host*, struct mci_ios *);
 	/** handle a command */
 	int (*send_cmd)(struct mci_host*, struct mci_cmd*, struct mci_data*);
+	/** check if a card is inserted */
+	int (*card_present)(struct mci_host *);
 };
 
 /** MMC/SD and interface instance information */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
