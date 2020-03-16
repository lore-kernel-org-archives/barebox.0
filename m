Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDnXD-0005YM-4Q
 for barebox@lists.infradead.org; Mon, 16 Mar 2020 11:03:52 +0000
From: Clement Leger <cleger@kalray.eu>
Date: Mon, 16 Mar 2020 12:00:07 +0100
Message-Id: <20200316110008.2909-2-cleger@kalray.eu>
In-Reply-To: <20200316110008.2909-1-cleger@kalray.eu>
References: <20200316110008.2909-1-cleger@kalray.eu>
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
Subject: [PATCH 1/2] of: base: parse all available memory nodes
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org
Cc: Clement Leger <cleger@kalray.eu>

Currently, barebox only parse one memory node which is either the
"/memory" node or the first node with device_type == "memory".
However, the use of multiple memory nodes with device_type = "memory"
property is allowed by the device tree specification and already
correctly parsed by Linux kernel.
In order to fix that, add of_probe_memory function which loop over all
available memory nodes. In order to try to keep existing legacy search
based on "memory" node name, try to find this node and add it. If the
memory node contains the device_type property, then it will only be
added once.

Signed-off-by: Clement Leger <cleger@kalray.eu>
---
 drivers/of/base.c | 31 +++++++++++++++++++++++++------
 1 file changed, 25 insertions(+), 6 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 9ede05227..b1a96ee8f 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2061,9 +2061,32 @@ const struct of_device_id of_default_bus_match_table[] = {
 	}
 };
 
+static void of_probe_memory(void)
+{
+	struct device_node *memory = root_node, *legacy_memory;
+
+	/* Parse node based on name (for legacy dt) */
+	legacy_memory = of_find_node_by_path("/memory");
+	if (legacy_memory)
+		of_add_memory(legacy_memory, false);
+
+	/* Then, parse all available node with "memory" device_type */
+	while (1) {
+		memory = of_find_node_by_type(memory, "memory");
+		if (!memory)
+			break;
+
+		/* Skip potentially already added legacy memory node */
+		if (memory == legacy_memory)
+			continue;
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
@@ -2074,11 +2097,7 @@ int of_probe(void)
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
2.15.0.276.g89ea799


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
