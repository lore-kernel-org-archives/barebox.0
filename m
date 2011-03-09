Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PxL8s-0005AB-CY
	for barebox@lists.infradead.org; Wed, 09 Mar 2011 15:17:39 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Wed,  9 Mar 2011 16:17:26 +0100
Message-Id: <1299683846-20616-6-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 5/5] Add multi environment support
To: barebox@lists.infradead.org
Cc: Luotao Fu <l.fu@pengutronix.de>

From: Luotao Fu <l.fu@pengutronix.de>

We can deal with multiple environments now in our barebox. With this option
enabled barebox will scan all environment partions on start up and load the
environment from the first loadable environment partition it finds. Also it will
check the content of all environment parttions and autmotically synchronize
content of any outdated partition.

Signed-off-by: Luotao Fu <l.fu@pengutronix.de>
Acked-by: Juergen Beisert <jbe@pengutronix.de>
---
 common/Kconfig   |   11 +++++++++
 common/startup.c |   63 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 74 insertions(+), 0 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index 02bc67e..272f146 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -53,6 +53,17 @@ config LOCALVERSION_AUTO
 
 	  which is done within the script "scripts/setlocalversion".)
 
+config MULTI_ENV_HANDLING
+	select ENV_HANDLING
+	bool "Enable handling multiple environment partitions"
+	help
+	  Barebox can handle multiple environments. With this option enabled,
+	  barebox will scan all environment partions on start up and
+	  load the environment from the first loadable environment partition
+	  it finds. Also it will check if the content of all environment
+	  partitions are synchronized and automatically synchronize content of
+	  the outdated partition.
+
 config BOARDINFO
 	string
 
diff --git a/common/startup.c b/common/startup.c
index 32a8aa0..759d694 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -128,8 +128,71 @@ static int __maybe_unused init_single_envfs_load(void)
 	return 0;
 }
 
+static int __maybe_unused init_multi_envfs_load(void)
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
+		load_default_environment();
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
+		 * the reference */
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
+
 #ifdef CONFIG_ENV_HANDLING
+# ifdef CONFIG_MULTI_ENV_HANDLING
+late_initcall(init_multi_envfs_load);
+# else
 late_initcall(init_single_envfs_load);
+# endif
 #endif
 
 void start_barebox (void)
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
