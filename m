Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ggPW8-00015w-9P
 for barebox@lists.infradead.org; Mon, 07 Jan 2019 07:40:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  7 Jan 2019 08:40:00 +0100
Message-Id: <20190107074008.3797-2-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/9] net: ip_route_get: Fix error message
To: Barebox List <barebox@lists.infradead.org>

We do getopt(), so the next argument is in argv[optind], not in argv[1].

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/ip-route-get.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/commands/ip-route-get.c b/commands/ip-route-get.c
index d393218188..7c304694db 100644
--- a/commands/ip-route-get.c
+++ b/commands/ip-route-get.c
@@ -42,8 +42,8 @@ static int do_ip_route_get(int argc, char *argv[])
 
 	ret = string_to_ip(argv[optind], &ip);
 	if (ret) {
-		printf("Cannot convert %s into a IP address: %s\n",
-		       argv[1], strerror(-ret));
+		printf("Cannot convert \"%s\" into a IP address: %s\n",
+		       argv[optind], strerror(-ret));
 		return 1;
 	}
 
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
