Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ft2E1-0005NP-0s
 for barebox@lists.infradead.org; Fri, 24 Aug 2018 02:53:27 +0000
Received: by mail-pl1-x630.google.com with SMTP id e11-v6so443007plb.3
 for <barebox@lists.infradead.org>; Thu, 23 Aug 2018 19:53:13 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 23 Aug 2018 19:52:23 -0700
Message-Id: <20180824025243.19479-5-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 04/24] filetype: Add code to detect i.MX image v2
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Modify file_detect_type() and add code needed to be able to detect
i.MX boot images with v2 header.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/filetype.c  | 4 ++++
 include/filetype.h | 1 +
 2 files changed, 5 insertions(+)

diff --git a/common/filetype.c b/common/filetype.c
index 8f2be2773..f8b6bc895 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -74,6 +74,7 @@ static const struct filetype_str filetype_str[] = {
 	[filetype_arm64_linux_image] = { "ARM aarch64 Linux image", "aarch64-linux" },
 	[filetype_elf] = { "ELF", "elf" },
 	[filetype_imx_image_v1] = { "i.MX image (v1)", "imx-image-v1" },
+	[filetype_imx_image_v2] = { "i.MX image (v2)", "imx-image-v2" },
 };
 
 const char *file_type_to_string(enum filetype f)
@@ -368,6 +369,9 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 	if (imx_flash_header->dcd_barker == DCD_BARKER)
 		return filetype_imx_image_v1;
 
+	if (is_imx_flash_header_v2(_buf))
+		return filetype_imx_image_v2;
+
 	return filetype_unknown;
 }
 
diff --git a/include/filetype.h b/include/filetype.h
index e2df5fabf..395053dd5 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -44,6 +44,7 @@ enum filetype {
 	filetype_arm64_linux_image,
 	filetype_elf,
 	filetype_imx_image_v1,
+	filetype_imx_image_v2,
 	filetype_max,
 };
 
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
