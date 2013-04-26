Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UVf0a-0006LL-Oj
 for barebox@lists.infradead.org; Fri, 26 Apr 2013 09:32:02 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1UVf0X-0007tR-8B
 for barebox@lists.infradead.org; Fri, 26 Apr 2013 11:31:57 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jbe@pengutronix.de>) id 1UVf0W-0004Ng-7i
 for barebox@lists.infradead.org; Fri, 26 Apr 2013 11:31:56 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 26 Apr 2013 11:31:49 +0200
Message-Id: <1366968712-17851-4-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 3/6] MCI/Core: increase the transmission frequency while card
 detection
To: barebox@lists.infradead.org

According to the SD card spec the detection can happen at 400 kHz

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 drivers/mci/mci-core.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index a269aee..9aeaa4d 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1371,7 +1371,8 @@ static int mci_card_probe(struct mci *mci)
 	}
 
 	mci_set_bus_width(mci, MMC_BUS_WIDTH_1);
-	mci_set_clock(mci, 1);	/* set the lowest available clock */
+	/* according to the SD card spec the detection can happen at 400 kHz */
+	mci_set_clock(mci, 400000);
 
 	/* reset the card */
 	rc = mci_go_idle(mci);
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
