Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UeQrK-0001R6-Rs
 for barebox@lists.infradead.org; Mon, 20 May 2013 14:14:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 20 May 2013 16:14:18 +0200
Message-Id: <1369059260-28872-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1369059260-28872-1-git-send-email-s.hauer@pengutronix.de>
References: <1369059260-28872-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/8] of: Call of_add_memory from of_probe
To: barebox@lists.infradead.org

memory is always in /mem, so call of_add_memory from of_probe once
instead of in the recursive tree iteration. This makes it possible
to limit the device population to nodes with the "simple-bus" property
set.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index ef97a15..c3395cf 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -923,10 +923,6 @@ static int add_of_device_resource(struct device_node *node)
 	int na, nc, n_resources;
 	int ret, len, index;
 
-	ret = of_add_memory(node, false);
-	if (ret != -ENXIO)
-		return ret;
-
 	reg = of_get_property(node, "reg", &len);
 	if (!reg)
 		return -EINVAL;
@@ -1070,6 +1066,8 @@ const char *of_get_model(void)
 
 int of_probe(void)
 {
+	struct device_node *memory;
+
 	if(!root_node)
 		return -ENODEV;
 
@@ -1079,6 +1077,10 @@ int of_probe(void)
 	__of_parse_phandles(root_node);
 	__of_probe(root_node);
 
+	memory = of_find_node_by_path(root_node, "/memory");
+	if (memory)
+		of_add_memory(memory, false);
+
 	return 0;
 }
 
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
