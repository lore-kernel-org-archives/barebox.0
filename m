Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k7QZG-0000JL-3L
 for barebox@lists.infradead.org; Sun, 16 Aug 2020 21:51:55 +0000
Received: from radon.fritz.box (a89-183-41-155.net-htp.de [89.183.41.155])
 by lynxeye.de (Postfix) with ESMTPA id 30C0FE740DA
 for <barebox@lists.infradead.org>; Sun, 16 Aug 2020 23:43:04 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun, 16 Aug 2020 23:43:00 +0200
Message-Id: <20200816214300.137240-1-dev@lynxeye.de>
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
Subject: [PATCH] of: base: move memory init from DT to initcall
To: barebox@lists.infradead.org

Instead of calling it from of_probe, convert it to a initcall at
the appropriate level. This allows to move of_probe to later in
the init sequence while keeping the memory init at the same place,
which is important as many other drivers need the valid memory area
to be set up properly.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/of/base.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 4c633bcd4948..2fc87528ebfd 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2116,10 +2116,13 @@ const struct of_device_id of_default_bus_match_table[] = {
 	}
 };
 
-static void of_probe_memory(void)
+static int of_probe_memory(void)
 {
 	struct device_node *memory = root_node;
 
+	if(!IS_ENABLED(CONFIG_OFDEVICE))
+		return 0;
+
 	/* Parse all available node with "memory" device_type */
 	while (1) {
 		memory = of_find_node_by_type(memory, "memory");
@@ -2128,7 +2131,10 @@ static void of_probe_memory(void)
 
 		of_add_memory(memory, false);
 	}
+
+	return 0;
 }
+mem_initcall(of_probe_memory);
 
 int of_probe(void)
 {
@@ -2143,8 +2149,6 @@ int of_probe(void)
 	if (of_model)
 		barebox_set_model(of_model);
 
-	of_probe_memory();
-
 	firmware = of_find_node_by_path("/firmware");
 	if (firmware)
 		of_platform_populate(firmware, NULL, NULL);
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
