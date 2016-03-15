Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.85 #2 (Red Hat Linux))
 id 1afn3z-00015z-FP
 for barebox@lists.infradead.org; Tue, 15 Mar 2016 11:22:59 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Mar 2016 12:22:31 +0100
Message-Id: <1458040952-6826-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1458040952-6826-1-git-send-email-s.hauer@pengutronix.de>
References: <1458040952-6826-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 7/8] commands: ubidetach: Allow mtd devices as argument
To: Barebox List <barebox@lists.infradead.org>

Instead of only allow ubi numbers make it possible to
detach a mtd device.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/ubi.c | 30 ++++++++++++++++++++++++++----
 1 file changed, 26 insertions(+), 4 deletions(-)

diff --git a/commands/ubi.c b/commands/ubi.c
index 8e35787..844d75d 100644
--- a/commands/ubi.c
+++ b/commands/ubi.c
@@ -122,14 +122,36 @@ BAREBOX_CMD_END
 
 static int do_ubidetach(int argc, char *argv[])
 {
-	int ubi_num, ret;
+	int fd, ret;
+	struct mtd_info_user user;
 
 	if (argc != 2)
 		return COMMAND_ERROR_USAGE;
 
-	ubi_num = simple_strtoul(argv[1], NULL, 0);
-	ret = ubi_detach(ubi_num);
+	fd = open(argv[optind], O_RDWR);
+	if (fd < 0) {
+		int ubi_num = simple_strtoul(argv[1], NULL, 0);
+		ret = ubi_detach(ubi_num);
+		goto out;
+	}
+
+	ret = ioctl(fd, MEMGETINFO, &user);
+	if (!ret) {
+		int ubi_num = ubi_num_get_by_mtd(user.mtd);
+		if (ubi_num < 0) {
+			ret = ubi_num;
+			goto out;
+		}
+
+		ret = ubi_detach(ubi_num);
+		if (!ret)
+			goto out_close;
+	}
+
+out_close:
+	close(fd);
 
+out:
 	if (ret)
 		printf("failed to detach: %s\n", strerror(-ret));
 
@@ -139,7 +161,7 @@ static int do_ubidetach(int argc, char *argv[])
 BAREBOX_CMD_START(ubidetach)
 	.cmd		= do_ubidetach,
 	BAREBOX_CMD_DESC("detach an UBI device")
-	BAREBOX_CMD_OPTS("UBINUM")
+	BAREBOX_CMD_OPTS("mtd device/UBINUM")
 	BAREBOX_CMD_GROUP(CMD_GRP_PART)
 BAREBOX_CMD_END
 
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
