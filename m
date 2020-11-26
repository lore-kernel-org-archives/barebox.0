Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kiM3o-0007nq-NM
 for barebox@lists.infradead.org; Thu, 26 Nov 2020 18:32:09 +0000
Received: from geraet.fritz.box (unknown [87.123.103.207])
 (Authenticated sender: ahmad@a3f.at)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id CD8961BF20F
 for <barebox@lists.infradead.org>; Thu, 26 Nov 2020 18:32:01 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Thu, 26 Nov 2020 19:31:54 +0100
Message-Id: <20201126183154.348024-4-ahmad@a3f.at>
In-Reply-To: <20201126183154.348024-1-ahmad@a3f.at>
References: <20201126183154.348024-1-ahmad@a3f.at>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/4] commands: implement and use parse_assignment helper
To: barebox@lists.infradead.org

We have the split by '=' snippet at multiple locations that parse
key=value pairs. Consolidate them to a single location. This makes code
a bit easier to read at the cost of an extra 8 bytes (LZO-compressed
THUMB2 barebox, static inline version is bigger).

No functional change.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 commands/export.c    |  4 +---
 commands/global.c    |  6 +-----
 commands/nv.c        |  9 ++-------
 commands/setenv.c    | 10 ++++------
 common/bootchooser.c |  4 +---
 common/fastboot.c    |  4 +---
 common/hush.c        |  3 +--
 include/command.h    |  1 +
 include/string.h     |  1 +
 lib/string.c         | 11 +++++++++++
 10 files changed, 24 insertions(+), 29 deletions(-)

diff --git a/commands/export.c b/commands/export.c
index 8972b7d528d7..c69f1595c65d 100644
--- a/commands/export.c
+++ b/commands/export.c
@@ -20,10 +20,8 @@ static int do_export(int argc, char *argv[])
 		return COMMAND_ERROR_USAGE;
 
 	while (i < argc) {
-		if ((ptr = strchr(argv[i], '='))) {
-			*ptr++ = 0;
+		if ((ptr = parse_assignment(argv[i])))
 			setenv(argv[i], ptr);
-		}
 		if (export(argv[i])) {
 			printf("could not export: %s\n", argv[i]);
 			return 1;
diff --git a/commands/global.c b/commands/global.c
index 15b6a9f3d341..cf8e9a5b4894 100644
--- a/commands/global.c
+++ b/commands/global.c
@@ -37,11 +37,7 @@ static int do_global(int argc, char *argv[])
 		return COMMAND_ERROR_USAGE;
 
 	for (i = 0; i < argc; i++) {
-		value = strchr(argv[i], '=');
-		if (value) {
-			*value = 0;
-			value++;
-		}
+		value = parse_assignment(argv[i]);
 
 		if (do_remove)
 			globalvar_remove(argv[i]);
diff --git a/commands/nv.c b/commands/nv.c
index a1cff08ee463..c60bb4167740 100644
--- a/commands/nv.c
+++ b/commands/nv.c
@@ -55,13 +55,8 @@ static int do_nv(int argc, char *argv[])
 
 	for (i = 0; i < argc; i++) {
 		int ret;
-		value = strchr(argv[i], '=');
-		if (value) {
-			*value = 0;
-			value++;
-		} else {
-			value = "";
-		}
+
+		value = parse_assignment(argv[i]) ?: "";
 
 		if (do_remove) {
 			ret = nvvar_remove(argv[i]);
diff --git a/commands/setenv.c b/commands/setenv.c
index 9aeb8f010bc5..99604c35c37c 100644
--- a/commands/setenv.c
+++ b/commands/setenv.c
@@ -9,17 +9,15 @@
 
 static int do_setenv(int argc, char *argv[])
 {
-	char *equal;
+	char *val;
 	int ret;
 
 	if (argc < 2)
 		return COMMAND_ERROR_USAGE;
 
-	equal = strrchr(argv[1], '=');
-	if (equal) {
-		equal[0] = '\0';
-		argv[2] = &equal[1];
-	}
+	val = parse_assignment(argv[1]);
+	if (val)
+		argv[2] = val;
 
 	if (argv[2])
 		ret = setenv(argv[1], argv[2]);
diff --git a/common/bootchooser.c b/common/bootchooser.c
index 7aa59d8a82bb..e982c22730e1 100644
--- a/common/bootchooser.c
+++ b/common/bootchooser.c
@@ -151,14 +151,12 @@ static int pr_setenv(struct bootchooser *bc, const char *fmt, ...)
 	if (!str)
 		return -ENOMEM;
 
-	val = strchr(str, '=');
+	val = parse_assignment(str);
 	if (!val) {
 		ret = -EINVAL;
 		goto err;
 	}
 
-	*val++ = '\0';
-
 	oldval = getenv(str);
 	if (!oldval || strcmp(oldval, val)) {
 		if (bc->state)
diff --git a/common/fastboot.c b/common/fastboot.c
index 1b6dc28d8ee9..10b4ccf7164d 100644
--- a/common/fastboot.c
+++ b/common/fastboot.c
@@ -823,14 +823,12 @@ static void cb_oem_setenv(struct fastboot *fb, const char *cmd)
 
 	pr_debug("%s: \"%s\"\n", __func__, cmd);
 
-	value = strchr(var, '=');
+	value = parse_assignment(var);
 	if (!value) {
 		ret = -EINVAL;
 		goto out;
 	}
 
-	*value++ = 0;
-
 	ret = setenv(var, value);
 	if (ret)
 		goto out;
diff --git a/common/hush.c b/common/hush.c
index a6fc4485bf52..109bae4d3f4d 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -1117,12 +1117,11 @@ static int set_local_var(const char *s, int flg_export)
 	/* Assume when we enter this function that we are already in
 	 * NAME=VALUE format.  So the first order of business is to
 	 * split 's' on the '=' into 'name' and 'value' */
-	value = strchr(name, '=');
+	value = parse_assignment(name);
 	if (!value) {
 		free(name);
 		return -1;
 	}
-	*value++ = 0;
 
 	remove_quotes_in_str(value);
 
diff --git a/include/command.h b/include/command.h
index 860eae3e3561..ccae568f87b6 100644
--- a/include/command.h
+++ b/include/command.h
@@ -13,6 +13,7 @@
 #include <linux/list.h>
 #include <linux/stringify.h>
 #include <linux/stddef.h>
+#include <string.h>
 
 #ifndef	__ASSEMBLY__
 
diff --git a/include/string.h b/include/string.h
index b51566fd002a..ef0b5e199eea 100644
--- a/include/string.h
+++ b/include/string.h
@@ -14,5 +14,6 @@ void *__nokasan_default_memset(void *, int, __kernel_size_t);
 void *__default_memcpy(void * dest,const void *src,size_t count);
 void *__nokasan_default_memcpy(void * dest,const void *src,size_t count);
 
+char *parse_assignment(char *str);
 
 #endif /* __STRING_H */
diff --git a/lib/string.c b/lib/string.c
index b63041c5fbfa..dbb66fe4d2cc 100644
--- a/lib/string.c
+++ b/lib/string.c
@@ -899,3 +899,14 @@ int match_string(const char * const *array, size_t n, const char *string)
 	return -EINVAL;
 }
 EXPORT_SYMBOL(match_string);
+
+char *parse_assignment(char *str)
+{
+	char *value;
+
+	value = strchr(str, '=');
+	if (value)
+		*value++ = '\0';
+
+	return value;
+}
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
