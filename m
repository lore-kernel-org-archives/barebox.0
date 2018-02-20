Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visionsystems.de ([213.209.99.202])
 by bombadil.infradead.org with esmtp (Exim 4.89 #1 (Red Hat Linux))
 id 1eo2er-0002Id-Km
 for barebox@lists.infradead.org; Tue, 20 Feb 2018 07:48:15 +0000
From: yegorslists@googlemail.com
Date: Tue, 20 Feb 2018 08:47:50 +0100
Message-Id: <1519112870-16824-1-git-send-email-yegorslists@googlemail.com>
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
Subject: [PATCH] DHCP: fix option 54 passing
To: barebox@lists.infradead.org
Cc: linux@rempel-privat.de

From: Yegor Yefremov <yegorslists@googlemail.com>

Though variable net_dhcp_server_ip was declared and used as a
function parameter it was never assigned. That's why a DHCP
request was sent without option 54 set. Some DHCP server for
example dnsmasq didn't accept such a packet.

As both offered IP address and server IP are stored in the global
dhcp_result structure we don't need either net_dhcp_server_ip or
OfferedIP variables and can use the addresses from dhcp_result
directly.

Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
---
 net/dhcp.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/net/dhcp.c b/net/dhcp.c
index 946efaa..d30551d 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -76,7 +76,6 @@ typedef enum {
 
 static uint32_t Bootp_id;
 static dhcp_state_t dhcp_state;
-static IPaddr_t net_dhcp_server_ip;
 static uint64_t dhcp_start;
 static struct eth_device *dhcp_edev;
 struct dhcp_req_param dhcp_param;
@@ -350,7 +349,6 @@ static void dhcp_send_request_packet(struct bootp *bp_offer)
 {
 	struct bootp *bp;
 	int extlen;
-	IPaddr_t OfferedIP;
 
 	debug("%s: Sending DHCPREQUEST\n", __func__);
 
@@ -378,9 +376,8 @@ static void dhcp_send_request_packet(struct bootp *bp_offer)
 	/*
 	 * Copy options from OFFER packet if present
 	 */
-	net_copy_ip(&OfferedIP, &bp_offer->bp_yiaddr);
-	extlen = dhcp_extended(bp->bp_vend, DHCP_REQUEST, net_dhcp_server_ip,
-				OfferedIP);
+	extlen = dhcp_extended(bp->bp_vend, DHCP_REQUEST, dhcp_result->serverip,
+				dhcp_result->ip);
 
 	debug("Transmitting DHCPREQUEST packet\n");
 	net_udp_send(dhcp_con, sizeof(*bp) + extlen);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
