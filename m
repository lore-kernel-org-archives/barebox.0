Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo5.mail-out.ovh.net ([87.98.173.103]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TQKZW-0004Zz-IT
 for barebox@lists.infradead.org; Mon, 22 Oct 2012 16:09:48 +0000
Received: from mail193.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 43FBEFFA055
 for <barebox@lists.infradead.org>; Mon, 22 Oct 2012 18:16:39 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 22 Oct 2012 18:07:28 +0200
Message-Id: <1350922048-25699-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1350922048-25699-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121022160341.GF21588@game.jcrosoft.org>
 <1350922048-25699-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/3] environment: detect command_abi_version
To: barebox@lists.infradead.org

Detect the environment command_abi_version and if not compatible swith to the
defaultenv. The user will still able to force the laod via loadenv command.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/startup.c |   42 ++++++++++++++++++++++++++++++++----------
 1 file changed, 32 insertions(+), 10 deletions(-)

diff --git a/common/startup.c b/common/startup.c
index affb5a9..df6edfa 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -88,6 +88,36 @@ static int mount_root(void)
 fs_initcall(mount_root);
 #endif
 
+static void env_handling(void)
+{
+	uint16_t command_abi_version;
+
+	if (!IS_ENABLED(CONFIG_ENV_HANDLING))
+		return;
+
+	if (envfs_load(default_environment_path, "/env", &command_abi_version)) {
+		if (!IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT))
+			return;
+
+		printf("no valid environment found on %s\n",
+			default_environment_path);
+		goto load_defaultenv;
+	}
+
+	if (command_abi_version < COMMAND_ABI_VERSION) {
+		printf("environment found on %s have command_abi_version (%u) < current version (%u)\n",
+			default_environment_path,
+			command_abi_version, COMMAND_ABI_VERSION);
+		goto load_defaultenv;
+	}
+
+	return;
+
+load_defaultenv:
+	printf("Using default environment\n");
+	envfs_load("/dev/defaultenv", "/env", NULL);
+}
+
 void start_barebox (void)
 {
 	initcall_t *initcall;
@@ -105,16 +135,8 @@ void start_barebox (void)
 
 	debug("initcalls done\n");
 
-#ifdef CONFIG_ENV_HANDLING
-	if (envfs_load(default_environment_path, "/env", NULL)) {
-#ifdef CONFIG_DEFAULT_ENVIRONMENT
-		printf("no valid environment found on %s. "
-			"Using default environment\n",
-			default_environment_path);
-		envfs_load("/dev/defaultenv", "/env", NULL);
-#endif
-	}
-#endif
+	env_handling();
+
 #ifdef CONFIG_COMMAND_SUPPORT
 	printf("running /env/bin/init...\n");
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
