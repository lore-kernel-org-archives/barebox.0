Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g3KZU-0005eu-U8
 for barebox@lists.infradead.org; Fri, 21 Sep 2018 12:30:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 21 Sep 2018 14:29:54 +0200
Message-Id: <20180921122955.9513-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] environment: Allow default env path to be NULL
To: Barebox List <barebox@lists.infradead.org>

Several places assume that the default environment path cannot be NULL.
Allow NULL here without crashing.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/loadenv.c   | 4 ++++
 common/environment.c | 9 +++++++--
 2 files changed, 11 insertions(+), 2 deletions(-)

diff --git a/commands/loadenv.c b/commands/loadenv.c
index 6469affadb..bf01072c42 100644
--- a/commands/loadenv.c
+++ b/commands/loadenv.c
@@ -61,6 +61,10 @@ static int do_loadenv(int argc, char *argv[])
 
 	if (argc - optind < 1) {
 		filename = default_environment_path_get();
+		if (!filename) {
+			printf("Default environment path not set\n");
+			return 1;
+		}
 	} else {
 		/*
 		 * /dev/defaultenv use to contain the defaultenvironment.
diff --git a/common/environment.c b/common/environment.c
index 0edf34b661..56a030eda0 100644
--- a/common/environment.c
+++ b/common/environment.c
@@ -256,9 +256,12 @@ int envfs_save(const char *filename, const char *dirname, unsigned flags)
 	struct action_data data = {};
 	void *buf = NULL, *wbuf;
 	struct envfs_entry *env;
+	const char *defenv_path = default_environment_path_get();
 
 	if (!filename)
-		filename = default_environment_path_get();
+		filename = defenv_path;
+	if (!filename)
+		return -ENOENT;
 
 	if (!dirname)
 		dirname = "/env";
@@ -365,7 +368,7 @@ int envfs_save(const char *filename, const char *dirname, unsigned flags)
 	ret = 0;
 
 #ifdef CONFIG_NVVAR
-	if (!strcmp(filename, default_environment_path_get()))
+	if (defenv_path && !strcmp(filename, defenv_path))
 	    nv_var_set_clean();
 #endif
 out:
@@ -558,6 +561,8 @@ int envfs_load(const char *filename, const char *dir, unsigned flags)
 
 	if (!filename)
 		filename = default_environment_path_get();
+	if (!filename)
+		return -ENOENT;
 
 	if (!dir)
 		dir = "/env";
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
