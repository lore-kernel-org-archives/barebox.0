Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OO6He-00080N-J3
	for barebox@lists.infradead.org; Mon, 14 Jun 2010 09:48:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 14 Jun 2010 11:48:35 +0200
Message-Id: <1276508921-3264-6-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/11] net: implement random_ether_addr
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/net.h |   17 +++++++++++++++++
 1 files changed, 17 insertions(+), 0 deletions(-)

diff --git a/include/net.h b/include/net.h
index 8db83d8..2e17e39 100644
--- a/include/net.h
+++ b/include/net.h
@@ -16,6 +16,8 @@
 #include <linux/types.h>
 #include <param.h>
 #include <malloc.h>
+#include <clock.h>
+#include <random.h>
 #include <asm/byteorder.h>	/* for nton* / ntoh* stuff */
 
 
@@ -331,6 +333,21 @@ static inline int is_broadcast_ether_addr(const u8 *addr)
 }
 
 /**
+ * random_ether_addr - Generate software assigned random Ethernet address
+ * @addr: Pointer to a six-byte array containing the Ethernet address
+ *
+ * Generate a random Ethernet address (MAC) that is not multicast
+ * and has the local assigned bit set.
+ */
+static inline void random_ether_addr(u8 *addr)
+{
+	srand(get_time_ns());
+	get_random_bytes(addr, 6);
+	addr [0] &= 0xfe;	/* clear multicast bit */
+	addr [0] |= 0x02;	/* set local assignment bit (IEEE802) */
+}
+
+/**
  * is_valid_ether_addr - Determine if the given Ethernet address is valid
  * @addr: Pointer to a six-byte array containing the Ethernet address
  *
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
