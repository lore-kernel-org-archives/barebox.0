Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCSP8-0002ZP-2E
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 10:14:03 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Mar 2013 11:13:50 +0100
Message-Id: <1362392034-1908-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1362392034-1908-1-git-send-email-s.hauer@pengutronix.de>
References: <1362392034-1908-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/10] nand command: check for <dev> directly after option
 parsing
To: barebox@lists.infradead.org

Allo subcommands need at least one nonopt arg, so check for
it right after parsing the options and drop the check in the
MARKBAD command.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/nand.c |   31 ++++++++++++++++---------------
 1 file changed, 16 insertions(+), 15 deletions(-)

diff --git a/commands/nand.c b/commands/nand.c
index 79f6735..39fb64e 100644
--- a/commands/nand.c
+++ b/commands/nand.c
@@ -58,6 +58,9 @@ static int do_nand(int argc, char *argv[])
 		}
 	}
 
+	if (optind >= argc)
+		return COMMAND_ERROR_USAGE;
+
 	if (command == NAND_ADD) {
 		while (optind < argc) {
 			if (dev_add_bb_dev(basename(argv[optind]), NULL))
@@ -75,25 +78,23 @@ static int do_nand(int argc, char *argv[])
 	}
 
 	if (command == NAND_MARKBAD) {
-		if (optind < argc) {
-			int ret = 0, fd;
+		int ret = 0, fd;
 
-			printf("marking block at 0x%08llx on %s as bad\n",
-					badblock, argv[optind]);
+		printf("marking block at 0x%08llx on %s as bad\n",
+				badblock, argv[optind]);
 
-			fd = open(argv[optind], O_RDWR);
-			if (fd < 0) {
-				perror("open");
-				return 1;
-			}
+		fd = open(argv[optind], O_RDWR);
+		if (fd < 0) {
+			perror("open");
+			return 1;
+		}
 
-			ret = ioctl(fd, MEMSETBADBLOCK, &badblock);
-			if (ret)
-				perror("ioctl");
+		ret = ioctl(fd, MEMSETBADBLOCK, &badblock);
+		if (ret)
+			perror("ioctl");
 
-			close(fd);
-			return ret;
-		}
+		close(fd);
+		return ret;
 	}
 
 	return 0;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
