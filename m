Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TTD5h-0000o3-A7
 for barebox@lists.infradead.org; Tue, 30 Oct 2012 14:46:54 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 30 Oct 2012 15:46:48 +0100
Message-Id: <1351608409-9793-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1351608409-9793-1-git-send-email-s.hauer@pengutronix.de>
References: <1351608409-9793-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] filetype: add shortnames
To: barebox@lists.infradead.org

The filetype strings are not really suitable for shell scripts, so
add a shortname array of filetypes usable for shell scripts.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/filetype.c  |   51 ++++++++++++++++++++++++++++++++-------------------
 include/filetype.h |    2 ++
 2 files changed, 34 insertions(+), 19 deletions(-)

diff --git a/common/filetype.c b/common/filetype.c
index f37370e..b8d54f7 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -24,30 +24,43 @@
 #include <malloc.h>
 #include <errno.h>
 
-static const char *filetype_str[] = {
-	[filetype_unknown] = "unknown",
-	[filetype_arm_zimage] = "arm Linux zImage",
-	[filetype_lzo_compressed] = "lzo compressed",
-	[filetype_arm_barebox] = "arm barebox image",
-	[filetype_uimage] = "U-Boot uImage",
-	[filetype_ubi] = "UBI image",
-	[filetype_jffs2] = "JFFS2 image",
-	[filetype_gzip] = "gzip compressed",
-	[filetype_bzip2] = "bzip2 compressed",
-	[filetype_oftree] = "open firmware flat device tree",
-	[filetype_aimage] = "Android boot image",
-	[filetype_sh] = "Bourne Shell",
-	[filetype_mips_barebox] = "MIPS barebox image",
-	[filetype_fat] = "FAT filesytem",
-	[filetype_mbr] = "MBR sector",
-	[filetype_bmp] = "BMP image",
-	[filetype_png] = "PNG image",
+struct filetype_str {
+	const char *name;	/* human readable filetype */
+	const char *shortname;	/* short string without spaces for shell scripts */
+};
+
+static const struct filetype_str filetype_str[] = {
+	[filetype_unknown] = { "unknown", "unkown" },
+	[filetype_arm_zimage] = { "arm Linux zImage", "arm-zimage" },
+	[filetype_lzo_compressed] = { "lzo compressed", "lzo" },
+	[filetype_arm_barebox] = { "arm barebox image", "arm-barebox" },
+	[filetype_uimage] = { "U-Boot uImage", "u-boot" },
+	[filetype_ubi] = { "UBI image", "ubi" },
+	[filetype_jffs2] = { "JFFS2 image", "jffs2" },
+	[filetype_gzip] = { "gzip compressed", "gzip" },
+	[filetype_bzip2] = { "bzip2 compressed", "bzip2" },
+	[filetype_oftree] = { "open firmware flat device tree", "dtb" },
+	[filetype_aimage] = { "Android boot image", "android" },
+	[filetype_sh] = { "Bourne Shell", "sh" },
+	[filetype_mips_barebox] = { "MIPS barebox image", "mips-barebox" },
+	[filetype_fat] = { "FAT filesytem", "fat" },
+	[filetype_mbr] = { "MBR sector", "mbr" },
+	[filetype_bmp] = { "BMP image", "bmp" },
+	[filetype_png] = { "PNG image", "png" },
 };
 
 const char *file_type_to_string(enum filetype f)
 {
 	if (f < ARRAY_SIZE(filetype_str))
-		return filetype_str[f];
+		return filetype_str[f].name;
+
+	return NULL;
+}
+
+const char *file_type_to_short_string(enum filetype f)
+{
+	if (f < ARRAY_SIZE(filetype_str))
+		return filetype_str[f].shortname;
 
 	return NULL;
 }
diff --git a/include/filetype.h b/include/filetype.h
index 0b6cd24..0a722a0 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -22,9 +22,11 @@ enum filetype {
 	filetype_mbr,
 	filetype_bmp,
 	filetype_png,
+	filetype_max,
 };
 
 const char *file_type_to_string(enum filetype f);
+const char *file_type_to_short_string(enum filetype f);
 enum filetype file_detect_type(void *_buf);
 enum filetype file_name_detect_type(const char *filename);
 enum filetype is_fat_or_mbr(const unsigned char *sector, unsigned long *bootsec);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
