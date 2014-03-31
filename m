Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WUWXU-0000ey-VH
 for barebox@lists.infradead.org; Mon, 31 Mar 2014 07:21:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 31 Mar 2014 09:21:26 +0200
Message-Id: <1396250486-7655-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] netconsole: bail out when no connection is opened
To: barebox@lists.infradead.org

When no connection is opened we should not call into
the networking stack. Otherwise it can happen that we
delay further execution until the network stack detected
a link (or timed out bringing the link up).

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/netconsole.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/net/netconsole.c b/net/netconsole.c
index 2ab19de..86a68e1 100644
--- a/net/netconsole.c
+++ b/net/netconsole.c
@@ -81,6 +81,9 @@ static int nc_getc(struct console_device *cdev)
 					struct nc_priv, cdev);
 	unsigned char c;
 
+	if (!priv->con)
+		return 0;
+
 	while (!kfifo_len(priv->fifo))
 		net_poll();
 
@@ -94,6 +97,9 @@ static int nc_tstc(struct console_device *cdev)
 	struct nc_priv *priv = container_of(cdev,
 					struct nc_priv, cdev);
 
+	if (!priv->con)
+		return 0;
+
 	if (priv->busy)
 		return kfifo_len(priv->fifo) ? 1 : 0;
 
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
