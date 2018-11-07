Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gKULM-0008DP-UT
 for barebox@lists.infradead.org; Wed, 07 Nov 2018 20:22:30 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1gKUL9-0005DO-Ae
 for barebox@lists.infradead.org; Wed, 07 Nov 2018 21:22:15 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed,  7 Nov 2018 21:22:15 +0100
Message-Id: <20181107202215.2312-1-l.stach@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] net: only use ethaddrs registered with device node on that
 device
To: barebox@lists.infradead.org

If an ethaddr is registered with a device node the ethid is set
to 0 via the struct initialization. Now if a device without a node
(for eaxample a USB network adapter) with ethid 0 looks up the
ethaddr it will wrongly get that address assigned, as the ethid
matches.

Avoid this by setting the ethid to something that no device will
ever use when the addr is registered via a device node.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 net/eth.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/net/eth.c b/net/eth.c
index 9dc44119528e..badd18343349 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -150,6 +150,7 @@ void of_eth_register_ethaddr(struct device_node *node, const char *ethaddr)
 
 	addr = xzalloc(sizeof(*addr));
 	addr->node = node;
+	addr->ethid = -1;
 	memcpy(addr->ethaddr, ethaddr, ETH_ALEN);
 	list_add_tail(&addr->list, &ethaddr_list);
 }
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
