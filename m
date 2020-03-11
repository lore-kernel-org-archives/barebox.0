Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC2LJ-0004Mi-Px
 for barebox@lists.infradead.org; Wed, 11 Mar 2020 14:28:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 11 Mar 2020 15:27:55 +0100
Message-Id: <20200311142757.25263-15-s.hauer@pengutronix.de>
In-Reply-To: <20200311142757.25263-1-s.hauer@pengutronix.de>
References: <20200311142757.25263-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 14/16] net: ifup command: add ethernet device completion
To: Barebox List <barebox@lists.infradead.org>
Cc: Edmund Henniges <eh@emlix.com>, =?UTF-8?q?Daniel=20Gl=C3=B6ckner?= <dg@emlix.com>

ifup usually takes an ethernet device, so use ethernet device completion
for the command.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/ifup.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/net/ifup.c b/net/ifup.c
index e5e8ef2346..fa2c52ff8b 100644
--- a/net/ifup.c
+++ b/net/ifup.c
@@ -21,6 +21,7 @@
 #include <environment.h>
 #include <command.h>
 #include <common.h>
+#include <complete.h>
 #include <getopt.h>
 #include <dhcp.h>
 #include <net.h>
@@ -341,6 +342,7 @@ BAREBOX_CMD_START(ifup)
 	BAREBOX_CMD_DESC("bring a network interface up")
 	BAREBOX_CMD_OPTS("[-af] [INTF]")
 	BAREBOX_CMD_GROUP(CMD_GRP_NET)
+	BAREBOX_CMD_COMPLETE(eth_complete)
 	BAREBOX_CMD_HELP(cmd_ifup_help)
 BAREBOX_CMD_END
 
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
