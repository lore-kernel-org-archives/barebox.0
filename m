Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WJ84O-0003To-6y
 for barebox@lists.infradead.org; Thu, 27 Feb 2014 21:00:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 27 Feb 2014 22:00:09 +0100
Message-Id: <1393534812-30995-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1393534812-30995-1-git-send-email-s.hauer@pengutronix.de>
References: <1393534812-30995-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/5] net: constify eth_get_byname argument
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/net.h | 2 +-
 net/eth.c     | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/net.h b/include/net.h
index 6c86947..a680f97 100644
--- a/include/net.h
+++ b/include/net.h
@@ -404,7 +404,7 @@ typedef void rx_handler_f(void *ctx, char *packet, unsigned int len);
 
 void eth_set_current(struct eth_device *eth);
 struct eth_device *eth_get_current(void);
-struct eth_device *eth_get_byname(char *name);
+struct eth_device *eth_get_byname(const char *name);
 
 /**
  * net_receive - Pass a received packet from an ethernet driver to the protocol stack
diff --git a/net/eth.c b/net/eth.c
index 524fb89..1f48f2d 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -144,7 +144,7 @@ struct eth_device * eth_get_current(void)
 	return eth_current;
 }
 
-struct eth_device *eth_get_byname(char *ethname)
+struct eth_device *eth_get_byname(const char *ethname)
 {
 	struct eth_device *edev;
 
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
