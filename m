Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eiy1c-00080G-Sg
 for barebox@lists.infradead.org; Tue, 06 Feb 2018 07:50:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  6 Feb 2018 08:50:28 +0100
Message-Id: <20180206075028.5303-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] startup: Load default environment earlier
To: Barebox List <barebox@lists.infradead.org>

Some files compiled into the default environment may be needed earlier in
the boot process, so move loading of the default environment to fs_initcall.
Only the default environment is loaded earlier, but not the overwriting with
the persistent environment files, so when the files are used that early, only
the compiled in version is available; it's not overwritable at that
time.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/startup.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/common/startup.c b/common/startup.c
index 432be67cd6..8b075422dd 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -66,6 +66,9 @@ static int mount_root(void)
 		mount("none", "pstore", "/pstore", NULL);
 	}
 
+	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT))
+		defaultenv_load("/env", 0);
+
 	return 0;
 }
 fs_initcall(mount_root);
@@ -78,9 +81,6 @@ static int load_environment(void)
 
 	default_environment_path = default_environment_path_get();
 
-	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT))
-		defaultenv_load("/env", 0);
-
 	envfs_load(default_environment_path, "/env", 0);
 	nvvar_load();
 
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
