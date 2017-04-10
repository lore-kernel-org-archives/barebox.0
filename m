Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cxTX9-0006w5-3u
 for barebox@lists.infradead.org; Mon, 10 Apr 2017 07:14:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 10 Apr 2017 09:14:17 +0200
Message-Id: <20170410071420.26884-8-s.hauer@pengutronix.de>
In-Reply-To: <20170410071420.26884-1-s.hauer@pengutronix.de>
References: <20170410071420.26884-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/10] net: use dev_add_param_string
To: Barebox List <barebox@lists.infradead.org>

dev_add_param_string allows to pass a priv * so that the device_d *
argument is not needed and can be removed later.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/net.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/net/net.c b/net/net.c
index 3c0e715601..19b081f6cf 100644
--- a/net/net.c
+++ b/net/net.c
@@ -573,6 +573,9 @@ static struct device_d net_device = {
 	.id = DEVICE_ID_SINGLE,
 };
 
+static char *net_nameserver;
+static char *net_domainname;
+
 static int net_init(void)
 {
 	int i;
@@ -581,8 +584,12 @@ static int net_init(void)
 		NetRxPackets[i] = net_alloc_packet();
 
 	register_device(&net_device);
-	dev_add_param(&net_device, "nameserver", NULL, NULL, 0);
-	dev_add_param(&net_device, "domainname", NULL, NULL, 0);
+	net_nameserver = xstrdup("");
+	dev_add_param_string(&net_device, "nameserver", NULL, NULL,
+			     &net_nameserver, NULL);
+	net_domainname = xstrdup("");
+	dev_add_param_string(&net_device, "domainname", NULL, NULL,
+			     &net_domainname, NULL);
 
 	return 0;
 }
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
