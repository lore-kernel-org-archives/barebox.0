Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fs09f-0002Tt-G9
 for barebox@lists.infradead.org; Tue, 21 Aug 2018 06:28:40 +0000
Received: by mail-pg1-x542.google.com with SMTP id z25-v6so3279495pgu.7
 for <barebox@lists.infradead.org>; Mon, 20 Aug 2018 23:28:29 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Subject: [PATCH] net: Do not route traffic to interfaces that are not up
Date: Mon, 20 Aug 2018 23:28:19 -0700
Message-Id: <20180821062819.18087-1-andrew.smirnov@gmail.com>
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
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

In the case when:

  - Board has multiple network interfaces

  - Two ore more of those interfaces are statically configured to be
    on the same network

  - Only one of those interfaces is up and it is preceeded (as far as
    for_each_netdev is concerned) by interface in the same network
    that isn't

net_route() will choose "non-up" device as a route for traffic
resulting in no network connectivity. Change the routing logic to also
consider if interface is "up", so that only such interfaces would be
considered for sending network traffic out.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 net/net.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/net.c b/net/net.c
index d21855415..63f42fa5c 100644
--- a/net/net.c
+++ b/net/net.c
@@ -149,7 +149,7 @@ struct eth_device *net_route(IPaddr_t dest)
 	struct eth_device *edev;
 
 	for_each_netdev(edev) {
-		if (!edev->ipaddr)
+		if (!edev->ipaddr || !edev->ifup)
 			continue;
 
 		if ((dest & edev->netmask) == (edev->ipaddr & edev->netmask)) {
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
