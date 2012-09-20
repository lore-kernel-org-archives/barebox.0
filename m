Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo5.mail-out.ovh.net ([46.105.39.65]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TEZTt-0003dl-5q
 for barebox@lists.infradead.org; Thu, 20 Sep 2012 05:39:23 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id B5C3EFF9544
 for <barebox@lists.infradead.org>; Thu, 20 Sep 2012 07:45:09 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 20 Sep 2012 07:36:43 +0200
Message-Id: <1348119406-17464-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1348119406-17464-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120920053418.GB26553@game.jcrosoft.org>
 <1348119406-17464-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/6] net/tap: use xzalloc to allocate data
To: barebox@lists.infradead.org

this will ensure the data are set to 0 (list as example)

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/net/tap.c |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/tap.c b/drivers/net/tap.c
index 5c3a1e3..d5c7031 100644
--- a/drivers/net/tap.c
+++ b/drivers/net/tap.c
@@ -76,7 +76,7 @@ int tap_probe(struct device_d *dev)
 	struct tap_priv *priv;
 	int ret = 0;
 
-	priv = xmalloc(sizeof(struct tap_priv));
+	priv = xzalloc(sizeof(struct tap_priv));
 	priv->name = "barebox";
 
 	priv->fd = tap_alloc(priv->name);
@@ -85,7 +85,7 @@ int tap_probe(struct device_d *dev)
 		goto out;
 	}
 
-	edev = xmalloc(sizeof(struct eth_device));
+	edev = xzalloc(sizeof(struct eth_device));
 	edev->priv = priv;
 	edev->parent = dev;
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
