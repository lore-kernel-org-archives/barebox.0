Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x235.google.com ([2a00:1450:4010:c03::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X25DV-0002D1-To
 for barebox@lists.infradead.org; Tue, 01 Jul 2014 21:03:54 +0000
Received: by mail-la0-f53.google.com with SMTP id b8so6262504lan.40
 for <barebox@lists.infradead.org>; Tue, 01 Jul 2014 14:03:30 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed,  2 Jul 2014 01:03:23 +0400
Message-Id: <1404248604-15368-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1404248604-15368-1-git-send-email-antonynpavlov@gmail.com>
References: <1404248604-15368-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v3 1/2] net.h: add ETH_ALEN constant; fix whitespaces
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 include/net.h | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/include/net.h b/include/net.h
index c0f7517..364011b 100644
--- a/include/net.h
+++ b/include/net.h
@@ -369,6 +369,8 @@ static inline int is_broadcast_ether_addr(const u8 *addr)
 	return (addr[0] & addr[1] & addr[2] & addr[3] & addr[4] & addr[5]) == 0xff;
 }
 
+#define ETH_ALEN 6
+
 /**
  * random_ether_addr - Generate software assigned random Ethernet address
  * @addr: Pointer to a six-byte array containing the Ethernet address
@@ -379,9 +381,9 @@ static inline int is_broadcast_ether_addr(const u8 *addr)
 static inline void random_ether_addr(u8 *addr)
 {
 	srand(get_time_ns());
-	get_random_bytes(addr, 6);
-	addr [0] &= 0xfe;	/* clear multicast bit */
-	addr [0] |= 0x02;	/* set local assignment bit (IEEE802) */
+	get_random_bytes(addr, ETH_ALEN);
+	addr[0] &= 0xfe;	/* clear multicast bit */
+	addr[0] |= 0x02;	/* set local assignment bit (IEEE802) */
 }
 
 /**
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
