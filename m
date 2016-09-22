Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bmylW-0006SQ-Nu
 for barebox@lists.infradead.org; Thu, 22 Sep 2016 07:49:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 22 Sep 2016 09:49:25 +0200
Message-Id: <1474530566-23625-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1474530566-23625-1-git-send-email-s.hauer@pengutronix.de>
References: <1474530566-23625-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] mtd: ubi: commands: use function API to access ubi volumes
To: Barebox List <barebox@lists.infradead.org>

We have a function API to manipulate ubi volumes, use it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/ubi.c | 40 +++++++++++++++++++++++++++++++---------
 1 file changed, 31 insertions(+), 9 deletions(-)

diff --git a/commands/ubi.c b/commands/ubi.c
index 26b521f..7c55195 100644
--- a/commands/ubi.c
+++ b/commands/ubi.c
@@ -9,6 +9,7 @@
 #include <linux/kernel.h>
 #include <linux/stat.h>
 #include <linux/mtd/mtd-abi.h>
+#include <linux/mtd/ubi.h>
 #include <mtd/ubi-user.h>
 #include <mtd/ubi-media.h>
 
@@ -104,6 +105,7 @@ static int do_ubimkvol(int argc, char *argv[])
 	struct ubi_mkvol_req req;
 	int fd, ret;
 	uint64_t size;
+	uint32_t ubinum;
 
 	req.vol_type = UBI_DYNAMIC_VOLUME;
 
@@ -140,9 +142,14 @@ static int do_ubimkvol(int argc, char *argv[])
 		return 1;
 	}
 
-	ret = ioctl(fd, UBI_IOCMKVOL, &req);
-	if (ret)
-		printf("failed to create: %s\n", strerror(-ret));
+	ret = ioctl(fd, UBI_IOCGETUBINUM, &ubinum);
+	if (ret) {
+		printf("failed to get ubinum: %s\n", strerror(-ret));
+		goto err;
+	}
+
+	ret = ubi_api_create_volume(ubinum, &req);
+err:
 	close(fd);
 
 	return ret ? 1 : 0;
@@ -272,24 +279,39 @@ BAREBOX_CMD_END
 
 static int do_ubirmvol(int argc, char *argv[])
 {
-	struct ubi_mkvol_req req;
+	struct ubi_volume_desc *desc;
+	uint32_t ubinum;
 	int fd, ret;
 
 	if (argc != 3)
 		return COMMAND_ERROR_USAGE;
 
-	strncpy(req.name, argv[2], UBI_VOL_NAME_MAX);
-	req.name[UBI_VOL_NAME_MAX] = 0;
-
 	fd = open(argv[1], O_WRONLY);
 	if (fd < 0) {
 		perror("open");
 		return 1;
 	}
 
-	ret = ioctl(fd, UBI_IOCRMVOL, &req);
+	ret = ioctl(fd, UBI_IOCGETUBINUM, &ubinum);
+	if (ret) {
+		printf("failed to get ubinum: %s\n", strerror(-ret));
+		goto err;
+	}
+
+	desc = ubi_open_volume_nm(ubinum, argv[2], UBI_EXCLUSIVE);
+	if (IS_ERR(desc)) {
+		ret = PTR_ERR(desc);
+		printf("failed to open volume %s: %s\n", argv[2], strerror(-ret));
+		goto err1;
+	}
+
+	ret = ubi_api_remove_volume(desc, 0);
 	if (ret)
-		printf("failed to delete: %s\n", strerror(-ret));
+		printf("failed to remove volume %s: %s\n", argv[2], strerror(-ret));
+
+err1:
+	ubi_close_volume(desc);
+err:
 	close(fd);
 
 	return ret ? 1 : 0;
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
