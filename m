Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NZJRA-0005q7-9f
	for barebox@lists.infradead.org; Mon, 25 Jan 2010 07:32:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 25 Jan 2010 08:32:22 +0100
Message-Id: <1264404750-11596-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1264404750-11596-4-git-send-email-s.hauer@pengutronix.de>
References: <1264404750-11596-1-git-send-email-s.hauer@pengutronix.de>
	<1264404750-11596-2-git-send-email-s.hauer@pengutronix.de>
	<1264404750-11596-3-git-send-email-s.hauer@pengutronix.de>
	<1264404750-11596-4-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/12] remove unused NETCONSOLE stuff
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/net.c |   10 ----------
 1 files changed, 0 insertions(+), 10 deletions(-)

diff --git a/net/net.c b/net/net.c
index 214685c..9818f42 100644
--- a/net/net.c
+++ b/net/net.c
@@ -576,9 +576,6 @@ NetReceive(uchar * inpkt, int len)
 				/* save address for later use */
 				memcpy(NetArpWaitPacketMAC, &arp->ar_data[0], 6);
 
-#ifdef CONFIG_NETCONSOLE
-				(*packetHandler)(0,0,0,0);
-#endif
 				/* modify header, and transmit it */
 				memcpy(((Ethernet_t *)NetArpWaitTxPacket)->et_dest, NetArpWaitPacketMAC, 6);
 				(void) eth_send(NetArpWaitTxPacket, NetArpWaitTxPacketSize);
@@ -737,13 +734,6 @@ NetReceive(uchar * inpkt, int len)
 			}
 		}
 #endif
-
-#ifdef CONFIG_NETCONSOLE
-		nc_input_packet((uchar *)ip +IP_HDR_SIZE,
-						ntohs(ip->udp_dst),
-						ntohs(ip->udp_src),
-						ntohs(ip->udp_len) - 8);
-#endif
 		/*
 		 *	IP header OK.  Pass the packet to the current handler.
 		 */
-- 
1.6.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
