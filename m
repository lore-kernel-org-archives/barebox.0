Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OVmB7-0006Tw-Jg
	for barebox@lists.infradead.org; Mon, 05 Jul 2010 13:57:46 +0000
From: Luotao Fu <l.fu@pengutronix.de>
Date: Mon,  5 Jul 2010 15:57:38 +0200
Message-Id: <1278338260-29454-3-git-send-email-l.fu@pengutronix.de>
In-Reply-To: <1278338260-29454-1-git-send-email-l.fu@pengutronix.de>
References: <1278338260-29454-1-git-send-email-l.fu@pengutronix.de>
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
Subject: [PATCH V2 2/4] add multi environment support
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org, Luotao Fu <l.fu@pengutronix.de>

We can deal with multiple environments now in our barebox. With this option
enabled barebox will scan all environment partions on start up and load the
environment from the first loadable environment partition it finds. Also it will
check the content of all environment parttions and autmotically synchronize
content of any outdated partition.

Signed-off-by: Luotao Fu <l.fu@pengutronix.de>
---
V2 Changes:
* fix envfs_load call if the multienv support is disabled

 common/Kconfig   |   11 ++++++
 common/startup.c |   90 ++++++++++++++++++++++++++++++++++++++++++++++++-----
 2 files changed, 92 insertions(+), 9 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index a58f242..c33cf14 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -40,6 +40,17 @@ config LOCALVERSION_AUTO
 
 	  which is done within the script "scripts/setlocalversion".)
 
+config MULTI_ENV_HANDLING
+	select ENV_HANDLING
+	bool "Enable handling multiple environment partitions"
+	help
+	  We can have multiple environments in our barebox. With this option
+	  enabled barebox will scan all environment partions on start up and
+	  load the environment from the first loadable environment partition
+	  it finds. Also it will check if the content of all environment
+	  parttions are synchronized and autmotically synchronize content of
+	  the outdated partition.
+
 config BOARDINFO
 	string
 
diff --git a/common/startup.c b/common/startup.c
index 2190159..b57a712 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -110,6 +110,87 @@ static int mount_root(void)
 }
 fs_initcall(mount_root);
 
+#ifdef CONFIG_ENV_HANDLING
+#ifdef CONFIG_MULTI_ENV_HANDLING
+static int init_envfs_load(void)
+{
+	char *dirname = "/env";
+	char file[9 + 5];	/* '/dev/env.....' */
+	int i = 0, j = 0, no_more_parts = 0;
+	int crc = 0, crc_ref = 0;
+	int rc;
+	struct stat file_info;
+
+	while (1) {
+		sprintf(file, "/dev/env%d", i);
+
+		if (stat(file, &file_info) != 0) {
+			no_more_parts = 1;
+			break;
+		}
+
+		/* first loadable environment is considered to be
+		 * reference */
+		if (envfs_load(file, dirname, &crc_ref) == 0)
+			break;
+
+		i++;
+	}
+
+	/* no loadable environment partition found */
+	if (no_more_parts == 1) {
+#ifdef CONFIG_DEFAULT_ENVIRONMENT
+		printf("no valid environment found. "
+			"Using default environment\n");
+		envfs_load("/dev/defaultenv", "/env", &crc_ref);
+#endif
+		goto out;
+	}
+
+	/* Now try to restore, if any, the previous failed partitions */
+	for (j = 0; j < i; j++) {
+		sprintf(file, "/dev/env%d", j);
+		if (envfs_save(file, dirname))
+			printf("failed to sync environment on %s\n", file);
+	}
+
+	/* proceed to scan further env partitions */
+	while (1) {
+		i++;
+		sprintf(file, "/dev/env%d", i);
+
+		if (stat(file, &file_info) != 0)
+			break;
+
+		/* sync partition if loading failed or crc mismatch with
+		 * the reference*/
+		rc = envfs_load(file, NULL, &crc);
+		if (rc != 0 || crc != crc_ref) {
+			if (envfs_save(file, dirname))
+				printf("failed to sync environment on %s\n",
+						file);
+		}
+	}
+out:
+	return 0;
+}
+#else /* MULTI_ENV_HANDLING */
+static int init_envfs_load(void)
+{
+	if (envfs_load("/dev/env0", "/env", NULL)) {
+#ifdef CONFIG_DEFAULT_ENVIRONMENT
+		printf("no valid environment found. "
+			"Using default environment\n");
+		envfs_load("/dev/defaultenv", "/env", NULL);
+#endif
+	}
+
+	return 0;
+}
+#endif /* MULTI_ENV_HANDLING */
+late_initcall(init_envfs_load);
+#endif /* CONFIG_ENV_HANDLING */
+
 void start_barebox (void)
 {
 	initcall_t *initcall;
@@ -137,15 +218,6 @@ void start_barebox (void)
 
 	display_meminfo();
 
-#ifdef CONFIG_ENV_HANDLING
-	if (envfs_load("/dev/env0", "/env", NULL)) {
-#ifdef CONFIG_DEFAULT_ENVIRONMENT
-		printf("no valid environment found on /dev/env0. "
-			"Using default environment\n");
-		envfs_load("/dev/defaultenv", "/env", NULL);
-#endif
-	}
-#endif
 	printf("running /env/bin/init...\n");
 
 	if (!stat("/env/bin/init", &s)) {
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
