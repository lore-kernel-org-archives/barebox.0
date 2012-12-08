Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ThNjO-0002O7-LI
 for barebox@lists.infradead.org; Sat, 08 Dec 2012 16:58:27 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat,  8 Dec 2012 17:58:22 +0100
Message-Id: <1354985902-11317-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1354985902-11317-1-git-send-email-s.hauer@pengutronix.de>
References: <1354985902-11317-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] net phylib: Call phy_update_status when no link is present
To: barebox@lists.infradead.org

We call phy_update_status only once in 5 seconds. This makes
sure we do not have great overhead when using ethernet devices.
However, if phylib tells us the link is down anyway, there won't
be ethernet transfers, so it doesn't hurt to call phy_update_status
in this case. This makes sure we can use the ethernet device when
the link comes up and do not have an additional 5 second penalty
in this case.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/eth.c |    3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/net/eth.c b/net/eth.c
index 0a1850f..101fc10 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -138,7 +138,8 @@ static int eth_carrier_check(int force)
 	if (!eth_current->phydev)
 		return 0;
 
-	if (force || is_timeout(last_link_check, 5 * SECOND)) {
+	if (force || is_timeout(last_link_check, 5 * SECOND) ||
+			!eth_current->phydev->link) {
 		ret = phy_update_status(eth_current->phydev);
 		if (ret)
 			return ret;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
