Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eNbUV-0000By-GP
 for barebox@lists.infradead.org; Sat, 09 Dec 2017 09:32:17 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Sat,  9 Dec 2017 10:31:44 +0100
Message-Id: <20171209093144.21281-1-linux@rempel-privat.de>
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
Subject: [PATCH] net: dhcp: make tftp work again
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

This regression was introduced by the patch "net: dhcp: rework"
My patch should restore previous behavior where tftp server name
will overwrite serverip if the first one is present.

On most consumer devices users don't have enough control to set
DHCP as needed. At least on LEDE/OpenWRT we can configure extra
fields by adding for example "66,192.168.1.100" to set tftp server name.
At the same time, DHCP, DNS and Gateware are provided by 192.168.1.1.

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 net/dhcp.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/net/dhcp.c b/net/dhcp.c
index 76dab5ef5..18f347d2f 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -574,14 +574,14 @@ int dhcp_set_result(struct eth_device *edev, struct dhcp_result *res)
 	if (res->domainname)
 		net_set_domainname(res->domainname);
 
-	if (res->serverip) {
-		net_set_serverip_empty(res->serverip);
-	} else if (res->tftp_server_name) {
+	if (res->tftp_server_name) {
 		IPaddr_t ip;
 
 		ip = resolv(res->tftp_server_name);
 		if (ip)
 			net_set_serverip_empty(ip);
+	} else if (res->serverip) {
+		net_set_serverip_empty(res->serverip);
 	}
 
 	return 0;
-- 
2.14.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
