Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XMxT4-000889-6U
 for barebox@lists.infradead.org; Thu, 28 Aug 2014 11:02:15 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <mgr@pengutronix.de>) id 1XMxSf-0004qX-6w
 for barebox@lists.infradead.org; Thu, 28 Aug 2014 13:01:49 +0200
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.84_RC2)
 (envelope-from <mgr@pengutronix.de>) id 1XMxSZ-0000J4-H7
 for barebox@lists.infradead.org; Thu, 28 Aug 2014 13:01:43 +0200
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Thu, 28 Aug 2014 13:01:41 +0200
Message-Id: <1409223701-1124-1-git-send-email-m.grzeschik@pengutronix.de>
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
Subject: [PATCH] ubi: add setting devnum to ubiattach
To: barebox@lists.infradead.org

Sometimes we need to have a defined devicenumber for the ubi partitions.
This patch adds the option to ubiattach.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 commands/ubi.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/commands/ubi.c b/commands/ubi.c
index d593e71..94da799 100644
--- a/commands/ubi.c
+++ b/commands/ubi.c
@@ -65,9 +65,13 @@ static int do_ubiattach(int argc, char *argv[])
 	struct mtd_info_user user;
 	int fd, ret;
 	int vid_hdr_offset = 0;
+	int devnum = UBI_DEV_NUM_AUTO;
 
-	while((opt = getopt(argc, argv, "O:")) > 0) {
+	while((opt = getopt(argc, argv, "d:O:")) > 0) {
 		switch(opt) {
+		case 'd':
+			devnum = simple_strtoul(optarg, NULL, 0);
+			break;
 		case 'O':
 			vid_hdr_offset = simple_strtoul(optarg, NULL, 0);
 			break;
@@ -91,7 +95,7 @@ static int do_ubiattach(int argc, char *argv[])
 		goto err;
 	}
 
-	ret = ubi_attach_mtd_dev(user.mtd, UBI_DEV_NUM_AUTO, vid_hdr_offset, 20);
+	ret = ubi_attach_mtd_dev(user.mtd, devnum, vid_hdr_offset, 20);
 	if (ret < 0)
 		printf("failed to attach: %s\n", strerror(-ret));
 	else
@@ -104,13 +108,14 @@ err:
 
 BAREBOX_CMD_HELP_START(ubiattach)
 BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-d DEVNUM",  "device number")
 BAREBOX_CMD_HELP_OPT ("-O OFFS",  "VID header offset")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(ubiattach)
 	.cmd		= do_ubiattach,
 	BAREBOX_CMD_DESC("attach mtd device to UBI")
-	BAREBOX_CMD_OPTS("[-O] MTDDEV")
+	BAREBOX_CMD_OPTS("[-dO] MTDDEV")
 	BAREBOX_CMD_GROUP(CMD_GRP_PART)
 	BAREBOX_CMD_HELP(cmd_ubiattach_help)
 BAREBOX_CMD_END
-- 
2.1.0.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
