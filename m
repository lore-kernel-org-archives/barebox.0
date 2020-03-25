Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH9or-0006zG-RE
 for barebox@lists.infradead.org; Wed, 25 Mar 2020 17:28:01 +0000
From: Clement Leger <cleger@kalray.eu>
Date: Wed, 25 Mar 2020 18:27:37 +0100
Message-Id: <20200325172737.8621-3-cleger@kalray.eu>
In-Reply-To: <20200325172737.8621-1-cleger@kalray.eu>
References: <20200316110008.2909-3-cleger@kalray.eu>
 <20200325172737.8621-1-cleger@kalray.eu>
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
Subject: [PATCH v2 2/2] of: base: parse all available memory nodes
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org
Cc: Clement Leger <cleger@kalray.eu>

Currently, barebox only parse one memory node which is either the
"/memory" node or the first node with device_type == "memory".
However, the use of multiple memory nodes with device_type = "memory"
property is allowed by the device tree specification and already
correctly parsed by Linux kernel.
In order to fix that, add of_probe_memory function which loop over all
available memory nodes matching device_type == "memory".

Signed-off-by: Clement Leger <cleger@kalray.eu>
---
 drivers/of/base.c | 22 ++++++++++++++++------
 1 file changed, 16 insertions(+), 6 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 2ea8d7516..6d13b66a0 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2062,9 +2062,23 @@ const struct of_device_id of_default_bus_match_table[] = {
 	}
 };
 
+static void of_probe_memory(void)
+{
+	struct device_node *memory = root_node;
+
+	/* Parse all available node with "memory" device_type */
+	while (1) {
+		memory = of_find_node_by_type(memory, "memory");
+		if (!memory)
+			break;
+
+		of_add_memory(memory, false);
+	}
+}
+
 int of_probe(void)
 {
-	struct device_node *memory, *firmware;
+	struct device_node *firmware;
 
 	if(!root_node)
 		return -ENODEV;
@@ -2075,11 +2089,7 @@ int of_probe(void)
 	if (of_model)
 		barebox_set_model(of_model);
 
-	memory = of_find_node_by_path("/memory");
-	if (!memory)
-		memory = of_find_node_by_type(root_node, "memory");
-	if (memory)
-		of_add_memory(memory, false);
+	of_probe_memory();
 
 	firmware = of_find_node_by_path("/firmware");
 	if (firmware)
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
