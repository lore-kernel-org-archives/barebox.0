Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gD6il-0007A2-V1
 for barebox@lists.infradead.org; Thu, 18 Oct 2018 11:44:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 18 Oct 2018 13:43:50 +0200
Message-Id: <20181018114351.29022-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] bootchooser: put bootchooser after creating a boot entry
To: Barebox List <barebox@lists.infradead.org>

Between creating a boot entry for bootchooser and actually using it the
underlying state may have been modified, so make sure to get a current
bootchooser when booting it, thus do a bootchooser_put after having
created the entry and a bootchooser_get again when booting it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/bootchooser.c | 36 +++++++++++++++++++++++-------------
 1 file changed, 23 insertions(+), 13 deletions(-)

diff --git a/common/bootchooser.c b/common/bootchooser.c
index 83b15e0f78..29f61aec7f 100644
--- a/common/bootchooser.c
+++ b/common/bootchooser.c
@@ -52,7 +52,6 @@ static int retry;
 static int last_boot_successful;
 
 struct bootchooser {
-	struct bootentry entry;
 	struct list_head targets;
 	struct bootchooser_target *last_chosen;
 
@@ -841,20 +840,26 @@ int bootchooser_boot(struct bootchooser *bc)
 
 static int bootchooser_entry_boot(struct bootentry *entry, int verbose, int dryrun)
 {
-	struct bootchooser *bc = container_of(entry, struct bootchooser,
-						       entry);
+	struct bootchooser *bc;
+	int ret;
+
+	bc = bootchooser_get();
+	if (IS_ERR(bc))
+		return PTR_ERR(bc);
+
 	bc->verbose = verbose;
 	bc->dryrun = dryrun;
 
-	return bootchooser_boot(bc);
+	ret = bootchooser_boot(bc);
+
+	bootchooser_put(bc);
+
+	return ret;
 }
 
 static void bootchooser_release(struct bootentry *entry)
 {
-	struct bootchooser *bc = container_of(entry, struct bootchooser,
-						       entry);
-
-	bootchooser_put(bc);
+	free(entry);
 }
 
 /**
@@ -869,6 +874,7 @@ static void bootchooser_release(struct bootentry *entry)
 static int bootchooser_add_entry(struct bootentries *entries, const char *name)
 {
 	struct bootchooser *bc;
+	struct bootentry *entry;
 
 	if (strcmp(name, "bootchooser"))
 		return 0;
@@ -877,12 +883,16 @@ static int bootchooser_add_entry(struct bootentries *entries, const char *name)
 	if (IS_ERR(bc))
 		return PTR_ERR(bc);
 
-	bc->entry.boot = bootchooser_entry_boot;
-	bc->entry.release = bootchooser_release;
-	bc->entry.title = xstrdup("bootchooser");
-	bc->entry.description = xstrdup("bootchooser");
+	entry = xzalloc(sizeof(*entry));
+
+	entry->boot = bootchooser_entry_boot;
+	entry->release = bootchooser_release;
+	entry->title = xstrdup("bootchooser");
+	entry->description = xstrdup("bootchooser");
 
-	bootentries_add_entry(entries, &bc->entry);
+	bootentries_add_entry(entries, entry);
+
+	bootchooser_put(bc);
 
 	return 1;
 }
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
