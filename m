Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SJQRU-0007Dl-Ox
 for barebox@lists.infradead.org; Sun, 15 Apr 2012 14:28:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 15 Apr 2012 16:28:27 +0200
Message-Id: <1334500111-26382-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1334500111-26382-1-git-send-email-s.hauer@pengutronix.de>
References: <1334500111-26382-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/8] net: register a 'net' device to store network specific
 variables
To: barebox@lists.infradead.org

'nameserver' and 'domainname' should be globally available variables
specific to networking. Register a 'net' device to store these variables.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/net.c |    9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/net/net.c b/net/net.c
index d164992..6e2c14b 100644
--- a/net/net.c
+++ b/net/net.c
@@ -666,6 +666,11 @@ out:
 	return ret;
 }
 
+static struct device_d net_device = {
+	.name = "net",
+	.id = DEVICE_ID_SINGLE,
+};
+
 static int net_init(void)
 {
 	int i;
@@ -673,6 +678,10 @@ static int net_init(void)
 	for (i = 0; i < PKTBUFSRX; i++)
 		NetRxPackets[i] =  xmemalign(32, PKTSIZE);
 
+	register_device(&net_device);
+	dev_add_param(&net_device, "nameserver", NULL, NULL, 0);
+	dev_add_param(&net_device, "domainname", NULL, NULL, 0);
+
 	return 0;
 }
 
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
