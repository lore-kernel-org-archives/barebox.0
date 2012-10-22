Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo5.mail-out.ovh.net ([87.98.173.103]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TQKZW-0004Zw-AL
 for barebox@lists.infradead.org; Mon, 22 Oct 2012 16:09:49 +0000
Received: from mail193.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 7EDE7FFA053
 for <barebox@lists.infradead.org>; Mon, 22 Oct 2012 18:16:38 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 22 Oct 2012 18:07:27 +0200
Message-Id: <1350922048-25699-2-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/3] envfs: add command_abi_version support
To: barebox@lists.infradead.org

allow to store the command abi version
This will allow to detect incompatibility

Increase envfs minor to 1

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/loadenv.c    |   11 ++++++++++-
 common/environment.c  |    7 ++++++-
 common/startup.c      |    4 ++--
 include/envfs.h       |    4 ++--
 include/environment.h |   13 ++++++++++++-
 scripts/bareboxenv.c  |    9 ++++++++-
 6 files changed, 40 insertions(+), 8 deletions(-)

diff --git a/commands/loadenv.c b/commands/loadenv.c
index 5bf1740..c52ee4b 100644
--- a/commands/loadenv.c
+++ b/commands/loadenv.c
@@ -26,6 +26,9 @@
 
 static int do_loadenv(int argc, char *argv[])
 {
+	int ret;
+	uint16_t command_abi_version;
+
 	char *filename, *dirname;
 
 	if (argc < 3)
@@ -37,7 +40,13 @@ static int do_loadenv(int argc, char *argv[])
 	else
 		filename = argv[1];
 	printf("loading environment from %s\n", filename);
-	return envfs_load(filename, dirname);
+	ret = envfs_load(filename, dirname, &command_abi_version);
+
+	if (command_abi_version < COMMAND_ABI_VERSION)
+		pr_warn("environment command_abi_verison (%u) < current version (%u)\n",
+			command_abi_version, COMMAND_ABI_VERSION);
+
+	return ret;
 }
 
 BAREBOX_CMD_HELP_START(loadenv)
diff --git a/common/environment.c b/common/environment.c
index 69c4c0a..e0207e9 100644
--- a/common/environment.c
+++ b/common/environment.c
@@ -162,6 +162,7 @@ int envfs_save(char *filename, char *dirname)
 
 	super = (struct envfs_super *)buf;
 	super->magic = ENVFS_32(ENVFS_MAGIC);
+	super->command_abi_version = ENVFS_16(COMMAND_ABI_VERSION);
 	super->major = ENVFS_MAJOR;
 	super->minor = ENVFS_MINOR;
 	super->size = ENVFS_32(size);
@@ -206,7 +207,7 @@ EXPORT_SYMBOL(envfs_save);
  * Note: This function will also be used on the host! See note in the header
  * of this file.
  */
-int envfs_load(char *filename, char *dir)
+int envfs_load(char *filename, char *dir, uint16_t *command_abi_version)
 {
 	struct envfs_super super;
 	void *buf = NULL, *buf_free = NULL;
@@ -235,6 +236,7 @@ int envfs_load(char *filename, char *dir)
 		goto out;
 	}
 
+
 	if ( ENVFS_32(super.magic) != ENVFS_MAGIC) {
 		printf("envfs: wrong magic on %s\n", filename);
 		ret = -EIO;
@@ -248,6 +250,9 @@ int envfs_load(char *filename, char *dir)
 		goto out;
 	}
 
+	if (command_abi_version)
+		*command_abi_version = ENVFS_16(super.command_abi_version);
+
 	size = ENVFS_32(super.size);
 	buf = xmalloc(size);
 	buf_free = buf;
diff --git a/common/startup.c b/common/startup.c
index 78926c9..affb5a9 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -106,12 +106,12 @@ void start_barebox (void)
 	debug("initcalls done\n");
 
 #ifdef CONFIG_ENV_HANDLING
-	if (envfs_load(default_environment_path, "/env")) {
+	if (envfs_load(default_environment_path, "/env", NULL)) {
 #ifdef CONFIG_DEFAULT_ENVIRONMENT
 		printf("no valid environment found on %s. "
 			"Using default environment\n",
 			default_environment_path);
-		envfs_load("/dev/defaultenv", "/env");
+		envfs_load("/dev/defaultenv", "/env", NULL);
 #endif
 	}
 #endif
diff --git a/include/envfs.h b/include/envfs.h
index 3d14fcb..6503d22 100644
--- a/include/envfs.h
+++ b/include/envfs.h
@@ -6,7 +6,7 @@
 #endif
 
 #define ENVFS_MAJOR		1
-#define ENVFS_MINOR		0
+#define ENVFS_MINOR		1
 
 #define ENVFS_MAGIC		    0x798fba79	/* some random number */
 #define ENVFS_INODE_MAGIC	0x67a8c78d
@@ -40,7 +40,7 @@ struct envfs_super {
 	uint32_t size;			/* size of data */
 	uint8_t major;			/* major */
 	uint8_t minor;			/* minor */
-	uint16_t future;		/* reserved for future use */
+	uint16_t command_abi_version;	/* command abi version */
 	uint32_t flags;			/* feature flags */
 	uint32_t sb_crc;		/* crc for the superblock */
 };
diff --git a/include/environment.h b/include/environment.h
index 95e75e7..64de26f 100644
--- a/include/environment.h
+++ b/include/environment.h
@@ -74,8 +74,19 @@ int env_push_context(void);
 /* defaults to /dev/env0 */
 extern char *default_environment_path;
 
-int envfs_load(char *filename, char *dirname);
+#ifdef CONFIG_ENV_HANDLING
+int envfs_load(char *filename, char *dir, uint16_t *command_abi_version);
 int envfs_save(char *filename, char *dirname);
+#else
+static inline int envfs_load(char *filename, char *dir, uint16_t *command_abi_version)
+{
+	return -EINVAL;
+}
+static inline int envfs_save(char *filename, char *dirname)
+{
+	return -EINVAL;
+}
+#endif
 
 int export(const char *);
 
diff --git a/scripts/bareboxenv.c b/scripts/bareboxenv.c
index f44a1f8..6bd23e8 100644
--- a/scripts/bareboxenv.c
+++ b/scripts/bareboxenv.c
@@ -115,6 +115,7 @@ char *concat_subpath_file(const char *path, const char *f)
 }
 
 #include "../lib/recursive_action.c"
+#include "../include/command_abi.h"
 #include "../include/envfs.h"
 #include "../crypto/crc32.c"
 #include "../lib/make_directory.c"
@@ -189,14 +190,20 @@ int main(int argc, char *argv[])
 	}
 
 	if (load) {
+		uint16_t command_abi_version;
+
 		if (verbose)
 			printf("loading env from file %s to %s\n", filename, dirname);
-		envfs_load(filename, dirname);
+		envfs_load(filename, dirname, &command_abi_version);
+		if (verbose)
+			printf("with command_abi_version = %u\n", command_abi_version);
 	}
 	if (save) {
 		if (verbose)
 			printf("saving contents of %s to file %s\n", dirname, filename);
 		envfs_save(filename, dirname);
+		if (verbose)
+			printf("with command_abi_version = %u\n", COMMAND_ABI_VERSION);
 	}
 	exit(0);
 }
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
