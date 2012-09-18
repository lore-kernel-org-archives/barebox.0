Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-f171.google.com ([209.85.212.171])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TE5hn-0004se-7w
 for barebox@lists.infradead.org; Tue, 18 Sep 2012 21:51:43 +0000
Received: by wibhq4 with SMTP id hq4so3446659wib.0
 for <barebox@lists.infradead.org>; Tue, 18 Sep 2012 14:51:41 -0700 (PDT)
From: Franck Jullien <franck.jullien@gmail.com>
Date: Tue, 18 Sep 2012 23:51:35 +0200
Message-Id: <1348005096-3419-1-git-send-email-franck.jullien@gmail.com>
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
Subject: [PATCH 1/2] [v3] filetype: Improve FAT detection
To: barebox@lists.infradead.org

We may have some disk with MBR as a first sector. In this case, the
current FAT check returns an error. However, the FAT sector exist and
the MBR can tell us where it is.

This patch add to file_name_detect_type function the ability to find
the FAT boot sector on the first sector of the first partition in case
it is not on sector 0.

It also introduce is_fat_or_mbr to check if a buffer is a FAT boot
or MBR sector

Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
---
 common/filetype.c  |   63 ++++++++++++++++++++++++++++++++++++++++++----------
 include/filetype.h |    2 +
 2 files changed, 53 insertions(+), 12 deletions(-)

diff --git a/common/filetype.c b/common/filetype.c
index e736d43..cb4db5c 100644
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
@@ -42,6 +44,7 @@ static const char *filetype_str[] = {
 	[filetype_sh] = "Bourne Shell",
 	[filetype_mips_barebox] = "MIPS barebox image",
 	[filetype_fat] = "FAT filesytem",
+	[filetype_mbr] = "MBR sector",
 };
 
 const char *file_type_to_string(enum filetype f)
@@ -52,26 +55,42 @@ const char *file_type_to_string(enum filetype f)
 	return NULL;
 }
 
-static int is_fat(u8 *buf)
+#define MBR_StartSector		8	/* MBR: Offset of Starting Sector in Partition Table Entry */
+#define BS_55AA			510	/* Boot sector signature (2) */
+#define MBR_Table		446	/* MBR: Partition table offset (2) */
+#define BS_FilSysType32		82	/* File system type (1) */
+#define BS_FilSysType		54	/* File system type (1) */
+
+enum filetype is_fat_or_mbr(unsigned char *sector, unsigned long *bootsec)
 {
-	if (get_unaligned_le16(&buf[510]) != 0xAA55)
-		return 0;
+	if(bootsec)
+		*bootsec = 0;
+
+	/* Check record signature (always placed at offset 510 even if the sector size is>512) */
+	if (get_unaligned_le16(&sector[BS_55AA]) != 0xAA55)
+		return filetype_unknown;
+
+	/* Check "FAT" string */
+	if ((get_unaligned_le32(&sector[BS_FilSysType]) & 0xFFFFFF) == 0x544146)
+		return filetype_fat;
 
-	/* FAT */
-	if ((get_unaligned_le32(&buf[54]) & 0xFFFFFF) == 0x544146)
-		return 1;
+	if ((get_unaligned_le32(&sector[BS_FilSysType32]) & 0xFFFFFF) == 0x544146)
+		return filetype_fat;
 
-	/* FAT32 */
-	if ((get_unaligned_le32(&buf[82]) & 0xFFFFFF) == 0x544146)
-		return 1;
+	if(bootsec)
+		/* This must be an MBR, so return the starting sector of the
+		 * first partition so we could check if there is a FAT boot
+		 * sector there */
+		*bootsec = get_unaligned_le16(&sector[MBR_Table + MBR_StartSector]);
 
-	return 0;
+	return filetype_mbr;
 }
 
 enum filetype file_detect_type(void *_buf)
 {
 	u32 *buf = _buf;
 	u8 *buf8 = _buf;
+	enum filetype type;
 
 	if (strncmp(buf8, "#!/bin/sh", 9) == 0)
 		return filetype_sh;
@@ -99,8 +118,10 @@ enum filetype file_detect_type(void *_buf)
 		return filetype_aimage;
 	if (strncmp(buf8 + 0x10, "barebox", 7) == 0)
 		return filetype_mips_barebox;
-	if (is_fat(buf8))
-		return filetype_fat;
+
+	type = is_fat_or_mbr(buf8, NULL);
+	if (type != filetype_unknown)
+		return type;
 
 	return filetype_unknown;
 }
@@ -110,6 +131,7 @@ enum filetype file_name_detect_type(const char *filename)
 	int fd, ret;
 	void *buf;
 	enum filetype type = filetype_unknown;
+	unsigned long bootsec;
 
 	fd = open(filename, O_RDONLY);
 	if (fd < 0)
@@ -123,6 +145,23 @@ enum filetype file_name_detect_type(const char *filename)
 
 	type = file_detect_type(buf);
 
+	if (type == filetype_mbr) {
+		/* Get the first partition start sector
+		 * and check for FAT in it */
+		is_fat_or_mbr((u8 *)buf, &bootsec);
+		ret = lseek(fd, (bootsec) * 512, SEEK_SET);
+		if (ret < 0) {
+			type = filetype_unknown;
+			goto err_out;
+		}
+		ret = read(fd, buf, 512);
+		if (ret < 0) {
+			type = filetype_unknown;
+			goto err_out;
+		}
+		type = is_fat_or_mbr((u8 *)buf, NULL);
+	}
+
 err_out:
 	close(fd);
 	free(buf);
diff --git a/include/filetype.h b/include/filetype.h
index 179ec0f..1877835 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -19,10 +19,12 @@ enum filetype {
 	filetype_sh,
 	filetype_mips_barebox,
 	filetype_fat,
+	filetype_mbr,
 };
 
 const char *file_type_to_string(enum filetype f);
 enum filetype file_detect_type(void *_buf);
 enum filetype file_name_detect_type(const char *filename);
+enum filetype is_fat_or_mbr(unsigned char *sector, unsigned long *bootsec);
 
 #endif /* __FILE_TYPE_H */
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
