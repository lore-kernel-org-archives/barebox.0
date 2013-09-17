Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo1.mail-out.ovh.net ([46.105.76.26]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VLnZM-0003Xp-PD
 for barebox@lists.infradead.org; Tue, 17 Sep 2013 05:11:26 +0000
Received: from mail610.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 072CA1004F0D
 for <barebox@lists.infradead.org>; Tue, 17 Sep 2013 07:11:03 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 17 Sep 2013 07:12:08 +0200
Message-Id: <1379394728-30536-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] command: ubiattach: add option to pass VID offset
To: barebox@lists.infradead.org

use the same option as linux -O

as example due to a bug in already deployed kernel we must for the VID offset
at 512 even it should be at 256

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/ubi.c | 20 ++++++++++++++++----
 1 file changed, 16 insertions(+), 4 deletions(-)

diff --git a/commands/ubi.c b/commands/ubi.c
index 2041df3..57ae790 100644
--- a/commands/ubi.c
+++ b/commands/ubi.c
@@ -58,13 +58,25 @@ BAREBOX_CMD_END
 
 static int do_ubiattach(int argc, char *argv[])
 {
+	int opt;
 	struct mtd_info_user user;
 	int fd, ret;
+	int vid_hdr_offset = 0;
+
+	while((opt = getopt(argc, argv, "O:")) > 0) {
+		switch(opt) {
+		case 'O':
+			vid_hdr_offset = simple_strtoul(optarg, NULL, 0);
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
 
-	if (argc != 2)
+	if (optind == argc)
 		return COMMAND_ERROR_USAGE;
 
-	fd = open(argv[1], O_RDWR);
+	fd = open(argv[optind], O_RDWR);
 	if (fd < 0) {
 		perror("open");
 		return 1;
@@ -76,7 +88,7 @@ static int do_ubiattach(int argc, char *argv[])
 		goto err;
 	}
 
-	ret = ubi_attach_mtd_dev(user.mtd, UBI_DEV_NUM_AUTO, 0, 20);
+	ret = ubi_attach_mtd_dev(user.mtd, UBI_DEV_NUM_AUTO, vid_hdr_offset, 20);
 	if (ret < 0)
 		printf("failed to attach: %s\n", strerror(-ret));
 	else
@@ -88,7 +100,7 @@ err:
 }
 
 static const __maybe_unused char cmd_ubiattach_help[] =
-"Usage: ubiattach <mtddev>\n"
+"Usage: ubiattach [-O vid-hdr-offset] <mtddev>\n"
 "Attach <mtddev> to ubi\n";
 
 BAREBOX_CMD_START(ubiattach)
-- 
1.8.4.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
