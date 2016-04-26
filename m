Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1auzKI-0003FY-RG
 for barebox@lists.infradead.org; Tue, 26 Apr 2016 09:30:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 26 Apr 2016 11:30:16 +0200
Message-Id: <1461663016-21908-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] globalvar: Create Kconfig symbol for NVVAR
To: Barebox List <barebox@lists.infradead.org>

nvvar support not only needs globalvar, but also persistent
environment storage. Add a separate default-y option which
depends on ENV_HANDLING for this case.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig   |  2 +-
 common/Kconfig     |  6 ++++++
 common/globalvar.c | 18 ++++++++++++++++--
 3 files changed, 23 insertions(+), 3 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index 875c5f4..1d3d530 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -715,7 +715,7 @@ endmenu
 menu "Environment"
 
 config CMD_NV
-	select GLOBALVAR
+	depends on NVVAR
 	tristate
 	prompt "nv"
 	help
diff --git a/common/Kconfig b/common/Kconfig
index 7c09e8c..8f7bb02 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -81,6 +81,12 @@ config LOGBUF
 config GLOBALVAR
 	bool
 
+config NVVAR
+	bool
+	depends on GLOBALVAR
+	depends on ENV_HANDLING
+	default y
+
 config STDDEV
 	bool
 
diff --git a/common/globalvar.c b/common/globalvar.c
index 9a793ac..a777c14 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -90,6 +90,9 @@ int nvvar_add(const char *name, const char *value)
 	struct param_d *p, *gp;
 	int ret;
 
+	if (!IS_ENABLED(CONFIG_NVVAR))
+		return -ENOSYS;
+
 	gp = get_param_by_name(&nv_device, name);
 	if (gp) {
 		ret = dev_set_param(&global_device, name, value);
@@ -131,6 +134,9 @@ int nvvar_remove(const char *name)
 	struct param_d *p;
 	char *fname;
 
+	if (!IS_ENABLED(CONFIG_NVVAR))
+		return -ENOSYS;
+
 	p = get_param_by_name(&nv_device, name);
 	if (!p)
 		return -ENOENT;
@@ -153,6 +159,9 @@ int nvvar_load(void)
 	DIR *dir;
 	struct dirent *d;
 
+	if (!IS_ENABLED(CONFIG_NVVAR))
+		return -ENOSYS;
+
 	dir = opendir("/env/nv");
 	if (!dir)
 		return -ENOENT;
@@ -185,7 +194,7 @@ static void device_param_print(struct device_d *dev)
 		const char *p = dev_get_param(dev, param->name);
 		const char *nv = NULL;
 
-		if (dev != &nv_device)
+		if (IS_ENABLED(CONFIG_NVVAR) && dev != &nv_device)
 			nv = dev_get_param(&nv_device, param->name);
 
 		printf("%s%s: %s\n", nv ? "* " : "  ", param->name, p);
@@ -194,6 +203,9 @@ static void device_param_print(struct device_d *dev)
 
 void nvvar_print(void)
 {
+	if (!IS_ENABLED(CONFIG_NVVAR))
+		return;
+
 	device_param_print(&nv_device);
 }
 
@@ -264,7 +276,9 @@ int globalvar_add_simple(const char *name, const char *value)
 static int globalvar_init(void)
 {
 	register_device(&global_device);
-	register_device(&nv_device);
+
+	if (IS_ENABLED(CONFIG_NVVAR))
+		register_device(&nv_device);
 
 	globalvar_add_simple("version", UTS_RELEASE);
 
-- 
2.8.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
