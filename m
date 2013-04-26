Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UVf0a-0006LG-OW
 for barebox@lists.infradead.org; Fri, 26 Apr 2013 09:32:03 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1UVf0X-0007tS-8D
 for barebox@lists.infradead.org; Fri, 26 Apr 2013 11:31:57 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jbe@pengutronix.de>) id 1UVf0W-0004Nl-86
 for barebox@lists.infradead.org; Fri, 26 Apr 2013 11:31:56 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 26 Apr 2013 11:31:50 +0200
Message-Id: <1366968712-17851-5-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1366968712-17851-1-git-send-email-jbe@pengutronix.de>
References: <1366968712-17851-1-git-send-email-jbe@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/6] MCI/Core: honor transmission limits at the card's side
To: barebox@lists.infradead.org

The host limits are only one limit we must honor when changing the transmission frequency.
The SD cards have their own limits, so take them also into account.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 drivers/mci/mci-core.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 9aeaa4d..42e3d4b 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -605,13 +605,17 @@ static void mci_set_clock(struct mci *mci, unsigned clock)
 {
 	struct mci_host *host = mci->host;
 
-	/* check against any given limits */
+	/* check against any given limits at the host's side */
 	if (clock > host->f_max)
 		clock = host->f_max;
 
 	if (clock < host->f_min)
 		clock = host->f_min;
 
+	/* check against the limit at the card's side */
+	if (mci->tran_speed != 0 && clock > mci->tran_speed)
+		clock = mci->tran_speed;
+
 	host->clock = clock;	/* the new target frequency */
 	mci_set_ios(mci);
 }
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
