Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UWicp-0003jH-3e
 for barebox@lists.infradead.org; Mon, 29 Apr 2013 07:35:52 +0000
Date: Mon, 29 Apr 2013 09:35:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130429073548.GK20989@pengutronix.de>
References: <1366361165-28803-1-git-send-email-h.feurstein@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1366361165-28803-1-git-send-email-h.feurstein@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] common/filetype: move partition-table detection into
 own function
To: Hubert Feurstein <h.feurstein@gmail.com>
Cc: barebox@lists.infradead.org

Hi Hubert,

On Fri, Apr 19, 2013 at 10:46:04AM +0200, Hubert Feurstein wrote:
> Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
> ---
>  common/filetype.c  | 41 ++++++++++++++++++++++++-----------------
>  include/filetype.h |  1 +
>  2 files changed, 25 insertions(+), 17 deletions(-)

Modified this slightly to the below and applied both.

Thanks
 Sascha

8<------------------------------------------------------

From c06956e15f8fb32d46e479950719c30bae57e5bb Mon Sep 17 00:00:00 2001
From: Hubert Feurstein <h.feurstein@gmail.com>
Date: Fri, 19 Apr 2013 10:46:04 +0200
Subject: [PATCH] common/filetype: move partition-table detection into own
 function

Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/filetype.c  | 36 ++++++++++++++++++++++++------------
 include/filetype.h |  1 +
 2 files changed, 25 insertions(+), 12 deletions(-)

diff --git a/common/filetype.c b/common/filetype.c
index 8652f1d..1ff3dd2 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -151,6 +151,28 @@ enum filetype is_fat_or_mbr(const unsigned char *sector, unsigned long *bootsec)
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
@@ -204,21 +226,11 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
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
+	type = file_detect_partition_table(_buf, bufsize);
 	if (type != filetype_unknown)
 		return type;
 
-	if (bufsize < 1536)
-		return filetype_unknown;
-
-	if (buf16[512 + 28] == le16_to_cpu(0xef53))
+	if (bufsize >= 1536 && buf16[512 + 28] == le16_to_cpu(0xef53))
 		return filetype_ext;
 
 	return filetype_unknown;
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
1.8.2.rc2

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
