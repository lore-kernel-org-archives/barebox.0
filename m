Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail1.bemta26.messagelabs.com ([85.158.142.2])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fppuT-0006MG-8U
 for barebox@lists.infradead.org; Wed, 15 Aug 2018 07:08:03 +0000
From: <Oleg.Karfich@wago.com>
Date: Wed, 15 Aug 2018 07:07:40 +0000
Message-ID: <1534316853-11235-1-git-send-email-oleg.karfich@wago.com>
Content-Language: en-US
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
Subject: [PATCH] nand command: fix null pointer when adding/deleting a bb
 device
To: barebox@lists.infradead.org
Cc: Oleg.Karfich@wago.com

Commit 40ee300 introduces info option about bad blocks. The open()
function call is therefore moved out from mark good/bad block to use the
filedescriptor in info option too. If someone tries to add/delete a bb device
the optind variable is incremented and the open() call gets a null pointer.
Fix this issue by returning when the bb device is added/deleted.

Signed-off-by: Oleg Karfich <oleg.karfich@wago.com>
---
 commands/nand.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/commands/nand.c b/commands/nand.c
index b065a66..c57b394 100644
--- a/commands/nand.c
+++ b/commands/nand.c
@@ -41,7 +41,7 @@ static int do_nand(int argc, char *argv[])
 	int command = 0;
 	loff_t badblock = 0;
 	int fd;
-	int ret;
+	int ret = 0;
 	struct mtd_info_user mtdinfo;
 
 	while((opt = getopt(argc, argv, "adb:g:i")) > 0) {
@@ -88,13 +88,18 @@ static int do_nand(int argc, char *argv[])
 
 			optind++;
 		}
+
+		goto out_ret;
 	}
 
 	if (command == NAND_DEL) {
 		while (optind < argc) {
-			dev_remove_bb_dev(basename(argv[optind]));
+			if (dev_remove_bb_dev(basename(argv[optind])))
+				return 1;
 			optind++;
 		}
+
+		goto out_ret;
 	}
 
 	fd = open(argv[optind], O_RDWR);
@@ -149,10 +154,10 @@ static int do_nand(int argc, char *argv[])
 			printf("No bad blocks\n");
 	}
 
-	ret = 0;
 out:
 	close(fd);
 
+out_ret:
 	return ret;
 }
 
-- 
2.7.4

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
