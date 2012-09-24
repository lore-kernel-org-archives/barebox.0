Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo5.mail-out.ovh.net ([46.105.52.148]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TGAoJ-0004LF-1I
 for barebox@lists.infradead.org; Mon, 24 Sep 2012 15:43:03 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 1B948FFA783
 for <barebox@lists.infradead.org>; Mon, 24 Sep 2012 17:48:59 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 24 Sep 2012 17:40:26 +0200
Message-Id: <1348501228-23083-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1348501228-23083-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120924152731.GF26553@game.jcrosoft.org>
 <1348501228-23083-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/5] net: switch to global device
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 net/net.c |   15 +++++++--------
 1 file changed, 7 insertions(+), 8 deletions(-)

diff --git a/net/net.c b/net/net.c
index 3ac098f..6455b18 100644
--- a/net/net.c
+++ b/net/net.c
@@ -35,6 +35,7 @@
 #include <init.h>
 #include <linux/ctype.h>
 #include <linux/err.h>
+#include <globalvar.h>
 
 static IPaddr_t	net_netmask;		/* Our subnet mask (0=unknown)	*/
 static IPaddr_t	net_gateway;		/* Our gateways IP address	*/
@@ -664,21 +665,19 @@ out:
 	return ret;
 }
 
-static struct device_d net_device = {
-	.name = "net",
-	.id = DEVICE_ID_SINGLE,
-};
-
 static int net_init(void)
 {
+	struct device_d *dev;
 	int i;
 
 	for (i = 0; i < PKTBUFSRX; i++)
 		NetRxPackets[i] = net_alloc_packet();
 
-	register_device(&net_device);
-	dev_add_param(&net_device, "nameserver", NULL, NULL, 0);
-	dev_add_param(&net_device, "domainname", NULL, NULL, 0);
+	dev = global_add_device("net");
+	if (dev) {
+		global_add_simple(dev, "nameserver");
+		global_add_simple(dev, "domainname");
+	}
 
 	return 0;
 }
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
