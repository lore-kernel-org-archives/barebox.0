Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OO6He-00080K-JT
	for barebox@lists.infradead.org; Mon, 14 Jun 2010 09:48:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 14 Jun 2010 11:48:36 +0200
Message-Id: <1276508921-3264-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1276508921-3264-1-git-send-email-s.hauer@pengutronix.de>
References: <1276508921-3264-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/11] net: use a random mac address if the current device
	does not have one
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/net.c |   11 ++++++++++-
 1 files changed, 10 insertions(+), 1 deletions(-)

diff --git a/net/net.c b/net/net.c
index 4305c72..8d99595 100644
--- a/net/net.c
+++ b/net/net.c
@@ -345,12 +345,21 @@ static LIST_HEAD(connection_list);
 
 static struct net_connection *net_new(IPaddr_t dest, rx_handler_f *handler)
 {
+	struct eth_device *edev = eth_get_current();
 	struct net_connection *con;
 	int ret;
 
-	if (!is_valid_ether_addr(net_ether))
+	if (!edev)
 		return ERR_PTR(-ENETDOWN);
 
+	if (!is_valid_ether_addr(net_ether)) {
+		char str[sizeof("xx:xx:xx:xx:xx:xx")];
+		random_ether_addr(net_ether);
+		ethaddr_to_string(net_ether, str);
+		printf("warning: No MAC address set. Using random address %s\n", str);
+		dev_set_param(&edev->dev, "ethaddr", str);
+	}
+
 	/* If we don't have an ip only broadcast is allowed */
 	if (!net_ip && dest != 0xffffffff)
 		return ERR_PTR(-ENETDOWN);
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
