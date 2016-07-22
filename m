Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bQXs5-0006v0-BO
 for barebox@lists.infradead.org; Fri, 22 Jul 2016 10:39:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Jul 2016 12:39:15 +0200
Message-Id: <1469183959-9002-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1469183959-9002-1-git-send-email-s.hauer@pengutronix.de>
References: <1469183959-9002-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/6] nv: Save nv variables on shutdown
To: Barebox List <barebox@lists.infradead.org>

With this patch nv variables are automatically saved whenever barebox
shuts down (that is 'reset' is executed or a kernel is started). With
this the additional 'saveenv' step becomes unnecessary.

The nv variables are stored in the environment and the estasblished
behaviour is that files in the environment must be manually saved
using 'saveenv'. This behaviour shall be kept for now, so this patch
cannot just call 'saveenv' since that would save the modified
environment files aswell. Instead we read the environment from the
device, modifiy the nv variables and save the environment back.

Since this changes a long existing behaviour messages are printed the
first time a nv variable is modified and during shutdown when the
variables are actually saved.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/environment.c |  4 +++
 common/globalvar.c   | 81 ++++++++++++++++++++++++++++++++++++++++++++++++++--
 include/globalvar.h  |  3 ++
 3 files changed, 85 insertions(+), 3 deletions(-)

diff --git a/common/environment.c b/common/environment.c
index c3ad252..db127d7 100644
--- a/common/environment.c
+++ b/common/environment.c
@@ -364,6 +364,10 @@ int envfs_save(const char *filename, const char *dirname, unsigned flags)
 
 	ret = 0;
 
+#ifdef CONFIG_NVVAR
+	if (!strcmp(filename, default_environment_path_get()))
+	    nv_var_set_clean();
+#endif
 out:
 	close(envfd);
 out1:
diff --git a/common/globalvar.c b/common/globalvar.c
index be08231..4110a06 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -9,6 +9,9 @@
 #include <fcntl.h>
 #include <libfile.h>
 #include <generated/utsrelease.h>
+#include <envfs.h>
+
+static int nv_dirty;
 
 struct device_d global_device = {
 	.name = "global",
@@ -20,6 +23,11 @@ struct device_d nv_device = {
 	.id = DEVICE_ID_SINGLE,
 };
 
+void nv_var_set_clean(void)
+{
+	nv_dirty = 0;
+}
+
 int globalvar_add(const char *name,
 		int (*set)(struct device_d *dev, struct param_d *p, const char *val),
 		const char *(*get)(struct device_d *, struct param_d *p),
@@ -43,16 +51,16 @@ void globalvar_remove(const char *name)
 	dev_remove_param(param);
 }
 
-static int nv_save(const char *name, const char *val)
+static int __nv_save(const char *prefix, const char *name, const char *val)
 {
 	int fd, ret;
 	char *fname;
 
-	ret = make_directory("/env/nv");
+	ret = make_directory(prefix);
 	if (ret)
 		return ret;
 
-	fname = basprintf("/env/nv/%s", name);
+	fname = basprintf("%s/%s", prefix, name);
 
 	fd = open(fname, O_CREAT | O_WRONLY | O_TRUNC);
 
@@ -68,6 +76,25 @@ static int nv_save(const char *name, const char *val)
 	return 0;
 }
 
+static int nv_save(const char *name, const char *val)
+{
+	int ret;
+	static int once = 1;
+
+	ret = __nv_save("/env/nv", name, val);
+	if (ret)
+		return ret;
+
+	if (once) {
+		pr_info("nv variable modified, will save nv variables on shutdown\n");
+		once = 0;
+	}
+
+	nv_dirty = 1;
+
+	return 0;
+}
+
 /**
  * dev_param_init_from_nv - initialize a device parameter from nv variable
  * @dev: The device
@@ -423,3 +450,51 @@ static int globalvar_init(void)
 pure_initcall(globalvar_init);
 
 BAREBOX_MAGICVAR_NAMED(global_version, global.version, "The barebox version");
+
+/**
+ * nvvar_save - save NV variables to persistent environment
+ *
+ * This saves the NV variables to the persisitent environment without saving
+ * the other files in the environment that might be changed.
+ */
+int nvvar_save(void)
+{
+	struct param_d *param;
+	const char *env = default_environment_path_get();
+	int ret;
+#define TMPDIR "/.env.tmp"
+	if (!nv_dirty || !env)
+		return 0;
+
+	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT))
+		defaultenv_load(TMPDIR, 0);
+
+	envfs_load(env, TMPDIR, 0);
+
+	list_for_each_entry(param, &nv_device.parameters, list) {
+		ret = __nv_save(TMPDIR "/nv", param->name,
+				dev_get_param(&nv_device, param->name));
+		if (ret) {
+			pr_err("Cannot save NV var: %s\n", strerror(-ret));
+			goto out;
+		}
+	}
+
+	envfs_save(env, TMPDIR, 0);
+out:
+	unlink_recursive(TMPDIR, NULL);
+
+	if (!ret)
+		nv_dirty = 0;
+
+	return ret;
+}
+
+static void nv_exit(void)
+{
+	if (nv_dirty)
+		pr_info("nv variables modified, saving them\n");
+
+	nvvar_save();
+}
+predevshutdown_exitcall(nv_exit);
diff --git a/include/globalvar.h b/include/globalvar.h
index 67b97de..1cd8d21 100644
--- a/include/globalvar.h
+++ b/include/globalvar.h
@@ -173,4 +173,7 @@ static inline void dev_param_init_from_nv(struct device_d *dev, const char *name
 
 #endif
 
+void nv_var_set_clean(void);
+int nvvar_save(void);
+
 #endif /* __GLOBALVAR_H */
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
