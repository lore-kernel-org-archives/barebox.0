Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kVClE-0007UU-19
 for barebox@lists.infradead.org; Wed, 21 Oct 2020 11:58:34 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1kVClC-0007DT-VH
 for barebox@lists.infradead.org; Wed, 21 Oct 2020 13:58:30 +0200
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1kVClC-0000dV-83
 for barebox@lists.infradead.org; Wed, 21 Oct 2020 13:58:30 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Wed, 21 Oct 2020 13:58:07 +0200
Message-Id: <20201021115813.31645-5-m.felsch@pengutronix.de>
In-Reply-To: <20201021115813.31645-1-m.felsch@pengutronix.de>
References: <20201021115813.31645-1-m.felsch@pengutronix.de>
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
Subject: [PATCH v3 04/10] of: base: move memory init from DT to initcall
To: barebox@lists.infradead.org

From: Lucas Stach <dev@lynxeye.de>

Instead of calling it from of_probe, convert it to a initcall at
the appropriate level. This allows to move of_probe to later in
the init sequence while keeping the memory init at the same place,
which is important as many other drivers need the valid memory area
to be set up properly.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
Changelog:

v2:
- no changes
v3:
- no changes
---
 drivers/of/base.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 5b45c2023f..2a3e34b071 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2229,10 +2229,13 @@ const struct of_device_id of_default_bus_match_table[] = {
 	}
 };
 
-static void of_probe_memory(void)
+static int of_probe_memory(void)
 {
 	struct device_node *memory = root_node;
 
+	if (!IS_ENABLED(CONFIG_OFDEVICE))
+		return 0;
+
 	/* Parse all available node with "memory" device_type */
 	while (1) {
 		memory = of_find_node_by_type(memory, "memory");
@@ -2241,7 +2244,10 @@ static void of_probe_memory(void)
 
 		of_add_memory(memory, false);
 	}
+
+	return 0;
 }
+mem_initcall(of_probe_memory);
 
 static void of_platform_device_create_root(struct device_node *np)
 {
@@ -2271,8 +2277,6 @@ int of_probe(void)
 	if (of_model)
 		barebox_set_model(of_model);
 
-	of_probe_memory();
-
 	firmware = of_find_node_by_path("/firmware");
 	if (firmware)
 		of_platform_populate(firmware, NULL, NULL);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
