Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XhPa5-0005Dj-7g
 for barebox@lists.infradead.org; Thu, 23 Oct 2014 21:06:02 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 23 Oct 2014 23:05:34 +0200
Message-Id: <1414098334-16957-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] saveenv: Fix saving to specified file
To: barebox@lists.infradead.org

Since e805b7d saveenv: provide a zeroed/empty/ignore environment
barebox no longer honors the file argument when the directory
argument is also givin. Fix this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/saveenv.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/commands/saveenv.c b/commands/saveenv.c
index 9da733e..43f16dc 100644
--- a/commands/saveenv.c
+++ b/commands/saveenv.c
@@ -39,16 +39,16 @@ static int do_saveenv(int argc, char *argv[])
 	}
 
 	/* destination and source are given? */
-	if (argc == optind + 2)
-		dirname = argv[optind + 1];
-	else
+	if (argc - optind < 2)
 		dirname = "/env";
+	else
+		dirname = argv[optind + 1];
 
 	/* destination only given? */
-	if (argc == optind + 1)
-		filename = argv[optind];
-	else
+	if (argc - optind < 1)
 		filename = default_environment_path_get();
+	else
+		filename = argv[optind];
 
 	ret = envfs_save(filename, dirname, envfs_flags);
 
-- 
2.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
