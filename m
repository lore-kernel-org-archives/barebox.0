Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x232.google.com ([2a00:1450:4010:c04::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zjt2b-0002rn-JJ
 for barebox@lists.infradead.org; Wed, 07 Oct 2015 18:02:14 +0000
Received: by lbbwt4 with SMTP id wt4so20653074lbb.1
 for <barebox@lists.infradead.org>; Wed, 07 Oct 2015 11:01:51 -0700 (PDT)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Wed,  7 Oct 2015 21:03:56 +0300
Message-Id: <1444241036-23622-1-git-send-email-pmamonov@gmail.com>
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
Subject: [RFC] common: filetype: is_fat_or_mbr() considered harmful
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

Deleted pieces of code detect MBR-containig device as a FAT-type device,
if it's first partition contains a FAT filesystem. So, one can mount the first
partition of a hard drive containing FAT FS using the following command:
	barebox: mount /dev/ata0.0 /mnt/0
as well as this one:
	barebox: mount /dev/ata0 /mnt/1
Both commands mount the same FS.

This behaviour causes automount (mount -a) to mount FAT FS
on a first partition twice:
	barebox: mount
	none on / type ramfs
	none on /dev type devfs
	/dev/ata0 on /mnt/ata0 type fat
	/dev/ata0.0 on /mnt/ata0.0 type fat
	/dev/ata0.1 on /mnt/ata0.1 type ext4
---
 common/filetype.c | 30 ------------------------------
 1 file changed, 30 deletions(-)

diff --git a/common/filetype.c b/common/filetype.c
index cc3099b..49a0c8d 100644
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
@@ -384,21 +369,6 @@ enum filetype cdev_detect_type(const char *name)
 
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
 	return type;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
