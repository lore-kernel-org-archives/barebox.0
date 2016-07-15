Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bNxTB-00059I-RZ
 for barebox@lists.infradead.org; Fri, 15 Jul 2016 07:23:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 15 Jul 2016 09:23:09 +0200
Message-Id: <1468567389-28169-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1468567389-28169-1-git-send-email-s.hauer@pengutronix.de>
References: <1468567389-28169-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/5] net: Pass network device to net_answer_arp()
To: Barebox List <barebox@lists.infradead.org>

The caller already has the correct network device, so pass it
to net_answer_arp() rather than using eth_get_current() there.
This is a step towards making a global current network device
unnecessary.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/net.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/net/net.c b/net/net.c
index e5bd9bb..df1d677 100644
--- a/net/net.c
+++ b/net/net.c
@@ -379,11 +379,10 @@ int net_icmp_send(struct net_connection *con, int len)
 	return net_ip_send(con, sizeof(struct icmphdr) + len);
 }
 
-static int net_answer_arp(unsigned char *pkt, int len)
+static int net_answer_arp(struct eth_device *edev, unsigned char *pkt, int len)
 {
 	struct arprequest *arp = (struct arprequest *)(pkt + ETHER_HDR_SIZE);
 	struct ethernet *et = (struct ethernet *)pkt;
-	struct eth_device *edev = eth_get_current();
 	unsigned char *packet;
 	int ret;
 
@@ -453,7 +452,7 @@ static int net_handle_arp(struct eth_device *edev, unsigned char *pkt, int len)
 
 	switch (ntohs(arp->ar_op)) {
 	case ARPOP_REQUEST:
-		return net_answer_arp(pkt, len);
+		return net_answer_arp(edev, pkt, len);
 	case ARPOP_REPLY:
 		arp_handler(arp);
 		return 1;
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
