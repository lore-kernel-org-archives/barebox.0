Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UiJXk-0001BL-IM
 for barebox@lists.infradead.org; Fri, 31 May 2013 07:14:34 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 May 2013 09:13:59 +0200
Message-Id: <1369984443-8790-2-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/6] mci: do not limit clock to card capabilities
To: barebox@lists.infradead.org
Cc: Juergen Beisert <jbe@pengutronix.de>

No need to limit the clock to the cards capabilities since the values
passed to mci_set_clock are based on the cards capabilities. This
enables MMC high speed cards to operate at higher speeds since on
this cards the csd field only holds the non highspeed maximum clock.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci-core.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 283df2f..895108f 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -664,10 +664,6 @@ static void mci_set_clock(struct mci *mci, unsigned clock)
 	if (clock < host->f_min)
 		clock = host->f_min;
 
-	/* check against the limit at the card's side */
-	if (mci->tran_speed != 0 && clock > mci->tran_speed)
-		clock = mci->tran_speed;
-
 	host->clock = clock;	/* the new target frequency */
 	mci_set_ios(mci);
 }
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
