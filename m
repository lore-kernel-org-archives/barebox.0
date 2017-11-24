Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eI975-0008Ue-Mt
 for barebox@lists.infradead.ORG; Fri, 24 Nov 2017 08:13:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 24 Nov 2017 09:12:32 +0100
Message-Id: <20171124081237.6830-17-s.hauer@pengutronix.de>
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
Subject: [PATCH 16/21] ifup: Use dhcp C API rather than running command
To: Barebox List <barebox@lists.infradead.org>

DHCP has a C API, so use it instead of running as command.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/ifup.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/net/ifup.c b/net/ifup.c
index 859cee717a..a65956bba1 100644
--- a/net/ifup.c
+++ b/net/ifup.c
@@ -22,6 +22,7 @@
 #include <command.h>
 #include <common.h>
 #include <getopt.h>
+#include <dhcp.h>
 #include <net.h>
 #include <fs.h>
 #include <linux/stat.h>
@@ -114,15 +115,12 @@ int ifup(const char *name, unsigned flags)
 
 	if (!strcmp(ip, "dhcp")) {
 		IPaddr_t serverip;
-		char *dhcp_cmd;
 
 		serverip = getenv_ip("serverip");
 		if (serverip)
 			net_set_serverip(serverip, false);
 
-		dhcp_cmd = basprintf("dhcp %s", name);
-		ret = run_command(dhcp_cmd);
-		free(dhcp_cmd);
+		ret = dhcp(edev, NULL);
 		if (ret)
 			goto out;
 		dev_set_param(dev, "linux.bootargs", "ip=dhcp");
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
