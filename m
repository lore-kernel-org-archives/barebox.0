Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x236.google.com ([2a00:1450:400c:c05::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zhmz4-0005nl-IM
 for barebox@lists.infradead.org; Thu, 01 Oct 2015 23:09:55 +0000
Received: by wicge5 with SMTP id ge5so10154363wic.0
 for <barebox@lists.infradead.org>; Thu, 01 Oct 2015 16:09:32 -0700 (PDT)
From: Vicente Bergas <vicencb@gmail.com>
Date: Fri,  2 Oct 2015 00:08:38 +0100
Message-Id: <1443740919-6341-2-git-send-email-vicencb@gmail.com>
In-Reply-To: <1443740919-6341-1-git-send-email-vicencb@gmail.com>
References: <20151001060447.GG7858@pengutronix.de>
 <1443740919-6341-1-git-send-email-vicencb@gmail.com>
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
Subject: [PATCH 1/2] detect_fs: use device instead of file
To: barebox@lists.infradead.org, s.hauer@pengutronix.de
Cc: Vicente Bergas <vicencb@gmail.com>

detect_fs would usually mount a device on a directory,
so, use a device-specific type detection.

Signed-off-by: Vicente Bergas <vicencb@gmail.com>
---
 common/filetype.c  | 37 +++++++++++++++++++++++++++++++++++++++
 fs/fs.c            |  2 +-
 include/filetype.h |  1 +
 3 files changed, 41 insertions(+), 1 deletion(-)

diff --git a/common/filetype.c b/common/filetype.c
index 28a4b2c..6240fd1 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -361,3 +361,40 @@ err_out:
 
 	return type;
 }
+
+enum filetype cdev_detect_type(const char *name)
+{
+	enum filetype type = filetype_unknown;
+	int ret;
+	struct cdev *cdev;
+	void *buf;
+
+	cdev = cdev_by_name(name);
+	if (!cdev)
+		return type;
+	buf = xzalloc(FILE_TYPE_SAFE_BUFSIZE);
+	ret = cdev_read(cdev, buf, FILE_TYPE_SAFE_BUFSIZE, 0, 0);
+	if (ret < 0)
+		goto err_out;
+
+	type = file_detect_type(buf, ret);
+
+	if (type == filetype_mbr) {
+		unsigned long bootsec;
+		/*
+		 * Get the first partition start sector
+		 * and check for FAT in it
+		 */
+		is_fat_or_mbr(buf, &bootsec);
+
+		ret = cdev_read(cdev, buf, 512, bootsec * 512, 0);
+		if (ret < 0)
+			goto err_out;
+
+		type = is_fat_or_mbr((u8 *)buf, NULL);
+	}
+
+err_out:
+	free(buf);
+	return type;
+}
diff --git a/fs/fs.c b/fs/fs.c
index 67c78cd..c041e41 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -1201,7 +1201,7 @@ EXPORT_SYMBOL(register_fs_driver);
 
 static const char *detect_fs(const char *filename)
 {
-	enum filetype type = file_name_detect_type(filename);
+	enum filetype type = cdev_detect_type(filename);
 	struct driver_d *drv;
 	struct fs_driver_d *fdrv;
 
diff --git a/include/filetype.h b/include/filetype.h
index e452b7a..cde543e 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -45,6 +45,7 @@ const char *file_type_to_short_string(enum filetype f);
 enum filetype file_detect_partition_table(const void *_buf, size_t bufsize);
 enum filetype file_detect_type(const void *_buf, size_t bufsize);
 enum filetype file_name_detect_type(const char *filename);
+enum filetype cdev_detect_type(const char *name);
 enum filetype is_fat_or_mbr(const unsigned char *sector, unsigned long *bootsec);
 int is_fat_boot_sector(const void *_buf);
 
-- 
2.6.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
