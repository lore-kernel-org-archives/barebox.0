Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fIzVy-0002wY-Qq
 for barebox@lists.infradead.org; Wed, 16 May 2018 16:43:21 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Wed, 16 May 2018 18:42:26 +0200
Message-Id: <20180516164233.27581-4-linux@rempel-privat.de>
In-Reply-To: <20180516164233.27581-1-linux@rempel-privat.de>
References: <20180516164233.27581-1-linux@rempel-privat.de>
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
Subject: [PATCH v1 03/10] filetype: add ELF type
To: barebox@lists.infradead.org

From: Antony Pavlov <antonynpavlov@gmail.com>

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 common/filetype.c  | 5 +++++
 include/filetype.h | 1 +
 2 files changed, 6 insertions(+)

diff --git a/common/filetype.c b/common/filetype.c
index 444ec14cc..77cf9a105 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -27,6 +27,7 @@
 #include <envfs.h>
 #include <disks.h>
 #include <image-sparse.h>
+#include <elf.h>
 
 struct filetype_str {
 	const char *name;	/* human readable filetype */
@@ -68,6 +69,7 @@ static const struct filetype_str filetype_str[] = {
 	[filetype_kwbimage_v1] = { "MVEBU kwbimage (v1)", "kwb" },
 	[filetype_android_sparse] = { "Android sparse image", "sparse" },
 	[filetype_arm64_linux_image] = { "ARM aarch64 Linux image", "aarch64-linux" },
+	[filetype_elf] = { "ELF", "elf" },
 };
 
 const char *file_type_to_string(enum filetype f)
@@ -344,6 +346,9 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 		buf[7] == 0x47530000)
 		return filetype_ch_image_be;
 
+	if (strncmp(buf8, ELFMAG, 4) == 0)
+		return filetype_elf;
+
 	return filetype_unknown;
 }
 
diff --git a/include/filetype.h b/include/filetype.h
index 9986938dd..3b930bf94 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -41,6 +41,7 @@ enum filetype {
 	filetype_kwbimage_v1,
 	filetype_android_sparse,
 	filetype_arm64_linux_image,
+	filetype_elf,
 	filetype_max,
 };
 
-- 
2.14.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
