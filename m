Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1O6Mid-0006No-DY
	for barebox@lists.infradead.org; Mon, 26 Apr 2010 11:43:19 +0000
Received: by wwb39 with SMTP id 39so796218wwb.36
	for <barebox@lists.infradead.org>; Mon, 26 Apr 2010 04:43:16 -0700 (PDT)
Date: Mon, 26 Apr 2010 13:43:11 +0200 (CEST)
From: Ivo Clarysse <ivo.clarysse@gmail.com>
Message-ID: <alpine.LRH.2.00.1004261341360.16802@localhost.localdomain>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] Fix build if MULTI_ENV_HANDLING is disabled
To: barebox@lists.infradead.org, s.hauer@pengutronix.de


Signed-off-by: Ivo Clarysse <ivo.clarysse@gmail.com>
---
diff --git a/commands/loadenv.c b/commands/loadenv.c
index cb66bb4..b233343 100644
--- a/commands/loadenv.c
+++ b/commands/loadenv.c
@@ -33,9 +33,9 @@ static int do_loadenv(struct command *cmdtp, int argc, char *argv[])
 {
 	char *dirname;
 	int rc = 0;
-	int i = 0;
 	char file[9 + 5];	/* '/dev/env.....' */
 #ifdef CONFIG_MULTI_ENV_HANDLING
+	int i = 0;
 	struct stat file_info;
 #endif

@@ -64,7 +64,7 @@ static int do_loadenv(struct command *cmdtp, int argc, char *argv[])
 	}
 #else
 	sprintf(file, "/dev/env0");
-	rc = envfs_load(file, dirname);
+	rc = envfs_load(file, dirname, NULL);
 #endif

 	return rc ? 1 : 0;
diff --git a/commands/saveenv.c b/commands/saveenv.c
index efc89bd..a56c296 100644
--- a/commands/saveenv.c
+++ b/commands/saveenv.c
@@ -65,9 +65,9 @@ static int do_saveenv(struct command *cmdtp, int argc, char *argv[])
 {
 	int ret = 0;
 	char *dirname;
-	int i = 0;
 	char file[9 + 5];
 #ifdef CONFIG_MULTI_ENV_HANDLING
+	int i = 0;
 	struct stat file_info;
 #endif

diff --git a/common/startup.c b/common/startup.c
index 2d63ce8..b8ae29a 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -184,7 +184,7 @@ out:
 #else /* MULTI_ENV_HANDLING */
 static int init_envfs_load(void)
 {
-	if (envfs_load("/dev/env0", "/env")) {
+	if (envfs_load("/dev/env0", "/env", NULL)) {
 #ifdef CONFIG_DEFAULT_ENVIRONMENT
 		printf("no valid environment found. "
 			"Using default environment\n");

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
