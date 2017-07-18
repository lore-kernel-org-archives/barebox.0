Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dXSOH-0006lX-AG
 for barebox@lists.infradead.org; Tue, 18 Jul 2017 13:18:20 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1dXSNt-0006DK-Mh
 for barebox@lists.infradead.org; Tue, 18 Jul 2017 15:17:53 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 18 Jul 2017 15:17:51 +0200
Message-Id: <20170718131753.24879-1-l.stach@pengutronix.de>
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
Subject: [PATCH 1/3] video: tc358767: demote ASSR enable failure to debug level
To: barebox@lists.infradead.org

Same as in the Linux kernel. Failure to enable ASSR isn't a critical
failure and can happen in normal use.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/video/tc358767.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/video/tc358767.c b/drivers/video/tc358767.c
index ab2e86ec4364..d10dcf2f522d 100644
--- a/drivers/video/tc358767.c
+++ b/drivers/video/tc358767.c
@@ -967,7 +967,7 @@ static int tc_main_link_setup(struct tc_data *tc)
 			goto err_dpcd_read;
 
 		if (tmp[0] != tc->assr) {
-			dev_warn(dev, "Failed to switch display ASSR to %d, falling back to unscrambled mode\n",
+			dev_dbg(dev, "Failed to switch display ASSR to %d, falling back to unscrambled mode\n",
 				 tc->assr);
 			/* trying with disabled scrambler */
 			tc->link.scrambler_dis = 1;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
