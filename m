Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1exqAH-0005GD-R4
 for barebox@lists.infradead.org; Mon, 19 Mar 2018 08:29:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 19 Mar 2018 09:29:03 +0100
Message-Id: <20180319082903.30756-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] Revert "startup: Load default environment earlier"
To: Barebox List <barebox@lists.infradead.org>

Several boards use defaultenv_append_directory() to append a board
specific envfs snippet during runtime. This only works when
defaultenv_append_directory() is called before defaultenv_load() is
exectuted. Since that was executed at the end of the start process
every initcall level could be used to append a env directory. With this
patch only initcall levels earlier than fsdevice_initcall work and
most boards do not cope with this.

Revert this patch until a better solution is found.

Reported-by: Alexander Kurz <akurz@blala.de>

This reverts commit 5b92cfceff38f3a6462a21cf6b69159ad0ae9744.
---
 common/startup.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/common/startup.c b/common/startup.c
index 8940674528..8553849cb3 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -67,9 +67,6 @@ static int mount_root(void)
 		mount("none", "pstore", "/pstore", NULL);
 	}
 
-	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT))
-		defaultenv_load("/env", 0);
-
 	return 0;
 }
 fs_initcall(mount_root);
@@ -82,6 +79,9 @@ static int load_environment(void)
 
 	default_environment_path = default_environment_path_get();
 
+	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT))
+		defaultenv_load("/env", 0);
+
 	envfs_load(default_environment_path, "/env", 0);
 	nvvar_load();
 
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
