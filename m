Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ggPW8-00015u-9I
 for barebox@lists.infradead.org; Mon, 07 Jan 2019 07:40:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  7 Jan 2019 08:40:01 +0100
Message-Id: <20190107074008.3797-3-s.hauer@pengutronix.de>
In-Reply-To: <20190107074008.3797-1-s.hauer@pengutronix.de>
References: <20190107074008.3797-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/9] net: ip_route_get: Hook help text to command
To: Barebox List <barebox@lists.infradead.org>

The help text is present but not hooked into the command structure. Fix
this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/ip-route-get.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/commands/ip-route-get.c b/commands/ip-route-get.c
index 7c304694db..b3d4ecce82 100644
--- a/commands/ip-route-get.c
+++ b/commands/ip-route-get.c
@@ -93,4 +93,5 @@ BAREBOX_CMD_START(ip_route_get)
 	BAREBOX_CMD_OPTS("[-b] <IP> [variable]")
 	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
 	BAREBOX_CMD_COMPLETE(empty_complete)
+	BAREBOX_CMD_HELP(cmd_ip_route_get_help)
 BAREBOX_CMD_END
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
