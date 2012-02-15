Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RxZqc-00052f-TQ
 for barebox@lists.infradead.org; Wed, 15 Feb 2012 08:04:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 15 Feb 2012 09:04:02 +0100
Message-Id: <1329293044-9967-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1329293044-9967-1-git-send-email-s.hauer@pengutronix.de>
References: <1329293044-9967-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/6] net: fix eth device unregistration
To: barebox@lists.infradead.org

We register a device in eth_register, thus we have to unregister it in
eth_unregister. Also, if the device we unregister is the current device,
we have to set the current eth_device to NULL so that it isn't used anymore.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/eth.c |    5 ++++-
 1 files changed, 4 insertions(+), 1 deletions(-)

diff --git a/net/eth.c b/net/eth.c
index 621cb59..20fdbf4 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -244,8 +244,11 @@ int eth_register(struct eth_device *edev)
 
 void eth_unregister(struct eth_device *edev)
 {
-	dev_remove_parameters(&edev->dev);
+	if (edev == eth_current)
+		eth_current = NULL;
 
+	dev_remove_parameters(&edev->dev);
+	unregister_device(&edev->dev);
 	list_del(&edev->list);
 }
 
-- 
1.7.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
