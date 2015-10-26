Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZqhXz-000268-Oy
 for barebox@lists.infradead.org; Mon, 26 Oct 2015 13:10:53 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 26 Oct 2015 14:10:24 +0100
Message-Id: <1445865024-2846-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] of_dump: Add option to print node names only
To: Barebox List <barebox@lists.infradead.org>

Devicetrees tend to become very long and it is hard to find the
interesting nodes in a full tree output.
This patch adds the -n option to the of_node command. With this
option only the names of the nodes are printed, but not the properties.
The resulting output is much shorter and the node one is interested
in can be copy/pasted to a second call to of_node.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/of_dump.c | 21 +++++++++++++++++++--
 1 file changed, 19 insertions(+), 2 deletions(-)

diff --git a/commands/of_dump.c b/commands/of_dump.c
index 513a4b8..b15f54a 100644
--- a/commands/of_dump.c
+++ b/commands/of_dump.c
@@ -31,6 +31,16 @@
 #include <getopt.h>
 #include <linux/err.h>
 
+static void of_print_nodenames(struct device_node *node)
+{
+	struct device_node *n;
+
+	printf("%s\n", node->full_name);
+
+	list_for_each_entry(n, &node->children, parent_list)
+		of_print_nodenames(n);
+}
+
 static int do_of_dump(int argc, char *argv[])
 {
 	int opt;
@@ -40,8 +50,9 @@ static int do_of_dump(int argc, char *argv[])
 	char *dtbfile = NULL;
 	size_t size;
 	const char *nodename;
+	int names_only = 0;
 
-	while ((opt = getopt(argc, argv, "Ff:")) > 0) {
+	while ((opt = getopt(argc, argv, "Ff:n")) > 0) {
 		switch (opt) {
 		case 'f':
 			dtbfile = optarg;
@@ -49,6 +60,9 @@ static int do_of_dump(int argc, char *argv[])
 		case 'F':
 			fix = 1;
 			break;
+		case 'n':
+			names_only = 1;
+			break;
 		default:
 			return COMMAND_ERROR_USAGE;
 		}
@@ -111,7 +125,10 @@ static int do_of_dump(int argc, char *argv[])
 		goto out;
 	}
 
-	of_print_nodes(node, 0);
+	if (names_only)
+		of_print_nodenames(node);
+	else
+		of_print_nodes(node, 0);
 
 out:
 	if (of_free)
-- 
2.6.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
