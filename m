Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SIhwI-00059U-9v
 for barebox@lists.infradead.org; Fri, 13 Apr 2012 14:57:31 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 13 Apr 2012 16:57:20 +0200
Message-Id: <1334329040-1718-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1334329040-1718-1-git-send-email-s.hauer@pengutronix.de>
References: <1334329040-1718-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] netconsole: bail out if console_register fails
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/netconsole.c |    8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/net/netconsole.c b/net/netconsole.c
index 2ac3e64..48f2b98 100644
--- a/net/netconsole.c
+++ b/net/netconsole.c
@@ -174,6 +174,7 @@ static int netconsole_init(void)
 {
 	struct nc_priv *priv;
 	struct console_device *cdev;
+	int ret;
 
 	priv = xzalloc(sizeof(*priv));
 	cdev = &priv->cdev;
@@ -185,7 +186,12 @@ static int netconsole_init(void)
 
 	priv->fifo = kfifo_alloc(1024);
 
-	console_register(cdev);
+	ret = console_register(cdev);
+	if (ret) {
+		printf("netconsole: registering failed with %s\n", strerror(-ret));
+		kfree(priv);
+		return ret;
+	}
 
 	dev_add_param(&cdev->class_dev, "ip", nc_remoteip_set, NULL, 0);
 	dev_add_param(&cdev->class_dev, "port", nc_port_set, NULL, 0);
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
