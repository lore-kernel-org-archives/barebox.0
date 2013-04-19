Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-f48.google.com ([74.125.83.48])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UT6xg-0008VJ-JG
 for barebox@lists.infradead.org; Fri, 19 Apr 2013 08:46:29 +0000
Received: by mail-ee0-f48.google.com with SMTP id b15so1710274eek.21
 for <barebox@lists.infradead.org>; Fri, 19 Apr 2013 01:46:27 -0700 (PDT)
From: Hubert Feurstein <h.feurstein@gmail.com>
Date: Fri, 19 Apr 2013 10:46:04 +0200
Message-Id: <1366361165-28803-1-git-send-email-h.feurstein@gmail.com>
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
Subject: [PATCH 1/2] common/filetype: move partition-table detection into own
 function
To: barebox@lists.infradead.org

Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
---
 common/filetype.c  | 41 ++++++++++++++++++++++++-----------------
 include/filetype.h |  1 +
 2 files changed, 25 insertions(+), 17 deletions(-)

diff --git a/common/filetype.c b/common/filetype.c
index 8652f1d..48fcdff 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -151,13 +151,34 @@ enum filetype is_fat_or_mbr(const unsigned char *sector, unsigned long *bootsec)
 	return filetype_mbr;
 }
 
+enum filetype file_detect_partition_table(const void *_buf, size_t bufsize)
+{
+	const u8 *buf8 = _buf;
+	enum filetype type;
+
+	if (bufsize < 512)
+		return filetype_unknown;
+
+	/*
+	 * EFI GPT need to be detected before MBR otherwise
+	 * we will detect a MBR
+	 */
+	if (bufsize >= 520 && is_gpt_valid(buf8))
+		return filetype_gpt;
+
+	type = is_fat_or_mbr(buf8, NULL);
+	if (type != filetype_unknown)
+		return type;
+
+	return filetype_unknown;
+}
+
 enum filetype file_detect_type(const void *_buf, size_t bufsize)
 {
 	const u32 *buf = _buf;
 	const u64 *buf64 = _buf;
 	const u8 *buf8 = _buf;
 	const u16 *buf16 = _buf;
-	enum filetype type;
 
 	if (bufsize < 9)
 		return filetype_unknown;
@@ -204,24 +225,10 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 	if (bufsize < 512)
 		return filetype_unknown;
 
-	/*
-	 * EFI GPT need to be detected before MBR otherwise
-	 * we will detect a MBR
-	 */
-	if (bufsize >= 520 && is_gpt_valid(buf8))
-		return filetype_gpt;
-
-	type = is_fat_or_mbr(buf8, NULL);
-	if (type != filetype_unknown)
-		return type;
-
-	if (bufsize < 1536)
-		return filetype_unknown;
-
-	if (buf16[512 + 28] == le16_to_cpu(0xef53))
+	if (bufsize >= 1536 && buf16[512 + 28] == le16_to_cpu(0xef53))
 		return filetype_ext;
 
-	return filetype_unknown;
+	return file_detect_partition_table(_buf, bufsize);
 }
 
 enum filetype file_name_detect_type(const char *filename)
diff --git a/include/filetype.h b/include/filetype.h
index 78ca5d2..ee777ac 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -31,6 +31,7 @@ enum filetype {
 
 const char *file_type_to_string(enum filetype f);
 const char *file_type_to_short_string(enum filetype f);
+enum filetype file_detect_partition_table(const void *_buf, size_t bufsize);
 enum filetype file_detect_type(const void *_buf, size_t bufsize);
 enum filetype file_name_detect_type(const char *filename);
 enum filetype is_fat_or_mbr(const unsigned char *sector, unsigned long *bootsec);
-- 
1.8.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
