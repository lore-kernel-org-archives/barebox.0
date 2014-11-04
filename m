Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.data-modul.de ([212.184.205.171] helo=mail2.data-modul.de)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XlYxH-0004Lm-As
 for barebox@lists.infradead.org; Tue, 04 Nov 2014 07:55:08 +0000
From: Zahari Doychev <zahari.doychev@linux.com>
Date: Tue,  4 Nov 2014 08:54:01 +0100
Message-Id: <1a6ceeaed41aabfcd56e630bf5ad75221a3ab6c1.1415087152.git.zahari.doychev@linux.com>
In-Reply-To: <cover.1415087152.git.zahari.doychev@linux.com>
References: <cover.1415087152.git.zahari.doychev@linux.com>
In-Reply-To: <cover.1415087152.git.zahari.doychev@linux.com>
References: <cover.1415087152.git.zahari.doychev@linux.com>
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
Subject: [PATCH] common: fix mbr filetype detection
To: barebox@lists.infradead.org

Sometimes mbr is erroneously recocognised as FAT partion. Due to this the mbr
partition parser is not being called and the partitions on the media are not
detected. This patch should  fix the problem. The checking is done as in the
linux kernel.

I have seen the problem using usb sticks. Although partitioning and formatting
them under linux. The file system type field in the mbr remains there which
causes the wrong detections as FAT32 type and not as mbr.

Signed-off-by: Zahari Doychev <zahari.doychev@linux.com>
---
 common/filetype.c   | 48 ++++++++++++++++++++++++++++++++++++++++++++++++
 common/partitions.c |  2 ++
 include/filetype.h  |  1 +
 3 files changed, 51 insertions(+)

diff --git a/common/filetype.c b/common/filetype.c
index c8f3582..810d9a5 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -24,6 +24,7 @@
 #include <malloc.h>
 #include <errno.h>
 #include <envfs.h>
+#include <disks.h>
 
 struct filetype_str {
 	const char *name;	/* human readable filetype */
@@ -87,6 +88,10 @@ const char *file_type_to_short_string(enum filetype f)
 #define MBR_PART_start_sect	8
 #define MBR_OSTYPE_EFI_GPT	0xee
 
+#define FAT_BS_reserved		14
+#define FAT_BS_fats		16
+#define FAT_BS_media		21
+
 static inline int pmbr_part_valid(const uint8_t *buf)
 {
 	if (buf[MBR_PART_sys_ind] == MBR_OSTYPE_EFI_GPT &&
@@ -126,6 +131,49 @@ static int is_gpt_valid(const uint8_t *buf)
 	return 0;
 }
 
+static inline int fat_valid_media(u8 media)
+{
+	return (0xf8 <= media || media == 0xf0);
+}
+
+static int is_fat_with_no_mbr(const unsigned char  *sect)
+{
+	if (!get_unaligned_le16(&sect[FAT_BS_reserved]))
+		return 0;
+
+	if (!sect[FAT_BS_fats])
+		return 0;
+
+	if (!fat_valid_media(sect[FAT_BS_media]))
+		return 0;
+
+	return 1;
+}
+
+int is_fat_boot_sector(const void *sect)
+{
+	struct partition_entry *p;
+	int slot;
+
+	p = (struct partition_entry *) (sect + MBR_Table);
+	/* max 4 partitions */
+	for (slot = 1; slot <= 4; slot++, p++) {
+		if (p->boot_indicator && p->boot_indicator != 0x80) {
+			/*
+			 * Even without a valid boot inidicator value
+			 * its still possible this is valid FAT filesystem
+			 * without a partition table.
+			 */
+			if (slot == 1 && is_fat_with_no_mbr(sect))
+				return 1;
+			 else
+				return -EINVAL;
+		}
+	}
+
+	return 0;
+}
+
 enum filetype is_fat_or_mbr(const unsigned char *sector, unsigned long *bootsec)
 {
 	/*
diff --git a/common/partitions.c b/common/partitions.c
index 694c6f6..37d9cb7 100644
--- a/common/partitions.c
+++ b/common/partitions.c
@@ -107,6 +107,8 @@ static struct partition_parser *partition_parser_get_by_filetype(uint8_t *buf)
 	 * useful for compatibility
 	 */
 	type = file_detect_partition_table(buf, SECTOR_SIZE);
+	if (type == filetype_fat && !is_fat_boot_sector(buf))
+		type = filetype_mbr;
 
 	list_for_each_entry(parser, &partition_parser_list, list) {
 		if (parser->type == type)
diff --git a/include/filetype.h b/include/filetype.h
index eedf4b4..2c3c38d 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -44,6 +44,7 @@ enum filetype file_detect_partition_table(const void *_buf, size_t bufsize);
 enum filetype file_detect_type(const void *_buf, size_t bufsize);
 enum filetype file_name_detect_type(const char *filename);
 enum filetype is_fat_or_mbr(const unsigned char *sector, unsigned long *bootsec);
+int is_fat_boot_sector(const void *_buf);
 
 #define ARM_HEAD_SIZE			0x30
 #define ARM_HEAD_MAGICWORD_OFFSET	0x20
-- 
2.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
