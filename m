Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SFShd-0000Pe-7Z
 for barebox@lists.infradead.org; Wed, 04 Apr 2012 16:04:58 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Wed,  4 Apr 2012 18:04:42 +0200
Message-Id: <1333555484-32635-5-git-send-email-w.sang@pengutronix.de>
In-Reply-To: <1333555484-32635-1-git-send-email-w.sang@pengutronix.de>
References: <1333555484-32635-1-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH 4/6] net: arp_request: do not retry endlessly
To: barebox@lists.infradead.org

Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---
 include/net.h |    2 ++
 net/net.c     |    5 +++++
 2 files changed, 7 insertions(+), 0 deletions(-)

diff --git a/include/net.h b/include/net.h
index 0ebe198..3f2187e 100644
--- a/include/net.h
+++ b/include/net.h
@@ -21,6 +21,8 @@
 #include <led.h>
 #include <asm/byteorder.h>	/* for nton* / ntoh* stuff */
 
+/* How often do we retry to send packages */
+#define PKT_NUM_RETRIES 4
 
 /* The number of receive packet buffers */
 #define PKTBUFSRX	4
diff --git a/net/net.c b/net/net.c
index 39db75e..046ddd4 100644
--- a/net/net.c
+++ b/net/net.c
@@ -223,6 +223,7 @@ static int arp_request(IPaddr_t dest, unsigned char *ether)
 	uint64_t arp_start;
 	static char *arp_packet;
 	struct ethernet *et;
+	unsigned retries = 0;
 
 	if (!arp_packet) {
 		arp_packet = net_alloc_packet();
@@ -277,8 +278,12 @@ static int arp_request(IPaddr_t dest, unsigned char *ether)
 			printf("T ");
 			arp_start = get_time_ns();
 			eth_send(arp_packet, ETHER_HDR_SIZE + ARP_HDR_SIZE);
+			retries++;
 		}
 
+		if (retries > PKT_NUM_RETRIES)
+			return -ETIMEDOUT;
+
 		net_poll();
 	}
 
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
