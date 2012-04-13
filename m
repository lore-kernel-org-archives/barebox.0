Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo3.mail-out.ovh.net ([46.105.57.200]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SIbk8-0006rP-TJ
 for barebox@lists.infradead.org; Fri, 13 Apr 2012 08:20:34 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 0E899FF90FA
 for <barebox@lists.infradead.org>; Fri, 13 Apr 2012 10:21:38 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 13 Apr 2012 10:02:46 +0200
Message-Id: <1334304170-26176-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120413075705.GE11079@game.jcrosoft.org>
References: <20120413075705.GE11079@game.jcrosoft.org>
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
Subject: [PATCH 2/5] Introduce binfmt support
To: barebox@lists.infradead.org

This will allow to execute any file and detect it's type to handle it.
This will allow to use shell for bootp bootfile or dfu.

You can register multiple hook for the same filetype. They will be execute
in the invert order of register. If a hook does not handle the file you just
return -ERESTARTNOHAND;

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/Makefile  |    2 +-
 common/binfmt.c  |   90 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
 common/hush.c    |   31 +++++++++++-------
 include/binfmt.h |   26 +++++++++++++++
 4 files changed, 136 insertions(+), 13 deletions(-)
 create mode 100644 common/binfmt.c
 create mode 100644 include/binfmt.h

diff --git a/common/Makefile b/common/Makefile
index 76fe407..d7dbf88 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -1,4 +1,4 @@
-obj-$(CONFIG_SHELL_HUSH)	+= hush.o
+obj-$(CONFIG_SHELL_HUSH)	+= hush.o binfmt.o
 obj-$(CONFIG_SHELL_SIMPLE)	+= parser.o
 obj-$(CONFIG_GREGORIAN_CALENDER) += date.o
 obj-$(CONFIG_KALLSYMS)		+= kallsyms.o
diff --git a/common/binfmt.c b/common/binfmt.c
new file mode 100644
index 0000000..3d1098a
--- /dev/null
+++ b/common/binfmt.c
@@ -0,0 +1,90 @@
+/*
+ * Copyright (C) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * GPL v2
+ */
+
+#include <common.h>
+#include <binfmt.h>
+#include <libbb.h>
+#include <malloc.h>
+#include <command.h>
+#include <errno.h>
+
+static LIST_HEAD(binfmt_hooks);
+
+static int binfmt_run(char* file, int argc, char** argv)
+{
+	struct binfmt_hook* b;
+	enum filetype type = file_name_detect_type(file);
+	int ret;
+
+	list_for_each_entry(b, &binfmt_hooks, list) {
+		if(b->type != type)
+			continue;
+
+		ret = b->hook(b, file, argc, argv);
+		if (ret != -ERESTARTNOHAND)
+			return ret;
+	}
+	return -ENOENT;
+}
+
+static int binfmt_exec_excute(struct binfmt_hook *b, char* file, int argc, char **argv)
+{
+	char ** newargv = xzalloc(sizeof(char*) * (argc + 1));
+	int ret, i;
+
+	newargv[0] = b->exec;
+
+	for (i = 1 ; i < argc; i++)
+		newargv[i] = argv[i];
+	newargv[i] = file;
+
+	ret = execute_binfmt(argc + 1, newargv);
+
+	free(newargv);
+
+	return ret;
+}
+
+int execute_binfmt(int argc, char **argv)
+{
+	int ret;
+	char *path;
+
+	if (strchr(argv[0], '/')) {
+		return binfmt_run(argv[0], argc, argv);
+	}
+	if ((path = find_execable(argv[0]))) {
+		ret = binfmt_run(path, argc, argv);
+		free(path);
+		return ret;
+	}
+
+	return execute_command(argc, &argv[0]);
+}
+
+int binfmt_register(struct binfmt_hook* b)
+{
+	if (!b || !b->type)
+		return -EIO;
+
+	if (!b->hook && !b->exec)
+		return -EIO;
+
+	if (b->exec)
+		b->hook = binfmt_exec_excute;
+
+	list_add_tail(&b->list, &binfmt_hooks);
+
+	return 0;
+}
+
+void binfmt_unregister(struct binfmt_hook* b)
+{
+	if (!b)
+		return;
+
+	list_del(&b->list);
+}
diff --git a/common/hush.c b/common/hush.c
index 053d9a5..4d572c6 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -124,6 +124,8 @@
 #include <libbb.h>
 #include <magicvar.h>
 #include <linux/list.h>
+#include <binfmt.h>
+#include <init.h>
 
 /*cmd_boot.c*/
 extern int do_bootd(int flag, int argc, char *argv[]);      /* do_bootd */
@@ -572,8 +574,6 @@ static int run_pipe_real(struct p_context *ctx, struct pipe *pi)
 	int nextin;
 	struct child_prog *child;
 	char *p;
-	char *path;
-	int ret;
 # if __GNUC__
 	/* Avoid longjmp clobbering */
 	(void) &i;
@@ -642,16 +642,7 @@ static int run_pipe_real(struct p_context *ctx, struct pipe *pi)
 		if (!strcmp(child->argv[i], "getopt"))
 			return builtin_getopt(ctx, child);
 #endif
-		if (strchr(child->argv[i], '/')) {
-			return execute_script(child->argv[i], child->argc-i, &child->argv[i]);
-		}
-		if ((path = find_execable(child->argv[i]))) {
-			ret = execute_script(path, child->argc-i, &child->argv[i]);
-			free(path);
-			return ret;
-		}
-
-		return execute_command(child->argc - i, &child->argv[i]);
+		return execute_binfmt(child->argc - i, &child->argv[i]);
 	}
 	return -1;
 }
@@ -1749,6 +1740,22 @@ BAREBOX_MAGICVAR(PATH, "colon seperated list of pathes to search for executables
 BAREBOX_MAGICVAR(PS1, "hush prompt");
 #endif
 
+static int binfmt_sh_excute(struct binfmt_hook *b, char* file, int argc, char **argv)
+{
+	return execute_script(file, argc, argv);
+}
+
+static struct binfmt_hook binfmt_sh_hook = {
+	.type = filetype_sh,
+	.hook = binfmt_sh_excute,
+};
+
+static int binfmt_sh_init(void)
+{
+	return binfmt_register(&binfmt_sh_hook);
+}
+fs_initcall(binfmt_sh_init);
+
 /**
  * @file
  * @brief A prototype Bourne shell grammar parser
diff --git a/include/binfmt.h b/include/binfmt.h
new file mode 100644
index 0000000..e0d14ee
--- /dev/null
+++ b/include/binfmt.h
@@ -0,0 +1,26 @@
+/*
+ * Copyright (C) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * GPL v2
+ */
+
+#ifndef __BFMT_H__
+#define __BFMT_H__
+
+#include <filetype.h>
+#include <linux/list.h>
+
+struct binfmt_hook {
+	enum filetype type;
+	int (*hook)(struct binfmt_hook *b, char* file, int argc, char **argv);
+	char *exec;
+
+	struct list_head list;
+};
+
+int binfmt_register(struct binfmt_hook* b);
+void binfmt_unregister(struct binfmt_hook* b);
+
+int execute_binfmt(int argc, char **argv);
+
+#endif /* __BFMT_H__ */
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
