Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 17.mo3.mail-out.ovh.net ([87.98.178.58]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vj722-00063A-1a
 for barebox@lists.infradead.org; Wed, 20 Nov 2013 12:37:22 +0000
Received: from mail438.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 7876EFFA1AB
 for <barebox@lists.infradead.org>; Wed, 20 Nov 2013 13:36:55 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 20 Nov 2013 13:39:12 +0100
Message-Id: <1384951152-2902-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1384951152-2902-1-git-send-email-plagnioj@jcrosoft.com>
References: <20131120122603.GD7965@ns203013.ovh.net>
 <1384951152-2902-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/2] net: netconsole: add is_ready support
To: barebox@lists.infradead.org

So we can be sure the console is only available when IP & Port are set.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 net/netconsole.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/net/netconsole.c b/net/netconsole.c
index 2ab19de..f6e9701 100644
--- a/net/netconsole.c
+++ b/net/netconsole.c
@@ -129,6 +129,14 @@ static int nc_port_set(struct param_d *p, void *_priv)
 	return 0;
 }
 
+static int nc_is_ready(struct console_device *cdev)
+{
+	struct nc_priv *priv = container_of(cdev,
+					struct nc_priv, cdev);
+
+	return priv->ip && priv->port;
+}
+
 static int netconsole_init(void)
 {
 	struct nc_priv *priv;
@@ -140,6 +148,7 @@ static int netconsole_init(void)
 	cdev->tstc = nc_tstc;
 	cdev->putc = nc_putc;
 	cdev->getc = nc_getc;
+	cdev->is_ready = nc_is_ready;
 
 	g_priv = priv;
 
-- 
1.8.4.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
