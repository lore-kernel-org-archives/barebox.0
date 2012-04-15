Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SJQo9-00005l-78
 for barebox@lists.infradead.org; Sun, 15 Apr 2012 14:52:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 15 Apr 2012 16:51:56 +0200
Message-Id: <1334501517-29478-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1334501517-29478-1-git-send-email-s.hauer@pengutronix.de>
References: <1334501517-29478-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] automount: optionally make directory
To: barebox@lists.infradead.org

Add an option to create the mount path to make using this command easier.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/automount.c |   13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/commands/automount.c b/commands/automount.c
index 8c0e4de..aa1e417 100644
--- a/commands/automount.c
+++ b/commands/automount.c
@@ -27,9 +27,9 @@
 
 static int do_automount(int argc, char *argv[])
 {
-	int opt, ret;
+	int opt, ret, make_dir = 0;
 
-	while ((opt = getopt(argc, argv, "lr:")) > 0) {
+	while ((opt = getopt(argc, argv, "lr:d")) > 0) {
 		switch (opt) {
 		case 'l':
 			automount_print();
@@ -37,12 +37,21 @@ static int do_automount(int argc, char *argv[])
 		case 'r':
 			automount_remove(optarg);
 			return 0;
+		case 'd':
+			make_dir = 1;
+			break;
 		}
 	}
 
 	if (optind + 2 != argc)
 		return COMMAND_ERROR_USAGE;
 
+	if (make_dir) {
+		ret = make_directory(argv[optind]);
+		if (ret)
+			return ret;
+	}
+
 	ret = automount_add(argv[optind], argv[optind + 1]);
 	if (ret)
 		printf("adding automountpoint failed: %s\n",
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
