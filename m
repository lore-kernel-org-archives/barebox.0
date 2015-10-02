Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZhzZH-0001DV-IW
 for barebox@lists.infradead.org; Fri, 02 Oct 2015 12:36:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  2 Oct 2015 14:35:44 +0200
Message-Id: <1443789344-19110-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] mci: core: Increase clock for SD highspeed mode
To: Barebox List <barebox@lists.infradead.org>
Cc: mol@pengutronix.de

Putting a SD card into highspeed mode doesn't help much when we
still clock the card with 25MHz. Increase the clock speed to 50MHz
for high speed cards.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci-core.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 6d5a4bf..9000115 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -652,6 +652,9 @@ retry_scr:
 	if ((__be32_to_cpu(switch_status[4]) & 0x0f000000) == 0x01000000)
 		mci->card_caps |= MMC_CAP_SD_HIGHSPEED;
 
+	if (mci_caps(mci) & MMC_CAP_SD_HIGHSPEED)
+		mci->tran_speed = 50000000;
+
 	return 0;
 }
 
-- 
2.6.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
