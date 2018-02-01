Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ehCFX-0000Vw-Pz
 for barebox@lists.infradead.org; Thu, 01 Feb 2018 10:37:50 +0000
From: Philipp Zabel <p.zabel@pengutronix.de>
Date: Thu,  1 Feb 2018 11:37:16 +0100
Message-Id: <20180201103717.17429-2-p.zabel@pengutronix.de>
In-Reply-To: <20180201103717.17429-1-p.zabel@pengutronix.de>
References: <20180201103717.17429-1-p.zabel@pengutronix.de>
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
Subject: [PATCH 2/3] filetype: Add type detection at an offset
To: barebox@lists.infradead.org

Add file_name_detect_type_offset to allow file system detection for loop
mounts at an offset.

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 common/filetype.c  | 10 ++++++++--
 include/filetype.h |  1 +
 2 files changed, 9 insertions(+), 2 deletions(-)

diff --git a/common/filetype.c b/common/filetype.c
index f9c034ff2a..71691fd813 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -21,6 +21,7 @@
 #include <asm/unaligned.h>
 #include <fcntl.h>
 #include <fs.h>
+#include <libfile.h>
 #include <malloc.h>
 #include <errno.h>
 #include <envfs.h>
@@ -343,13 +344,13 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 	return filetype_unknown;
 }
 
-enum filetype file_name_detect_type(const char *filename)
+enum filetype file_name_detect_type_offset(const char *filename, loff_t pos)
 {
 	int fd, ret;
 	void *buf;
 	enum filetype type = filetype_unknown;
 
-	fd = open(filename, O_RDONLY);
+	fd = open_and_lseek(filename, O_RDONLY, pos);
 	if (fd < 0)
 		return fd;
 
@@ -368,6 +369,11 @@ err_out:
 	return type;
 }
 
+enum filetype file_name_detect_type(const char *filename)
+{
+	return file_name_detect_type_offset(filename, 0);
+}
+
 enum filetype cdev_detect_type(const char *name)
 {
 	enum filetype type = filetype_unknown;
diff --git a/include/filetype.h b/include/filetype.h
index b98dcb5014..ec5aea2635 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -50,6 +50,7 @@ const char *file_type_to_short_string(enum filetype f);
 enum filetype file_detect_partition_table(const void *_buf, size_t bufsize);
 enum filetype file_detect_type(const void *_buf, size_t bufsize);
 enum filetype file_name_detect_type(const char *filename);
+enum filetype file_name_detect_type_offset(const char *filename, loff_t pos);
 enum filetype cdev_detect_type(const char *name);
 enum filetype is_fat_or_mbr(const unsigned char *sector, unsigned long *bootsec);
 int is_fat_boot_sector(const void *_buf);
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
