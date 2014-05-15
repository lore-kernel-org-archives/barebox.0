Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WkpbS-0007hy-J2
 for barebox@lists.infradead.org; Thu, 15 May 2014 06:57:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 15 May 2014 08:56:53 +0200
Message-Id: <1400137016-15688-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] net: cpsw: Pass correct slave
To: barebox@lists.infradead.org

Pass the current slave to cpsw_slave_init/cpsw_update_link,
not the first one.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/cpsw.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
index ec3263d..f11b2d9 100644
--- a/drivers/net/cpsw.c
+++ b/drivers/net/cpsw.c
@@ -801,8 +801,8 @@ static int cpsw_open(struct eth_device *edev)
 			   ALE_SECURE);
 	cpsw_ale_add_mcast(priv, ethbdaddr, 1 << priv->host_port);
 
-	cpsw_slave_init(&priv->slaves[0], priv);
-	cpsw_update_link(&priv->slaves[0], priv);
+	cpsw_slave_init(slave, priv);
+	cpsw_update_link(slave, priv);
 
 	/* init descriptor pool */
 	for (i = 0; i < NUM_DESCS; i++) {
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
