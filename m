Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XmMfS-00034h-Lu
 for barebox@lists.infradead.org; Thu, 06 Nov 2014 13:00:03 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  6 Nov 2014 13:59:32 +0100
Message-Id: <1415278778-20826-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1415278778-20826-1-git-send-email-s.hauer@pengutronix.de>
References: <1415278778-20826-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/11] magicvar: Add support for dynamically added magicvars
To: barebox@lists.infradead.org

Add support to add a new magicvar using the magicvar command.
This is useful for magicvars assigned and used only in the
environment.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/magicvar.c | 111 ++++++++++++++++++++++++++++++++++++++++++++++------
 1 file changed, 98 insertions(+), 13 deletions(-)

diff --git a/commands/magicvar.c b/commands/magicvar.c
index cf1fe45..6737eb5 100644
--- a/commands/magicvar.c
+++ b/commands/magicvar.c
@@ -3,34 +3,118 @@
 #include <getopt.h>
 #include <environment.h>
 #include <magicvar.h>
+#include <malloc.h>
 
-static int do_magicvar(int argc, char *argv[])
+static LIST_HEAD(magicvars);
+
+struct magicvar_dyn {
+	char *name;
+	char *description;
+	struct list_head list;
+};
+
+static void magicvar_print_one(struct magicvar_dyn *md, int verbose)
+{
+	printf("%-32s %s\n", md->name, md->description);
+
+	if (verbose) {
+		const char *val = getenv(md->name);
+		if (val && strlen(val))
+			printf("  %s\n", val);
+	}
+}
+
+struct magicvar_dyn *magicvar_find(const char *name)
 {
+	struct magicvar_dyn *md;
+
+	list_for_each_entry(md, &magicvars, list)
+		if (!strcmp(md->name, name))
+			return md;
+
+	return NULL;
+}
+
+static void magicvar_remove(struct magicvar_dyn *md)
+{
+	free(md->name);
+	free(md->description);
+	list_del(&md->list);
+	free(md);
+}
+
+static int compare(struct list_head *a, struct list_head *b)
+{
+	char *na = (char*)list_entry(a, struct magicvar_dyn, list)->name;
+	char *nb = (char*)list_entry(b, struct magicvar_dyn, list)->name;
+
+	return strcmp(na, nb);
+}
+
+static int magicvar_add(const char *name, const char *description)
+{
+	struct magicvar_dyn *md;
+
+	md = magicvar_find(name);
+	if (md)
+		magicvar_remove(md);
+
+	md = xzalloc(sizeof(*md));
+	md->name = xstrdup(name);
+	md->description = xstrdup(description);
+
+	list_add_sort(&md->list, &magicvars, compare);
+
+	return 0;
+}
+
+static void magicvar_build(void)
+{
+	static int first = 1;
 	struct magicvar *m;
+
+	if (!first)
+		return;
+
+	for (m = &__barebox_magicvar_start;
+			m != &__barebox_magicvar_end;
+			m++)
+		magicvar_add(m->name, m->description);
+
+	first = 0;
+}
+
+static int do_magicvar(int argc, char *argv[])
+{
+	struct magicvar_dyn *md;
 	int opt;
-	int verbose = 0;
+	int verbose = 0, add = 0;
 
-	while ((opt = getopt(argc, argv, "v")) > 0) {
+	magicvar_build();
+
+	while ((opt = getopt(argc, argv, "va")) > 0) {
 		switch (opt) {
 		case 'v':
 			verbose = 1;
 			break;
+		case 'a':
+			add = 1;
+			break;
 		default:
 			return COMMAND_ERROR_USAGE;
 		}
 	}
 
-	for (m = &__barebox_magicvar_start;
-			m != &__barebox_magicvar_end;
-			m++) {
-		printf("%-32s %s\n", m->name, m->description);
-		if (verbose) {
-			const char *val = getenv(m->name);
-			if (val && strlen(val))
-				printf("  %s\n", val);
-		}
+	if (add) {
+		if (optind + 2 != argc)
+			return COMMAND_ERROR_USAGE;
+
+		return magicvar_add(argv[optind], argv[optind + 1]);
 	}
 
+	list_for_each_entry(md, &magicvars, list)
+		magicvar_print_one(md, verbose);
+
 	return 0;
 }
 
@@ -38,12 +122,13 @@ static int do_magicvar(int argc, char *argv[])
 BAREBOX_CMD_HELP_START(magicvar)
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-v", "verbose (list all value if there is one)")
+BAREBOX_CMD_HELP_OPT ("-a <NAME> <DESC>", "Add a new magicvar")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(magicvar)
 	.cmd		= do_magicvar,
 	BAREBOX_CMD_DESC("list information about magic variables")
-	BAREBOX_CMD_OPTS("[-v]")
+	BAREBOX_CMD_OPTS("[-va]")
 	BAREBOX_CMD_HELP(cmd_magicvar_help)
 	BAREBOX_CMD_GROUP(CMD_GRP_ENV)
 BAREBOX_CMD_END
-- 
2.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
