Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V9WBN-0008NC-Gt
 for barebox@lists.infradead.org; Wed, 14 Aug 2013 08:11:54 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 14 Aug 2013 10:11:25 +0200
Message-Id: <1376467885-29489-8-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 7/7] oftree command: Allow to specify node by alias
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/oftree.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/oftree.c b/commands/oftree.c
index 00e54dc..475f019 100644
--- a/commands/oftree.c
+++ b/commands/oftree.c
@@ -164,7 +164,7 @@ static int do_oftree(int argc, char *argv[])
 			of_print_nodes(root, 0);
 			of_delete_node(root);
 		} else {
-			struct device_node *n = of_find_node_by_path(node);
+			struct device_node *n = of_find_node_by_path_or_alias(NULL, node);
 			if (!n) {
 				ret = -ENOENT;
 				goto out;
-- 
1.8.4.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
