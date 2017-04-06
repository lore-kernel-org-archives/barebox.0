Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cw37W-0002Ho-S7
 for barebox@lists.infradead.org; Thu, 06 Apr 2017 08:50:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  6 Apr 2017 10:49:42 +0200
Message-Id: <20170406084943.28150-3-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] bootchooser: register as bootentry provider
To: Barebox List <barebox@lists.infradead.org>

Instead of using a global function called by
bootentry_create_from_name(), register the bootchooser as bootentry
provider.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/boot.c         |  6 ------
 common/bootchooser.c  | 11 +++++++++--
 include/bootchooser.h |  2 --
 3 files changed, 9 insertions(+), 10 deletions(-)

diff --git a/common/boot.c b/common/boot.c
index 3280ac4f54..cef3d5e514 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -289,12 +289,6 @@ int bootentry_create_from_name(struct bootentries *bootentries,
 			found += ret;
 	}
 
-	if (IS_ENABLED(CONFIG_BOOTCHOOSER) && !strcmp(name, "bootchooser")) {
-		ret = bootchooser_create_bootentry(bootentries);
-		if (ret > 0)
-			found += ret;
-	}
-
 	if (!found) {
 		char *path;
 
diff --git a/common/bootchooser.c b/common/bootchooser.c
index 9c110f267e..f2174a1348 100644
--- a/common/bootchooser.c
+++ b/common/bootchooser.c
@@ -863,10 +863,14 @@ static void bootchooser_release(struct bootentry *entry)
  *
  * Return: The number of entries added to the list
  */
-int bootchooser_create_bootentry(struct bootentries *entries)
+static int bootchooser_add_entry(struct bootentries *entries, const char *name)
 {
-	struct bootchooser *bc = bootchooser_get();
+	struct bootchooser *bc;
+
+	if (strcmp(name, "bootchooser"))
+		return 0;
 
+	bc = bootchooser_get();
 	if (IS_ERR(bc))
 		return PTR_ERR(bc);
 
@@ -904,6 +908,9 @@ static int bootchooser_init(void)
 				  reset_attempts_names, ARRAY_SIZE(reset_attempts_names));
 	globalvar_add_simple_bitmask("bootchooser.reset_priorities", &reset_priorities,
 				  reset_priorities_names, ARRAY_SIZE(reset_priorities_names));
+
+	bootentry_register_provider(bootchooser_add_entry);
+
 	return 0;
 }
 device_initcall(bootchooser_init);
diff --git a/include/bootchooser.h b/include/bootchooser.h
index c948247722..246258e8c9 100644
--- a/include/bootchooser.h
+++ b/include/bootchooser.h
@@ -19,8 +19,6 @@ struct bootchooser_target *bootchooser_target_by_name(struct bootchooser *bootch
 						      const char *name);
 void bootchooser_target_force_boot(struct bootchooser_target *target);
 
-int bootchooser_create_bootentry(struct bootentries *entries);
-
 int bootchooser_target_set_attempts(struct bootchooser_target *target, int attempts);
 int bootchooser_target_set_priority(struct bootchooser_target *target, int priority);
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
