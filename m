Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.megiteam.pl ([31.186.83.105])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gEwXX-0004FB-Pc
 for barebox@lists.infradead.org; Tue, 23 Oct 2018 13:16:09 +0000
From: Marcin Niestroj <m.niestroj@grinn-global.com>
Date: Tue, 23 Oct 2018 15:15:31 +0200
Message-Id: <20181023131531.22804-1-m.niestroj@grinn-global.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] net: dhcp: fix option 54
To: barebox@lists.infradead.org
Cc: Marcin Niestroj <m.niestroj@grinn-global.com>

Option 54 (Server Identifier) is something different than
SIADDR (Server IP address). Currently they are used
interchangeably. This causes DHCPNAK with DHCP servers that
have configured different values for each field.

Create new 'dhcp_serverip' field in 'struct dhcp_result', so we treat
option 54 separately. This fixes DHCP requests for servers that send
two different values for SIADDR and option 54 in DHCPOFFER.

Fixes: 528298b702a0 ("net: dhcp: rework")
Fixes: e18cc5b7e9ce ("DHCP: fix option 54 passing")
Signed-off-by: Marcin Niestroj <m.niestroj@grinn-global.com>
---
 include/dhcp.h | 1 +
 net/dhcp.c     | 6 +++---
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/include/dhcp.h b/include/dhcp.h
index ce5ed61c6..0dced8e9f 100644
--- a/include/dhcp.h
+++ b/include/dhcp.h
@@ -28,6 +28,7 @@ struct dhcp_result {
 	IPaddr_t gateway;
 	IPaddr_t nameserver;
 	IPaddr_t serverip;
+	IPaddr_t dhcp_serverip;
 	char *hostname;
 	char *domainname;
 	char *rootpath;
diff --git a/net/dhcp.c b/net/dhcp.c
index 427d80a5a..79aa75d87 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -300,7 +300,7 @@ static void dhcp_options_handle(unsigned char option, void *popt,
 			net_copy_uint32(&dhcp_result->leasetime, popt);
 			break;
 		case 54:
-			dhcp_result->serverip = net_read_ip(popt);
+			dhcp_result->dhcp_serverip = net_read_ip(popt);
 			break;
 		case 66:
 			dhcp_result->tftp_server_name = xstrndup(popt, optlen);
@@ -378,8 +378,8 @@ static void dhcp_send_request_packet(struct bootp *bp_offer)
 	/*
 	 * Copy options from OFFER packet if present
 	 */
-	extlen = dhcp_extended(bp->bp_vend, DHCP_REQUEST, dhcp_result->serverip,
-				dhcp_result->ip);
+	extlen = dhcp_extended(bp->bp_vend, DHCP_REQUEST,
+			dhcp_result->dhcp_serverip, dhcp_result->ip);
 
 	debug("Transmitting DHCPREQUEST packet\n");
 	net_udp_send(dhcp_con, sizeof(*bp) + extlen);
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
