Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XmMfX-00038W-FC
 for barebox@lists.infradead.org; Thu, 06 Nov 2014 13:00:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  6 Nov 2014 13:59:35 +0100
Message-Id: <1415278778-20826-9-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/11] cp: Add recursive copy
To: barebox@lists.infradead.org

This adds the -r option to the cp command.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/cp.c | 36 +++++++++++++++++++++++-------------
 1 file changed, 23 insertions(+), 13 deletions(-)

diff --git a/commands/cp.c b/commands/cp.c
index af7a3d4..4f1c068 100644
--- a/commands/cp.c
+++ b/commands/cp.c
@@ -39,14 +39,17 @@ static int do_cp(int argc, char *argv[])
 	int last_is_dir = 0;
 	int i;
 	int opt;
-	int verbose = 0;
+	int verbose = 0, recursive = 0;
 	int argc_min;
 
-	while ((opt = getopt(argc, argv, "v")) > 0) {
+	while ((opt = getopt(argc, argv, "vr")) > 0) {
 		switch (opt) {
 		case 'v':
 			verbose = 1;
 			break;
+		case 'r':
+			recursive = 1;
+			break;
 		}
 	}
 
@@ -60,24 +63,31 @@ static int do_cp(int argc, char *argv[])
 			last_is_dir = 1;
 	}
 
-	if (argc > argc_min && !last_is_dir) {
+	if (((recursive && argc - optind > 2) || (argc > argc_min)) && !last_is_dir) {
 		printf("cp: target `%s' is not a directory\n", argv[argc - 1]);
 		return 1;
 	}
 
+	if (recursive && argc - optind == 2 && !last_is_dir) {
+		ret = make_directory(argv[argc - 1]);
+		if (ret)
+			goto out;
+	}
+
 	for (i = optind; i < argc - 1; i++) {
-		if (last_is_dir) {
-			char *dst;
-			dst = concat_path_file(argv[argc - 1], basename(argv[i]));
+		char *dst;
+		dst = concat_path_file(argv[argc - 1], basename(argv[i]));
+
+		if (recursive)
+			ret = copy_recursive(argv[i], dst);
+		else if (last_is_dir)
 			ret = copy_file(argv[i], dst, verbose);
-			free(dst);
-			if (ret)
-				goto out;
-		} else {
+		else
 			ret = copy_file(argv[i], argv[argc - 1], verbose);
-			if (ret)
-				goto out;
-		}
+
+		free(dst);
+		if (ret)
+			goto out;
 	}
 
 	ret = 0;
-- 
2.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
