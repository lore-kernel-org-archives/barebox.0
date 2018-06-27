Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x236.google.com ([2607:f8b0:400e:c00::236])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fXyt4-0000H0-CJ
 for barebox@lists.infradead.org; Wed, 27 Jun 2018 01:04:52 +0000
Received: by mail-pf0-x236.google.com with SMTP id c22-v6so169914pfi.2
 for <barebox@lists.infradead.org>; Tue, 26 Jun 2018 18:04:36 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 26 Jun 2018 18:04:09 -0700
Message-Id: <20180627010412.20646-8-andrew.smirnov@gmail.com>
In-Reply-To: <20180627010412.20646-1-andrew.smirnov@gmail.com>
References: <20180627010412.20646-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 07/10] filtype: Add code to detect i.MX image v1
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/filetype.c  | 8 ++++++++
 include/filetype.h | 1 +
 2 files changed, 9 insertions(+)

diff --git a/common/filetype.c b/common/filetype.c
index c5f2384a6..cebf4d311 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -29,6 +29,9 @@
 #include <image-sparse.h>
 #include <elf.h>
 
+#include <../mach-imx/include/mach/imx-header.h>
+
+
 struct filetype_str {
 	const char *name;	/* human readable filetype */
 	const char *shortname;	/* short string without spaces for shell scripts */
@@ -71,6 +74,7 @@ static const struct filetype_str filetype_str[] = {
 	[filetype_android_sparse] = { "Android sparse image", "sparse" },
 	[filetype_arm64_linux_image] = { "ARM aarch64 Linux image", "aarch64-linux" },
 	[filetype_elf] = { "ELF", "elf" },
+	[filetype_imx_image_v1] = { "i.MX image (v1)", "imx-image-v1" },
 };
 
 const char *file_type_to_string(enum filetype f)
@@ -250,6 +254,7 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 	const u64 *buf64 = _buf;
 	const u8 *buf8 = _buf;
 	const u16 *buf16 = _buf;
+	const struct imx_flash_header *imx_flash_header = _buf;
 	enum filetype type;
 
 	if (bufsize < 9)
@@ -361,6 +366,9 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 	if (strncmp(buf8, ELFMAG, 4) == 0)
 		return filetype_elf;
 
+	if (imx_flash_header->dcd_barker == DCD_BARKER)
+		return filetype_imx_image_v1;
+
 	return filetype_unknown;
 }
 
diff --git a/include/filetype.h b/include/filetype.h
index 237ed3fbe..e2df5fabf 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -43,6 +43,7 @@ enum filetype {
 	filetype_android_sparse,
 	filetype_arm64_linux_image,
 	filetype_elf,
+	filetype_imx_image_v1,
 	filetype_max,
 };
 
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
