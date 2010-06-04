Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1OKTcP-00034t-8e
	for barebox@lists.infradead.org; Fri, 04 Jun 2010 09:55:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  4 Jun 2010 11:55:02 +0200
Message-Id: <1275645309-9756-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1275645309-9756-1-git-send-email-s.hauer@pengutronix.de>
References: <1275645309-9756-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/13] implement ping using new network stack
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/ping.c |  147 ++++++++++++++++++++++++++++++------------------------------
 1 files changed, 74 insertions(+), 73 deletions(-)

diff --git a/net/ping.c b/net/ping.c
index 7e21fe4..0f9868e 100644
--- a/net/ping.c
+++ b/net/ping.c
@@ -2,102 +2,103 @@
 #include <command.h>
 #include <clock.h>
 #include <net.h>
+#include <errno.h>
+#include <linux/err.h>
 
-static ushort PingSeqNo;
+static uint16_t ping_sequence_number;
 
-static IPaddr_t	NetPingIP;		/* the ip address to ping 		*/
+static IPaddr_t	net_ping_ip;		/* the ip address to ping 		*/
 
-static int PingSend(void)
-{
-	static uchar mac[6];
-	IP_t *ip;
-	ushort *s;
-	uchar *pkt;
-
-	/* XXX always send arp request */
-
-	memcpy(mac, NetEtherNullAddr, 6);
-
-	pr_debug("sending ARP for %08lx\n", NetPingIP);
-
-	NetArpWaitPacketIP = NetPingIP;
-	NetArpWaitPacketMAC = mac;
-
-	pkt = NetArpWaitTxPacket;
-	pkt += NetSetEther(pkt, mac, PROT_IP);
-
-	ip = (IP_t *)pkt;
-
-	/*
-	 *	Construct an IP and ICMP header.  (need to set no fragment bit - XXX)
-	 */
-	ip->ip_hl_v  = 0x45;		/* IP_HDR_SIZE / 4 (not including UDP) */
-	ip->ip_tos   = 0;
-	ip->ip_len   = htons(IP_HDR_SIZE_NO_UDP + 8);
-	ip->ip_id    = htons(NetIPID++);
-	ip->ip_off   = htons(0x4000);	/* No fragmentation */
-	ip->ip_ttl   = 255;
-	ip->ip_p     = 0x01;		/* ICMP */
-	ip->ip_sum   = 0;
-	NetCopyIP((void*)&ip->ip_src, &NetOurIP); /* already in network byte order */
-	NetCopyIP((void*)&ip->ip_dst, &NetPingIP);	   /* - "" - */
-	ip->ip_sum   = ~NetCksum((uchar *)ip, IP_HDR_SIZE_NO_UDP / 2);
-
-	s = &ip->udp_src;		/* XXX ICMP starts here */
-	s[0] = htons(0x0800);		/* echo-request, code */
-	s[1] = 0;			/* checksum */
-	s[2] = 0; 			/* identifier */
-	s[3] = htons(PingSeqNo++);	/* sequence number */
-	s[1] = ~NetCksum((uchar *)s, 8/2);
-
-	/* size of the waiting packet */
-	NetArpWaitTxPacketSize = (pkt - NetArpWaitTxPacket) + IP_HDR_SIZE_NO_UDP + 8;
-
-	/* and do the ARP request */
-	NetArpWaitTimerStart = get_time_ns();
-	ArpRequest();
-	return 1;	/* waiting */
-}
+#define PING_STATE_INIT		0
+#define PING_STATE_SUCCESS	1
+
+static int ping_state;
 
-static void
-PingTimeout (void)
+static struct net_connection *ping_con;
+
+static int ping_send(void)
 {
-	NetState = NETLOOP_FAIL;	/* we did not get the reply */
+	unsigned char *payload;
+	struct icmphdr *icmp;
+	uint64_t ts;
+
+	icmp = ping_con->icmp;
+
+	icmp->type = ICMP_ECHO_REQUEST;
+	icmp->code = 0;
+	icmp->checksum = 0;
+	icmp->un.echo.id = 0;
+	icmp->un.echo.sequence = htons(ping_sequence_number);
+
+	ping_sequence_number++;
+
+	payload = (char *)(icmp + 1);
+	ts = get_time_ns();
+	memcpy(payload, &ts, sizeof(ts));
+	payload[8] = 0xab;
+	payload[9] = 0xcd;
+	return net_icmp_send(ping_con, 9);
 }
 
-static void
-PingHandler (uchar * pkt, unsigned dest, unsigned src, unsigned len)
+void ping_handler(char *pkt, unsigned len)
 {
 	IPaddr_t tmp;
-	IP_t *ip = (IP_t *)pkt;
+	struct iphdr *ip = net_eth_to_iphdr(pkt);
 
-	tmp = NetReadIP((void *)&ip->ip_src);
-	if (tmp != NetPingIP)
+	tmp = net_read_ip((void *)&ip->saddr);
+	if (tmp != net_ping_ip)
 		return;
 
-	NetState = NETLOOP_SUCCESS;
+	ping_state = PING_STATE_SUCCESS;
 }
 
 int do_ping(struct command *cmdtp, int argc, char *argv[])
 {
-	if (argc < 2 || string_to_ip(argv[1], &NetPingIP))
+	int ret;
+	uint64_t ping_start = 0;
+
+	if (argc < 2 || string_to_ip(argv[1], &net_ping_ip))
 		return COMMAND_ERROR_USAGE;
 
-	if (NetLoopInit(PING) < 0)
-		return 1;
+	ping_con = net_icmp_new(net_ping_ip, ping_handler);
+	if (IS_ERR(ping_con)) {
+		ret = PTR_ERR(ping_con);
+		goto out;
+	}
+
+	ping_start = get_time_ns();
+	ret = ping_send();
+	if (ret)
+		goto out_unreg;
+
+	ping_state = PING_STATE_INIT;
+	ping_sequence_number = 0;
+
+	while (ping_state == PING_STATE_INIT) {
+		if (ctrlc()) {
+			ret = -EINTR;
+			break;
+		}
 
-	NetSetTimeout (10 * SECOND, PingTimeout);
-	NetSetHandler (PingHandler);
-	PingSend();
+		net_poll();
 
-	if (NetLoop() < 0) {
-		printf("ping failed; host %s is not alive\n", argv[1]);
-		return 1;
+		if (is_timeout(ping_start, 10 * SECOND)) {
+			ping_start = get_time_ns();
+			ret = ping_send();
+			if (ret)
+				goto out_unreg;
+		}
 	}
 
-	printf("host %s is alive\n", argv[1]);
+	if (!ret)
+		printf("host %s is alive\n", argv[1]);
 
-	return 0;
+out_unreg:
+	net_unregister(ping_con);
+out:
+	if (ret)
+		printf("ping failed: %s\n", strerror(-ret));
+	return ping_state == PING_STATE_SUCCESS ? 0 : 1;
 }
 
 BAREBOX_CMD_START(ping)
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
