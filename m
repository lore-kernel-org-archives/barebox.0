Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCS5a-0006X0-KD
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 09:53:54 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Mar 2013 10:53:20 +0100
Message-Id: <1362390820-10333-18-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1362390820-10333-1-git-send-email-s.hauer@pengutronix.de>
References: <1362390820-10333-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 17/37] oftree command: Use of_print_nodes
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
