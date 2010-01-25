Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NZJRA-0005qB-JW
	for barebox@lists.infradead.org; Mon, 25 Jan 2010 07:32:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 25 Jan 2010 08:32:27 +0100
Message-Id: <1264404750-11596-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1264404750-11596-9-git-send-email-s.hauer@pengutronix.de>
References: <1264404750-11596-1-git-send-email-s.hauer@pengutronix.de>
	<1264404750-11596-2-git-send-email-s.hauer@pengutronix.de>
	<1264404750-11596-3-git-send-email-s.hauer@pengutronix.de>
	<1264404750-11596-4-git-send-email-s.hauer@pengutronix.de>
	<1264404750-11596-5-git-send-email-s.hauer@pengutronix.de>
	<1264404750-11596-6-git-send-email-s.hauer@pengutronix.de>
	<1264404750-11596-7-git-send-email-s.hauer@pengutronix.de>
	<1264404750-11596-8-git-send-email-s.hauer@pengutronix.de>
	<1264404750-11596-9-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/12] replace ET_DEBUG with pr_debug
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/net.c  |   69 ++++++++++++++++++++---------------------------------------
 net/ping.c |    4 +--
 net/tftp.c |    2 -
 3 files changed, 25 insertions(+), 50 deletions(-)

diff --git a/net/net.c b/net/net.c
index 9818f42..7dc1bc6 100644
--- a/net/net.c
+++ b/net/net.c
@@ -153,9 +153,8 @@ void ArpRequest (void)
 	uchar *pkt;
 	ARP_t *arp;
 
-#ifdef ET_DEBUG
-	printf ("ARP broadcast\n");
-#endif
+	pr_debug("ARP broadcast\n");
+
 	pkt = NetTxPacket;
 
 	pkt += NetSetEther (pkt, NetBcastAddr, PROT_ARP);
@@ -379,10 +378,8 @@ NetSendUDPPacket(uchar *ether, IPaddr_t dest, int dport, int sport, int len)
 
 	/* if MAC address was not discovered yet, save the packet and do an ARP request */
 	if (memcmp(ether, NetEtherNullAddr, 6) == 0) {
+		pr_debug("sending ARP for %08lx\n", dest);
 
-#ifdef ET_DEBUG
-		printf("sending ARP for %08lx\n", dest);
-#endif
 		NetArpWaitPacketIP = dest;
 		NetArpWaitPacketMAC = ether;
 
@@ -401,10 +398,8 @@ NetSendUDPPacket(uchar *ether, IPaddr_t dest, int dport, int sport, int len)
 		return 1;	/* waiting */
 	}
 
-#ifdef ET_DEBUG
-	printf("sending UDP to %08lx/%02x:%02x:%02x:%02x:%02x:%02x\n",
+	pr_debug("sending UDP to %08lx/%02x:%02x:%02x:%02x:%02x:%02x\n",
 		dest, ether[0], ether[1], ether[2], ether[3], ether[4], ether[5]);
-#endif
 
 	pkt = (uchar *)NetTxPacket;
 	pkt += NetSetEther (pkt, ether, PROT_IP);
@@ -425,9 +420,7 @@ NetReceive(uchar * inpkt, int len)
 	uchar *pkt;
 	ushort cti = 0, vlanid = VLAN_NONE, myvlanid, mynvlanid;
 
-#ifdef ET_DEBUG
-	printf("packet received\n");
-#endif
+	pr_debug("packet received\n");
 
 	NetRxPkt = inpkt;
 	NetRxPktLen = len;
@@ -446,9 +439,7 @@ NetReceive(uchar * inpkt, int len)
 
 	x = ntohs(et->et_protlen);
 
-#ifdef ET_DEBUG
-	printf("packet received\n");
-#endif
+	pr_debug("packet received\n");
 
 	if (x < 1514) {
 		/*
@@ -466,9 +457,8 @@ NetReceive(uchar * inpkt, int len)
 	} else {			/* VLAN packet */
 		VLAN_Ethernet_t *vet = (VLAN_Ethernet_t *)et;
 
-#ifdef ET_DEBUG
-		printf("VLAN packet received\n");
-#endif
+		pr_debug("VLAN packet received\n");
+
 		/* too small packet? */
 		if (len < VLAN_ETHER_HDR_SIZE)
 			return;
@@ -486,9 +476,7 @@ NetReceive(uchar * inpkt, int len)
 		len -= VLAN_ETHER_HDR_SIZE;
 	}
 
-#ifdef ET_DEBUG
-	printf("Receive from protocol 0x%x\n", x);
-#endif
+	pr_debug("Receive from protocol 0x%x\n", x);
 
 	if ((myvlanid & VLAN_IDMASK) != VLAN_NONE) {
 		if (vlanid == VLAN_NONE)
@@ -510,9 +498,8 @@ NetReceive(uchar * inpkt, int len)
 		 *   address; so if we receive such a packet, we set
 		 *   the server ethernet address
 		 */
-#ifdef ET_DEBUG
-		puts ("Got ARP\n");
-#endif
+		pr_debug("Got ARP\n");
+
 		arp = (ARP_t *)ip;
 		if (len < ARP_HDR_SIZE) {
 			printf("bad length %d < %d\n", len, ARP_HDR_SIZE);
@@ -541,9 +528,8 @@ NetReceive(uchar * inpkt, int len)
 
 		switch (ntohs(arp->ar_op)) {
 		case ARPOP_REQUEST:		/* reply with our IP address	*/
-#ifdef ET_DEBUG
-			puts ("Got ARP REQUEST, return our IP\n");
-#endif
+			pr_debug("Got ARP REQUEST, return our IP\n");
+
 			pkt = (uchar *)et;
 			pkt += NetSetEther(pkt, et->et_src, PROT_ARP);
 			arp->ar_op = htons(ARPOP_REPLY);
@@ -559,20 +545,17 @@ NetReceive(uchar * inpkt, int len)
 			/* are we waiting for a reply */
 			if (!NetArpWaitPacketIP || !NetArpWaitPacketMAC)
 				break;
-#ifdef ET_DEBUG
-			printf("Got ARP REPLY, set server/gtwy eth addr (%02x:%02x:%02x:%02x:%02x:%02x)\n",
+			pr_debug("Got ARP REPLY, set server/gtwy eth addr (%02x:%02x:%02x:%02x:%02x:%02x)\n",
 				arp->ar_data[0], arp->ar_data[1],
 				arp->ar_data[2], arp->ar_data[3],
 				arp->ar_data[4], arp->ar_data[5]);
-#endif
 
 			tmp = NetReadIP(&arp->ar_data[6]);
 
 			/* matched waiting packet's address */
 			if (tmp == NetArpWaitReplyIP) {
-#ifdef ET_DEBUG
-				puts ("Got it\n");
-#endif
+				pr_debug("Got it\n");
+
 				/* save address for later use */
 				memcpy(NetArpWaitPacketMAC, &arp->ar_data[0], 6);
 
@@ -588,17 +571,14 @@ NetReceive(uchar * inpkt, int len)
 			}
 			return;
 		default:
-#ifdef ET_DEBUG
-			printf("Unexpected ARP opcode 0x%x\n", ntohs(arp->ar_op));
-#endif
+			pr_debug("Unexpected ARP opcode 0x%x\n", ntohs(arp->ar_op));
 			return;
 		}
 		break;
 
 	case PROT_RARP:
-#ifdef ET_DEBUG
-		puts ("Got RARP\n");
-#endif
+		pr_debug("Got RARP\n");
+
 		arp = (ARP_t *)ip;
 		if (len < ARP_HDR_SIZE) {
 			printf("bad length %d < %d\n", len, ARP_HDR_SIZE);
@@ -622,9 +602,8 @@ NetReceive(uchar * inpkt, int len)
 		break;
 
 	case PROT_IP:
-#ifdef ET_DEBUG
-		puts ("Got IP\n");
-#endif
+		pr_debug("Got IP\n");
+
 		if (len < IP_HDR_SIZE) {
 			debug ("len bad %d < %d\n", len, IP_HDR_SIZE);
 			return;
@@ -634,9 +613,9 @@ NetReceive(uchar * inpkt, int len)
 			return;
 		}
 		len = ntohs(ip->ip_len);
-#ifdef ET_DEBUG
-		printf("len=%d, v=%02x\n", len, ip->ip_hl_v & 0xff);
-#endif
+
+		pr_debug("len=%d, v=%02x\n", len, ip->ip_hl_v & 0xff);
+
 		if ((ip->ip_hl_v & 0xf0) != 0x40) {
 			return;
 		}
diff --git a/net/ping.c b/net/ping.c
index 8759fd7..1bc481a 100644
--- a/net/ping.c
+++ b/net/ping.c
@@ -18,9 +18,7 @@ static int PingSend(void)
 
 	memcpy(mac, NetEtherNullAddr, 6);
 
-#ifdef ET_DEBUG
-	printf("sending ARP for %08lx\n", NetPingIP);
-#endif
+	pr_debug("sending ARP for %08lx\n", NetPingIP);
 
 	NetArpWaitPacketIP = NetPingIP;
 	NetArpWaitPacketMAC = mac;
diff --git a/net/tftp.c b/net/tftp.c
index 897bc48..26f0c43 100644
--- a/net/tftp.c
+++ b/net/tftp.c
@@ -15,8 +15,6 @@
 #include <fcntl.h>
 #include "tftp.h"
 
-#undef	ET_DEBUG
-
 #define WELL_KNOWN_PORT	69		/* Well known TFTP port #		*/
 #define TIMEOUT		5		/* Seconds to timeout for a lost pkt	*/
 # define TIMEOUT_COUNT	10		/* # of timeouts before giving up  */
-- 
1.6.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
