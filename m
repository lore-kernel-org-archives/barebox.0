Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCS5Z-0006WX-R7
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 09:53:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Mar 2013 10:53:11 +0100
Message-Id: <1362390820-10333-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1362390820-10333-1-git-send-email-s.hauer@pengutronix.de>
References: <1362390820-10333-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/37] of_node command: use of_create_node
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/of_node.c |   27 ++++++++++-----------------
 1 file changed, 10 insertions(+), 17 deletions(-)

diff --git a/commands/of_node.c b/commands/of_node.c
index a370e26..bf9799c 100644
--- a/commands/of_node.c
+++ b/commands/of_node.c
@@ -39,6 +39,7 @@ static int do_of_node(int argc, char *argv[])
 	int create = 0;
 	char *path = NULL;
 	struct device_node *node = NULL;
+	struct device_node *root;
 
 	while ((opt = getopt(argc, argv, "cd")) > 0) {
 		switch (opt) {
@@ -57,27 +58,19 @@ static int do_of_node(int argc, char *argv[])
 		path = argv[optind];
 	}
 
-	if (create) {
-		char *name;
+	root = of_get_root_node();
+	if (!root) {
+		printf("root node not set\n");
+		return -ENOENT;
+	}
 
+	if (create) {
 		if (!path)
 			return COMMAND_ERROR_USAGE;
 
-		name = xstrdup(basename(path));
-		path = dirname(path);
-
-		node = of_find_node_by_path(path);
-		if (!node) {
-			printf("Cannot find nodepath %s\n", path);
-			free(name);
-			return -ENOENT;
-		}
-
-		debug("create node \"%s\" \"%s\"\n", path, name);
-
-		of_new_node(node, name);
-
-		free(name);
+		node = of_create_node(root, path);
+		if (!node)
+			return -EINVAL;
 
 		return 0;
 	}
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
