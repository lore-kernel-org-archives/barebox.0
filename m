Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cw37I-00020g-46
 for barebox@lists.infradead.org; Thu, 06 Apr 2017 08:50:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  6 Apr 2017 10:49:43 +0200
Message-Id: <20170406084943.28150-4-s.hauer@pengutronix.de>
In-Reply-To: <20170406084943.28150-1-s.hauer@pengutronix.de>
References: <20170406084943.28150-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] bootchooser: export bootchooser_boot
To: Barebox List <barebox@lists.infradead.org>

Some boards that boot directly from C code do already know that
they want to boot from bootchooser and nothing else. For these
it's easiest to call bootchooser_boot directly, so export this
function.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/bootchooser.c  | 19 ++++++++++++-------
 include/bootchooser.h |  2 ++
 2 files changed, 14 insertions(+), 7 deletions(-)

diff --git a/common/bootchooser.c b/common/bootchooser.c
index f2174a1348..455f290fa2 100644
--- a/common/bootchooser.c
+++ b/common/bootchooser.c
@@ -827,15 +827,10 @@ out:
 	return ret;
 }
 
-static int bootchooser_boot(struct bootentry *entry, int verbose, int dryrun)
+int bootchooser_boot(struct bootchooser *bc)
 {
-	struct bootchooser *bc = container_of(entry, struct bootchooser,
-						       entry);
 	int ret, tryagain;
 
-	bc->verbose = verbose;
-	bc->dryrun = dryrun;
-
 	do {
 		ret = bootchooser_boot_one(bc, &tryagain);
 
@@ -846,6 +841,16 @@ static int bootchooser_boot(struct bootentry *entry, int verbose, int dryrun)
 	return ret;
 }
 
+static int bootchooser_entry_boot(struct bootentry *entry, int verbose, int dryrun)
+{
+	struct bootchooser *bc = container_of(entry, struct bootchooser,
+						       entry);
+	bc->verbose = verbose;
+	bc->dryrun = dryrun;
+
+	return bootchooser_boot(bc);
+}
+
 static void bootchooser_release(struct bootentry *entry)
 {
 	struct bootchooser *bc = container_of(entry, struct bootchooser,
@@ -874,7 +879,7 @@ static int bootchooser_add_entry(struct bootentries *entries, const char *name)
 	if (IS_ERR(bc))
 		return PTR_ERR(bc);
 
-	bc->entry.boot = bootchooser_boot;
+	bc->entry.boot = bootchooser_entry_boot;
 	bc->entry.release = bootchooser_release;
 	bc->entry.title = xstrdup("bootchooser");
 	bc->entry.description = xstrdup("bootchooser");
diff --git a/include/bootchooser.h b/include/bootchooser.h
index 246258e8c9..7822c01459 100644
--- a/include/bootchooser.h
+++ b/include/bootchooser.h
@@ -13,6 +13,8 @@ int bootchooser_put(struct bootchooser *bootchooser);
 
 void bootchooser_info(struct bootchooser *bootchooser);
 
+int bootchooser_boot(struct bootchooser *bc);
+
 struct bootchooser_target *bootchooser_get_last_chosen(struct bootchooser *bootchooser);
 const char *bootchooser_target_name(struct bootchooser_target *target);
 struct bootchooser_target *bootchooser_target_by_name(struct bootchooser *bootchooser,
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
