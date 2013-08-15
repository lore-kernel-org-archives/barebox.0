Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V9rzp-0000A6-Gt
 for barebox@lists.infradead.org; Thu, 15 Aug 2013 07:29:30 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 15 Aug 2013 09:28:54 +0200
Message-Id: <1376551741-16438-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1376551741-16438-1-git-send-email-s.hauer@pengutronix.de>
References: <1376551741-16438-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/8] globalvar: Allow to set initial value
To: barebox@lists.infradead.org

Calling globalvar_add_simple() and setting a value is more than common.
Add a parameter for the initial value.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/crystalfontz-cfa10036/hwdetect.c |  4 ++--
 commands/bootm.c                                 |  6 +++---
 commands/global.c                                | 17 +----------------
 common/globalvar.c                               | 12 ++++++++++--
 common/reset_source.c                            |  4 ++--
 include/globalvar.h                              |  4 ++--
 net/dhcp.c                                       |  2 +-
 7 files changed, 21 insertions(+), 28 deletions(-)

diff --git a/arch/arm/boards/crystalfontz-cfa10036/hwdetect.c b/arch/arm/boards/crystalfontz-cfa10036/hwdetect.c
index 21199d6..e28dd49 100644
--- a/arch/arm/boards/crystalfontz-cfa10036/hwdetect.c
+++ b/arch/arm/boards/crystalfontz-cfa10036/hwdetect.c
@@ -104,8 +104,8 @@ void cfa10036_detect_hw(void)
 		return;
 	}
 
-	globalvar_add_simple("board.variant");
-	setenv("global.board.variant", board_name);
+	globalvar_add_simple("board.variant", board_name);
+
 	pr_info("Booting on a CFA10036 with %s\n", board_name);
 }
 
diff --git a/commands/bootm.c b/commands/bootm.c
index 97a6698..eefcae3 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -164,10 +164,10 @@ err_out:
 static int bootm_init(void)
 {
 
-	globalvar_add_simple("bootm.image");
-	globalvar_add_simple("bootm.oftree");
+	globalvar_add_simple("bootm.image", NULL);
+	globalvar_add_simple("bootm.oftree", NULL);
 	if (IS_ENABLED(CONFIG_CMD_BOOTM_INITRD))
-		globalvar_add_simple("bootm.initrd");
+		globalvar_add_simple("bootm.initrd", NULL);
 
 	return 0;
 }
diff --git a/commands/global.c b/commands/global.c
index 427a231..c526e65 100644
--- a/commands/global.c
+++ b/commands/global.c
@@ -23,21 +23,6 @@
 #include <environment.h>
 #include <getopt.h>
 
-static int globalvar_set(char* name, char* value)
-{
-	int ret;
-
-	ret = globalvar_add_simple(name);
-
-	if (value) {
-		char *tmp = asprintf("global.%s", name);
-		ret = setenv(tmp, value);
-		free(tmp);
-	}
-
-	return ret ? 1 : 0;
-}
-
 static int do_global(int argc, char *argv[])
 {
 	int opt;
@@ -72,7 +57,7 @@ static int do_global(int argc, char *argv[])
 		return 0;
 	}
 
-	return globalvar_set(argv[0], value);
+	return globalvar_add_simple(argv[0], value);
 }
 
 BAREBOX_CMD_HELP_START(global)
diff --git a/common/globalvar.c b/common/globalvar.c
index abcd881..6fd1d88 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -2,6 +2,8 @@
 #include <malloc.h>
 #include <globalvar.h>
 #include <init.h>
+#include <environment.h>
+#include <generated/utsrelease.h>
 
 static struct device_d global_device = {
 	.name = "global",
@@ -61,9 +63,15 @@ void globalvar_set_match(const char *match, const char *val)
  *
  * add a new globalvar named 'name'
  */
-int globalvar_add_simple(const char *name)
+int globalvar_add_simple(const char *name, const char *value)
 {
-	return globalvar_add(name, NULL, NULL, 0);
+	int ret;
+
+	ret = globalvar_add(name, NULL, NULL, 0);
+	if (ret && ret != -EEXIST)
+		return ret;
+
+	return dev_set_param(&global_device, name, value);
 }
 
 static int globalvar_init(void)
diff --git a/common/reset_source.c b/common/reset_source.c
index 2a7f9ff..fdc30f4 100644
--- a/common/reset_source.c
+++ b/common/reset_source.c
@@ -36,8 +36,8 @@ EXPORT_SYMBOL(set_reset_source);
 /* ensure this runs after the 'global' device is already registerd */
 static int init_reset_source(void)
 {
-	globalvar_add_simple("system.reset");
-	set_reset_source(RESET_UKWN);
+	globalvar_add_simple("system.reset", reset_src_names[RESET_UKWN]);
+
 	return 0;
 }
 
diff --git a/include/globalvar.h b/include/globalvar.h
index eb37287..c2a13b3 100644
--- a/include/globalvar.h
+++ b/include/globalvar.h
@@ -4,7 +4,7 @@
 #include <param.h>
 
 #ifdef CONFIG_GLOBALVAR
-int globalvar_add_simple(const char *name);
+int globalvar_add_simple(const char *name, const char *value);
 
 int globalvar_add(const char *name,
 		int (*set)(struct device_d *dev, struct param_d *p, const char *val),
@@ -13,7 +13,7 @@ int globalvar_add(const char *name,
 char *globalvar_get_match(const char *match, const char *separator);
 void globalvar_set_match(const char *match, const char *val);
 #else
-static inline int globalvar_add_simple(const char *name)
+static inline int globalvar_add_simple(const char *name, const char *value)
 {
 	return 0;
 }
diff --git a/net/dhcp.c b/net/dhcp.c
index 1261b2d..cafefcb 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -667,7 +667,7 @@ static void dhcp_global_add(const char *var)
 	if (!var_global)
 		return;
 
-	globalvar_add_simple(var_global);
+	globalvar_add_simple(var_global, NULL);
 	free(var_global);
 }
 
-- 
1.8.4.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
