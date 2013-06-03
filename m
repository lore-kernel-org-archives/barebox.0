Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UjSL2-0004Fl-HP
 for barebox@lists.infradead.org; Mon, 03 Jun 2013 10:50:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  3 Jun 2013 12:49:40 +0200
Message-Id: <1370256580-3113-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1370256580-3113-1-git-send-email-s.hauer@pengutronix.de>
References: <1370256580-3113-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] mci: Use tran_speed field to fix highspeed MMC card clock
To: barebox@lists.infradead.org
Cc: Juergen Beisert <jbe@pengutronix.de>

The tran_speed field as decoded from csd is valid in most cases,
so use it to determine the maximum clock we can support. It is
not valid though for MMC highspeed cards, in this case the
csd contains invalid values and we have to set tran_speed explicitly
to the maximum speed. As the values passed into mci_set_clock are
now based on tran_speed we no longer have to limit the rate to
tran_speed in mci_set_clock.

The (intended) effect of this patch is that highspeed MMC cards are
no longer limited to non highspeed rates.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci-core.c | 19 ++++++-------------
 include/mci.h          |  2 +-
 2 files changed, 7 insertions(+), 14 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 74aab91..6fc9805 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -669,10 +669,6 @@ static void mci_set_clock(struct mci *mci, unsigned clock)
 	if (clock < host->f_min)
 		clock = host->f_min;
 
-	/* check against the limit at the card's side */
-	if (mci->tran_speed != 0 && clock > mci->tran_speed)
-		clock = mci->tran_speed;
-
 	host->clock = clock;	/* the new target frequency */
 	mci_set_ios(mci);
 }
@@ -924,11 +920,8 @@ static int mci_startup_sd(struct mci *mci)
 		}
 		mci_set_bus_width(mci, MMC_BUS_WIDTH_4);
 	}
-	/* if possible, speed up the transfer */
-	if (mci_caps(mci) & MMC_CAP_SD_HIGHSPEED)
-		mci_set_clock(mci, 50000000);
-	else
-		mci_set_clock(mci, 25000000);
+
+	mci_set_clock(mci, mci->tran_speed);
 
 	return 0;
 }
@@ -950,13 +943,13 @@ static int mci_startup_mmc(struct mci *mci)
 	/* if possible, speed up the transfer */
 	if (mci_caps(mci) & MMC_CAP_MMC_HIGHSPEED) {
 		if (mci->card_caps & MMC_CAP_MMC_HIGHSPEED_52MHZ)
-			mci_set_clock(mci, 52000000);
+			mci->tran_speed = 52000000;
 		else
-			mci_set_clock(mci, 26000000);
-	} else {
-		mci_set_clock(mci, 20000000);
+			mci->tran_speed = 26000000;
 	}
 
+	mci_set_clock(mci, mci->tran_speed);
+
 	/*
 	 * Unlike SD, MMC cards dont have a configuration register to notify
 	 * supported bus width. So bus test command should be run to identify
diff --git a/include/mci.h b/include/mci.h
index 3989f46..1ae27f0 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -342,7 +342,7 @@ struct mci {
 	unsigned csd[4];	/**< card's "card specific data register" */
 	unsigned cid[4];	/**< card's "card identification register" */
 	unsigned short rca;	/* FIXME */
-	unsigned tran_speed;	/**< not yet used */
+	unsigned tran_speed;	/**< Maximum transfer speed */
 	/** currently used data block length for read accesses */
 	unsigned read_bl_len;
 	/** currently used data block length for write accesses */
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
