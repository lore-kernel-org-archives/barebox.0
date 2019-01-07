Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ggPWF-0001AL-Q4
 for barebox@lists.infradead.org; Mon, 07 Jan 2019 07:40:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  7 Jan 2019 08:40:06 +0100
Message-Id: <20190107074008.3797-8-s.hauer@pengutronix.de>
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
Subject: [PATCH 7/9] net: ip_route_get: resolv hostnames
To: Barebox List <barebox@lists.infradead.org>

When global.net.server is a hostname instead of an IP address we have to
resolv it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/ip-route-get.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/ip-route-get.c b/commands/ip-route-get.c
index b3d4ecce82..d3c15b7798 100644
--- a/commands/ip-route-get.c
+++ b/commands/ip-route-get.c
@@ -40,7 +40,7 @@ static int do_ip_route_get(int argc, char *argv[])
 	if (argc == optind + 2)
 		variable = argv[optind + 1];
 
-	ret = string_to_ip(argv[optind], &ip);
+	ret = resolv(argv[optind], &ip);
 	if (ret) {
 		printf("Cannot convert \"%s\" into a IP address: %s\n",
 		       argv[optind], strerror(-ret));
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
