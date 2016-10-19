Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bwkXQ-0001BM-F4
 for barebox@lists.infradead.org; Wed, 19 Oct 2016 06:39:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 19 Oct 2016 08:39:21 +0200
Message-Id: <20161019063921.13247-2-s.hauer@pengutronix.de>
In-Reply-To: <20161019063921.13247-1-s.hauer@pengutronix.de>
References: <20161019063921.13247-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] complete: Add completion for nv and globalvar commands
To: Barebox List <barebox@lists.infradead.org>

The 'nv' command is often used to create a nv variable
for an existing global variable, so add a command completion
function for this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/global.c   |  2 ++
 commands/nv.c       |  2 ++
 common/globalvar.c  | 28 ++++++++++++++++++++++++++++
 include/globalvar.h |  2 ++
 4 files changed, 34 insertions(+)

diff --git a/commands/global.c b/commands/global.c
index d21b829..fc68716 100644
--- a/commands/global.c
+++ b/commands/global.c
@@ -22,6 +22,7 @@
 #include <globalvar.h>
 #include <environment.h>
 #include <getopt.h>
+#include <complete.h>
 
 static int do_global(int argc, char *argv[])
 {
@@ -77,4 +78,5 @@ BAREBOX_CMD_START(global)
 	BAREBOX_CMD_OPTS("[-r] VAR[=VALUE] ...")
 	BAREBOX_CMD_GROUP(CMD_GRP_ENV)
 	BAREBOX_CMD_HELP(cmd_global_help)
+	BAREBOX_CMD_COMPLETE(nv_global_complete)
 BAREBOX_CMD_END
diff --git a/commands/nv.c b/commands/nv.c
index a1fb095..37cdb96 100644
--- a/commands/nv.c
+++ b/commands/nv.c
@@ -22,6 +22,7 @@
 #include <globalvar.h>
 #include <environment.h>
 #include <getopt.h>
+#include <complete.h>
 
 static int do_nv(int argc, char *argv[])
 {
@@ -90,4 +91,5 @@ BAREBOX_CMD_START(nv)
 	BAREBOX_CMD_OPTS("[-r] VAR[=VALUE] ...")
 	BAREBOX_CMD_GROUP(CMD_GRP_ENV)
 	BAREBOX_CMD_HELP(cmd_nv_help)
+	BAREBOX_CMD_COMPLETE(nv_global_complete)
 BAREBOX_CMD_END
diff --git a/common/globalvar.c b/common/globalvar.c
index fb69db9..e75cac9 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -626,3 +626,31 @@ static void nv_exit(void)
 	nvvar_save();
 }
 predevshutdown_exitcall(nv_exit);
+
+static int nv_global_param_complete(struct device_d *dev, struct string_list *sl,
+				 char *instr, int eval)
+{
+	struct param_d *param;
+	int len;
+
+	len = strlen(instr);
+
+	list_for_each_entry(param, &dev->parameters, list) {
+		if (strncmp(instr, param->name, len))
+			continue;
+
+		string_list_add_asprintf(sl, "%s%c",
+			param->name,
+			eval ? ' ' : '=');
+	}
+
+	return 0;
+}
+
+int nv_global_complete(struct string_list *sl, char *instr)
+{
+	nv_global_param_complete(&global_device, sl, instr, 0);
+	nv_global_param_complete(&nv_device, sl, instr, 0);
+
+	return 0;
+}
diff --git a/include/globalvar.h b/include/globalvar.h
index 2a5d8a1..ecd9f1d 100644
--- a/include/globalvar.h
+++ b/include/globalvar.h
@@ -4,6 +4,7 @@
 #include <param.h>
 #include <driver.h>
 #include <linux/err.h>
+#include <stringlist.h>
 
 extern struct device_d global_device;
 
@@ -123,5 +124,6 @@ static inline void dev_param_init_from_nv(struct device_d *dev, const char *name
 
 void nv_var_set_clean(void);
 int nvvar_save(void);
+int nv_global_complete(struct string_list *sl, char *instr);
 
 #endif /* __GLOBALVAR_H */
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
