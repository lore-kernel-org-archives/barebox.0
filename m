Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x234.google.com ([2a00:1450:4010:c03::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZHIXs-00087A-9i
 for barebox@lists.infradead.org; Mon, 20 Jul 2015 21:24:21 +0000
Received: by lahe2 with SMTP id e2so42603473lah.1
 for <barebox@lists.infradead.org>; Mon, 20 Jul 2015 14:23:58 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 21 Jul 2015 00:23:48 +0300
Message-Id: <1437427428-24176-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] net: eth_send: Allow to use multiple network interfaces at
 once
To: barebox@lists.infradead.org

The commit

commit be0404c21f22da2d736168b2e56a9ae583cc3e95
Author: Sascha Hauer <s.hauer@pengutronix.de>
Date:   Wed May 14 16:08:04 2014 +0200

    net: Allow to use multiple network interfaces at once

changes the eth_send() function:

-       return eth_current->send(eth_current, packet, length);
+       return edev->send(eth_current, packet, length);

But we have to change the both eth_current occurrences to edev here!

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 net/eth.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/eth.c b/net/eth.c
index a090961..bea4706 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -243,7 +243,7 @@ int eth_send(struct eth_device *edev, void *packet, int length)
 
 	led_trigger_network(LED_TRIGGER_NET_TX);
 
-	return edev->send(eth_current, packet, length);
+	return edev->send(edev, packet, length);
 }
 
 static int __eth_rx(struct eth_device *edev)
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
