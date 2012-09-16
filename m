Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-f177.google.com ([74.125.82.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TDLX4-0005wj-Fk
 for barebox@lists.infradead.org; Sun, 16 Sep 2012 20:33:35 +0000
Received: by weyr3 with SMTP id r3so3647734wey.36
 for <barebox@lists.infradead.org>; Sun, 16 Sep 2012 13:33:31 -0700 (PDT)
From: Franck Jullien <franck.jullien@gmail.com>
Date: Sun, 16 Sep 2012 22:33:32 +0200
Message-Id: <1347827613-25769-1-git-send-email-franck.jullien@gmail.com>
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
Subject: [PATCH 1/2] [v2] filetype: Improve FAT detection
To: barebox@lists.infradead.org

We may have some disk with MBR as a first sector. In this case, the
current FAT check returns an error. However, the FAT sector exist and
the MBR can tell us where it is.

This patch add to file_name_detect_type function the ability to find
the FAT boot sector on the first sector of the first partition in case
it is not on sector 0.

It also introduce is_fat_boot_sector to check if a buffer is a FAT boot
sector.

Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
---
 common/filetype.c  |   58 +++++++++++++++++++++++++++++++++++++++++++---------
 include/filetype.h |    1 +
 2 files changed, 49 insertions(+), 10 deletions(-)

diff --git a/common/filetype.c b/common/filetype.c
index e736d43..04ed7fe 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -26,6 +26,8 @@
 #include <fcntl.h>
 #include <fs.h>
 #include <malloc.h>
+#include <fat.h>
+#include <errno.h>
 
 static const char *filetype_str[] = {
 	[filetype_unknown] = "unknown",
@@ -52,20 +54,35 @@ const char *file_type_to_string(enum filetype f)
 	return NULL;
 }
 
-static int is_fat(u8 *buf)
+#define MBR_StartSector		8	/* MBR: Offset of Starting Sector in Partition Table Entry */
+#define BS_55AA			510	/* Boot sector signature (2) */
+#define MBR_Table		446	/* MBR: Partition table offset (2) */
+#define BS_FilSysType32		82	/* File system type (1) */
+#define BS_FilSysType		54	/* File system type (1) */
+
+int is_fat_boot_sector(unsigned char *sector, unsigned long *bootsec)
 {
-	if (get_unaligned_le16(&buf[510]) != 0xAA55)
+	if(bootsec)
+		*bootsec = 0;
+
+	/* Check record signature (always placed at offset 510 even if the sector size is>512) */
+	if (get_unaligned_le16(&sector[BS_55AA]) != 0xAA55)
+		return -ENODEV;
+
+	/* Check "FAT" string */
+	if ((get_unaligned_le32(&sector[BS_FilSysType]) & 0xFFFFFF) == 0x544146)
 		return 0;
 
-	/* FAT */
-	if ((get_unaligned_le32(&buf[54]) & 0xFFFFFF) == 0x544146)
-		return 1;
+	if ((get_unaligned_le32(&sector[BS_FilSysType32]) & 0xFFFFFF) == 0x544146)
+		return 0;
 
-	/* FAT32 */
-	if ((get_unaligned_le32(&buf[82]) & 0xFFFFFF) == 0x544146)
-		return 1;
+	if(bootsec)
+		/* This must be an MBR, so return the starting sector of the
+		 * first partition so we could check if there is a FAT boot
+		 * sector there */
+		*bootsec = get_unaligned_le16(&sector[MBR_Table + MBR_StartSector]);
 
-	return 0;
+	return -ENODEV;
 }
 
 enum filetype file_detect_type(void *_buf)
@@ -99,7 +116,8 @@ enum filetype file_detect_type(void *_buf)
 		return filetype_aimage;
 	if (strncmp(buf8 + 0x10, "barebox", 7) == 0)
 		return filetype_mips_barebox;
-	if (is_fat(buf8))
+
+	if (!is_fat_boot_sector(buf8, NULL))
 		return filetype_fat;
 
 	return filetype_unknown;
@@ -110,6 +128,7 @@ enum filetype file_name_detect_type(const char *filename)
 	int fd, ret;
 	void *buf;
 	enum filetype type = filetype_unknown;
+	unsigned long bootsec;
 
 	fd = open(filename, O_RDONLY);
 	if (fd < 0)
@@ -123,6 +142,25 @@ enum filetype file_name_detect_type(const char *filename)
 
 	type = file_detect_type(buf);
 
+	/* Let's give FAT another chance */
+	if (type == filetype_unknown) {
+		ret = is_fat_boot_sector((u8 *)buf, &bootsec);
+		if (ret && bootsec != 0) {
+			/* The first sector is an MBR, now check for
+			 * FAT in the first partition */
+			lseek(fd, (bootsec) * 512, SEEK_SET);
+			ret = read(fd, buf, 512);
+			if (ret < 0) {
+				type = filetype_unknown;
+				goto err_out;
+			}
+			ret = is_fat_boot_sector((u8 *)buf, NULL);
+			if (!ret)
+				type = filetype_fat;
+		} else
+			type = filetype_fat;
+	}
+
 err_out:
 	close(fd);
 	free(buf);
diff --git a/include/filetype.h b/include/filetype.h
index 179ec0f..c60f654 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -24,5 +24,6 @@ enum filetype {
 const char *file_type_to_string(enum filetype f);
 enum filetype file_detect_type(void *_buf);
 enum filetype file_name_detect_type(const char *filename);
+int is_fat_boot_sector(unsigned char *sector, unsigned long *bootsec);
 
 #endif /* __FILE_TYPE_H */
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
