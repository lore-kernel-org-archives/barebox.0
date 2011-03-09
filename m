Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PxL8n-00058d-Aq
	for barebox@lists.infradead.org; Wed, 09 Mar 2011 15:17:34 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <jbe@pengutronix.de>) id 1PxL8h-0004EC-LZ
	for barebox@lists.infradead.org; Wed, 09 Mar 2011 16:17:27 +0100
Received: from jbe by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1PxL8h-0001eM-K2
	for barebox@lists.infradead.org; Wed, 09 Mar 2011 16:17:27 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Wed,  9 Mar 2011 16:17:22 +0100
Message-Id: <1299683846-20616-2-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1299683846-20616-1-git-send-email-jbe@pengutronix.de>
References: <1299683846-20616-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 1/5] Move environment handling out from the main routine
To: barebox@lists.infradead.org

This is for easier integration of multi environment handling.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 common/startup.c |   29 ++++++++++++++++++++---------
 1 files changed, 20 insertions(+), 9 deletions(-)

diff --git a/common/startup.c b/common/startup.c
index aa76cb7..c39b08e 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -112,6 +112,26 @@ static int mount_root(void)
 }
 fs_initcall(mount_root);
 
+static void __maybe_unused load_default_environment(void)
+{
+#ifdef CONFIG_DEFAULT_ENVIRONMENT
+	printf("No valid environment found. Using default environment.\n");
+	envfs_load("/dev/defaultenv", "/env");
+#endif
+}
+
+static int __maybe_unused init_single_envfs_load(void)
+{
+	if (envfs_load("/dev/env0", "/env"))
+		load_default_environment();
+
+	return 0;
+}
+
+#ifdef CONFIG_ENV_HANDLING
+late_initcall(init_single_envfs_load);
+#endif
+
 void start_barebox (void)
 {
 	initcall_t *initcall;
@@ -139,15 +159,6 @@ void start_barebox (void)
 
 	display_meminfo();
 
-#ifdef CONFIG_ENV_HANDLING
-	if (envfs_load("/dev/env0", "/env")) {
-#ifdef CONFIG_DEFAULT_ENVIRONMENT
-		printf("no valid environment found on /dev/env0. "
-			"Using default environment\n");
-		envfs_load("/dev/defaultenv", "/env");
-#endif
-	}
-#endif
 	printf("running /env/bin/init...\n");
 
 	if (!stat("/env/bin/init", &s)) {
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
