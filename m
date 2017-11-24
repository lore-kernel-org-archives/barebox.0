Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eI96k-0008K9-08
 for barebox@lists.infradead.ORG; Fri, 24 Nov 2017 08:13:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 24 Nov 2017 09:12:26 +0100
Message-Id: <20171124081237.6830-11-s.hauer@pengutronix.de>
In-Reply-To: <20171124081237.6830-1-s.hauer@pengutronix.de>
References: <20171124081237.6830-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/21] net: dhcp: avoid unnecessary casts
To: Barebox List <barebox@lists.infradead.org>

Drop explicit casts to/from void pointers.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/dhcp.c | 18 ++++++++----------
 1 file changed, 8 insertions(+), 10 deletions(-)

diff --git a/net/dhcp.c b/net/dhcp.c
index 270fe91ac1..fe3f7f28b6 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -447,14 +447,13 @@ static int bootp_request(void)
 	struct bootp *bp;
 	int ext_len;
 	int ret;
-	unsigned char *payload = net_udp_get_payload(dhcp_con);
 	const char *bfile;
 
 	dhcp_state = INIT;
 
 	debug("BOOTP broadcast\n");
 
-	bp = (struct bootp *)payload;
+	bp = net_udp_get_payload(dhcp_con);;
 	bp->bp_op = OP_BOOTREQUEST;
 	bp->bp_htype = HWT_ETHER;
 	bp->bp_hlen = HWL_ETHER;
@@ -471,7 +470,7 @@ static int bootp_request(void)
 		safe_strncpy (bp->bp_file, bfile, sizeof(bp->bp_file));
 
 	/* Request additional information from the BOOTP/DHCP server */
-	ext_len = dhcp_extended((u8 *)bp->bp_vend, DHCP_DISCOVER, 0, 0);
+	ext_len = dhcp_extended(bp->bp_vend, DHCP_DISCOVER, 0, 0);
 
 	Bootp_id = (uint32_t)get_time_ns();
 	net_copy_uint32(&bp->bp_id, &Bootp_id);
@@ -483,7 +482,7 @@ static int bootp_request(void)
 	return ret;
 }
 
-static void dhcp_options_handle(unsigned char option, unsigned char *popt,
+static void dhcp_options_handle(unsigned char option, void *popt,
 			       int optlen, struct bootp *bp)
 {
 	int i;
@@ -537,11 +536,10 @@ static void dhcp_send_request_packet(struct bootp *bp_offer)
 	struct bootp *bp;
 	int extlen;
 	IPaddr_t OfferedIP;
-	unsigned char *payload = net_udp_get_payload(dhcp_con);
 
 	debug("%s: Sending DHCPREQUEST\n", __func__);
 
-	bp = (struct bootp *)payload;
+	bp = net_udp_get_payload(dhcp_con);
 	bp->bp_op = OP_BOOTREQUEST;
 	bp->bp_htype = HWT_ETHER;
 	bp->bp_hlen = HWL_ETHER;
@@ -566,7 +564,7 @@ static void dhcp_send_request_packet(struct bootp *bp_offer)
 	 * Copy options from OFFER packet if present
 	 */
 	net_copy_ip(&OfferedIP, &bp_offer->bp_yiaddr);
-	extlen = dhcp_extended((u8 *)bp->bp_vend, DHCP_REQUEST, net_dhcp_server_ip,
+	extlen = dhcp_extended(bp->bp_vend, DHCP_REQUEST, net_dhcp_server_ip,
 				OfferedIP);
 
 	debug("Transmitting DHCPREQUEST packet\n");
@@ -601,7 +599,7 @@ static void dhcp_handler(void *ctx, char *packet, unsigned int len)
 		debug ("%s: state SELECTING, bp_file: \"%s\"\n", __func__, bp->bp_file);
 		dhcp_state = REQUESTING;
 
-		if (net_read_uint32((uint32_t *)&bp->bp_vend[0]) == htonl(BOOTP_VENDOR_MAGIC))
+		if (net_read_uint32(&bp->bp_vend[0]) == htonl(BOOTP_VENDOR_MAGIC))
 			dhcp_options_process((u8 *)&bp->bp_vend[4], bp);
 
 		bootp_copy_net_params(bp); /* Store net params from reply */
@@ -615,8 +613,8 @@ static void dhcp_handler(void *ctx, char *packet, unsigned int len)
 
 		if (dhcp_message_type((u8 *)bp->bp_vend) == DHCP_ACK ) {
 			IPaddr_t ip;
-			if (net_read_uint32((uint32_t *)&bp->bp_vend[0]) == htonl(BOOTP_VENDOR_MAGIC))
-				dhcp_options_process((u8 *)&bp->bp_vend[4], bp);
+			if (net_read_uint32(&bp->bp_vend[0]) == htonl(BOOTP_VENDOR_MAGIC))
+				dhcp_options_process(&bp->bp_vend[4], bp);
 			bootp_copy_net_params(bp); /* Store net params from reply */
 			dhcp_state = BOUND;
 			ip = net_get_ip(dhcp_edev);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
