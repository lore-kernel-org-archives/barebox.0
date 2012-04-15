Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SJQRV-0003kr-MQ
 for barebox@lists.infradead.org; Sun, 15 Apr 2012 14:28:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 15 Apr 2012 16:28:28 +0200
Message-Id: <1334500111-26382-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1334500111-26382-1-git-send-email-s.hauer@pengutronix.de>
References: <1334500111-26382-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/8] dhcp: set global nameserver/domainname
To: barebox@lists.infradead.org

The nameserver and domainname are now globally available using
the 'net' device. Use it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/dhcp.c |    6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/net/dhcp.c b/net/dhcp.c
index 0116ba4..8569917 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -170,7 +170,7 @@ struct dhcp_opt dhcp_options[] = {
 	}, {
 		.option = 6,
 		.handle = env_ip_handle,
-		.barebox_var_name = "nameserver",
+		.barebox_var_name = "net.nameserver",
 	}, {
 		.option = 12,
 		.handle = env_str_handle,
@@ -178,7 +178,7 @@ struct dhcp_opt dhcp_options[] = {
 	}, {
 		.option = 15,
 		.handle = env_str_handle,
-		.barebox_var_name = "domainname",
+		.barebox_var_name = "net.domainname",
 	}, {
 		.option = 17,
 		.handle = env_str_handle,
@@ -697,9 +697,7 @@ BAREBOX_CMD_START(dhcp)
 BAREBOX_CMD_END
 
 BAREBOX_MAGICVAR(bootfile, "bootfile returned from DHCP request");
-BAREBOX_MAGICVAR(nameserver, "Nameserver returned from DHCP request");
 BAREBOX_MAGICVAR(hostname, "hostname returned from DHCP request");
-BAREBOX_MAGICVAR(domainname, "domainname returned from DHCP request");
 BAREBOX_MAGICVAR(rootpath, "rootpath returned from DHCP request");
 BAREBOX_MAGICVAR(dhcp_vendor_id, "vendor id to send to the DHCP server");
 BAREBOX_MAGICVAR(dhcp_client_uuid, "cliend uuid to send to the DHCP server");
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
