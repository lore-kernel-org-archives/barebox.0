Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22a.google.com ([2a00:1450:4010:c04::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZGusL-0007ld-IV
 for barebox@lists.infradead.org; Sun, 19 Jul 2015 20:07:54 +0000
Received: by lbbqi7 with SMTP id qi7so4571641lbb.3
 for <barebox@lists.infradead.org>; Sun, 19 Jul 2015 13:07:31 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun, 19 Jul 2015 23:07:08 +0300
Message-Id: <1437336443-8076-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1437336443-8076-1-git-send-email-antonynpavlov@gmail.com>
References: <1437336443-8076-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC v2 01/16] net_udp_bind(): use uint16_t type for source port
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 include/net.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/net.h b/include/net.h
index b93e264..d7a4751 100644
--- a/include/net.h
+++ b/include/net.h
@@ -445,7 +445,7 @@ struct net_connection *net_icmp_new(IPaddr_t dest, rx_handler_f *handler,
 
 void net_unregister(struct net_connection *con);
 
-static inline int net_udp_bind(struct net_connection *con, int sport)
+static inline int net_udp_bind(struct net_connection *con, uint16_t sport)
 {
 	con->udp->uh_sport = ntohs(sport);
 	return 0;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
