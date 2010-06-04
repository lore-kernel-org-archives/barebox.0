Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1OKTcP-00034r-6F
	for barebox@lists.infradead.org; Fri, 04 Jun 2010 09:55:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  4 Jun 2010 11:55:00 +0200
Message-Id: <1275645309-9756-5-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/13] implement dhcp using new network stack
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/dhcp.c |  484 ++++++++++++++++++++++--------------------------------------
 1 files changed, 173 insertions(+), 311 deletions(-)

diff --git a/net/dhcp.c b/net/dhcp.c
index f27a696..bedfb6e 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -14,64 +14,44 @@
 #include <clock.h>
 #include <net.h>
 #include <libbb.h>
-#include "tftp.h"
-#include "nfs.h"
+#include <errno.h>
+#include <linux/err.h>
 
 #define OPT_SIZE 312	/* Minimum DHCP Options size per RFC2131 - results in 576 byte pkt */
 
-typedef struct
-{
-	uchar		bp_op;		/* Operation				*/
-# define OP_BOOTREQUEST	1
-# define OP_BOOTREPLY	2
-	uchar		bp_htype;	/* Hardware type			*/
-# define HWT_ETHER	1
-	uchar		bp_hlen;	/* Hardware address length		*/
-# define HWL_ETHER	6
-	uchar		bp_hops;	/* Hop count (gateway thing)		*/
-	ulong		bp_id;		/* Transaction ID			*/
-	ushort		bp_secs;	/* Seconds since boot			*/
-	ushort		bp_spare1;	/* Alignment				*/
+struct bootp {
+	uint8_t		bp_op;		/* Operation				*/
+#define OP_BOOTREQUEST	1
+#define OP_BOOTREPLY	2
+	uint8_t		bp_htype;	/* Hardware type			*/
+#define HWT_ETHER	1
+	uint8_t		bp_hlen;	/* Hardware address length		*/
+#define HWL_ETHER	6
+	uint8_t		bp_hops;	/* Hop count (gateway thing)		*/
+	uint32_t	bp_id;		/* Transaction ID			*/
+	uint16_t	bp_secs;	/* Seconds since boot			*/
+	uint16_t	bp_spare1;	/* Alignment				*/
 	IPaddr_t	bp_ciaddr;	/* Client IP address			*/
 	IPaddr_t	bp_yiaddr;	/* Your (client) IP address		*/
 	IPaddr_t	bp_siaddr;	/* Server IP address			*/
 	IPaddr_t	bp_giaddr;	/* Gateway IP address			*/
-	uchar		bp_chaddr[16];	/* Client hardware address		*/
+	uint8_t		bp_chaddr[16];	/* Client hardware address		*/
 	char		bp_sname[64];	/* Server host name			*/
 	char		bp_file[128];	/* Boot file name			*/
-	char		bp_vend[OPT_SIZE];	/* Vendor information			*/
-}	Bootp_t;
-
-#define BOOTP_HDR_SIZE	sizeof (Bootp_t)
-#define BOOTP_SIZE	(ETHER_HDR_SIZE + IP_HDR_SIZE + BOOTP_HDR_SIZE)
-
-/**********************************************************************/
-/*
- *	Global functions and variables.
- */
-
-/* bootp.c */
-extern ulong	BootpID;		/* ID of cur BOOTP request		*/
-extern char	BootFile[128];		/* Boot file name			*/
-#ifdef CONFIG_BOOTP_RANDOM_DELAY
-ulong		seed1, seed2;		/* seed for random BOOTP delay		*/
-#endif
-
-
-/* Send a BOOTP request */
-extern void	BootpRequest (void);
-
-/****************** DHCP Support *********************/
+	char		bp_vend[0];	/* Vendor information			*/
+};
 
 /* DHCP States */
-typedef enum { INIT,
-	       INIT_REBOOT,
-	       REBOOTING,
-	       SELECTING,
-	       REQUESTING,
-	       REBINDING,
-	       BOUND,
-	       RENEWING } dhcp_state_t;
+typedef enum {
+	INIT,
+	INIT_REBOOT,
+	REBOOTING,
+	SELECTING,
+	REQUESTING,
+	REBINDING,
+	BOUND,
+	RENEWING,
+} dhcp_state_t;
 
 #define DHCP_DISCOVER 1
 #define DHCP_OFFER    2
@@ -81,44 +61,27 @@ typedef enum { INIT,
 #define DHCP_NAK      6
 #define DHCP_RELEASE  7
 
-#define SELECT_TIMEOUT 3	/* Seconds to wait for offers */
-
-/**********************************************************************/
-
 #define BOOTP_VENDOR_MAGIC	0x63825363	/* RFC1048 Magic Cookie		*/
 
-#define TIMEOUT		5		/* Seconds before trying BOOTP again	*/
-#ifndef CONFIG_NET_RETRY_COUNT
-# define TIMEOUT_COUNT	5		/* # of timeouts before giving up  */
-#else
-# define TIMEOUT_COUNT	(CONFIG_NET_RETRY_COUNT)
-#endif
-
 #define PORT_BOOTPS	67		/* BOOTP server UDP port		*/
 #define PORT_BOOTPC	68		/* BOOTP client UDP port		*/
 
-#ifndef CONFIG_DHCP_MIN_EXT_LEN		/* minimal length of extension list	*/
-#define CONFIG_DHCP_MIN_EXT_LEN 64
-#endif
-
-ulong		BootpID;
-#ifdef CONFIG_BOOTP_RANDOM_DELAY
-ulong		seed1, seed2;
-#endif
+#define DHCP_MIN_EXT_LEN 64	/* minimal length of extension list	*/
 
-dhcp_state_t dhcp_state = INIT;
-unsigned long dhcp_leasetime = 0;
-IPaddr_t NetDHCPServerIP = 0;
-static void DhcpHandler(uchar * pkt, unsigned dest, unsigned src, unsigned len);
+static uint32_t Bootp_id;
+static dhcp_state_t dhcp_state;
+static uint32_t dhcp_leasetime;
+static IPaddr_t net_dhcp_server_ip;
+static uint64_t dhcp_start;
 
-static int BootpCheckPkt(uchar *pkt, unsigned dest, unsigned src, unsigned len)
+static int bootp_check_packet(unsigned char *pkt, unsigned src, unsigned len)
 {
-	Bootp_t *bp = (Bootp_t *) pkt;
+	struct bootp *bp = (struct bootp *) pkt;
 	int retval = 0;
 
-	if (dest != PORT_BOOTPC || src != PORT_BOOTPS)
+	if (src != PORT_BOOTPS)
 		retval = -1;
-	else if (len < sizeof (Bootp_t) - OPT_SIZE)
+	else if (len < sizeof(struct bootp))
 		retval = -2;
 	else if (bp->bp_op != OP_BOOTREQUEST &&
 	    bp->bp_op != OP_BOOTREPLY &&
@@ -131,11 +94,11 @@ static int BootpCheckPkt(uchar *pkt, unsigned dest, unsigned src, unsigned len)
 		retval = -4;
 	else if (bp->bp_hlen != HWL_ETHER)
 		retval = -5;
-	else if (NetReadLong((ulong*)&bp->bp_id) != BootpID) {
+	else if (net_read_uint32(&bp->bp_id) != Bootp_id) {
 		retval = -6;
 	}
 
-	debug ("Filtering pkt = %d\n", retval);
+	debug("Filtering pkt = %d\n", retval);
 
 	return retval;
 }
@@ -143,64 +106,31 @@ static int BootpCheckPkt(uchar *pkt, unsigned dest, unsigned src, unsigned len)
 /*
  * Copy parameters of interest from BOOTP_REPLY/DHCP_OFFER packet
  */
-static void BootpCopyNetParams(Bootp_t *bp)
+static void bootp_copy_net_params(struct bootp *bp)
 {
 	IPaddr_t tmp_ip;
 
-	NetCopyIP(&NetOurIP, &bp->bp_yiaddr);
-	NetCopyIP(&tmp_ip, &bp->bp_siaddr);
-	if (tmp_ip != 0)
-		NetCopyIP(&NetServerIP, &bp->bp_siaddr);
-	memcpy (NetServerEther, ((Ethernet_t *)NetRxPkt)->et_src, 6);
-	if (strlen(bp->bp_file) > 0)
-		safe_strncpy (BootFile, bp->bp_file, sizeof(BootFile));
+	tmp_ip = net_read_ip(&bp->bp_yiaddr);
+	net_set_ip(tmp_ip);
 
-	debug ("Bootfile: %s\n", BootFile);
-
-	/* Propagate to environment:
-	 * don't delete exising entry when BOOTP / DHCP reply does
-	 * not contain a new value
-	 */
-	if (*BootFile) {
-		setenv ("bootfile", BootFile);
-	}
-}
+	tmp_ip = net_read_ip(&bp->bp_siaddr);
+	if (tmp_ip != 0)
+		net_set_serverip(tmp_ip);
 
-static int truncate_sz (const char *name, int maxlen, int curlen)
-{
-	if (curlen >= maxlen) {
-		printf("*** WARNING: %s is too long (%d - max: %d) - truncated\n",
-			name, curlen, maxlen);
-		curlen = maxlen - 1;
-	}
-	return (curlen);
-}
+	if (strlen(bp->bp_file) > 0)
+		setenv("bootfile", bp->bp_file);
 
-/*
- *	Timeout on BOOTP/DHCP request.
- */
-static void
-BootpTimeout(void)
-{
-	NetSetTimeout (TIMEOUT * SECOND, BootpTimeout);
-	BootpRequest ();
+	debug("bootfile: %s\n", bp->bp_file);
 }
 
 /*
- *	Initialize BOOTP extension fields in the request.
+ * Initialize BOOTP extension fields in the request.
  */
-static int DhcpExtended (u8 * e, int message_type, IPaddr_t ServerID, IPaddr_t RequestedIP)
+static int dhcp_extended (u8 *e, int message_type, IPaddr_t ServerID, IPaddr_t RequestedIP)
 {
 	u8 *start = e;
 	u8 *cnt;
 
-#ifdef CONFIG_BOOTP_VENDOREX
-	u8 *x;
-#endif
-#ifdef CONFIG_BOOTP_SEND_HOSTNAME
-	char *hostname;
-#endif
-
 	*e++ = 99;		/* RFC1048 Magic Cookie */
 	*e++ = 130;
 	*e++ = 83;
@@ -236,175 +166,113 @@ static int DhcpExtended (u8 * e, int message_type, IPaddr_t ServerID, IPaddr_t R
 		*e++ = tmp >> 8;
 		*e++ = tmp & 0xff;
 	}
-#ifdef CONFIG_BOOTP_SEND_HOSTNAME
-	if ((hostname = getenv ("hostname"))) {
-		int hostnamelen = strlen (hostname);
-
-		*e++ = 12;	/* Hostname */
-		*e++ = hostnamelen;
-		memcpy (e, hostname, hostnamelen);
-		e += hostnamelen;
-	}
-#endif
 
 	*e++ = 55;		/* Parameter Request List */
 	 cnt = e++;		/* Pointer to count of requested items */
 	*cnt = 0;
-#ifdef CONFIG_BOOTP_SUBNETMASK
 	*e++  = 1;		/* Subnet Mask */
 	*cnt += 1;
-#endif
-#ifdef CONFIG_BOOTP_TIMEOFFSET
-	*e++  = 2;
-	*cnt += 1;
-#endif
-#ifdef CONFIG_BOOTP_GATEWAY
 	*e++  = 3;		/* Router Option */
 	*cnt += 1;
-#endif
-#ifdef CONFIG_BOOTP_DNS
 	*e++  = 6;		/* DNS Server(s) */
 	*cnt += 1;
-#endif
-#ifdef CONFIG_BOOTP_HOSTNAME
 	*e++  = 12;		/* Hostname */
 	*cnt += 1;
-#endif
-#ifdef CONFIG_BOOTP_BOOTFILESIZE
-	*e++  = 13;		/* Boot File Size */
-	*cnt += 1;
-#endif
-#ifdef CONFIG_BOOTP_BOOTPATH
 	*e++  = 17;		/* Boot path */
 	*cnt += 1;
-#endif
-#ifdef CONFIG_BOOTP_NISDOMAIN
-	*e++  = 40;		/* NIS Domain name request */
-	*cnt += 1;
-#endif
-#ifdef CONFIG_BOOTP_NTPSERVER
-	*e++  = 42;
-	*cnt += 1;
-#endif
 	*e++  = 255;		/* End of the list */
 
 	/* Pad to minimal length */
-#ifdef	CONFIG_DHCP_MIN_EXT_LEN
-	while ((e - start) <= CONFIG_DHCP_MIN_EXT_LEN)
+	while ((e - start) <= DHCP_MIN_EXT_LEN)
 		*e++ = 0;
-#endif
 
 	return e - start;
 }
 
-void
-BootpRequest (void)
+static struct net_connection *dhcp_con;
+
+static int bootp_request(void)
 {
-	uchar *pkt, *iphdr;
-	Bootp_t *bp;
-	int ext_len, pktlen, iplen;
+	struct bootp *bp;
+	int ext_len;
+	int ret;
+	unsigned char *payload = net_udp_get_payload(dhcp_con);
+	const char *bfile;
 
 	dhcp_state = INIT;
 
-	printf("BOOTP broadcast\n");
-	pkt = NetTxPacket;
-	memset ((void*)pkt, 0, PKTSIZE);
+	debug("BOOTP broadcast\n");
 
-	pkt += NetSetEther(pkt, NetBcastAddr, PROT_IP);
-
-	/*
-	 * Next line results in incorrect packet size being transmitted, resulting
-	 * in errors in some DHCP servers, reporting missing bytes.  Size must be
-	 * set in packet header after extension length has been determined.
-	 * C. Hallinan, DS4.COM, Inc.
-	 */
-	/* NetSetIP(pkt, 0xFFFFFFFFL, PORT_BOOTPS, PORT_BOOTPC, sizeof (Bootp_t)); */
-	iphdr = pkt;	/* We need this later for NetSetIP() */
-	pkt += IP_HDR_SIZE;
-
-	bp = (Bootp_t *)pkt;
+	bp = (struct bootp *)payload;
 	bp->bp_op = OP_BOOTREQUEST;
 	bp->bp_htype = HWT_ETHER;
 	bp->bp_hlen = HWL_ETHER;
 	bp->bp_hops = 0;
 	bp->bp_secs = htons(get_time_ns() >> 30);
-	NetWriteIP(&bp->bp_ciaddr, 0);
-	NetWriteIP(&bp->bp_yiaddr, 0);
-	NetWriteIP(&bp->bp_siaddr, 0);
-	NetWriteIP(&bp->bp_giaddr, 0);
-	memcpy (bp->bp_chaddr, NetOurEther, 6);
-	safe_strncpy (bp->bp_file, BootFile, sizeof(bp->bp_file));
+	net_write_ip(&bp->bp_ciaddr, 0);
+	net_write_ip(&bp->bp_yiaddr, 0);
+	net_write_ip(&bp->bp_siaddr, 0);
+	net_write_ip(&bp->bp_giaddr, 0);
+	memcpy(bp->bp_chaddr, dhcp_con->et->et_src, 6);
 
-	/* Request additional information from the BOOTP/DHCP server */
-	ext_len = DhcpExtended((u8 *)bp->bp_vend, DHCP_DISCOVER, 0, 0);
+	bfile = getenv("bootfile");
+	if (bfile)
+		safe_strncpy (bp->bp_file, bfile, sizeof(bp->bp_file));
 
-	/*
-	 *	Bootp ID is the lower 4 bytes of our ethernet address
-	 *	plus the current time in HZ.
-	 */
-	BootpID = ((ulong)NetOurEther[2] << 24)
-		| ((ulong)NetOurEther[3] << 16)
-		| ((ulong)NetOurEther[4] << 8)
-		| (ulong)NetOurEther[5];
-	BootpID += (uint32_t)get_time_ns();
-	BootpID	 = htonl(BootpID);
-	NetCopyLong(&bp->bp_id, &BootpID);
+	/* Request additional information from the BOOTP/DHCP server */
+	ext_len = dhcp_extended((u8 *)bp->bp_vend, DHCP_DISCOVER, 0, 0);
 
-	/*
-	 * Calculate proper packet lengths taking into account the
-	 * variable size of the options field
-	 */
-	pktlen = BOOTP_SIZE - sizeof(bp->bp_vend) + ext_len;
-	iplen = BOOTP_HDR_SIZE - sizeof(bp->bp_vend) + ext_len;
-	NetSetIP(iphdr, 0xFFFFFFFFL, PORT_BOOTPS, PORT_BOOTPC, iplen);
-	NetSetTimeout(SELECT_TIMEOUT * SECOND, BootpTimeout);
+	Bootp_id = (uint32_t)get_time_ns();
+	net_copy_uint32(&bp->bp_id, &Bootp_id);
 
 	dhcp_state = SELECTING;
-	NetSetHandler(DhcpHandler);
-	NetSendPacket(NetTxPacket, pktlen);
+
+	ret = net_udp_send(dhcp_con, sizeof(*bp) + ext_len);
+
+	return ret;
 }
 
-static void DhcpOptionsProcess (uchar * popt, Bootp_t *bp)
+static void dhcp_options_process(unsigned char *popt, struct bootp *bp)
 {
-	uchar *end = popt + BOOTP_HDR_SIZE;
-	int oplen, size;
+	unsigned char *end = popt + sizeof(*bp) + OPT_SIZE;
+	int oplen;
+	IPaddr_t ip;
+	char str[256];
 
 	while (popt < end && *popt != 0xff) {
 		oplen = *(popt + 1);
 		switch (*popt) {
 		case 1:
-			NetCopyIP (&NetOurSubnetMask, (popt + 2));
+			ip = net_read_ip(popt + 2);
+			net_set_netmask(ip);
 			break;
 		case 3:
-			NetCopyIP (&NetOurGatewayIP, (popt + 2));
+			ip = net_read_ip(popt + 2);
+			net_set_gateway(ip);
 			break;
 		case 6:
-			NetCopyIP (&NetOurDNSIP, (popt + 2));
-#ifdef CONFIG_BOOTP_DNS2
-			if (*(popt + 1) > 4) {
-				NetCopyIP (&NetOurDNS2IP, (popt + 2 + 4));
-			}
-#endif
+			ip = net_read_ip(popt + 2);
+			net_set_dnsip(ip);
 			break;
 		case 12:
-			size = truncate_sz ("Host Name", sizeof (NetOurHostName), oplen);
-			memcpy (&NetOurHostName, popt + 2, size);
-			NetOurHostName[size] = 0;
+			memcpy(str, popt + 2, oplen);
+			str[oplen] = 0;
+			setenv("hostname", str);
 			break;
 		case 15:	/* Ignore Domain Name Option */
 			break;
 		case 17:
-			size = truncate_sz ("Root Path", sizeof (NetOurRootPath), oplen);
-			memcpy (&NetOurRootPath, popt + 2, size);
-			NetOurRootPath[size] = 0;
+			memcpy(str, popt + 2, oplen);
+			str[oplen] = 0;
+			setenv("rootpath", str);
 			break;
 		case 51:
-			NetCopyLong (&dhcp_leasetime, (ulong *) (popt + 2));
+			net_copy_uint32 (&dhcp_leasetime, (uint32_t *)(popt + 2));
 			break;
 		case 53:	/* Ignore Message Type Option */
 			break;
 		case 54:
-			NetCopyIP (&NetDHCPServerIP, (popt + 2));
+			net_copy_ip(&net_dhcp_server_ip, (popt + 2));
 			break;
 		case 58:	/* Ignore Renewal Time Option */
 			break;
@@ -419,10 +287,9 @@ static void DhcpOptionsProcess (uchar * popt, Bootp_t *bp)
 			 * pass the bootp packet pointer into here as the
 			 * second arg
 			 */
-			size = truncate_sz ("Opt Boot File",
-					    sizeof(bp->bp_file),
-					    oplen);
-			if (bp->bp_file[0] == '\0' && size > 0) {
+			memcpy(str, popt + 2, oplen);
+			str[oplen] = 0;
+			if (bp->bp_file[0] == '\0') {
 				/*
 				 * only use vendor boot file if we didn't
 				 * receive a boot file in the main non-vendor
@@ -434,8 +301,7 @@ static void DhcpOptionsProcess (uchar * popt, Bootp_t *bp)
 				 */
 				printf("*** WARNING: using vendor "
 					"optional boot file\n");
-				memcpy(bp->bp_file, popt + 2, size);
-				bp->bp_file[size] = '\0';
+					setenv("bootfile", str);
 			}
 			break;
 		default:
@@ -443,16 +309,16 @@ static void DhcpOptionsProcess (uchar * popt, Bootp_t *bp)
 			if (dhcp_vendorex_proc (popt))
 				break;
 #endif
-			printf ("*** Unhandled DHCP Option in OFFER/ACK: %d\n", *popt);
+			debug("*** Unhandled DHCP Option in OFFER/ACK: %d\n", *popt);
 			break;
 		}
 		popt += oplen + 2;	/* Process next option */
 	}
 }
 
-static int DhcpMessageType(unsigned char *popt)
+static int dhcp_message_type(unsigned char *popt)
 {
-	if (NetReadLong((ulong*)popt) != htonl(BOOTP_VENDOR_MAGIC))
+	if (net_read_uint32((uint32_t *)popt) != htonl(BOOTP_VENDOR_MAGIC))
 		return -1;
 
 	popt += 4;
@@ -464,76 +330,65 @@ static int DhcpMessageType(unsigned char *popt)
 	return -1;
 }
 
-static void DhcpSendRequestPkt(Bootp_t *bp_offer)
+static void dhcp_send_request_packet(struct bootp *bp_offer)
 {
-	uchar *pkt, *iphdr;
-	Bootp_t *bp;
-	int pktlen, iplen, extlen;
+	struct bootp *bp;
+	int extlen;
 	IPaddr_t OfferedIP;
+	unsigned char *payload = net_udp_get_payload(dhcp_con);
 
-	debug ("DhcpSendRequestPkt: Sending DHCPREQUEST\n");
-	pkt = NetTxPacket;
-	memset ((void*)pkt, 0, PKTSIZE);
-
-	pkt += NetSetEther(pkt, NetBcastAddr, PROT_IP);
+	debug("%s: Sending DHCPREQUEST\n", __func__);
 
-	iphdr = pkt;		/* We'll need this later to set proper pkt size */
-	pkt += IP_HDR_SIZE;
-
-	bp = (Bootp_t *)pkt;
+	bp = (struct bootp *)payload;
 	bp->bp_op = OP_BOOTREQUEST;
 	bp->bp_htype = HWT_ETHER;
 	bp->bp_hlen = HWL_ETHER;
 	bp->bp_hops = 0;
 	/* FIXME what is this? */
 //	bp->bp_secs = htons(get_timer(0) / CFG_HZ);
-	NetCopyIP(&bp->bp_ciaddr, &bp_offer->bp_ciaddr); /* both in network byte order */
-	NetCopyIP(&bp->bp_yiaddr, &bp_offer->bp_yiaddr);
-	NetCopyIP(&bp->bp_siaddr, &bp_offer->bp_siaddr);
+	net_copy_ip(&bp->bp_ciaddr, &bp_offer->bp_ciaddr); /* both in network byte order */
+	net_copy_ip(&bp->bp_yiaddr, &bp_offer->bp_yiaddr);
+	net_copy_ip(&bp->bp_siaddr, &bp_offer->bp_siaddr);
 	/*
 	 * RFC3046 requires Relay Agents to discard packets with
 	 * nonzero and offered giaddr
 	 */
-	NetWriteIP(&bp->bp_giaddr, 0);
+	net_write_ip(&bp->bp_giaddr, 0);
 
-	memcpy (bp->bp_chaddr, NetOurEther, 6);
+	memcpy(bp->bp_chaddr, dhcp_con->et->et_src, 6);
 
 	/*
 	 * ID is the id of the OFFER packet
 	 */
 
-	NetCopyLong(&bp->bp_id, &bp_offer->bp_id);
+	net_copy_uint32(&bp->bp_id, &bp_offer->bp_id);
 
 	/*
 	 * Copy options from OFFER packet if present
 	 */
-	NetCopyIP(&OfferedIP, &bp->bp_yiaddr);
-	extlen = DhcpExtended((u8 *)bp->bp_vend, DHCP_REQUEST, NetDHCPServerIP, OfferedIP);
-
-	pktlen = BOOTP_SIZE - sizeof(bp->bp_vend) + extlen;
-	iplen = BOOTP_HDR_SIZE - sizeof(bp->bp_vend) + extlen;
-	NetSetIP(iphdr, 0xFFFFFFFFL, PORT_BOOTPS, PORT_BOOTPC, iplen);
+	net_copy_ip(&OfferedIP, &bp->bp_yiaddr);
+	extlen = dhcp_extended((u8 *)bp->bp_vend, DHCP_REQUEST, net_dhcp_server_ip, OfferedIP);
 
-	debug ("Transmitting DHCPREQUEST packet: len = %d\n", pktlen);
-	NetSendPacket(NetTxPacket, pktlen);
+	debug("Transmitting DHCPREQUEST packet\n");
+	net_udp_send(dhcp_con, sizeof(*bp) + extlen);
 }
 
 /*
  *	Handle DHCP received packets.
  */
-static void
-DhcpHandler(uchar * pkt, unsigned dest, unsigned src, unsigned len)
+static void dhcp_handler(char *packet, unsigned int len)
 {
-	Bootp_t *bp = (Bootp_t *)pkt;
+	char *pkt = net_eth_to_udp_payload(packet);
+	struct udphdr *udp = net_eth_to_udphdr(packet);
+	struct bootp *bp = (struct bootp *)pkt;
 
-	debug ("DHCPHandler: got packet: (src=%d, dst=%d, len=%d) state: %d\n",
-		src, dest, len, dhcp_state);
+	len = net_eth_to_udplen(packet);
 
-	if (BootpCheckPkt(pkt, dest, src, len)) /* Filter out pkts we don't want */
-		return;
+	debug("DHCPHandler: got packet: (len=%d) state: %d\n",
+		len, dhcp_state);
 
-	debug ("DHCPHandler: got DHCP packet: (src=%d, dst=%d, len=%d) state: %d\n",
-		src, dest, len, dhcp_state);
+	if (bootp_check_packet(pkt, ntohs(udp->uh_sport), len)) /* Filter out pkts we don't want */
+		return;
 
 	switch (dhcp_state) {
 	case SELECTING:
@@ -543,69 +398,76 @@ DhcpHandler(uchar * pkt, unsigned dest, unsigned src, unsigned len)
 		 * If filename is in format we recognize, assume it is a valid
 		 * OFFER from a server we want.
 		 */
-		debug ("DHCP: state=SELECTING bp_file: \"%s\"\n", bp->bp_file);
-#ifdef CFG_BOOTFILE_PREFIX
-		if (strncmp(bp->bp_file,
-			    CFG_BOOTFILE_PREFIX,
-			    strlen(CFG_BOOTFILE_PREFIX)) == 0 ) {
-#endif	/* CFG_BOOTFILE_PREFIX */
-
-			debug ("TRANSITIONING TO REQUESTING STATE\n");
-			dhcp_state = REQUESTING;
+		debug ("%s: state SELECTING, bp_file: \"%s\"\n", __func__, bp->bp_file);
+		dhcp_state = REQUESTING;
 
-			if (NetReadLong((ulong*)&bp->bp_vend[0]) == htonl(BOOTP_VENDOR_MAGIC))
-				DhcpOptionsProcess((u8 *)&bp->bp_vend[4], bp);
+		if (net_read_uint32((uint32_t *)&bp->bp_vend[0]) == htonl(BOOTP_VENDOR_MAGIC))
+			dhcp_options_process((u8 *)&bp->bp_vend[4], bp);
 
-			BootpCopyNetParams(bp); /* Store net params from reply */
+		bootp_copy_net_params(bp); /* Store net params from reply */
 
-			NetSetTimeout(TIMEOUT * SECOND, BootpTimeout);
-			DhcpSendRequestPkt(bp);
-#ifdef CFG_BOOTFILE_PREFIX
-		}
-#endif	/* CFG_BOOTFILE_PREFIX */
+		dhcp_start = get_time_ns();
+		dhcp_send_request_packet(bp);
 
-		return;
 		break;
 	case REQUESTING:
-		debug ("DHCP State: REQUESTING\n");
+		debug ("%s: State REQUESTING\n", __func__);
 
-		if ( DhcpMessageType((u8 *)bp->bp_vend) == DHCP_ACK ) {
-			if (NetReadLong((ulong*)&bp->bp_vend[0]) == htonl(BOOTP_VENDOR_MAGIC))
-				DhcpOptionsProcess((u8 *)&bp->bp_vend[4], bp);
-			BootpCopyNetParams(bp); /* Store net params from reply */
+		if (dhcp_message_type((u8 *)bp->bp_vend) == DHCP_ACK ) {
+			if (net_read_uint32((uint32_t *)&bp->bp_vend[0]) == htonl(BOOTP_VENDOR_MAGIC))
+				dhcp_options_process((u8 *)&bp->bp_vend[4], bp);
+			bootp_copy_net_params(bp); /* Store net params from reply */
 			dhcp_state = BOUND;
 			puts ("DHCP client bound to address ");
-			print_IPaddr(NetOurIP);
+			print_IPaddr(net_get_ip());
 			putchar('\n');
-
-			NetState = NETLOOP_SUCCESS;
 			return;
 		}
 		break;
 	default:
-		puts ("DHCP: INVALID STATE\n");
+		debug("%s: INVALID STATE\n", __func__);
 		break;
 	}
-
 }
 
 static int do_dhcp(struct command *cmdtp, int argc, char *argv[])
 {
-	int size;
+	int ret;
+
+	dhcp_con = net_udp_new(0xffffffff, PORT_BOOTPS, dhcp_handler);
+	if (IS_ERR(dhcp_con)) {
+		ret = PTR_ERR(dhcp_con);
+		goto out;
+	}
+
+	ret = net_udp_bind(dhcp_con, PORT_BOOTPC);
+	if (ret)
+		goto out;
 
-	if (NetLoopInit(DHCP) < 0)
-		return 1;
+	ret = bootp_request(); /* Basically same as BOOTP */
+	if (ret)
+		goto out;
 
-	NetOurIP = 0;
-	BootpRequest();		/* Basically same as BOOTP */
+	while (dhcp_state != BOUND) {
+		if (ctrlc())
+			break;
+		net_poll();
+		if (is_timeout(dhcp_start, 3 * SECOND)) {
+			dhcp_start = get_time_ns();
+			printf("T ");
+			ret = bootp_request();
+			if (ret)
+				goto out;
+		}
+	}
 
-	if ((size = NetLoop()) < 0)
-		return 1;
+out:
+	net_unregister(dhcp_con);
 
-	/* NetLoop ok, update environment */
-	netboot_update_env();
+	if (ret)
+		printf("dhcp failed: %s\n", strerror(-ret));
 
-	return 0;
+	return ret ? 1 : 0;
 }
 
 BAREBOX_CMD_START(dhcp)
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
