Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCS5d-0005q7-PK
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 09:53:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Mar 2013 10:53:26 +0100
Message-Id: <1362390820-10333-24-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 23/37] bootm: Use of_print_nodes instead of fdt_print
To: barebox@lists.infradead.org

Now that we use the unflattened tree in bootm we can use of_print_nodes
instead of printing the flattened tree.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/bootm.c |    6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/commands/bootm.c b/commands/bootm.c
index 38233e7..65a75e2 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -194,15 +194,15 @@ static int bootm_open_oftree(struct image_data *data, const char *oftree, int nu
 		return -EINVAL;
 	}
 
+	if (bootm_verbose(data) > 1)
+		of_print_nodes(node, 0);
+
 	fixfdt = of_get_fixed_tree(node);
 	if (!fixfdt)
 		return -EINVAL;
 
 	free(fdt);
 
-	if (bootm_verbose(data) > 1)
-		fdt_print(fixfdt, "/");
-
 	data->oftree = fixfdt;
 
 	return 0;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
