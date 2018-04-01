Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x22e.google.com ([2607:f8b0:400e:c00::22e])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f2Ra1-0006XD-7U
 for barebox@lists.infradead.org; Sun, 01 Apr 2018 01:14:48 +0000
Received: by mail-pf0-x22e.google.com with SMTP id u86so7649455pfd.2
 for <barebox@lists.infradead.org>; Sat, 31 Mar 2018 18:14:34 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat, 31 Mar 2018 18:13:58 -0700
Message-Id: <20180401011358.11621-5-andrew.smirnov@gmail.com>
In-Reply-To: <20180401011358.11621-1-andrew.smirnov@gmail.com>
References: <20180401011358.11621-1-andrew.smirnov@gmail.com>
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

From: Sascha Hauer <s.hauer@pengutronix.de>

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
