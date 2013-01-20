Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Twwvh-00041u-V0
 for barebox@lists.infradead.org; Sun, 20 Jan 2013 15:35:30 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 20 Jan 2013 16:35:18 +0100
Message-Id: <1358696119-18387-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1358696119-18387-1-git-send-email-s.hauer@pengutronix.de>
References: <1358696119-18387-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 09/10] defaultenv loading: rework to use less ifdefs/defines
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/startup.c |   40 ++++++++++++++++++++++------------------
 1 file changed, 22 insertions(+), 18 deletions(-)

diff --git a/common/startup.c b/common/startup.c
index ecb5691..52a8996 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -34,6 +34,7 @@
 #include <linux/stat.h>
 #include <envfs.h>
 #include <asm/sections.h>
+#include <uncompress.h>
 
 extern initcall_t __barebox_initcalls_start[], __barebox_early_initcalls_end[],
 		  __barebox_initcalls_end[];
@@ -41,32 +42,35 @@ extern initcall_t __barebox_initcalls_start[], __barebox_early_initcalls_end[],
 #ifdef CONFIG_DEFAULT_ENVIRONMENT
 #include "barebox_default_env.h"
 
-#ifdef CONFIG_DEFAULT_ENVIRONMENT_COMPRESSED
-#include <uncompress.h>
-void *defaultenv;
-#else
-#define defaultenv default_environment
-#endif
-
 static int register_default_env(void)
 {
-#ifdef CONFIG_DEFAULT_ENVIRONMENT_COMPRESSED
 	int ret;
-	void *tmp;
+	void *defaultenv;
 
-	tmp = xzalloc(default_environment_size);
-	memcpy(tmp, default_environment, default_environment_size);
+	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_COMPRESSED)) {
+		void *tmp = malloc(default_environment_size);
 
-	defaultenv = xzalloc(default_environment_uncompress_size);
+		if (!tmp)
+			return -ENOMEM;
 
-	ret = uncompress(tmp, default_environment_size, NULL, NULL,
-			 defaultenv, NULL, uncompress_err_stdout);
+		memcpy(tmp, default_environment, default_environment_size);
 
-	free(tmp);
+		defaultenv = xzalloc(default_environment_uncompress_size);
+
+		ret = uncompress(tmp, default_environment_size,
+				NULL, NULL,
+				defaultenv, NULL, uncompress_err_stdout);
+
+		free(tmp);
+
+		if (ret) {
+			free(defaultenv);
+			return ret;
+		}
+	} else {
+		defaultenv = (void *)default_environment;
+	}
 
-	if (ret)
-		return ret;
-#endif
 
 	add_mem_device("defaultenv", (unsigned long)defaultenv,
 		       default_environment_uncompress_size,
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
