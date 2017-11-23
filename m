Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eHpH6-00020S-LC
 for barebox@lists.infradead.ORG; Thu, 23 Nov 2017 11:02:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 23 Nov 2017 12:02:04 +0100
Message-Id: <20171123110204.25455-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] nv: add device parameter overwrites to completion list
To: Barebox List <barebox@lists.infradead.org>

nv variables in the form dev.<devname>.* can be used to make device
parameters persistent. Add these to the completion list to make setting
these variables more convenient.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/global.c   |  2 +-
 commands/nv.c       |  2 +-
 common/globalvar.c  | 33 +++++++++++++++++++++++++++++++--
 include/globalvar.h |  3 ++-
 4 files changed, 35 insertions(+), 5 deletions(-)

diff --git a/commands/global.c b/commands/global.c
index fc687169a7..c66bf6e539 100644
--- a/commands/global.c
+++ b/commands/global.c
@@ -78,5 +78,5 @@ BAREBOX_CMD_START(global)
 	BAREBOX_CMD_OPTS("[-r] VAR[=VALUE] ...")
 	BAREBOX_CMD_GROUP(CMD_GRP_ENV)
 	BAREBOX_CMD_HELP(cmd_global_help)
-	BAREBOX_CMD_COMPLETE(nv_global_complete)
+	BAREBOX_CMD_COMPLETE(global_complete)
 BAREBOX_CMD_END
diff --git a/commands/nv.c b/commands/nv.c
index 51b855ee4b..01c25a108f 100644
--- a/commands/nv.c
+++ b/commands/nv.c
@@ -104,5 +104,5 @@ BAREBOX_CMD_START(nv)
 	BAREBOX_CMD_OPTS("[-r] VAR[=VALUE] ...")
 	BAREBOX_CMD_GROUP(CMD_GRP_ENV)
 	BAREBOX_CMD_HELP(cmd_nv_help)
-	BAREBOX_CMD_COMPLETE(nv_global_complete)
+	BAREBOX_CMD_COMPLETE(nv_complete)
 BAREBOX_CMD_END
diff --git a/common/globalvar.c b/common/globalvar.c
index ee756e5140..7bcc0e7617 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -642,10 +642,39 @@ static int nv_global_param_complete(struct device_d *dev, struct string_list *sl
 	return 0;
 }
 
-int nv_global_complete(struct string_list *sl, char *instr)
+int nv_complete(struct string_list *sl, char *instr)
+{
+	struct device_d *dev;
+	struct param_d *param;
+	char *str;
+	int len;
+
+	nv_global_param_complete(&global_device, sl, instr, 0);
+
+	len = strlen(instr);
+
+	if (strncmp(instr, "dev.", min_t(int, len, 4)))
+		return 0;
+
+	for_each_device(dev) {
+		if (dev == &global_device || dev == &nv_device)
+			continue;
+
+		list_for_each_entry(param, &dev->parameters, list) {
+			str = basprintf("dev.%s.%s=", dev_name(dev), param->name);
+			if (strncmp(instr, str, len))
+				free(str);
+			else
+				string_list_add(sl, str);
+		}
+	}
+
+	return 0;
+}
+
+int global_complete(struct string_list *sl, char *instr)
 {
 	nv_global_param_complete(&global_device, sl, instr, 0);
-	nv_global_param_complete(&nv_device, sl, instr, 0);
 
 	return 0;
 }
diff --git a/include/globalvar.h b/include/globalvar.h
index df43f1fe66..67391e2042 100644
--- a/include/globalvar.h
+++ b/include/globalvar.h
@@ -117,6 +117,7 @@ static inline void dev_param_init_from_nv(struct device_d *dev, const char *name
 
 void nv_var_set_clean(void);
 int nvvar_save(void);
-int nv_global_complete(struct string_list *sl, char *instr);
+int nv_complete(struct string_list *sl, char *instr);
+int global_complete(struct string_list *sl, char *instr);
 
 #endif /* __GLOBALVAR_H */
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
