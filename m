Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P8Bj9-0005qt-UG
	for barebox@lists.infradead.org; Tue, 19 Oct 2010 12:55:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Oct 2010 14:55:21 +0200
Message-Id: <1287492930-15716-34-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1287492930-15716-1-git-send-email-s.hauer@pengutronix.de>
References: <1287492930-15716-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 33/42] net: make locally used functions static
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/net.c |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/net/net.c b/net/net.c
index 8d99595..a613d1d 100644
--- a/net/net.c
+++ b/net/net.c
@@ -209,7 +209,7 @@ static void arp_handler(struct arprequest *arp)
 	}
 }
 
-int arp_request(IPaddr_t dest, unsigned char *ether)
+static int arp_request(IPaddr_t dest, unsigned char *ether)
 {
 	char *pkt;
 	struct arprequest *arp;
@@ -437,7 +437,7 @@ void net_unregister(struct net_connection *con)
 	free(con);
 }
 
-int net_ip_send(struct net_connection *con, int len)
+static int net_ip_send(struct net_connection *con, int len)
 {
 	con->ip->tot_len = htons(sizeof(struct iphdr) + len);
 	con->ip->id = htons(net_ip_id++);;
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
