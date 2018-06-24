Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x241.google.com ([2607:f8b0:400e:c01::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fXDT6-00068G-6l
 for barebox@lists.infradead.org; Sun, 24 Jun 2018 22:26:58 +0000
Received: by mail-pl0-x241.google.com with SMTP id m16-v6so1101700pls.11
 for <barebox@lists.infradead.org>; Sun, 24 Jun 2018 15:26:38 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 24 Jun 2018 15:26:21 -0700
Message-Id: <20180624222623.30564-5-andrew.smirnov@gmail.com>
In-Reply-To: <20180624222623.30564-1-andrew.smirnov@gmail.com>
References: <20180624222623.30564-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 4/6] watchdog: rave-sp-wdt: Explicitly access EEPROM for
 bootsource
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

RAVE SP firmware versions found on RDU2 provide decicated bootsource
manipulation commands, which, under the hood, are just thin wrappers
around write/read to a particular location in EEPROM.

Unfortunately, RAVE SP firmware found on RDU1, does not provide any
dedicated bootsource commands and its users are expected to access
EEPROM directly.

In order to avoid having separate code paths for handling those two
cases, convert the code to access EEPROM directly via NVMEM API.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/watchdog/rave-sp-wdt.c | 79 ++++++++++++++++++----------------
 1 file changed, 41 insertions(+), 38 deletions(-)

diff --git a/drivers/watchdog/rave-sp-wdt.c b/drivers/watchdog/rave-sp-wdt.c
index bd1c43b0f..dc673ee35 100644
--- a/drivers/watchdog/rave-sp-wdt.c
+++ b/drivers/watchdog/rave-sp-wdt.c
@@ -37,9 +37,6 @@ enum {
 	RAVE_SP_RESET_REASON_CP_REQUEST     = 13,
 
 	RAVE_SP_RESET_DELAY_MS = 500,
-
-	RAVE_SP_BOOT_SOURCE_GET = 0,
-	RAVE_SP_BOOT_SOURCE_SET = 1,
 };
 
 /**
@@ -75,6 +72,7 @@ struct rave_sp_wdt {
 	struct restart_handler restart;
 	unsigned int timeout;
 	unsigned int boot_source;
+	struct nvmem_cell *boot_source_cell;
 };
 
 static struct rave_sp_wdt *to_rave_sp_wdt(struct watchdog *wdd)
@@ -89,26 +87,6 @@ static int rave_sp_wdt_exec(struct watchdog *wdd, void *data,
 			    data, data_size, NULL, 0);
 }
 
-
-static int rave_sp_wdt_access_boot_source(struct rave_sp_wdt *sp_wd, u8 set_get)
-{
-	u8 cmd[] = {
-		[0] = RAVE_SP_CMD_BOOT_SOURCE,
-		[1] = 0,
-		[2] = set_get,
-		[3] = sp_wd->boot_source,
-	};
-	u8 response;
-	int ret;
-
-	ret = rave_sp_exec(sp_wd->sp, cmd, sizeof(cmd), &response,
-			   sizeof(response));
-	if (ret)
-		return ret;
-
-	return response;
-}
-
 static int __rave_sp_wdt_rdu_reset_reason(struct watchdog *wdd,
 					  uint8_t response[],
 					  size_t response_len)
@@ -277,9 +255,12 @@ static const struct of_device_id rave_sp_wdt_of_match[] = {
 
 static int rave_sp_wdt_set_boot_source(struct param_d *param, void *priv)
 {
+	struct rave_sp_wdt *sp_wd = priv;
+	u8 boot_source = sp_wd->boot_source;
 	int ret;
 
-	ret = rave_sp_wdt_access_boot_source(priv, RAVE_SP_BOOT_SOURCE_SET);
+	ret = nvmem_cell_write(sp_wd->boot_source_cell, &boot_source,
+			       sizeof(boot_source));
 	if (ret < 0)
 		return ret;
 
@@ -289,13 +270,38 @@ static int rave_sp_wdt_set_boot_source(struct param_d *param, void *priv)
 static int rave_sp_wdt_get_boot_source(struct param_d *param, void *priv)
 {
 	struct rave_sp_wdt *sp_wd = priv;
-	int ret;
+	u8 *boot_source;
+	size_t len;
 
-	ret = rave_sp_wdt_access_boot_source(sp_wd, RAVE_SP_BOOT_SOURCE_GET);
-	if (ret < 0)
-		return ret;
+	boot_source = nvmem_cell_read(sp_wd->boot_source_cell, &len);
+	if (IS_ERR(boot_source))
+		return PTR_ERR(boot_source);
+
+	sp_wd->boot_source = *boot_source;
+	kfree(boot_source);
+
+	return 0;
+}
+
+static int rave_sp_wdt_add_params(struct rave_sp_wdt *sp_wd)
+{
+	struct watchdog *wdd = &sp_wd->wdd;
+	struct device_node *np = wdd->hwdev->device_node;
+	struct param_d *p;
+
+	sp_wd->boot_source_cell = of_nvmem_cell_get(np, "boot-source");
+	if (IS_ERR(sp_wd->boot_source_cell)) {
+		dev_warn(wdd->hwdev, "No bootsource info availible\n");
+		return 0;
+	}
+
+	p = dev_add_param_int(&wdd->dev, "boot_source",
+			      rave_sp_wdt_set_boot_source,
+			      rave_sp_wdt_get_boot_source,
+			      &sp_wd->boot_source, "%u", sp_wd);
+	if (IS_ERR(p))
+		return PTR_ERR(p);
 
-	sp_wd->boot_source = ret;
 	return 0;
 }
 
@@ -306,7 +312,6 @@ static int rave_sp_wdt_probe(struct device_d *dev)
 	struct nvmem_cell *cell;
 	struct watchdog *wdd;
 	__le16 timeout = 60;
-	struct param_d *p;
 	int ret;
 
 	sp_wd = xzalloc(sizeof(*sp_wd));
@@ -343,6 +348,12 @@ static int rave_sp_wdt_probe(struct device_d *dev)
 		return ret;
 	}
 
+	ret = rave_sp_wdt_add_params(sp_wd);
+	if (ret) {
+		dev_err(dev, "Failed to register device parameters");
+		return ret;
+	}
+
 	sp_wd->restart.name = "rave-sp-wdt";
 	sp_wd->restart.restart = rave_sp_wdt_restart_handler;
 	sp_wd->restart.priority = 200;
@@ -351,14 +362,6 @@ static int rave_sp_wdt_probe(struct device_d *dev)
 	if (ret)
 		dev_warn(dev, "Cannot register restart handler\n");
 
-
-	p = dev_add_param_int(&wdd->dev, "boot_source",
-			      rave_sp_wdt_set_boot_source,
-			      rave_sp_wdt_get_boot_source,
-			      &sp_wd->boot_source, "%u", sp_wd);
-	if (IS_ERR(p))
-		return PTR_ERR(p);
-
 	ret = sp_wd->variant->reset_reason(wdd);
 	if (ret < 0) {
 		dev_warn(dev, "Failed to query reset reason\n");
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
