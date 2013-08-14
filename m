Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V9WBI-0008Mh-MM
 for barebox@lists.infradead.org; Wed, 14 Aug 2013 08:11:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 14 Aug 2013 10:11:23 +0200
Message-Id: <1376467885-29489-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1376467885-29489-1-git-send-email-s.hauer@pengutronix.de>
References: <1376467885-29489-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/7] of_property command: allow to specify a node by alias
To: barebox@lists.infradead.org

With this not only a full path can be used to specify a node, but also
an alias.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/of_property.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/of_property.c b/commands/of_property.c
index 8ffe30b..a544f71 100644
--- a/commands/of_property.c
+++ b/commands/of_property.c
@@ -196,7 +196,7 @@ static int do_of_property(int argc, char *argv[])
 
 	if (optind < argc) {
 		path = argv[optind];
-		node = of_find_node_by_path(path);
+		node = of_find_node_by_path_or_alias(NULL, path);
 		if (!node) {
 			printf("Cannot find nodepath %s\n", path);
 			return -ENOENT;
-- 
1.8.4.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
