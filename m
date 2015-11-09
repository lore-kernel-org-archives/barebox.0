Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22e.google.com ([2a00:1450:4010:c04::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zvjiu-0003Mj-MW
 for barebox@lists.infradead.org; Mon, 09 Nov 2015 10:30:53 +0000
Received: by lbces9 with SMTP id es9so25573547lbc.2
 for <barebox@lists.infradead.org>; Mon, 09 Nov 2015 02:30:30 -0800 (PST)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Mon,  9 Nov 2015 13:32:51 +0300
Message-Id: <1447065171-31571-1-git-send-email-pmamonov@gmail.com>
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
Subject: [PATCH] common: filetype: do not redetect MBR-type devices as a
 FAT-type
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

Deleted pieces of code detect MBR-containig device as a FAT-type device,
if it's first partition contains a FAT filesystem. This behaviour enabled one
to mount the FAT FS which is either directly on the device (disk0) or on
the first partition (disk0.0) using the same command:
    mount /dev/disk0 /fat
However, the desired behaviour can be reached with a:
    mount /dev/disk0 /fat || mount /dev/disk0.0 /fat || echo "Mounting failed"

Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
Acked-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/filetype.c | 30 ------------------------------
 1 file changed, 30 deletions(-)

diff --git a/common/filetype.c b/common/filetype.c
index c59441d..f9e03f7 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -345,21 +345,6 @@ enum filetype file_name_detect_type(const char *filename)
 
 	type = file_detect_type(buf, ret);
 
-	if (type == filetype_mbr) {
-		/*
-		 * Get the first partition start sector
-		 * and check for FAT in it
-		 */
-		is_fat_or_mbr(buf, &bootsec);
-		ret = lseek(fd, (bootsec) * 512, SEEK_SET);
-		if (ret < 0)
-			goto err_out;
-		ret = read(fd, buf, 512);
-		if (ret < 0)
-			goto err_out;
-		type = is_fat_or_mbr((u8 *)buf, NULL);
-	}
-
 err_out:
 	close(fd);
 	free(buf);
@@ -385,21 +370,6 @@ enum filetype cdev_detect_type(const char *name)
 
 	type = file_detect_type(buf, ret);
 
-	if (type == filetype_mbr) {
-		unsigned long bootsec;
-		/*
-		 * Get the first partition start sector
-		 * and check for FAT in it
-		 */
-		is_fat_or_mbr(buf, &bootsec);
-
-		ret = cdev_read(cdev, buf, 512, bootsec * 512, 0);
-		if (ret < 0)
-			goto err_out;
-
-		type = is_fat_or_mbr((u8 *)buf, NULL);
-	}
-
 err_out:
 	free(buf);
 	cdev_close(cdev);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
