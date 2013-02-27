Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UAnrF-0006t1-Tk
 for barebox@lists.infradead.org; Wed, 27 Feb 2013 20:44:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 27 Feb 2013 21:44:06 +0100
Message-Id: <1361997846-27042-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] net: dhcp: fix typo
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/dhcp.c |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/net/dhcp.c b/net/dhcp.c
index 768255e..8233ec3 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -829,8 +829,8 @@ BAREBOX_MAGICVAR_NAMED(global_hostname, global.hostname, "hostname to send or re
 BAREBOX_MAGICVAR_NAMED(global_dhcp_bootfile, global.dhcp.bootfile, "bootfile returned from DHCP request");
 BAREBOX_MAGICVAR_NAMED(global_dhcp_rootpath, global.dhcp.rootpath, "rootpath returned from DHCP request");
 BAREBOX_MAGICVAR_NAMED(global_dhcp_vendor_id, global.dhcp.vendor_id, "vendor id to send to the DHCP server");
-BAREBOX_MAGICVAR_NAMED(global_dhcp_client_uuid, global.dhcp.client_uuid, "cliend uuid to send to the DHCP server");
-BAREBOX_MAGICVAR_NAMED(global_dhcp_client_id, global.dhcp.client_id, "cliend id to send to the DHCP server");
+BAREBOX_MAGICVAR_NAMED(global_dhcp_client_uuid, global.dhcp.client_uuid, "client uuid to send to the DHCP server");
+BAREBOX_MAGICVAR_NAMED(global_dhcp_client_id, global.dhcp.client_id, "client id to send to the DHCP server");
 BAREBOX_MAGICVAR_NAMED(global_dhcp_user_class, global.dhcp.user_class, "user class to send to the DHCP server");
 BAREBOX_MAGICVAR_NAMED(global_dhcp_tftp_server_name, global.dhcp.tftp_server_name, "TFTP server Name returned from DHCP request");
 BAREBOX_MAGICVAR_NAMED(global_dhcp_oftree_file, global.dhcp.oftree_file, "OF tree returned from DHCP request (option 224)");
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
