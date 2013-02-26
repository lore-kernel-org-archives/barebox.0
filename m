Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1UAQzO-0000cP-24
 for barebox@lists.infradead.org; Tue, 26 Feb 2013 20:19:14 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 26 Feb 2013 21:18:42 +0100
Message-Id: <1361909936-2665-16-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1361909936-2665-1-git-send-email-s.hauer@pengutronix.de>
References: <1361909936-2665-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 15/29] oftree command: Use of_print_nodes
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/oftree.c |   13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/commands/oftree.c b/commands/oftree.c
index 83ffe12..612d01a 100644
--- a/commands/oftree.c
+++ b/commands/oftree.c
@@ -156,7 +156,14 @@ static int do_oftree(int argc, char *argv[])
 
 	if (dump) {
 		if (fdt) {
-			ret = fdt_print(fdt, node);
+			root = of_unflatten_dtb(NULL, fdt);
+			if (IS_ERR(root)) {
+				printf("parse oftree: %s\n", strerror(-PTR_ERR(root)));
+				ret = 1;
+				goto out;
+			}
+			of_print_nodes(root, 0);
+			of_free(root);
 		} else {
 			struct device_node *root, *n;
 
@@ -174,10 +181,10 @@ static int do_oftree(int argc, char *argv[])
 			}
 
 			of_print_nodes(n, 0);
-
-			ret = 0;
 		}
 
+		ret = 0;
+
 		goto out;
 	}
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
