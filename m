Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.com ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XbQKn-0005HF-TD
 for barebox@lists.infradead.org; Tue, 07 Oct 2014 08:41:31 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 114BCA0048E
 for <barebox@lists.infradead.org>; Tue,  7 Oct 2014 10:41:16 +0200 (CEST)
From: =?UTF-8?q?Teresa=20G=C3=A1mez?= <t.gamez@phytec.de>
Date: Tue, 7 Oct 2014 10:40:34 +0200
Message-Id: <1412671237-46551-2-git-send-email-t.gamez@phytec.de>
In-Reply-To: <1412671237-46551-1-git-send-email-t.gamez@phytec.de>
References: <1412671237-46551-1-git-send-email-t.gamez@phytec.de>
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
Subject: [PATCH 1/4] net: cpsw: Allow gigabit connection
To: barebox@lists.infradead.org

From: Jan Weitzel <j.weitzel@phytec.de>

Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
---
 drivers/net/cpsw.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
index 167b2dd..50890c4 100644
--- a/drivers/net/cpsw.c
+++ b/drivers/net/cpsw.c
@@ -581,8 +581,7 @@ static void cpsw_slave_update_link(struct cpsw_slave *slave,
 		else if (phydev->speed == SPEED_100)
 			mac_control |= BIT(15);
 		else if (phydev->speed == SPEED_1000)
-			mac_control &= ~BIT(7);	/* TODO: Do not enable
-						 * gig support now */
+			mac_control |= BIT(7);
 		if (phydev->duplex == DUPLEX_FULL)
 			mac_control |= BIT(0);	/* FULLDUPLEXEN	*/
 	}
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
