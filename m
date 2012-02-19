Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RzB1s-0007jf-7b
 for barebox@lists.infradead.org; Sun, 19 Feb 2012 17:58:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 19 Feb 2012 18:58:06 +0100
Message-Id: <1329674288-25583-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1329674288-25583-1-git-send-email-s.hauer@pengutronix.de>
References: <1329674288-25583-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/5] net: let net_udp_get_payload return void *
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/net.h |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/include/net.h b/include/net.h
index d0f8341..1026793 100644
--- a/include/net.h
+++ b/include/net.h
@@ -415,7 +415,7 @@ static inline int net_udp_bind(struct net_connection *con, int sport)
 	return 0;
 }
 
-static inline unsigned char *net_udp_get_payload(struct net_connection *con)
+static inline void *net_udp_get_payload(struct net_connection *con)
 {
 	return con->packet + sizeof(struct ethernet) + sizeof(struct iphdr) +
 		sizeof(struct udphdr);
-- 
1.7.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
