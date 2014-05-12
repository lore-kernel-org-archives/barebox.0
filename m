Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WjpHk-0003EF-Gj
 for barebox@lists.infradead.org; Mon, 12 May 2014 12:24:49 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 4DB3CBF095
 for <barebox@lists.infradead.org>; Mon, 12 May 2014 14:24:23 +0200 (CEST)
From: Wadim Egorov <w.egorov@phytec.de>
Date: Mon, 12 May 2014 14:24:20 +0200
Message-Id: <1399897462-21433-2-git-send-email-w.egorov@phytec.de>
In-Reply-To: <1399897462-21433-1-git-send-email-w.egorov@phytec.de>
References: <1399897462-21433-1-git-send-email-w.egorov@phytec.de>
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
Subject: [PATCH 2/4] barebox: common: added new filetypes
To: barebox@lists.infradead.org

- Added omap CH image header recognition
  * filetype_ch_image
  * filetype_ch_image_be

Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
---
 common/filetype.c  |   12 ++++++++++++
 include/filetype.h |    2 ++
 2 files changed, 14 insertions(+), 0 deletions(-)

diff --git a/common/filetype.c b/common/filetype.c
index 0b5da30..7cdc0a4 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -53,6 +53,9 @@ static const struct filetype_str filetype_str[] = {
 	[filetype_gpt] = { "GUID Partition Table", "gpt" },
 	[filetype_bpk] = { "Binary PacKage", "bpk" },
 	[filetype_barebox_env] = { "barebox environment file", "bbenv" },
+	[filetype_ch_image] = { "TI OMAP CH boot image", "ch-image" },
+	[filetype_ch_image_be] = {
+			"TI OMAP CH boot image (big endian)", "ch-image-be" },
 };
 
 const char *file_type_to_string(enum filetype f)
@@ -177,6 +180,8 @@ enum filetype file_detect_partition_table(const void *_buf, size_t bufsize)
 	return filetype_unknown;
 }
 
+#define CH_TOC_section_name     0x14
+
 enum filetype file_detect_type(const void *_buf, size_t bufsize)
 {
 	const u32 *buf = _buf;
@@ -246,6 +251,13 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 	if (bufsize >= 1536 && buf16[512 + 28] == le16_to_cpu(0xef53))
 		return filetype_ext;
 
+	if (strncmp(buf8 + CH_TOC_section_name, "CHSETTINGS", 10) == 0)
+		return filetype_ch_image;
+
+	if (buf[5] == 0x43485345 && buf[6] == 0x5454494E &&
+		buf[7] == 0x47530000)
+		return filetype_ch_image_be;
+
 	return filetype_unknown;
 }
 
diff --git a/include/filetype.h b/include/filetype.h
index c20a4f9..fc3140c 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -30,6 +30,8 @@ enum filetype {
 	filetype_ubifs,
 	filetype_bpk,
 	filetype_barebox_env,
+	filetype_ch_image,
+	filetype_ch_image_be,
 	filetype_max,
 };
 
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
