Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Twrfq-0006Fo-UR
 for barebox@lists.infradead.org; Sun, 20 Jan 2013 09:58:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 20 Jan 2013 10:58:39 +0100
Message-Id: <1358675923-13628-2-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/5] mci: return 0 for probe parameter even when already
 initialized
To: barebox@lists.infradead.org

This makes the behaviour more friendly to scripts which can now
set the probe parameter without checking if it has been done before.
Having a succesful result now means that there is a card.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci-core.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 559f8ab..711f74b 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1448,7 +1448,7 @@ static int mci_set_probe(struct device_d *mci_dev, struct param_d *param,
 
 	rc = mci_check_if_already_initialized(mci);
 	if (rc != 0)
-		return rc;
+		return 0;
 
 	probe = simple_strtoul(val, NULL, 0);
 	if (probe != 0) {
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
