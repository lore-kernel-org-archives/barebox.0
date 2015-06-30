Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x229.google.com ([2a00:1450:4010:c04::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZA39S-0001sn-FH
 for barebox@lists.infradead.org; Tue, 30 Jun 2015 21:33:11 +0000
Received: by lbnk3 with SMTP id k3so1623551lbn.1
 for <barebox@lists.infradead.org>; Tue, 30 Jun 2015 14:32:47 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed,  1 Jul 2015 00:32:24 +0300
Message-Id: <1435699944-20478-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] treewide: fix 'new blank line at EOF' formatting error
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 commands/automount.c            | 1 -
 commands/export.c               | 1 -
 commands/false.c                | 1 -
 commands/help.c                 | 1 -
 commands/net.c                  | 1 -
 commands/readline.c             | 1 -
 commands/timeout.c              | 1 -
 commands/trigger.c              | 1 -
 commands/true.c                 | 1 -
 commands/ubi.c                  | 1 -
 commands/version.c              | 1 -
 common/complete.c               | 1 -
 common/kallsyms.c               | 1 -
 common/parser.c                 | 1 -
 fs/cramfs/cramfs.c              | 1 -
 fs/fat/fat.c                    | 1 -
 fs/ramfs.c                      | 1 -
 lib/fnmatch.c                   | 1 -
 lib/lzo/lzo1x_decompress_safe.c | 1 -
 lib/random.c                    | 1 -
 lib/strtox.c                    | 1 -
 net/net.c                       | 1 -
 net/nfs.c                       | 1 -
 23 files changed, 23 deletions(-)

diff --git a/commands/automount.c b/commands/automount.c
index a29f286..b491d20 100644
--- a/commands/automount.c
+++ b/commands/automount.c
@@ -70,4 +70,3 @@ BAREBOX_CMD_START(automount)
 	BAREBOX_CMD_GROUP(CMD_GRP_PART)
 	BAREBOX_CMD_HELP(cmd_automount_help)
 BAREBOX_CMD_END
-
diff --git a/commands/export.c b/commands/export.c
index 2e8bb49..4b4cf1e 100644
--- a/commands/export.c
+++ b/commands/export.c
@@ -59,4 +59,3 @@ BAREBOX_CMD_START(export)
 	BAREBOX_CMD_GROUP(CMD_GRP_ENV)
 	BAREBOX_CMD_HELP(cmd_export_help)
 BAREBOX_CMD_END
-
diff --git a/commands/false.c b/commands/false.c
index 6ef9af3..90aa2cc 100644
--- a/commands/false.c
+++ b/commands/false.c
@@ -32,4 +32,3 @@ BAREBOX_CMD_START(false)
 	BAREBOX_CMD_GROUP(CMD_GRP_SCRIPT)
 	BAREBOX_CMD_COMPLETE(empty_complete)
 BAREBOX_CMD_END
-
diff --git a/commands/help.c b/commands/help.c
index 6e61bde..3d36d9b 100644
--- a/commands/help.c
+++ b/commands/help.c
@@ -148,4 +148,3 @@ BAREBOX_CMD_START(help)
 	BAREBOX_CMD_HELP(cmd_help_help)
 	BAREBOX_CMD_COMPLETE(command_complete)
 BAREBOX_CMD_END
-
diff --git a/commands/net.c b/commands/net.c
index 7508c99..219c7ef 100644
--- a/commands/net.c
+++ b/commands/net.c
@@ -64,4 +64,3 @@ BAREBOX_CMD_START(ethact)
 	BAREBOX_CMD_GROUP(CMD_GRP_NET)
 	BAREBOX_CMD_COMPLETE(eth_complete)
 BAREBOX_CMD_END
-
diff --git a/commands/readline.c b/commands/readline.c
index e537498..b6e0e3e 100644
--- a/commands/readline.c
+++ b/commands/readline.c
@@ -53,4 +53,3 @@ BAREBOX_CMD_START(readline)
 	BAREBOX_CMD_GROUP(CMD_GRP_CONSOLE)
 	BAREBOX_CMD_HELP(cmd_readline_help)
 BAREBOX_CMD_END
-
diff --git a/commands/timeout.c b/commands/timeout.c
index 2b99d4f..ef1a037 100644
--- a/commands/timeout.c
+++ b/commands/timeout.c
@@ -84,4 +84,3 @@ BAREBOX_CMD_START(timeout)
 	BAREBOX_CMD_GROUP(CMD_GRP_CONSOLE)
 	BAREBOX_CMD_HELP(cmd_timeout_help)
 BAREBOX_CMD_END
-
diff --git a/commands/trigger.c b/commands/trigger.c
index b605448..2758ce7 100644
--- a/commands/trigger.c
+++ b/commands/trigger.c
@@ -105,4 +105,3 @@ BAREBOX_CMD_START(trigger)
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_trigger_help)
 BAREBOX_CMD_END
-
diff --git a/commands/true.c b/commands/true.c
index fbb34e7..24dea46 100644
--- a/commands/true.c
+++ b/commands/true.c
@@ -32,4 +32,3 @@ BAREBOX_CMD_START(true)
 	BAREBOX_CMD_GROUP(CMD_GRP_SCRIPT)
 	BAREBOX_CMD_COMPLETE(empty_complete)
 BAREBOX_CMD_END
-
diff --git a/commands/ubi.c b/commands/ubi.c
index 94da799..9463127 100644
--- a/commands/ubi.c
+++ b/commands/ubi.c
@@ -179,4 +179,3 @@ BAREBOX_CMD_START(ubirmvol)
 	BAREBOX_CMD_GROUP(CMD_GRP_PART)
 	BAREBOX_CMD_HELP(cmd_ubirmvol_help)
 BAREBOX_CMD_END
-
diff --git a/commands/version.c b/commands/version.c
index 898c719..090f2dd 100644
--- a/commands/version.c
+++ b/commands/version.c
@@ -33,4 +33,3 @@ BAREBOX_CMD_START(version)
 	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
 	BAREBOX_CMD_COMPLETE(empty_complete)
 BAREBOX_CMD_END
-
diff --git a/common/complete.c b/common/complete.c
index 5b71f03..f0ef576 100644
--- a/common/complete.c
+++ b/common/complete.c
@@ -466,4 +466,3 @@ int complete(char *instr, char **outstr)
 
 	return reprint;
 }
-
diff --git a/common/kallsyms.c b/common/kallsyms.c
index 53e22cd..e15dec5 100644
--- a/common/kallsyms.c
+++ b/common/kallsyms.c
@@ -212,4 +212,3 @@ int sprint_symbol(char *buffer, unsigned long address)
 	return len;
 }
 EXPORT_SYMBOL_GPL(sprint_symbol);
-
diff --git a/common/parser.c b/common/parser.c
index 4a48210..207599f 100644
--- a/common/parser.c
+++ b/common/parser.c
@@ -284,4 +284,3 @@ int run_shell(void)
 	}
 	return 0;
 }
-
diff --git a/fs/cramfs/cramfs.c b/fs/cramfs/cramfs.c
index fb92714..97f028a 100644
--- a/fs/cramfs/cramfs.c
+++ b/fs/cramfs/cramfs.c
@@ -481,4 +481,3 @@ static int cramfs_init(void)
 }
 
 device_initcall(cramfs_init);
-
diff --git a/fs/fat/fat.c b/fs/fat/fat.c
index 6d7d262..ece937d 100644
--- a/fs/fat/fat.c
+++ b/fs/fat/fat.c
@@ -434,4 +434,3 @@ static int fat_init(void)
 }
 
 coredevice_initcall(fat_init);
-
diff --git a/fs/ramfs.c b/fs/ramfs.c
index fe5eb89..716f40f 100644
--- a/fs/ramfs.c
+++ b/fs/ramfs.c
@@ -644,4 +644,3 @@ static int ramfs_init(void)
 }
 
 coredevice_initcall(ramfs_init);
-
diff --git a/lib/fnmatch.c b/lib/fnmatch.c
index 1a5e8d0..0ab530d 100644
--- a/lib/fnmatch.c
+++ b/lib/fnmatch.c
@@ -218,4 +218,3 @@ int fnmatch(const char *pattern, const char *string, int flags)
 
 # undef FOLD
 }
-
diff --git a/lib/lzo/lzo1x_decompress_safe.c b/lib/lzo/lzo1x_decompress_safe.c
index 3c0f512..6e8c822 100644
--- a/lib/lzo/lzo1x_decompress_safe.c
+++ b/lib/lzo/lzo1x_decompress_safe.c
@@ -258,4 +258,3 @@ lookbehind_overrun:
 }
 
 EXPORT_SYMBOL(lzo1x_decompress_safe);
-
diff --git a/lib/random.c b/lib/random.c
index 14c7da1..210fea9 100644
--- a/lib/random.c
+++ b/lib/random.c
@@ -25,4 +25,3 @@ void get_random_bytes(void *_buf, int len)
 	while (len--)
 		*buf++ = rand() % 256;
 }
-
diff --git a/lib/strtox.c b/lib/strtox.c
index 882865b..cfe6124 100644
--- a/lib/strtox.c
+++ b/lib/strtox.c
@@ -65,4 +65,3 @@ unsigned long long simple_strtoull (const char *cp, char **endp, unsigned int ba
 	return result;
 }
 EXPORT_SYMBOL(simple_strtoull);
-
diff --git a/net/net.c b/net/net.c
index 7eeedea..7bc15cf 100644
--- a/net/net.c
+++ b/net/net.c
@@ -638,4 +638,3 @@ static int net_init(void)
 }
 
 postcore_initcall(net_init);
-
diff --git a/net/nfs.c b/net/nfs.c
index 2753330..0a30219 100644
--- a/net/nfs.c
+++ b/net/nfs.c
@@ -731,4 +731,3 @@ BAREBOX_CMD_START(nfs)
 	BAREBOX_CMD_OPTS("FILE [LOCALFILE]")
 	BAREBOX_CMD_GROUP(CMD_GRP_NET)
 BAREBOX_CMD_END
-
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
