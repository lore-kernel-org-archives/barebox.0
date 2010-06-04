Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1OKTcP-00034p-1Z
	for barebox@lists.infradead.org; Fri, 04 Jun 2010 09:55:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  4 Jun 2010 11:54:58 +0200
Message-Id: <1275645309-9756-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/13] net: Implement a new network stack
To: barebox@lists.infradead.org

The old network stack has some bad limitations:

- network commands are required to call NetLoop() which only returns when
  the network layer wants to. Instead we now use a net_poll() function which
  returns after handling one packet (or immediately if no packet is
  available).
- There can be only one packet handler which makes it impossible to handle
  multiple connections
- CamelCaseMakesItHardToRead

The new network stack is implemented as a parallel universe. Currently all
commands still use the old stack. They are converted in subsequent patches.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/net.h |  339 +++++++++++++++++++++++++++++++++++++-
 net/net.c     |  521 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++-
 2 files changed, 854 insertions(+), 6 deletions(-)

diff --git a/include/net.h b/include/net.h
index de78293..f588a3d 100644
--- a/include/net.h
+++ b/include/net.h
@@ -15,6 +15,7 @@
 #include <driver.h>
 #include <linux/types.h>
 #include <param.h>
+#include <malloc.h>
 #include <asm/byteorder.h>	/* for nton* / ntoh* stuff */
 
 
@@ -186,8 +187,6 @@ typedef struct
 	uchar		ar_data[0];
 } ARP_t;
 
-#define ARP_HDR_SIZE	(8+20)		/* Size assuming ethernet	*/
-
 /*
  * ICMP stuff (just enough to handle (host) redirect messages)
  */
@@ -199,7 +198,7 @@ typedef struct
 #define ICMP_REDIR_NET		0	/* Redirect Net			*/
 #define ICMP_REDIR_HOST		1	/* Redirect Host		*/
 
-typedef struct icmphdr {
+typedef struct {
 	uchar		type;
 	uchar		code;
 	ushort		checksum;
@@ -415,4 +414,338 @@ void eth_set_current(struct eth_device *eth);
 struct eth_device *eth_get_current(void);
 struct eth_device *eth_get_byname(char *name);
 
+/*
+ *	Ethernet header
+ */
+struct ethernet {
+	uint8_t		et_dest[6];	/* Destination node		*/
+	uint8_t		et_src[6];	/* Source node			*/
+	uint16_t	et_protlen;	/* Protocol or length		*/
+} __attribute__ ((packed));
+
+#define ETHER_HDR_SIZE	14		/* Ethernet header size		*/
+
+#define PROT_IP		0x0800		/* IP protocol			*/
+#define PROT_ARP	0x0806		/* IP ARP protocol		*/
+#define PROT_RARP	0x8035		/* IP ARP protocol		*/
+#define PROT_VLAN	0x8100		/* IEEE 802.1q protocol		*/
+
+#define IPPROTO_ICMP	 1	/* Internet Control Message Protocol	*/
+#define IPPROTO_UDP	17	/* User Datagram Protocol		*/
+
+/*
+ *	Internet Protocol (IP) header.
+ */
+struct iphdr {
+	uint8_t		hl_v;
+	uint8_t		tos;
+	uint16_t	tot_len;
+	uint16_t	id;
+	uint16_t	frag_off;
+	uint8_t		ttl;
+	uint8_t		protocol;
+	uint16_t	check;
+	uint32_t	saddr;
+	uint32_t	daddr;
+	/* The options start here. */
+} __attribute__ ((packed));
+
+struct udphdr {
+	uint16_t	uh_sport;	/* source port */
+	uint16_t	uh_dport;	/* destination port */
+	uint16_t	uh_ulen;	/* udp length */
+	uint16_t	uh_sum;		/* udp checksum */
+} __attribute__ ((packed));
+
+/*
+ *	Address Resolution Protocol (ARP) header.
+ */
+struct arprequest
+{
+	uint16_t	ar_hrd;		/* Format of hardware address	*/
+#define ARP_ETHER	1		/* Ethernet  hardware address	*/
+	uint16_t	ar_pro;		/* Format of protocol address	*/
+	uint8_t		ar_hln;		/* Length of hardware address	*/
+	uint8_t		ar_pln;		/* Length of protocol address	*/
+	uint16_t	ar_op;		/* Operation			*/
+#define ARPOP_REQUEST	1		/* Request  to resolve  address	*/
+#define ARPOP_REPLY	2		/* Response to previous request	*/
+
+#define RARPOP_REQUEST	3		/* Request  to resolve  address	*/
+#define RARPOP_REPLY	4		/* Response to previous request */
+
+	/*
+	 * The remaining fields are variable in size, according to
+	 * the sizes above, and are defined as appropriate for
+	 * specific hardware/protocol combinations.
+	 */
+	uint8_t		ar_data[0];
+} __attribute__ ((packed));
+
+#define ARP_HDR_SIZE	(8 + 20)	/* Size assuming ethernet	*/
+
+/*
+ * ICMP stuff (just enough to handle (host) redirect messages)
+ */
+#define ICMP_ECHO_REPLY		0	/* Echo reply 			*/
+#define ICMP_REDIRECT		5	/* Redirect (change route)	*/
+#define ICMP_ECHO_REQUEST	8	/* Echo request			*/
+
+/* Codes for REDIRECT. */
+#define ICMP_REDIR_NET		0	/* Redirect Net			*/
+#define ICMP_REDIR_HOST		1	/* Redirect Host		*/
+
+struct icmphdr {
+	uint8_t		type;
+	uint8_t		code;
+	uint16_t	checksum;
+	union {
+		struct {
+			uint16_t	id;
+			uint16_t	sequence;
+		} echo;
+		uint32_t	gateway;
+		struct {
+			uint16_t	__unused;
+			uint16_t	mtu;
+		} frag;
+	} un;
+} __attribute__ ((packed));
+
+
+/*
+ * Maximum packet size; used to allocate packet storage.
+ * TFTP packets can be 524 bytes + IP header + ethernet header.
+ * Lets be conservative, and go for 38 * 16.  (Must also be
+ * a multiple of 32 bytes).
+ */
+#define PKTSIZE			1518
+
+/**********************************************************************/
+/*
+ *	Globals.
+ *
+ * Note:
+ *
+ * All variables of type IPaddr_t are stored in NETWORK byte order
+ * (big endian).
+ */
+
+extern unsigned char *NetRxPackets[PKTBUFSRX];/* Receive packets		*/
+
+void net_set_ip(IPaddr_t ip);
+void net_set_serverip(IPaddr_t ip);
+void net_set_netmask(IPaddr_t ip);
+void net_set_gateway(IPaddr_t ip);
+void net_set_dnsip(IPaddr_t ip);
+IPaddr_t net_get_ip(void);
+IPaddr_t net_get_serverip(void);
+
+/* Do the work */
+void net_poll(void);
+
+static inline struct iphdr *net_eth_to_iphdr(char *pkt)
+{
+	return (struct iphdr *)(pkt + ETHER_HDR_SIZE);
+}
+
+static inline struct udphdr *net_eth_to_udphdr(char *pkt)
+{
+	return (struct udphdr *)(net_eth_to_iphdr(pkt) + 1);
+}
+
+static inline struct icmphdr *net_eth_to_icmphdr(char *pkt)
+{
+	return (struct icmphdr *)(net_eth_to_iphdr(pkt) + 1);
+}
+
+static inline char *net_eth_to_icmp_payload(char *pkt)
+{
+	return (char *)(net_eth_to_icmphdr(pkt) + 1);
+}
+
+static inline char *net_eth_to_udp_payload(char *pkt)
+{
+	return (char *)(net_eth_to_udphdr(pkt) + 1);
+}
+
+static inline int net_eth_to_udplen(char *pkt)
+{
+	struct udphdr *udp = net_eth_to_udphdr(pkt);
+	return ntohs(udp->uh_ulen) - 8;
+}
+
+int net_checksum_ok(unsigned char *, int);	/* Return true if cksum OK	*/
+uint16_t net_checksum(unsigned char *, int);	/* Calculate the checksum	*/
+
+void NetReceive(unsigned char *, int);
+
+/* Print an IP address on the console */
+void print_IPaddr (IPaddr_t);
+
+/*
+ * The following functions are a bit ugly, but necessary to deal with
+ * alignment restrictions on ARM.
+ *
+ * We're using inline functions, which had the smallest memory
+ * footprint in our tests.
+ */
+/* return IP *in network byteorder* */
+static inline IPaddr_t net_read_ip(void *from)
+{
+	IPaddr_t ip;
+	memcpy((void*)&ip, from, sizeof(ip));
+	return ip;
+}
+
+/* return uint32 *in network byteorder* */
+static inline uint32_t net_read_uint32(uint32_t *from)
+{
+	ulong l;
+	memcpy((void*)&l, (void*)from, sizeof(l));
+	return l;
+}
+
+/* write IP *in network byteorder* */
+static inline void net_write_ip(void *to, IPaddr_t ip)
+{
+	memcpy(to, (void*)&ip, sizeof(ip));
+}
+
+/* copy IP */
+static inline void net_copy_ip(void *to, void *from)
+{
+	memcpy(to, from, sizeof(IPaddr_t));
+}
+
+/* copy ulong */
+static inline void net_copy_uint32(uint32_t *to, uint32_t *from)
+{
+	memcpy(to, from, sizeof(uint32_t));
+}
+
+/* Convert an IP address to a string */
+char *ip_to_string (IPaddr_t x, char *s);
+
+/* Convert a string to ip address */
+int string_to_ip(const char *s, IPaddr_t *ip);
+
+int string_to_ethaddr(const char *str, char *enetaddr);
+void ethaddr_to_string(const unsigned char *enetaddr, char *str);
+
+/**
+ * is_zero_ether_addr - Determine if give Ethernet address is all zeros.
+ * @addr: Pointer to a six-byte array containing the Ethernet address
+ *
+ * Return true if the address is all zeroes.
+ */
+static inline int is_zero_ether_addr(const u8 *addr)
+{
+	return !(addr[0] | addr[1] | addr[2] | addr[3] | addr[4] | addr[5]);
+}
+
+/**
+ * is_multicast_ether_addr - Determine if the Ethernet address is a multicast.
+ * @addr: Pointer to a six-byte array containing the Ethernet address
+ *
+ * Return true if the address is a multicast address.
+ * By definition the broadcast address is also a multicast address.
+ */
+static inline int is_multicast_ether_addr(const u8 *addr)
+{
+	return (0x01 & addr[0]);
+}
+
+/**
+ * is_local_ether_addr - Determine if the Ethernet address is locally-assigned one (IEEE 802).
+ * @addr: Pointer to a six-byte array containing the Ethernet address
+ *
+ * Return true if the address is a local address.
+ */
+static inline int is_local_ether_addr(const u8 *addr)
+{
+	return (0x02 & addr[0]);
+}
+
+/**
+ * is_broadcast_ether_addr - Determine if the Ethernet address is broadcast
+ * @addr: Pointer to a six-byte array containing the Ethernet address
+ *
+ * Return true if the address is the broadcast address.
+ */
+static inline int is_broadcast_ether_addr(const u8 *addr)
+{
+	return (addr[0] & addr[1] & addr[2] & addr[3] & addr[4] & addr[5]) == 0xff;
+}
+
+/**
+ * is_valid_ether_addr - Determine if the given Ethernet address is valid
+ * @addr: Pointer to a six-byte array containing the Ethernet address
+ *
+ * Check that the Ethernet address (MAC) is not 00:00:00:00:00:00, is not
+ * a multicast address, and is not FF:FF:FF:FF:FF:FF.
+ *
+ * Return true if the address is valid.
+ */
+static inline int is_valid_ether_addr(const u8 *addr)
+{
+	/* FF:FF:FF:FF:FF:FF is a multicast address so we don't need to
+	 * explicitly check for it here. */
+	return !is_multicast_ether_addr(addr) && !is_zero_ether_addr(addr);
+}
+
+typedef void rx_handler_f(char *packet, unsigned int len);
+
+void eth_set_current(struct eth_device *eth);
+struct eth_device *eth_get_current(void);
+struct eth_device *eth_get_byname(char *name);
+void net_update_env(void);
+
+/**
+ * net_receive - Pass a received packet from an ethernet driver to the protocol stack
+ * @pkt: Pointer to the packet
+ * @len: length of the packet
+ *
+ * Return 0 if the packet is successfully handled. Can be ignored
+ */
+int net_receive(unsigned char *pkt, int len);
+
+struct net_connection {
+	struct ethernet *et;
+	struct iphdr *ip;
+	struct udphdr *udp;
+	struct icmphdr *icmp;
+	unsigned char *packet;
+	struct list_head list;
+	rx_handler_f *handler;
+	int proto;
+};
+
+static inline char *net_alloc_packet(void)
+{
+	return memalign(32, PKTSIZE);
+}
+
+struct net_connection *net_udp_new(IPaddr_t dest, uint16_t dport,
+		rx_handler_f *handler);
+
+struct net_connection *net_icmp_new(IPaddr_t dest, rx_handler_f *handler);
+
+void net_unregister(struct net_connection *con);
+
+static inline int net_udp_bind(struct net_connection *con, int sport)
+{
+	con->udp->uh_sport = ntohs(sport);
+	return 0;
+}
+
+static inline unsigned char *net_udp_get_payload(struct net_connection *con)
+{
+	return con->packet + sizeof(struct ethernet) + sizeof(struct iphdr) +
+		sizeof(struct udphdr);
+}
+
+int net_udp_send(struct net_connection *con, int len);
+int net_icmp_send(struct net_connection *con, int len);
+
 #endif /* __NET_H__ */
diff --git a/net/net.c b/net/net.c
index 28943a0..6569b6f 100644
--- a/net/net.c
+++ b/net/net.c
@@ -77,7 +77,9 @@
 #include <net.h>
 #include <driver.h>
 #include <errno.h>
+#include <init.h>
 #include <linux/ctype.h>
+#include <linux/err.h>
 #include "tftp.h"
 #include "rarp.h"
 #include "nfs.h"
@@ -407,6 +409,9 @@ NetReceive(uchar * inpkt, int len)
 
 	pr_debug("packet received\n");
 
+	if (!net_receive(inpkt, len))
+		return;
+
 	NetRxPkt = inpkt;
 	NetRxPktLen = len;
 	et = (Ethernet_t *)inpkt;
@@ -582,7 +587,8 @@ NetReceive(uchar * inpkt, int len)
 				NetCopyIP(&NetServerIP, &arp->ar_data[ 6]);
 			memcpy (NetServerEther, &arp->ar_data[ 0], 6);
 
-			(*packetHandler)(0,0,0,0);
+			if (packetHandler)
+				(*packetHandler)(0,0,0,0);
 		}
 		break;
 
@@ -649,7 +655,8 @@ NetReceive(uchar * inpkt, int len)
 				 *	IP header OK.  Pass the packet to the current handler.
 				 */
 				/* XXX point to ip packet */
-				(*packetHandler)((uchar *)ip, 0, 0, 0);
+				if (packetHandler)
+					(*packetHandler)((uchar *)ip, 0, 0, 0);
 				return;
 #endif
 			default:
@@ -701,7 +708,8 @@ NetReceive(uchar * inpkt, int len)
 		/*
 		 *	IP header OK.  Pass the packet to the current handler.
 		 */
-		(*packetHandler)((uchar *)ip +IP_HDR_SIZE,
+		if (packetHandler)
+			(*packetHandler)((uchar *)ip +IP_HDR_SIZE,
 						ntohs(ip->udp_dst),
 						ntohs(ip->udp_src),
 						ntohs(ip->udp_len) - 8);
@@ -951,10 +959,29 @@ void ethaddr_to_string(const unsigned char *enetaddr, char *str)
 		 enetaddr[4], enetaddr[5]);
 }
 
+static IPaddr_t	net_netmask;		/* Our subnet mask (0=unknown)	*/
+static IPaddr_t	net_gateway;		/* Our gateways IP address	*/
+static IPaddr_t	net_dns_server;		/* Our DNS IP address		*/
+
+static unsigned char net_ether[6];	/* Our ethernet address		*/
+static IPaddr_t	net_ip;			/* Our IP addr (0 = unknown)	*/
+static IPaddr_t	net_serverip;		/* Our IP addr (0 = unknown)	*/
+
+unsigned char *NetRxPackets[PKTBUFSRX]; /* Receive packets		*/
+static unsigned int net_ip_id;
+
 void net_update_env(void)
 {
 	struct eth_device *edev = eth_get_current();
 
+	net_ip = dev_get_param_ip(&edev->dev, "ipaddr");
+	net_serverip = dev_get_param_ip(&edev->dev, "serverip");
+	net_gateway = dev_get_param_ip(&edev->dev, "gateway");
+	net_netmask = dev_get_param_ip(&edev->dev, "netmask");
+
+	string_to_ethaddr(dev_get_param(&edev->dev, "ethaddr"),
+			net_ether);
+
 	NetOurIP = dev_get_param_ip(&edev->dev, "ipaddr");
 	NetServerIP = dev_get_param_ip(&edev->dev, "serverip");
 	NetOurGatewayIP = dev_get_param_ip(&edev->dev, "gateway");
@@ -964,3 +991,491 @@ void net_update_env(void)
 			NetOurEther);
 }
 
+int net_checksum_ok(unsigned char *ptr, int len)
+{
+	return net_checksum(ptr, len) + 1;
+}
+
+uint16_t net_checksum(unsigned char *ptr, int len)
+{
+	uint32_t xsum = 0;
+	uint16_t *p = (uint16_t *)ptr;
+
+	if (len & 1)
+		ptr[len] = 0;
+
+	len = (len + 1) >> 1;
+
+	while (len-- > 0)
+		xsum += *p++;
+
+	xsum = (xsum & 0xffff) + (xsum >> 16);
+	xsum = (xsum & 0xffff) + (xsum >> 16);
+	return xsum & 0xffff;
+}
+
+static unsigned char *arp_ether;
+static IPaddr_t arp_wait_ip;
+
+static void arp_handler(struct arprequest *arp)
+{
+	IPaddr_t tmp;
+
+	/* are we waiting for a reply */
+	if (!arp_wait_ip)
+		return;
+
+	tmp = net_read_ip(&arp->ar_data[6]);
+
+	/* matched waiting packet's address */
+	if (tmp == arp_wait_ip) {
+		/* save address for later use */
+		memcpy(arp_ether, &arp->ar_data[0], 6);
+
+		/* no arp request pending now */
+		arp_wait_ip = 0;
+	}
+}
+
+int arp_request(IPaddr_t dest, unsigned char *ether)
+{
+	char *pkt;
+	struct arprequest *arp;
+	uint64_t arp_start;
+	static char *arp_packet;
+	struct ethernet *et;
+
+	if (!arp_packet) {
+		arp_packet = net_alloc_packet();
+		if (!arp_packet)
+			return -ENOMEM;
+	}
+
+	pkt = arp_packet;
+	et = (struct ethernet *)arp_packet;
+
+	arp_wait_ip = dest;
+
+	pr_debug("ARP broadcast\n");
+
+	memset(et->et_dest, 0xff, 6);
+	memcpy(et->et_src, net_ether, 6);
+	et->et_protlen = htons(PROT_ARP);
+
+	arp = (struct arprequest *)(pkt + ETHER_HDR_SIZE);
+
+	arp->ar_hrd = htons(ARP_ETHER);
+	arp->ar_pro = htons(PROT_IP);
+	arp->ar_hln = 6;
+	arp->ar_pln = 4;
+	arp->ar_op = htons(ARPOP_REQUEST);
+
+	memcpy(arp->ar_data, net_ether, 6);	/* source ET addr	*/
+	net_write_ip(arp->ar_data + 6, net_ip);	/* source IP addr	*/
+	memset(arp->ar_data + 10, 0, 6);	/* dest ET addr = 0     */
+
+	if ((dest & net_netmask) != (net_ip & net_netmask)) {
+		if (!net_gateway)
+			arp_wait_ip = dest;
+		else
+			arp_wait_ip = net_gateway;
+	} else {
+		arp_wait_ip = dest;
+	}
+
+	net_write_ip(arp->ar_data + 16, arp_wait_ip);
+
+	arp_ether = ether;
+
+	eth_send(arp_packet, ETHER_HDR_SIZE + ARP_HDR_SIZE);
+	arp_start = get_time_ns();
+
+	while (arp_wait_ip) {
+		if (ctrlc())
+			return -EINTR;
+
+		if (is_timeout(arp_start, 3 * SECOND)) {
+			printf("T ");
+			arp_start = get_time_ns();
+			eth_send(arp_packet, ETHER_HDR_SIZE + ARP_HDR_SIZE);
+		}
+
+		net_poll();
+	}
+
+	pr_debug("Got ARP REPLY, set server/gtwy eth addr (%02x:%02x:%02x:%02x:%02x:%02x)\n",
+		ether[0], ether[1],
+		ether[2], ether[3],
+		ether[4], ether[5]);
+	return 0;
+}
+
+void net_poll(void)
+{
+	eth_rx();
+}
+
+static uint16_t net_udp_new_localport(void)
+{
+	static uint16_t localport;
+
+	localport++;
+
+	if (localport < 1024)
+		localport = 1024;
+
+	return localport;
+}
+
+IPaddr_t net_get_serverip(void)
+{
+	return net_serverip;
+}
+
+void net_set_serverip(IPaddr_t ip)
+{
+	struct eth_device *edev = eth_get_current();
+
+	net_serverip = ip;
+	dev_set_param_ip(&edev->dev, "serverip", net_serverip);
+}
+
+void net_set_ip(IPaddr_t ip)
+{
+	struct eth_device *edev = eth_get_current();
+
+	net_ip = ip;
+	dev_set_param_ip(&edev->dev, "ipaddr", net_ip);
+}
+
+IPaddr_t net_get_ip(void)
+{
+	return net_ip;
+}
+
+void net_set_netmask(IPaddr_t nm)
+{
+	struct eth_device *edev = eth_get_current();
+
+	net_netmask = nm;
+	dev_set_param_ip(&edev->dev, "netmask", net_netmask);
+}
+
+void net_set_gateway(IPaddr_t gw)
+{
+	struct eth_device *edev = eth_get_current();
+
+	net_gateway = gw;
+	dev_set_param_ip(&edev->dev, "gateway", net_gateway);
+}
+
+void net_set_dnsip(IPaddr_t dns)
+{
+	net_dns_server = dns;
+}
+
+static LIST_HEAD(connection_list);
+
+static struct net_connection *net_new(IPaddr_t dest, rx_handler_f *handler)
+{
+	struct net_connection *con;
+	int ret;
+
+	if (!is_valid_ether_addr(net_ether))
+		return ERR_PTR(-ENETDOWN);
+
+	/* If we don't have an ip only broadcast is allowed */
+	if (!net_ip && dest != 0xffffffff)
+		return ERR_PTR(-ENETDOWN);
+
+	con = xzalloc(sizeof(*con));
+	con->packet = memalign(32, PKTSIZE);
+	memset(con->packet, 0, PKTSIZE);
+
+	con->et = (struct ethernet *)con->packet;
+	con->ip = (struct iphdr *)(con->packet + ETHER_HDR_SIZE);
+	con->udp = (struct udphdr *)(con->packet + ETHER_HDR_SIZE + sizeof(struct iphdr));
+	con->icmp = (struct icmphdr *)(con->packet + ETHER_HDR_SIZE + sizeof(struct iphdr));
+	con->handler = handler;
+
+	if (dest == 0xffffffff) {
+		memset(con->et->et_dest, 0xff, 6);
+	} else {
+		ret = arp_request(dest, con->et->et_dest);
+		if (ret)
+			goto out;
+	}
+
+	con->et->et_protlen = htons(PROT_IP);
+	memcpy(con->et->et_src, net_ether, 6);
+
+	con->ip->hl_v = 0x45;
+	con->ip->tos = 0;
+	con->ip->frag_off = htons(0x4000);	/* No fragmentation */;
+	con->ip->ttl = 255;
+	net_copy_ip(&con->ip->daddr, &dest);
+	net_copy_ip(&con->ip->saddr, &net_ip);
+
+	list_add_tail(&con->list, &connection_list);
+
+	return con;
+out:
+	free(con->packet);
+	free(con);
+	return ERR_PTR(ret);
+}
+
+struct net_connection *net_udp_new(IPaddr_t dest, uint16_t dport,
+		rx_handler_f *handler)
+{
+	struct net_connection *con = net_new(dest, handler);
+
+	if (IS_ERR(con))
+		return con;
+
+	con->proto = IPPROTO_UDP;
+	con->udp->uh_dport = htons(dport);
+	con->udp->uh_sport = htons(net_udp_new_localport());
+	con->ip->protocol = IPPROTO_UDP;
+
+	return con;
+}
+
+struct net_connection *net_icmp_new(IPaddr_t dest, rx_handler_f *handler)
+{
+	struct net_connection *con = net_new(dest, handler);
+
+	if (IS_ERR(con))
+		return con;
+
+	con->proto = IPPROTO_ICMP;
+	con->ip->protocol = IPPROTO_ICMP;
+
+	return con;
+}
+
+void net_unregister(struct net_connection *con)
+{
+	list_del(&con->list);
+	free(con->packet);
+	free(con);
+}
+
+int net_ip_send(struct net_connection *con, int len)
+{
+	con->ip->tot_len = htons(sizeof(struct iphdr) + len);
+	con->ip->id = htons(net_ip_id++);;
+	con->ip->check = 0;
+	con->ip->check = ~net_checksum((unsigned char *)con->ip, sizeof(struct iphdr));
+
+	eth_send(con->packet, ETHER_HDR_SIZE + sizeof(struct iphdr) + len);
+
+	return 0;
+}
+
+int net_udp_send(struct net_connection *con, int len)
+{
+	con->udp->uh_ulen = htons(len + 8);
+	con->udp->uh_sum = 0;
+
+	return net_ip_send(con, sizeof(struct udphdr) + len);
+}
+
+int net_icmp_send(struct net_connection *con, int len)
+{
+	con->icmp->checksum = ~net_checksum((unsigned char *)con->icmp,
+			sizeof(struct icmphdr) + len);
+
+	return net_ip_send(con, sizeof(struct icmphdr) + len);
+}
+
+static int net_answer_arp(unsigned char *pkt, int len)
+{
+	struct arprequest *arp = (struct arprequest *)(pkt + ETHER_HDR_SIZE);
+	struct ethernet *et = (struct ethernet *)pkt;
+	unsigned char *packet;
+
+	debug("%s\n", __func__);
+
+	memcpy (et->et_dest, et->et_src, 6);
+	memcpy (et->et_src, net_ether, 6);
+
+	et->et_protlen = htons(PROT_ARP);
+	arp->ar_op = htons(ARPOP_REPLY);
+	memcpy(&arp->ar_data[10], &arp->ar_data[0], 6);
+	net_copy_ip(&arp->ar_data[16], &arp->ar_data[6]);
+	memcpy(&arp->ar_data[0], net_ether, 6);
+	net_copy_ip(&arp->ar_data[6], &net_ip);
+
+	packet = net_alloc_packet();
+	if (!packet)
+		return 0;
+	memcpy(packet, pkt, ETHER_HDR_SIZE + ARP_HDR_SIZE);
+	eth_send(packet, ETHER_HDR_SIZE + ARP_HDR_SIZE);
+	free(packet);
+
+	return 0;
+}
+
+static void net_bad_packet(unsigned char *pkt, int len)
+{
+#ifdef DEBUG
+	/*
+	 * We received a bad packet. for now just dump it.
+	 * We could add more sophisticated debugging here
+	 */
+	memory_display(pkt, 0, len, 1);
+#endif
+}
+
+static int net_handle_arp(unsigned char *pkt, int len)
+{
+	struct arprequest *arp;
+
+	debug("%s: got arp\n", __func__);
+
+	/*
+	 * We have to deal with two types of ARP packets:
+	 * - REQUEST packets will be answered by sending  our
+	 *   IP address - if we know it.
+	 * - REPLY packets are expected only after we asked
+	 *   for the TFTP server's or the gateway's ethernet
+	 *   address; so if we receive such a packet, we set
+	 *   the server ethernet address
+	 */
+	arp = (struct arprequest *)(pkt + ETHER_HDR_SIZE);
+	if (len < ARP_HDR_SIZE)
+		goto bad;
+	if (ntohs(arp->ar_hrd) != ARP_ETHER)
+		goto bad;
+	if (ntohs(arp->ar_pro) != PROT_IP)
+		goto bad;
+	if (arp->ar_hln != 6)
+		goto bad;
+	if (arp->ar_pln != 4)
+		goto bad;
+	if (net_ip == 0)
+		return 0;
+	if (net_read_ip(&arp->ar_data[16]) != net_ip)
+		return 0;
+
+	switch (ntohs(arp->ar_op)) {
+	case ARPOP_REQUEST:
+		return net_answer_arp(pkt, len);
+	case ARPOP_REPLY:
+		arp_handler(arp);
+		return 1;
+	default:
+		pr_debug("Unexpected ARP opcode 0x%x\n", ntohs(arp->ar_op));
+		return -EINVAL;
+	}
+
+	return 0;
+
+bad:
+	net_bad_packet(pkt, len);
+	return -EINVAL;
+}
+
+static int net_handle_udp(unsigned char *pkt, int len)
+{
+	struct iphdr *ip = (struct iphdr *)(pkt + ETHER_HDR_SIZE);
+	struct net_connection *con;
+	struct udphdr *udp;
+	int port;
+
+	udp = (struct udphdr *)(ip + 1);
+	port = ntohs(udp->uh_dport);
+	list_for_each_entry(con, &connection_list, list) {
+		if (con->proto == IPPROTO_UDP && port == ntohs(con->udp->uh_sport)) {
+			con->handler(pkt, len);
+			return 0;
+		}
+	}
+	return -EINVAL;
+}
+
+static int net_handle_icmp(unsigned char *pkt, int len)
+{
+	struct net_connection *con;
+
+	debug("%s\n", __func__);
+
+	list_for_each_entry(con, &connection_list, list) {
+		if (con->proto == IPPROTO_ICMP) {
+			con->handler(pkt, len);
+			return 0;
+		}
+	}
+	return 0;
+}
+
+static int net_handle_ip(unsigned char *pkt, int len)
+{
+	struct iphdr *ip = (struct iphdr *)(pkt + ETHER_HDR_SIZE);
+	IPaddr_t tmp;
+
+	debug("%s\n", __func__);
+
+	if (len < sizeof(struct ethernet) + sizeof(struct iphdr) ||
+		len < ETHER_HDR_SIZE + ntohs(ip->tot_len)) {
+		debug("%s: bad len\n", __func__);
+		goto bad;
+	}
+
+	if ((ip->hl_v & 0xf0) != 0x40)
+		goto bad;
+
+	if (ip->frag_off & htons(0x1fff)) /* Can't deal w/ fragments */
+		goto bad;
+	if (!net_checksum_ok((unsigned char *)ip, sizeof(struct iphdr)))
+		goto bad;
+
+	tmp = net_read_ip(&ip->daddr);
+	if (net_ip && tmp != net_ip && tmp != 0xffffffff)
+		return 0;
+
+	switch (ip->protocol) {
+	case IPPROTO_ICMP:
+		return net_handle_icmp(pkt, len);
+	case IPPROTO_UDP:
+		return net_handle_udp(pkt, len);
+	}
+
+	return 0;
+bad:
+	net_bad_packet(pkt, len);
+	return 0;
+}
+
+int net_receive(unsigned char *pkt, int len)
+{
+	struct ethernet *et = (struct ethernet *)pkt;
+	int et_protlen = ntohs(et->et_protlen);
+
+	if (len < ETHER_HDR_SIZE)
+		return 0;
+
+	switch (et_protlen) {
+	case PROT_ARP:
+		return net_handle_arp(pkt, len);
+	case PROT_IP:
+		return net_handle_ip(pkt, len);
+	default:
+		debug("%s: got unknown protocol type: %d\n", __func__, et_protlen);
+		return 1;
+	}
+}
+
+static int net_init(void)
+{
+	int i;
+
+	for (i = 0; i < PKTBUFSRX; i++)
+		NetRxPackets[i] =  memalign(32, PKTSIZE);
+
+	return 0;
+}
+
+postcore_initcall(net_init);
+
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
