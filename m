Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UiJXk-0001BN-IO
 for barebox@lists.infradead.org; Fri, 31 May 2013 07:14:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 May 2013 09:14:01 +0200
Message-Id: <1369984443-8790-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1369984443-8790-1-git-send-email-s.hauer@pengutronix.de>
References: <1369984443-8790-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/6] mci: Use csd_max_dtr when appropriate
To: barebox@lists.infradead.org
Cc: Juergen Beisert <jbe@pengutronix.de>

The csd_max_dtr tells us at which speed a card is able to operate,
so use it to adjust the cards clock where appropriate.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci-core.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index d7b8fc9..54660dc 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -919,7 +919,7 @@ static int mci_startup_sd(struct mci *mci)
 	if (mci->card_caps & MMC_MODE_HS)
 		mci_set_clock(mci, 50000000);
 	else
-		mci_set_clock(mci, 25000000);
+		mci_set_clock(mci, mci->csd_max_dtr);
 
 	return 0;
 }
@@ -929,6 +929,7 @@ static int mci_startup_mmc(struct mci *mci)
 	struct mci_host *host = mci->host;
 	int err;
 	int idx = 0;
+	int max_dtr;
 	static unsigned ext_csd_bits[] = {
 		EXT_CSD_BUS_WIDTH_4,
 		EXT_CSD_BUS_WIDTH_8,
@@ -941,13 +942,15 @@ static int mci_startup_mmc(struct mci *mci)
 	/* if possible, speed up the transfer */
 	if (mci->card_caps & MMC_MODE_HS) {
 		if (mci->card_caps & MMC_MODE_HS_52MHz)
-			mci_set_clock(mci, 52000000);
+			max_dtr = 52000000;
 		else
-			mci_set_clock(mci, 26000000);
+			max_dtr = 26000000;
 	} else {
-		mci_set_clock(mci, 20000000);
+		max_dtr = mci->csd_max_dtr;
 	}
 
+	mci_set_clock(mci, max_dtr);
+
 	/*
 	 * Unlike SD, MMC cards dont have a configuration register to notify
 	 * supported bus width. So bus test command should be run to identify
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
