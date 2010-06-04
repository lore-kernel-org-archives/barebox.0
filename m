Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1OKTcP-000350-Dn
	for barebox@lists.infradead.org; Fri, 04 Jun 2010 09:55:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  4 Jun 2010 11:55:06 +0200
Message-Id: <1275645309-9756-11-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/13] net: remove old network stack
To: barebox@lists.infradead.org

All network commands now use the new stack, so remove the old one.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/net.c |   42 ---
 include/net.h  |  359 +---------------------
 net/net.c      |  947 +++-----------------------------------------------------
 3 files changed, 50 insertions(+), 1298 deletions(-)

diff --git a/commands/net.c b/commands/net.c
index 949963f..938463c 100644
--- a/commands/net.c
+++ b/commands/net.c
@@ -35,48 +35,6 @@
 #include <errno.h>
 #include <libbb.h>
 
-void netboot_update_env(void)
-{
-	struct eth_device *eth_current = eth_get_current();
-	char tmp[22];
-	IPaddr_t net_gateway_ip = NetOurGatewayIP;
-	IPaddr_t net_ip = NetOurIP;
-	IPaddr_t net_server_ip = NetServerIP;
-	IPaddr_t netmask = NetOurSubnetMask;
-
-	if (net_gateway_ip)
-		dev_set_param_ip(&eth_current->dev, "gateway", net_gateway_ip);
-
-	if (netmask)
-		dev_set_param_ip(&eth_current->dev, "netmask", netmask);
-
-
-	if (NetOurHostName[0])
-		setenv ("hostname", NetOurHostName);
-
-	if (NetOurRootPath[0])
-		setenv ("rootpath", NetOurRootPath);
-
-	if (net_ip)
-		dev_set_param_ip(&eth_current->dev, "ipaddr", net_ip);
-
-	if (net_server_ip)
-		dev_set_param_ip(&eth_current->dev, "serverip", net_server_ip);
-
-	if (NetOurDNSIP) {
-		ip_to_string (NetOurDNSIP, tmp);
-		setenv ("dnsip", tmp);
-	}
-#ifdef CONFIG_BOOTP_DNS2
-	if (NetOurDNS2IP) {
-		ip_to_string (NetOurDNS2IP, tmp);
-		setenv ("dnsip2", tmp);
-	}
-#endif
-	if (NetOurNISDomain[0])
-		setenv ("domain", NetOurNISDomain);
-}
-
 #ifdef CONFIG_NET_RARP
 extern void RarpRequest(void);
 
diff --git a/include/net.h b/include/net.h
index f588a3d..627b18b 100644
--- a/include/net.h
+++ b/include/net.h
@@ -19,39 +19,8 @@
 #include <asm/byteorder.h>	/* for nton* / ntoh* stuff */
 
 
-/*
- *	The number of receive packet buffers, and the required packet buffer
- *	alignment in memory.
- *
- */
-
-#ifdef CFG_RX_ETH_BUFFER
-# define PKTBUFSRX	CFG_RX_ETH_BUFFER
-#else
-# define PKTBUFSRX	4
-#endif
-
-#define PKTALIGN	32
-
-/*
- * The current receive packet handler.  Called with a pointer to the
- * application packet, and a protocol type (PORT_BOOTPC or PORT_TFTP).
- * All other packets are dealt with without calling the handler.
- */
-typedef void	rxhand_f(uchar *, unsigned, unsigned, unsigned);
-
-/*
- *	A timeout handler.  Called after time interval has expired.
- */
-typedef void	thand_f(void);
-
-#define NAMESIZE 16
-
-enum eth_state_t {
-	ETH_STATE_INIT,
-	ETH_STATE_PASSIVE,
-	ETH_STATE_ACTIVE
-};
+/* The number of receive packet buffers */
+#define PKTBUFSRX	4
 
 struct device_d;
 
@@ -92,328 +61,6 @@ int eth_rx(void);			/* Check for received packets	*/
 void eth_halt(void);			/* stop SCC			*/
 char *eth_get_name(void);		/* get name of current device	*/
 
-
-/**********************************************************************/
-/*
- *	Protocol headers.
- */
-
-/*
- *	Ethernet header
- */
-typedef struct {
-	uchar		et_dest[6];	/* Destination node		*/
-	uchar		et_src[6];	/* Source node			*/
-	ushort		et_protlen;	/* Protocol or length		*/
-	uchar		et_dsap;	/* 802 DSAP			*/
-	uchar		et_ssap;	/* 802 SSAP			*/
-	uchar		et_ctl;		/* 802 control			*/
-	uchar		et_snap1;	/* SNAP				*/
-	uchar		et_snap2;
-	uchar		et_snap3;
-	ushort		et_prot;	/* 802 protocol			*/
-} Ethernet_t;
-
-#define ETHER_HDR_SIZE	14		/* Ethernet header size		*/
-#define E802_HDR_SIZE	22		/* 802 ethernet header size	*/
-
-/*
- *	Ethernet header
- */
-typedef struct {
-	uchar		vet_dest[6];	/* Destination node		*/
-	uchar		vet_src[6];	/* Source node			*/
-	ushort		vet_vlan_type;	/* PROT_VLAN			*/
-	ushort		vet_tag;	/* TAG of VLAN			*/
-	ushort		vet_type;	/* protocol type		*/
-} VLAN_Ethernet_t;
-
-#define VLAN_ETHER_HDR_SIZE	18	/* VLAN Ethernet header size	*/
-
-#define PROT_IP		0x0800		/* IP protocol			*/
-#define PROT_ARP	0x0806		/* IP ARP protocol		*/
-#define PROT_RARP	0x8035		/* IP ARP protocol		*/
-#define PROT_VLAN	0x8100		/* IEEE 802.1q protocol		*/
-
-#define IPPROTO_ICMP	 1	/* Internet Control Message Protocol	*/
-#define IPPROTO_UDP	17	/* User Datagram Protocol		*/
-
-/*
- *	Internet Protocol (IP) header.
- */
-typedef struct {
-	uchar		ip_hl_v;	/* header length and version	*/
-	uchar		ip_tos;		/* type of service		*/
-	ushort		ip_len;		/* total length			*/
-	ushort		ip_id;		/* identification		*/
-	ushort		ip_off;		/* fragment offset field	*/
-	uchar		ip_ttl;		/* time to live			*/
-	uchar		ip_p;		/* protocol			*/
-	ushort		ip_sum;		/* checksum			*/
-	IPaddr_t	ip_src;		/* Source IP address		*/
-	IPaddr_t	ip_dst;		/* Destination IP address	*/
-	ushort		udp_src;	/* UDP source port		*/
-	ushort		udp_dst;	/* UDP destination port		*/
-	ushort		udp_len;	/* Length of UDP packet		*/
-	ushort		udp_xsum;	/* Checksum			*/
-} IP_t;
-
-#define IP_HDR_SIZE_NO_UDP	(sizeof (IP_t) - 8)
-#define IP_HDR_SIZE		(sizeof (IP_t))
-
-
-/*
- *	Address Resolution Protocol (ARP) header.
- */
-typedef struct
-{
-	ushort		ar_hrd;		/* Format of hardware address	*/
-#   define ARP_ETHER	    1		/* Ethernet  hardware address	*/
-	ushort		ar_pro;		/* Format of protocol address	*/
-	uchar		ar_hln;		/* Length of hardware address	*/
-	uchar		ar_pln;		/* Length of protocol address	*/
-	ushort		ar_op;		/* Operation			*/
-#   define ARPOP_REQUEST    1		/* Request  to resolve  address	*/
-#   define ARPOP_REPLY	    2		/* Response to previous request	*/
-
-#   define RARPOP_REQUEST   3		/* Request  to resolve  address	*/
-#   define RARPOP_REPLY	    4		/* Response to previous request */
-
-	/*
-	 * The remaining fields are variable in size, according to
-	 * the sizes above, and are defined as appropriate for
-	 * specific hardware/protocol combinations.
-	 */
-	uchar		ar_data[0];
-} ARP_t;
-
-/*
- * ICMP stuff (just enough to handle (host) redirect messages)
- */
-#define ICMP_ECHO_REPLY		0	/* Echo reply 			*/
-#define ICMP_REDIRECT		5	/* Redirect (change route)	*/
-#define ICMP_ECHO_REQUEST	8	/* Echo request			*/
-
-/* Codes for REDIRECT. */
-#define ICMP_REDIR_NET		0	/* Redirect Net			*/
-#define ICMP_REDIR_HOST		1	/* Redirect Host		*/
-
-typedef struct {
-	uchar		type;
-	uchar		code;
-	ushort		checksum;
-	union {
-		struct {
-			ushort	id;
-			ushort	sequence;
-		} echo;
-		ulong	gateway;
-		struct {
-			ushort	__unused;
-			ushort	mtu;
-		} frag;
-	} un;
-} ICMP_t;
-
-
-/*
- * Maximum packet size; used to allocate packet storage.
- * TFTP packets can be 524 bytes + IP header + ethernet header.
- * Lets be conservative, and go for 38 * 16.  (Must also be
- * a multiple of 32 bytes).
- */
-/*
- * AS.HARNOIS : Better to set PKTSIZE to maximum size because
- * traffic type is not always controlled
- * maximum packet size =  1518
- * maximum packet size and multiple of 32 bytes =  1536
- */
-#define PKTSIZE			1518
-#define PKTSIZE_ALIGN		1536
-/*#define PKTSIZE		608*/
-
-/*
- * Maximum receive ring size; that is, the number of packets
- * we can buffer before overflow happens. Basically, this just
- * needs to be enough to prevent a packet being discarded while
- * we are processing the previous one.
- */
-#define RINGSZ		4
-#define RINGSZ_LOG2	2
-
-/**********************************************************************/
-/*
- *	Globals.
- *
- * Note:
- *
- * All variables of type IPaddr_t are stored in NETWORK byte order
- * (big endian).
- */
-
-/* net.c */
-/** BOOTP EXTENTIONS **/
-extern IPaddr_t		NetOurGatewayIP;	/* Our gateway IP addresse	*/
-extern IPaddr_t		NetOurSubnetMask;	/* Our subnet mask (0 = unknown)*/
-extern IPaddr_t		NetOurDNSIP;	 /* Our Domain Name Server (0 = unknown)*/
-extern IPaddr_t		NetOurDNS2IP;	 /* Our 2nd Domain Name Server (0 = unknown)*/
-extern char		NetOurNISDomain[32];	/* Our NIS domain		*/
-extern char		NetOurHostName[32];	/* Our hostname			*/
-extern char		NetOurRootPath[64];	/* Our root path		*/
-/** END OF BOOTP EXTENTIONS **/
-extern ulong		NetBootFileXferSize;	/* size of bootfile in bytes	*/
-extern uchar		NetOurEther[6];		/* Our ethernet address		*/
-extern uchar		NetServerEther[6];	/* Boot server enet address	*/
-extern IPaddr_t		NetOurIP;		/* Our    IP addr (0 = unknown)	*/
-extern IPaddr_t		NetServerIP;		/* Server IP addr (0 = unknown)	*/
-extern uchar * 		NetTxPacket;		/* THE transmit packet		*/
-extern uchar *		NetRxPackets[PKTBUFSRX];/* Receive packets		*/
-extern uchar *		NetRxPkt;		/* Current receive packet	*/
-extern int		NetRxPktLen;		/* Current rx packet length	*/
-extern unsigned		NetIPID;		/* IP ID (counting)		*/
-extern uchar		NetBcastAddr[6];	/* Ethernet boardcast address	*/
-extern uchar		NetEtherNullAddr[6];
-
-#define VLAN_NONE	4095			/* untagged 			*/
-#define VLAN_IDMASK	0x0fff			/* mask of valid vlan id 	*/
-extern ushort		NetOurVLAN;		/* Our VLAN 			*/
-extern ushort		NetOurNativeVLAN;	/* Our Native VLAN 		*/
-
-extern int		NetState;		/* Network loop state		*/
-
-/* ---------- Added by sha ------------ */
-extern IPaddr_t  NetArpWaitPacketIP;
-extern uchar            *NetArpWaitPacketMAC;
-extern uchar          *NetArpWaitTxPacket;     /* THE transmit packet                  */
-extern int             NetArpWaitTxPacketSize;
-extern int             NetArpWaitTry;
-extern uint64_t        NetArpWaitTimerStart;
-extern void ArpRequest (void);
-/* ------------------------------------ */
-
-#define NETLOOP_CONTINUE	1
-#define NETLOOP_SUCCESS		2
-#define NETLOOP_FAIL		3
-
-typedef enum { BOOTP, RARP, ARP, TFTP, DHCP, PING, DNS, NFS, CDP, NETCONS, SNTP } proto_t;
-
-/* Initialize the network adapter */
-int	NetLoopInit(proto_t);
-
-/* Do the work */
-int	NetLoop(void);
-
-/* Shutdown adapters and cleanup */
-void	NetStop(void);
-
-/* Load failed.	 Start again. */
-void	NetStartAgain(void);
-
-/* Get size of the ethernet header when we send */
-int 	NetEthHdrSize(void);
-
-/* Set ethernet header; returns the size of the header */
-int	NetSetEther(uchar *, uchar *, uint);
-
-/* Set IP header */
-void	NetSetIP(uchar *, IPaddr_t, int, int, int);
-
-/* Checksum */
-int	NetCksumOk(uchar *, int);	/* Return true if cksum OK	*/
-uint	NetCksum(uchar *, int);		/* Calculate the checksum	*/
-
-/* Set callbacks */
-void	NetSetHandler(rxhand_f *);	/* Set RX packet handler	*/
-void	NetSetTimeout(uint64_t, thand_f *);/* Set timeout handler		*/
-
-/* Transmit "NetTxPacket" */
-void	NetSendPacket(uchar *, int);
-
-/* Transmit UDP packet, performing ARP request if needed */
-int	NetSendUDPPacket(uchar *ether, IPaddr_t dest, int dport, int sport, int len);
-
-/* Processes a received packet */
-void	NetReceive(uchar *, int);
-
-/* Print an IP address on the console */
-#ifdef CONFIG_NET
-void	print_IPaddr (IPaddr_t);
-#else
-#define print_IPaddr(IPaddr_t);
-#endif
-
-void netboot_update_env(void);
-
-/*
- * The following functions are a bit ugly, but necessary to deal with
- * alignment restrictions on ARM.
- *
- * We're using inline functions, which had the smallest memory
- * footprint in our tests.
- */
-/* return IP *in network byteorder* */
-static inline IPaddr_t NetReadIP(void *from)
-{
-	IPaddr_t ip;
-	memcpy((void*)&ip, from, sizeof(ip));
-	return ip;
-}
-
-/* return ulong *in network byteorder* */
-static inline ulong NetReadLong(ulong *from)
-{
-	ulong l;
-	memcpy((void*)&l, (void*)from, sizeof(l));
-	return l;
-}
-
-/* write IP *in network byteorder* */
-static inline void NetWriteIP(void *to, IPaddr_t ip)
-{
-	memcpy(to, (void*)&ip, sizeof(ip));
-}
-
-/* copy IP */
-static inline void NetCopyIP(void *to, void *from)
-{
-	memcpy(to, from, sizeof(IPaddr_t));
-}
-
-/* copy ulong */
-static inline void NetCopyLong(ulong *to, ulong *from)
-{
-	memcpy((void*)to, (void*)from, sizeof(ulong));
-}
-
-/* Convert an IP address to a string */
-char *	ip_to_string (IPaddr_t x, char *s);
-
-/* Convert a string to ip address */
-int string_to_ip(const char *s, IPaddr_t *ip);
-
-/* Convert a VLAN id to a string */
-void	VLAN_to_string (ushort x, char *s);
-
-/* Convert a string to a vlan id */
-ushort string_to_VLAN(const char *s);
-
-/* read an IP address from a environment variable */
-IPaddr_t getenv_IPaddr (char *);
-
-/* read a VLAN id from an environment variable */
-ushort getenv_VLAN(char *);
-
-int string_to_ethaddr(const char *str, char *enetaddr);
-void ethaddr_to_string(const unsigned char *enetaddr, char *str);
-
-/**********************************************************************/
-/* Network devices                                                    */
-/**********************************************************************/
-
-void eth_set_current(struct eth_device *eth);
-struct eth_device *eth_get_current(void);
-struct eth_device *eth_get_byname(char *name);
-
 /*
  *	Ethernet header
  */
@@ -578,8 +225,6 @@ static inline int net_eth_to_udplen(char *pkt)
 int net_checksum_ok(unsigned char *, int);	/* Return true if cksum OK	*/
 uint16_t net_checksum(unsigned char *, int);	/* Calculate the checksum	*/
 
-void NetReceive(unsigned char *, int);
-
 /* Print an IP address on the console */
 void print_IPaddr (IPaddr_t);
 
diff --git a/net/net.c b/net/net.c
index 6569b6f..1ae2fb4 100644
--- a/net/net.c
+++ b/net/net.c
@@ -1,73 +1,31 @@
 /*
- *	Copied from Linux Monitor (LiMon) - Networking.
+ * net.c - barebox networking support
  *
- *	Copyright 1994 - 2000 Neil Russell.
- *	(See License)
- *	Copyright 2000 Roland Borde
- *	Copyright 2000 Paolo Scaffardi
- *	Copyright 2000-2002 Wolfgang Denk, wd@denx.de
- */
-
-/*
- * General Desription:
- *
- * The user interface supports commands for BOOTP, RARP, and TFTP.
- * Also, we support ARP internally. Depending on available data,
- * these interact as follows:
- *
- * BOOTP:
- *
- *	Prerequisites:	- own ethernet address
- *	We want:	- own IP address
- *			- TFTP server IP address
- *			- name of bootfile
- *	Next step:	ARP
- *
- * RARP:
- *
- *	Prerequisites:	- own ethernet address
- *	We want:	- own IP address
- *			- TFTP server IP address
- *	Next step:	ARP
- *
- * ARP:
- *
- *	Prerequisites:	- own ethernet address
- *			- own IP address
- *			- TFTP server IP address
- *	We want:	- TFTP server ethernet address
- *	Next step:	TFTP
+ * Copyright (c) 2010 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
  *
- * DHCP:
+ * based on U-Boot (LiMon) code
  *
- *     Prerequisites:	- own ethernet address
- *     We want:		- IP, Netmask, ServerIP, Gateway IP
- *			- bootfilename, lease time
- *     Next step:	- TFTP
+ * Copyright 1994 - 2000 Neil Russell.
+ * Copyright 2000 Roland Borde
+ * Copyright 2000 Paolo Scaffardi
+ * Copyright 2000-2002 Wolfgang Denk, wd@denx.de
  *
- * TFTP:
+ * See file CREDITS for list of people who contributed to this
+ * project.
  *
- *	Prerequisites:	- own ethernet address
- *			- own IP address
- *			- TFTP server IP address
- *			- TFTP server ethernet address
- *			- name of bootfile (if unknown, we use a default name
- *			  derived from our own IP address)
- *	We want:	- load the boot file
- *	Next step:	none
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
  *
- * NFS:
- *
- *	Prerequisites:	- own ethernet address
- *			- own IP address
- *			- name of bootfile (if unknown, we use a default name
- *			  derived from our own IP address)
- *	We want:	- load the boot file
- *	Next step:	none
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
  *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
  */
-
-
 #include <common.h>
 #include <clock.h>
 #include <watchdog.h>
@@ -77,779 +35,58 @@
 #include <net.h>
 #include <driver.h>
 #include <errno.h>
+#include <malloc.h>
 #include <init.h>
 #include <linux/ctype.h>
 #include <linux/err.h>
-#include "tftp.h"
-#include "rarp.h"
-#include "nfs.h"
-
-#define ARP_TIMEOUT		(5 * SECOND)	/* Seconds before trying ARP again */
-#ifndef	CONFIG_NET_RETRY_COUNT
-# define ARP_TIMEOUT_COUNT	5		/* # of timeouts before giving up  */
-#else
-# define ARP_TIMEOUT_COUNT  (CONFIG_NET_RETRY_COUNT)
-#endif
-
-
-/** BOOTP EXTENTIONS **/
-
-IPaddr_t	NetOurSubnetMask=0;		/* Our subnet mask (0=unknown)	*/
-IPaddr_t	NetOurGatewayIP=0;		/* Our gateways IP address	*/
-IPaddr_t	NetOurDNSIP=0;			/* Our DNS IP address		*/
-#ifdef CONFIG_BOOTP_DNS2
-IPaddr_t	NetOurDNS2IP=0;			/* Our 2nd DNS IP address	*/
-#endif
-char		NetOurNISDomain[32]={0,};	/* Our NIS domain		*/
-char		NetOurHostName[32]={0,};	/* Our hostname			*/
-char		NetOurRootPath[64]={0,};	/* Our bootpath			*/
-
-/** END OF BOOTP EXTENTIONS **/
-
-ulong		NetBootFileXferSize;	/* The actual transferred size of the bootfile (in bytes) */
-uchar		NetOurEther[6];		/* Our ethernet address			*/
-uchar		NetServerEther[6] =	/* Boot server enet address		*/
-			{ 0, 0, 0, 0, 0, 0 };
-IPaddr_t	NetOurIP;		/* Our IP addr (0 = unknown)		*/
-IPaddr_t	NetServerIP;		/* Our IP addr (0 = unknown)		*/
-uchar *NetRxPkt;			/* Current receive packet		*/
-int		NetRxPktLen;		/* Current rx packet length		*/
-unsigned	NetIPID;		/* IP packet ID				*/
-uchar		NetBcastAddr[6] =	/* Ethernet bcast address		*/
-			{ 0xff, 0xff, 0xff, 0xff, 0xff, 0xff };
-uchar		NetEtherNullAddr[6] =
-			{ 0, 0, 0, 0, 0, 0 };
-int		NetState;		/* Network loop state			*/
-
-/* XXX in both little & big endian machines 0xFFFF == ntohs(-1) */
-ushort		NetOurVLAN = 0xFFFF;		/* default is without VLAN	*/
-ushort		NetOurNativeVLAN = 0xFFFF;	/* ditto			*/
-
-char		BootFile[128];		/* Boot File name			*/
-
-uchar	PktBuf[(PKTBUFSRX+1) * PKTSIZE_ALIGN + PKTALIGN];
-
-uchar *NetRxPackets[PKTBUFSRX]; /* Receive packets			*/
-
-static rxhand_f *packetHandler;		/* Current RX packet handler		*/
-static thand_f *timeHandler;		/* Current timeout handler		*/
-static uint64_t	timeStart;		/* Time base value			*/
-static uint64_t	timeDelta;		/* Current timeout value		*/
-uchar *NetTxPacket = 0;			/* THE transmit packet			*/
-
-static int net_check_prereq (proto_t protocol);
-
-/**********************************************************************/
-
-IPaddr_t	NetArpWaitPacketIP;
-IPaddr_t	NetArpWaitReplyIP;
-uchar	       *NetArpWaitPacketMAC;	/* MAC address of waiting packet's destination	*/
-uchar	       *NetArpWaitTxPacket;	/* THE transmit packet			*/
-int		NetArpWaitTxPacketSize;
-uchar 		NetArpWaitPacketBuf[PKTSIZE_ALIGN + PKTALIGN];
-uint64_t	NetArpWaitTimerStart;
-
-void ArpRequest (void)
-{
-	int i;
-	uchar *pkt;
-	ARP_t *arp;
-
-	pr_debug("ARP broadcast\n");
-
-	pkt = NetTxPacket;
-
-	pkt += NetSetEther (pkt, NetBcastAddr, PROT_ARP);
-
-	arp = (ARP_t *) pkt;
-
-	arp->ar_hrd = htons (ARP_ETHER);
-	arp->ar_pro = htons (PROT_IP);
-	arp->ar_hln = 6;
-	arp->ar_pln = 4;
-	arp->ar_op = htons (ARPOP_REQUEST);
-
-	memcpy (&arp->ar_data[0], NetOurEther, 6);		/* source ET addr	*/
-	NetWriteIP ((uchar *) & arp->ar_data[6], NetOurIP);	/* source IP addr	*/
-	for (i = 10; i < 16; ++i) {
-		arp->ar_data[i] = 0;				/* dest ET addr = 0     */
-	}
-
-	if ((NetArpWaitPacketIP & NetOurSubnetMask) !=
-	    (NetOurIP & NetOurSubnetMask)) {
-		if (NetOurGatewayIP == 0) {
-			puts ("## Warning: gatewayip needed but not set\n");
-			NetArpWaitReplyIP = NetArpWaitPacketIP;
-		} else {
-			NetArpWaitReplyIP = NetOurGatewayIP;
-		}
-	} else {
-		NetArpWaitReplyIP = NetArpWaitPacketIP;
-	}
-
-	NetWriteIP ((uchar *) & arp->ar_data[16], NetArpWaitReplyIP);
-	(void) eth_send (NetTxPacket, (pkt - NetTxPacket) + ARP_HDR_SIZE);
-}
-
-/**********************************************************************/
-/*
- *	Main network processing loop.
- */
-
-int NetLoopInit(proto_t protocol)
-{
-	struct eth_device *eth_current = eth_get_current();
-	IPaddr_t ip;
-	int ret;
-	int	i;
-
-	if (!eth_current) {
-		printf("Current ethernet device not set!\n");
-		return -1;
-	}
-
-	ip = dev_get_param_ip(&eth_current->dev, "ipaddr");
-	NetCopyIP(&NetOurIP, &ip);
-
-	/* XXX problem with bss workaround */
-	NetArpWaitPacketMAC = NULL;
-	NetArpWaitTxPacket = NULL;
-	NetArpWaitPacketIP = 0;
-	NetArpWaitReplyIP = 0;
-
-	/*
-	 *	Setup packet buffers, aligned correctly.
-	 */
-	NetTxPacket = &PktBuf[0] + (PKTALIGN - 1);
-	NetTxPacket -= (ulong)NetTxPacket % PKTALIGN;
-	for (i = 0; i < PKTBUFSRX; i++) {
-		NetRxPackets[i] = NetTxPacket + (i+1)*PKTSIZE_ALIGN;
-	}
-
-	NetArpWaitTxPacket = &NetArpWaitPacketBuf[0] + (PKTALIGN - 1);
-	NetArpWaitTxPacket -= (ulong)NetArpWaitTxPacket % PKTALIGN;
-	NetArpWaitTxPacketSize = 0;
-
-	string_to_ethaddr(dev_get_param(&eth_get_current()->dev, "ethaddr"),
-			NetOurEther);
-
-	NetState = NETLOOP_CONTINUE;
-
-	NetOurGatewayIP = dev_get_param_ip(&eth_current->dev, "gateway");
-	NetOurSubnetMask = dev_get_param_ip(&eth_current->dev, "netmask");
-	NetOurVLAN = getenv_VLAN("vlan");
-	NetOurNativeVLAN = getenv_VLAN("nvlan");
-	NetServerIP = dev_get_param_ip(&eth_current->dev, "serverip");
-
-	ret = net_check_prereq(protocol);
-
-	return ret;
-}
-
-int NetLoop(void)
-{
-	/*
-	 *	Start the ball rolling with the given start function.  From
-	 *	here on, this code is a state machine driven by received
-	 *	packets and timer events.
-	 */
-
-	NetBootFileXferSize = 0;
-
-	/*
-	 *	Main packet reception loop.  Loop receiving packets until
-	 *	someone sets `NetState' to a state that terminates.
-	 */
-	for (;;) {
-		WATCHDOG_RESET();
-#ifdef CONFIG_SHOW_ACTIVITY
-		{
-			extern void show_activity(int arg);
-			show_activity(1);
-		}
-#endif
-		/*
-		 *	Check the ethernet for a new packet.  The ethernet
-		 *	receive routine will process it.
-		 */
-		eth_rx();
-
-		/*
-		 *	Abort if ctrl-c was pressed.
-		 */
-		if (ctrlc()) {
-			puts ("\nAbort\n");
-			return -1;
-		}
-
-		/* check for arp timeout */
-		if (NetArpWaitPacketIP &&
-				is_timeout(NetArpWaitTimerStart, ARP_TIMEOUT)) {
-			NetArpWaitTimerStart = get_time_ns();
-			ArpRequest();
-		}
-
-		/*
-		 *	Check for a timeout, and run the timeout handler
-		 *	if we have one.
-		 */
-		if (timeHandler && is_timeout(timeStart, timeDelta)) {
-			thand_f *x;
-			x = timeHandler;
-			timeHandler = (thand_f *)0;
-			(*x)();
-		}
-
 
-		switch (NetState) {
-		case NETLOOP_SUCCESS:
-			if (NetBootFileXferSize > 0) {
-				char buf[10];
-				printf("Bytes transferred = %ld (%lx hex)\n",
-					NetBootFileXferSize,
-					NetBootFileXferSize);
-				sprintf(buf, "0x%lx", NetBootFileXferSize);
-				setenv("filesize", buf);
-			}
-			return NetBootFileXferSize;
-
-		case NETLOOP_FAIL:
-			return -1;
-		}
-	}
-}
-
-/**********************************************************************/
-/*
- *	Miscelaneous bits.
- */
-
-void
-NetSetHandler(rxhand_f * f)
-{
-	packetHandler = f;
-}
-
-
-void
-NetSetTimeout(uint64_t iv, thand_f * f)
-{
-	if (iv == 0) {
-		timeHandler = (thand_f *)0;
-	} else {
-		timeHandler = f;
-		timeStart = get_time_ns();
-		timeDelta = iv;
-	}
-}
-
-
-void
-NetSendPacket(uchar * pkt, int len)
-{
-	(void) eth_send(pkt, len);
-}
-
-int
-NetSendUDPPacket(uchar *ether, IPaddr_t dest, int dport, int sport, int len)
-{
-	uchar *pkt;
-
-	/* convert to new style broadcast */
-	if (dest == 0)
-		dest = 0xFFFFFFFF;
-
-	/* if broadcast, make the ether address a broadcast and don't do ARP */
-	if (dest == 0xFFFFFFFF)
-		ether = NetBcastAddr;
-
-	/* if MAC address was not discovered yet, save the packet and do an ARP request */
-	if (memcmp(ether, NetEtherNullAddr, 6) == 0) {
-		pr_debug("sending ARP for %08lx\n", dest);
-
-		NetArpWaitPacketIP = dest;
-		NetArpWaitPacketMAC = ether;
-
-		pkt = NetArpWaitTxPacket;
-		pkt += NetSetEther (pkt, NetArpWaitPacketMAC, PROT_IP);
-
-		NetSetIP (pkt, dest, dport, sport, len);
-		memcpy(pkt + IP_HDR_SIZE, (uchar *)NetTxPacket + (pkt - (uchar *)NetArpWaitTxPacket) + IP_HDR_SIZE, len);
-
-		/* size of the waiting packet */
-		NetArpWaitTxPacketSize = (pkt - NetArpWaitTxPacket) + IP_HDR_SIZE + len;
-
-		/* and do the ARP request */
-		NetArpWaitTimerStart = get_time_ns();
-		ArpRequest();
-		return 1;	/* waiting */
-	}
-
-	pr_debug("sending UDP to %08lx/%02x:%02x:%02x:%02x:%02x:%02x\n",
-		dest, ether[0], ether[1], ether[2], ether[3], ether[4], ether[5]);
+static IPaddr_t	net_netmask;		/* Our subnet mask (0=unknown)	*/
+static IPaddr_t	net_gateway;		/* Our gateways IP address	*/
+static IPaddr_t	net_dns_server;		/* Our DNS IP address		*/
 
-	pkt = (uchar *)NetTxPacket;
-	pkt += NetSetEther (pkt, ether, PROT_IP);
-	NetSetIP (pkt, dest, dport, sport, len);
-	(void) eth_send(NetTxPacket, (pkt - NetTxPacket) + IP_HDR_SIZE + len);
+static unsigned char net_ether[6];	/* Our ethernet address		*/
+static IPaddr_t	net_ip;			/* Our IP addr (0 = unknown)	*/
+static IPaddr_t	net_serverip;		/* Our IP addr (0 = unknown)	*/
 
-	return 0;	/* transmitted */
-}
+unsigned char *NetRxPackets[PKTBUFSRX]; /* Receive packets		*/
+static unsigned int net_ip_id;
 
-void
-NetReceive(uchar * inpkt, int len)
+void net_update_env(void)
 {
-	Ethernet_t *et;
-	IP_t	*ip;
-	ARP_t	*arp;
-	IPaddr_t tmp;
-	int	x;
-	uchar *pkt;
-	ushort cti = 0, vlanid = VLAN_NONE, myvlanid, mynvlanid;
-
-	pr_debug("packet received\n");
-
-	if (!net_receive(inpkt, len))
-		return;
-
-	NetRxPkt = inpkt;
-	NetRxPktLen = len;
-	et = (Ethernet_t *)inpkt;
-
-	/* too small packet? */
-	if (len < ETHER_HDR_SIZE)
-		return;
-
-	myvlanid = ntohs(NetOurVLAN);
-	if (myvlanid == (ushort)-1)
-		myvlanid = VLAN_NONE;
-	mynvlanid = ntohs(NetOurNativeVLAN);
-	if (mynvlanid == (ushort)-1)
-		mynvlanid = VLAN_NONE;
-
-	x = ntohs(et->et_protlen);
-
-	pr_debug("packet received\n");
-
-	if (x < 1514) {
-		/*
-		 *	Got a 802 packet.  Check the other protocol field.
-		 */
-		x = ntohs(et->et_prot);
-
-		ip = (IP_t *)(inpkt + E802_HDR_SIZE);
-		len -= E802_HDR_SIZE;
-
-	} else if (x != PROT_VLAN) {	/* normal packet */
-		ip = (IP_t *)(inpkt + ETHER_HDR_SIZE);
-		len -= ETHER_HDR_SIZE;
-
-	} else {			/* VLAN packet */
-		VLAN_Ethernet_t *vet = (VLAN_Ethernet_t *)et;
-
-		pr_debug("VLAN packet received\n");
-
-		/* too small packet? */
-		if (len < VLAN_ETHER_HDR_SIZE)
-			return;
-
-		/* if no VLAN active */
-		if ((ntohs(NetOurVLAN) & VLAN_IDMASK) == VLAN_NONE
-				)
-			return;
-
-		cti = ntohs(vet->vet_tag);
-		vlanid = cti & VLAN_IDMASK;
-		x = ntohs(vet->vet_type);
-
-		ip = (IP_t *)(inpkt + VLAN_ETHER_HDR_SIZE);
-		len -= VLAN_ETHER_HDR_SIZE;
-	}
-
-	pr_debug("Receive from protocol 0x%x\n", x);
-
-	if ((myvlanid & VLAN_IDMASK) != VLAN_NONE) {
-		if (vlanid == VLAN_NONE)
-			vlanid = (mynvlanid & VLAN_IDMASK);
-		/* not matched? */
-		if (vlanid != (myvlanid & VLAN_IDMASK))
-			return;
-	}
-
-	switch (x) {
-
-	case PROT_ARP:
-		/*
-		 * We have to deal with two types of ARP packets:
-		 * - REQUEST packets will be answered by sending  our
-		 *   IP address - if we know it.
-		 * - REPLY packets are expected only after we asked
-		 *   for the TFTP server's or the gateway's ethernet
-		 *   address; so if we receive such a packet, we set
-		 *   the server ethernet address
-		 */
-		pr_debug("Got ARP\n");
-
-		arp = (ARP_t *)ip;
-		if (len < ARP_HDR_SIZE) {
-			printf("bad length %d < %d\n", len, ARP_HDR_SIZE);
-			return;
-		}
-		if (ntohs(arp->ar_hrd) != ARP_ETHER) {
-			return;
-		}
-		if (ntohs(arp->ar_pro) != PROT_IP) {
-			return;
-		}
-		if (arp->ar_hln != 6) {
-			return;
-		}
-		if (arp->ar_pln != 4) {
-			return;
-		}
-
-		if (NetOurIP == 0) {
-			return;
-		}
-
-		if (NetReadIP(&arp->ar_data[16]) != NetOurIP) {
-			return;
-		}
-
-		switch (ntohs(arp->ar_op)) {
-		case ARPOP_REQUEST:		/* reply with our IP address	*/
-			pr_debug("Got ARP REQUEST, return our IP\n");
-
-			pkt = (uchar *)et;
-			pkt += NetSetEther(pkt, et->et_src, PROT_ARP);
-			arp->ar_op = htons(ARPOP_REPLY);
-			memcpy   (&arp->ar_data[10], &arp->ar_data[0], 6);
-			NetCopyIP(&arp->ar_data[16], &arp->ar_data[6]);
-			memcpy   (&arp->ar_data[ 0], NetOurEther, 6);
-			NetCopyIP(&arp->ar_data[ 6], &NetOurIP);
-			memcpy(NetTxPacket, et, (pkt - (uchar *)et) + ARP_HDR_SIZE);
-			eth_send((uchar *)NetTxPacket, (pkt - (uchar *)et) + ARP_HDR_SIZE);
-			return;
-
-		case ARPOP_REPLY:		/* arp reply */
-			/* are we waiting for a reply */
-			if (!NetArpWaitPacketIP || !NetArpWaitPacketMAC)
-				break;
-			pr_debug("Got ARP REPLY, set server/gtwy eth addr (%02x:%02x:%02x:%02x:%02x:%02x)\n",
-				arp->ar_data[0], arp->ar_data[1],
-				arp->ar_data[2], arp->ar_data[3],
-				arp->ar_data[4], arp->ar_data[5]);
-
-			tmp = NetReadIP(&arp->ar_data[6]);
-
-			/* matched waiting packet's address */
-			if (tmp == NetArpWaitReplyIP) {
-				pr_debug("Got it\n");
-
-				/* save address for later use */
-				memcpy(NetArpWaitPacketMAC, &arp->ar_data[0], 6);
-
-				/* modify header, and transmit it */
-				memcpy(((Ethernet_t *)NetArpWaitTxPacket)->et_dest, NetArpWaitPacketMAC, 6);
-				(void) eth_send(NetArpWaitTxPacket, NetArpWaitTxPacketSize);
-
-				/* no arp request pending now */
-				NetArpWaitPacketIP = 0;
-				NetArpWaitTxPacketSize = 0;
-				NetArpWaitPacketMAC = NULL;
-
-			}
-			return;
-		default:
-			pr_debug("Unexpected ARP opcode 0x%x\n", ntohs(arp->ar_op));
-			return;
-		}
-		break;
-
-	case PROT_RARP:
-		pr_debug("Got RARP\n");
-
-		arp = (ARP_t *)ip;
-		if (len < ARP_HDR_SIZE) {
-			printf("bad length %d < %d\n", len, ARP_HDR_SIZE);
-			return;
-		}
-
-		if ((ntohs(arp->ar_op) != RARPOP_REPLY) ||
-			(ntohs(arp->ar_hrd) != ARP_ETHER)   ||
-			(ntohs(arp->ar_pro) != PROT_IP)     ||
-			(arp->ar_hln != 6) || (arp->ar_pln != 4)) {
-
-			puts ("invalid RARP header\n");
-		} else {
-			NetCopyIP(&NetOurIP,    &arp->ar_data[16]);
-			if (NetServerIP == 0)
-				NetCopyIP(&NetServerIP, &arp->ar_data[ 6]);
-			memcpy (NetServerEther, &arp->ar_data[ 0], 6);
-
-			if (packetHandler)
-				(*packetHandler)(0,0,0,0);
-		}
-		break;
-
-	case PROT_IP:
-		pr_debug("Got IP\n");
-
-		if (len < IP_HDR_SIZE) {
-			debug ("len bad %d < %d\n", len, IP_HDR_SIZE);
-			return;
-		}
-		if (len < ntohs(ip->ip_len)) {
-			printf("len bad %d < %d\n", len, ntohs(ip->ip_len));
-			return;
-		}
-		len = ntohs(ip->ip_len);
-
-		pr_debug("len=%d, v=%02x\n", len, ip->ip_hl_v & 0xff);
+	struct eth_device *edev = eth_get_current();
 
-		if ((ip->ip_hl_v & 0xf0) != 0x40) {
-			return;
-		}
-		if (ip->ip_off & htons(0x1fff)) { /* Can't deal w/ fragments */
-			return;
-		}
-		if (!NetCksumOk((uchar *)ip, IP_HDR_SIZE_NO_UDP / 2)) {
-			puts ("checksum bad\n");
-			return;
-		}
-		tmp = NetReadIP(&ip->ip_dst);
-		if (NetOurIP && tmp != NetOurIP && tmp != 0xFFFFFFFF) {
-			return;
-		}
-		/*
-		 * watch for ICMP host redirects
-		 *
-		 * There is no real handler code (yet). We just watch
-		 * for ICMP host redirect messages. In case anybody
-		 * sees these messages: please contact me
-		 * (wd@denx.de), or - even better - send me the
-		 * necessary fixes :-)
-		 *
-		 * Note: in all cases where I have seen this so far
-		 * it was a problem with the router configuration,
-		 * for instance when a router was configured in the
-		 * BOOTP reply, but the TFTP server was on the same
-		 * subnet. So this is probably a warning that your
-		 * configuration might be wrong. But I'm not really
-		 * sure if there aren't any other situations.
-		 */
-		if (ip->ip_p == IPPROTO_ICMP) {
-			ICMP_t *icmph = (ICMP_t *)&(ip->udp_src);
-
-			switch (icmph->type) {
-			case ICMP_REDIRECT:
-				if (icmph->code != ICMP_REDIR_HOST)
-					return;
-				puts (" ICMP Host Redirect to ");
-				print_IPaddr(icmph->un.gateway);
-				putchar(' ');
-				return;
-#ifdef CONFIG_NET_PING
-			case ICMP_ECHO_REPLY:
-				/*
-				 *	IP header OK.  Pass the packet to the current handler.
-				 */
-				/* XXX point to ip packet */
-				if (packetHandler)
-					(*packetHandler)((uchar *)ip, 0, 0, 0);
-				return;
-#endif
-			default:
-				return;
-			}
-		} else if (ip->ip_p != IPPROTO_UDP) {	/* Only UDP packets */
-			return;
-		}
+	net_ip = dev_get_param_ip(&edev->dev, "ipaddr");
+	net_serverip = dev_get_param_ip(&edev->dev, "serverip");
+	net_gateway = dev_get_param_ip(&edev->dev, "gateway");
+	net_netmask = dev_get_param_ip(&edev->dev, "netmask");
 
-#ifdef CONFIG_UDP_CHECKSUM
-		if (ip->udp_xsum != 0) {
-			ulong   xsum;
-			ushort *sumptr;
-			ushort  sumlen;
-
-			xsum  = ip->ip_p;
-			xsum += (ntohs(ip->udp_len));
-			xsum += (ntohl(ip->ip_src) >> 16) & 0x0000ffff;
-			xsum += (ntohl(ip->ip_src) >>  0) & 0x0000ffff;
-			xsum += (ntohl(ip->ip_dst) >> 16) & 0x0000ffff;
-			xsum += (ntohl(ip->ip_dst) >>  0) & 0x0000ffff;
-
-			sumlen = ntohs(ip->udp_len);
-			sumptr = (ushort *) &(ip->udp_src);
-
-			while (sumlen > 1) {
-				ushort sumdata;
-
-				sumdata = *sumptr++;
-				xsum += ntohs(sumdata);
-				sumlen -= 2;
-			}
-			if (sumlen > 0) {
-				ushort sumdata;
-
-				sumdata = *(unsigned char *) sumptr;
-				sumdata = (sumdata << 8) & 0xff00;
-				xsum += sumdata;
-			}
-			while ((xsum >> 16) != 0) {
-				xsum = (xsum & 0x0000ffff) + ((xsum >> 16) & 0x0000ffff);
-			}
-			if ((xsum != 0x00000000) && (xsum != 0x0000ffff)) {
-				printf(" UDP wrong checksum %08x %08x\n", xsum, ntohs(ip->udp_xsum));
-				return;
-			}
-		}
-#endif
-		/*
-		 *	IP header OK.  Pass the packet to the current handler.
-		 */
-		if (packetHandler)
-			(*packetHandler)((uchar *)ip +IP_HDR_SIZE,
-						ntohs(ip->udp_dst),
-						ntohs(ip->udp_src),
-						ntohs(ip->udp_len) - 8);
-		break;
-	}
+	string_to_ethaddr(dev_get_param(&edev->dev, "ethaddr"),
+			net_ether);
 }
 
-
-/**********************************************************************/
-
-static int net_check_prereq (proto_t protocol)
+int net_checksum_ok(unsigned char *ptr, int len)
 {
-	struct eth_device *edev = eth_get_current();
-
-	switch (protocol) {
-		/* Fall through */
-#ifdef CONFIG_NET_NFS
-	case NFS:
-#endif
-	case NETCONS:
-	case TFTP:
-		if (NetServerIP == 0) {
-			printf("*** ERROR: `%s.serverip' not set\n", dev_id(&edev->dev));
-			return -1;
-		}
-
-		if (NetOurIP == 0) {
-			printf("*** ERROR: `%s.ipaddr' not set\n", dev_id(&edev->dev));
-			return -1;
-		}
-		/* Fall through */
-
-	case DHCP:
-	case RARP:
-	case BOOTP:
-		if (memcmp (NetOurEther, "\0\0\0\0\0\0", 6) == 0) {
-			printf("*** ERROR: `%s.ethaddr' not set\n", dev_id(&edev->dev));
-			return -1;
-		}
-		/* Fall through */
-	default:
-		return 0;
-	}
-
-	return -1; /* not reached */
+	return net_checksum(ptr, len) + 1;
 }
-/**********************************************************************/
 
-int
-NetCksumOk(uchar * ptr, int len)
+uint16_t net_checksum(unsigned char *ptr, int len)
 {
-	return !((NetCksum(ptr, len) + 1) & 0xfffe);
-}
+	uint32_t xsum = 0;
+	uint16_t *p = (uint16_t *)ptr;
 
+	if (len & 1)
+		ptr[len] = 0;
 
-unsigned
-NetCksum(uchar * ptr, int len)
-{
-	ulong	xsum;
-	ushort *p = (ushort *)ptr;
+	len = (len + 1) >> 1;
 
-	xsum = 0;
 	while (len-- > 0)
 		xsum += *p++;
+
 	xsum = (xsum & 0xffff) + (xsum >> 16);
 	xsum = (xsum & 0xffff) + (xsum >> 16);
 	return xsum & 0xffff;
 }
 
-int
-NetEthHdrSize(void)
-{
-	ushort myvlanid;
-
-	myvlanid = ntohs(NetOurVLAN);
-	if (myvlanid == (ushort)-1)
-		myvlanid = VLAN_NONE;
-
-	return ((myvlanid & VLAN_IDMASK) == VLAN_NONE) ? ETHER_HDR_SIZE : VLAN_ETHER_HDR_SIZE;
-}
-
-int
-NetSetEther(uchar * xet, uchar * addr, uint prot)
-{
-	Ethernet_t *et = (Ethernet_t *)xet;
-	ushort myvlanid;
-
-	myvlanid = ntohs(NetOurVLAN);
-	if (myvlanid == (ushort)-1)
-		myvlanid = VLAN_NONE;
-
-	memcpy (et->et_dest, addr, 6);
-	memcpy (et->et_src, NetOurEther, 6);
-	if ((myvlanid & VLAN_IDMASK) == VLAN_NONE) {
-	et->et_protlen = htons(prot);
-		return ETHER_HDR_SIZE;
-	} else {
-		VLAN_Ethernet_t *vet = (VLAN_Ethernet_t *)xet;
-
-		vet->vet_vlan_type = htons(PROT_VLAN);
-		vet->vet_tag = htons((0 << 5) | (myvlanid & VLAN_IDMASK));
-		vet->vet_type = htons(prot);
-		return VLAN_ETHER_HDR_SIZE;
-	}
-}
-
-void
-NetSetIP(uchar * xip, IPaddr_t dest, int dport, int sport, int len)
-{
-	IP_t *ip = (IP_t *)xip;
-
-	/*
-	 *	If the data is an odd number of bytes, zero the
-	 *	byte after the last byte so that the checksum
-	 *	will work.
-	 */
-	if (len & 1)
-		xip[IP_HDR_SIZE + len] = 0;
-
-	/*
-	 *	Construct an IP and UDP header.
-	 *	(need to set no fragment bit - XXX)
-	 */
-	ip->ip_hl_v  = 0x45;		/* IP_HDR_SIZE / 4 (not including UDP) */
-	ip->ip_tos   = 0;
-	ip->ip_len   = htons(IP_HDR_SIZE + len);
-	ip->ip_id    = htons(NetIPID++);
-	ip->ip_off   = htons(0x4000);	/* No fragmentation */
-	ip->ip_ttl   = 255;
-	ip->ip_p     = 17;		/* UDP */
-	ip->ip_sum   = 0;
-	NetCopyIP((void*)&ip->ip_src, &NetOurIP); /* already in network byte order */
-	NetCopyIP((void*)&ip->ip_dst, &dest);	   /* - "" - */
-	ip->udp_src  = htons(sport);
-	ip->udp_dst  = htons(dport);
-	ip->udp_len  = htons(8 + len);
-	ip->udp_xsum = 0;
-	ip->ip_sum   = ~NetCksum((uchar *)ip, IP_HDR_SIZE_NO_UDP / 2);
-}
-
 char *ip_to_string (IPaddr_t x, char *s)
 {
 	x = ntohl (x);
@@ -871,7 +108,7 @@ int string_to_ip(const char *s, IPaddr_t *ip)
 		return -EINVAL;
 
 	for (i = 0; i < 4; i++) {
-		ulong val;
+		unsigned long val;
 
 		if (!isdigit(*s))
 			return -EINVAL;
@@ -890,34 +127,6 @@ int string_to_ip(const char *s, IPaddr_t *ip)
 	return 0;
 }
 
-void VLAN_to_string(ushort x, char *s)
-{
-	x = ntohs(x);
-
-	if (x == (ushort)-1)
-		x = VLAN_NONE;
-
-	if (x == VLAN_NONE)
-		strcpy(s, "none");
-	else
-		sprintf(s, "%d", x & VLAN_IDMASK);
-}
-
-ushort string_to_VLAN(const char *s)
-{
-	ushort id;
-
-	if (s == NULL)
-		return htons(VLAN_NONE);
-
-	if (*s < '0' || *s > '9')
-		id = VLAN_NONE;
-	else
-		id = (ushort)simple_strtoul(s, NULL, 10);
-
-	return htons(id);
-}
-
 void print_IPaddr (IPaddr_t x)
 {
 	char tmp[16];
@@ -927,14 +136,9 @@ void print_IPaddr (IPaddr_t x)
 	puts (tmp);
 }
 
-ushort getenv_VLAN(char *var)
-{
-	return string_to_VLAN(getenv(var));
-}
-
 int string_to_ethaddr(const char *str, char *enetaddr)
 {
-	ulong reg;
+	int reg;
 	char *e;
 
         if (!str || strlen(str) != 17)
@@ -954,66 +158,11 @@ int string_to_ethaddr(const char *str, char *enetaddr)
 
 void ethaddr_to_string(const unsigned char *enetaddr, char *str)
 {
-	sprintf (str, "%02X:%02X:%02X:%02X:%02X:%02X",
+	sprintf(str, "%02X:%02X:%02X:%02X:%02X:%02X",
 		 enetaddr[0], enetaddr[1], enetaddr[2], enetaddr[3],
 		 enetaddr[4], enetaddr[5]);
 }
 
-static IPaddr_t	net_netmask;		/* Our subnet mask (0=unknown)	*/
-static IPaddr_t	net_gateway;		/* Our gateways IP address	*/
-static IPaddr_t	net_dns_server;		/* Our DNS IP address		*/
-
-static unsigned char net_ether[6];	/* Our ethernet address		*/
-static IPaddr_t	net_ip;			/* Our IP addr (0 = unknown)	*/
-static IPaddr_t	net_serverip;		/* Our IP addr (0 = unknown)	*/
-
-unsigned char *NetRxPackets[PKTBUFSRX]; /* Receive packets		*/
-static unsigned int net_ip_id;
-
-void net_update_env(void)
-{
-	struct eth_device *edev = eth_get_current();
-
-	net_ip = dev_get_param_ip(&edev->dev, "ipaddr");
-	net_serverip = dev_get_param_ip(&edev->dev, "serverip");
-	net_gateway = dev_get_param_ip(&edev->dev, "gateway");
-	net_netmask = dev_get_param_ip(&edev->dev, "netmask");
-
-	string_to_ethaddr(dev_get_param(&edev->dev, "ethaddr"),
-			net_ether);
-
-	NetOurIP = dev_get_param_ip(&edev->dev, "ipaddr");
-	NetServerIP = dev_get_param_ip(&edev->dev, "serverip");
-	NetOurGatewayIP = dev_get_param_ip(&edev->dev, "gateway");
-	NetOurSubnetMask = dev_get_param_ip(&edev->dev, "netmask");
-
-	string_to_ethaddr(dev_get_param(&edev->dev, "ethaddr"),
-			NetOurEther);
-}
-
-int net_checksum_ok(unsigned char *ptr, int len)
-{
-	return net_checksum(ptr, len) + 1;
-}
-
-uint16_t net_checksum(unsigned char *ptr, int len)
-{
-	uint32_t xsum = 0;
-	uint16_t *p = (uint16_t *)ptr;
-
-	if (len & 1)
-		ptr[len] = 0;
-
-	len = (len + 1) >> 1;
-
-	while (len-- > 0)
-		xsum += *p++;
-
-	xsum = (xsum & 0xffff) + (xsum >> 16);
-	xsum = (xsum & 0xffff) + (xsum >> 16);
-	return xsum & 0xffff;
-}
-
 static unsigned char *arp_ether;
 static IPaddr_t arp_wait_ip;
 
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
