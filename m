Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TR5Lc-0000bm-S0
 for barebox@lists.infradead.org; Wed, 24 Oct 2012 18:06:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 24 Oct 2012 20:06:28 +0200
Message-Id: <1351101988-6681-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] net phy: poll for a link
To: barebox@lists.infradead.org

Since we have phylib we have no instance which polls for a link. This
means that network boot often bails out after a powercycle or phy reset.
This changes the link status behaviour to:

- Always check for a link if the last link test was unsuccesful
- If the last check was succesful, check for a link when the last
  check is longer than 5 seconds ago
- Try to get a link for 5 seconds.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/eth.c |   32 +++++++++++++++++++++++++-------
 1 file changed, 25 insertions(+), 7 deletions(-)

diff --git a/net/eth.c b/net/eth.c
index f3d7bfe..5af2d09 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -128,9 +128,10 @@ int eth_complete(struct string_list *sl, char *instr)
 /*
  * Check for link if we haven't done so for longer.
  */
-static int eth_carrier_check(int force)
+static int eth_carrier_check(void)
 {
 	int ret;
+	uint64_t s;
 
 	if (!IS_ENABLED(CONFIG_PHYLIB))
 		return 0;
@@ -138,14 +139,31 @@ static int eth_carrier_check(int force)
 	if (!eth_current->phydev)
 		return 0;
 
-	if (force || is_timeout(last_link_check, 5 * SECOND)) {
+	/*
+	 * If we recently succesfully checked for a link just bail
+	 * out.
+	 */
+	if (!is_timeout(last_link_check, 5 * SECOND) &&
+			eth_current->phydev->link)
+		return 0;
+
+	s = get_time_ns();
+
+	/*
+	 * Poll for a link until we get one or we have a timeout.
+	 */
+	while (!is_timeout(s, 5 * SECOND)) {
 		ret = phy_update_status(eth_current->phydev);
 		if (ret)
 			return ret;
-		last_link_check = get_time_ns();
+
+		if (eth_current->phydev->link) {
+			last_link_check = get_time_ns();
+			return 0;
+		}
 	}
 
-	return eth_current->phydev->link ? 0 : -ENETDOWN;
+	return -ENETDOWN;
 }
 
 /*
@@ -168,7 +186,7 @@ static int eth_check_open(void)
 
 	eth_current->active = 1;
 
-	return eth_carrier_check(1);
+	return eth_carrier_check();
 }
 
 int eth_send(void *packet, int length)
@@ -179,7 +197,7 @@ int eth_send(void *packet, int length)
 	if (ret)
 		return ret;
 
-	ret = eth_carrier_check(0);
+	ret = eth_carrier_check();
 	if (ret)
 		return ret;
 
@@ -196,7 +214,7 @@ int eth_rx(void)
 	if (ret)
 		return ret;
 
-	ret = eth_carrier_check(0);
+	ret = eth_carrier_check();
 	if (ret)
 		return ret;
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
