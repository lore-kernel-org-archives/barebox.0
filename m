Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UVf0a-0006LH-Ol
 for barebox@lists.infradead.org; Fri, 26 Apr 2013 09:32:03 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1UVf0X-0007tQ-88
 for barebox@lists.infradead.org; Fri, 26 Apr 2013 11:31:57 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jbe@pengutronix.de>) id 1UVf0W-0004Nb-7K
 for barebox@lists.infradead.org; Fri, 26 Apr 2013 11:31:56 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 26 Apr 2013 11:31:48 +0200
Message-Id: <1366968712-17851-3-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 2/6] MXS/MCI: don't touch variables in the host structure
To: barebox@lists.infradead.org

MMC_BUS_WIDTH_* macros do not correspond with the real bus width.
After setting a bus width larger than 1 bit the next call to change the
frequency ends in the default handler and the host interface stays silently
at the previous frequency.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 drivers/mci/mxs.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/mci/mxs.c b/drivers/mci/mxs.c
index e2ffa43..3045e6a 100644
--- a/drivers/mci/mxs.c
+++ b/drivers/mci/mxs.c
@@ -515,23 +515,23 @@ static void mxs_mci_set_ios(struct mci_host *host, struct mci_ios *ios)
 	switch (ios->bus_width) {
 	case MMC_BUS_WIDTH_8:
 		mxs_mci->bus_width = 2;
-		host->bus_width = 8;	/* 8 bit is possible */
+		pr_debug("IO settings: changing bus width to 8 bits\n");
 		break;
 	case MMC_BUS_WIDTH_4:
 		mxs_mci->bus_width = 1;
-		host->bus_width = 4;	/* 4 bit is possible */
+		pr_debug("IO settings: changing bus width to 4 bits\n");
 		break;
 	case MMC_BUS_WIDTH_1:
 		mxs_mci->bus_width = 0;
-		host->bus_width = 1;	/* 1 bit is possible */
+		pr_debug("IO settings: changing bus width to 1 bit\n");
 		break;
 	default:
+		pr_debug("IO settings: unsupported bus width!\n");
 		return;
 	}
 
 	mxs_mci->clock = mxs_mci_setup_clock_speed(mxs_mci, ios->clock);
-	pr_debug("IO settings: bus width=%d, frequency=%u Hz\n", host->bus_width,
-			mxs_mci->clock);
+	pr_debug("IO settings: frequency=%u Hz\n", mxs_mci->clock);
 }
 
 /* ----------------------------------------------------------------------- */
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
