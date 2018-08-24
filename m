Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ft2Dy-0005NO-C8
 for barebox@lists.infradead.org; Fri, 24 Aug 2018 02:53:24 +0000
Received: by mail-pl1-x62e.google.com with SMTP id e11-v6so442981plb.3
 for <barebox@lists.infradead.org>; Thu, 23 Aug 2018 19:53:11 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 23 Aug 2018 19:52:22 -0700
Message-Id: <20180824025243.19479-4-andrew.smirnov@gmail.com>
In-Reply-To: <20180824025243.19479-1-andrew.smirnov@gmail.com>
References: <20180824025243.19479-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 03/24] filetype: Add code to detect i.MX image v1
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Modify file_detect_type() and add code needed to be able to detect
i.MX boot images with v1 header.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/filetype.c  | 7 +++++++
 include/filetype.h | 1 +
 2 files changed, 8 insertions(+)

diff --git a/common/filetype.c b/common/filetype.c
index c5f2384a6..8f2be2773 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -29,6 +29,8 @@
 #include <image-sparse.h>
 #include <elf.h>
 
+#include <arm/mach-imx/include/mach/imx-header.h>
+
 struct filetype_str {
 	const char *name;	/* human readable filetype */
 	const char *shortname;	/* short string without spaces for shell scripts */
@@ -71,6 +73,7 @@ static const struct filetype_str filetype_str[] = {
 	[filetype_android_sparse] = { "Android sparse image", "sparse" },
 	[filetype_arm64_linux_image] = { "ARM aarch64 Linux image", "aarch64-linux" },
 	[filetype_elf] = { "ELF", "elf" },
+	[filetype_imx_image_v1] = { "i.MX image (v1)", "imx-image-v1" },
 };
 
 const char *file_type_to_string(enum filetype f)
@@ -250,6 +253,7 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 	const u64 *buf64 = _buf;
 	const u8 *buf8 = _buf;
 	const u16 *buf16 = _buf;
+	const struct imx_flash_header *imx_flash_header = _buf;
 	enum filetype type;
 
 	if (bufsize < 9)
@@ -361,6 +365,9 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
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
