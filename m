Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wj0-x244.google.com ([2a00:1450:400c:c01::244])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cDplt-00029n-Ui
 for barebox@lists.infradead.org; Mon, 05 Dec 2016 09:41:26 +0000
Received: by mail-wj0-x244.google.com with SMTP id j10so10882793wjb.3
 for <barebox@lists.infradead.org>; Mon, 05 Dec 2016 01:40:57 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon,  5 Dec 2016 12:40:30 +0300
Message-Id: <20161205094033.31569-6-antonynpavlov@gmail.com>
In-Reply-To: <20161205094033.31569-1-antonynpavlov@gmail.com>
References: <20161205094033.31569-1-antonynpavlov@gmail.com>
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
Subject: [RFC v2 5/8] filetype: add ELF type
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 common/filetype.c  | 5 +++++
 include/filetype.h | 1 +
 2 files changed, 6 insertions(+)

diff --git a/common/filetype.c b/common/filetype.c
index 8d72933..f204638 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -25,6 +25,7 @@
 #include <errno.h>
 #include <envfs.h>
 #include <disks.h>
+#include <elf.h>
 
 struct filetype_str {
 	const char *name;	/* human readable filetype */
@@ -63,6 +64,7 @@ static const struct filetype_str filetype_str[] = {
 	[filetype_exe] = { "MS-DOS executable", "exe" },
 	[filetype_mxs_bootstream] = { "Freescale MXS bootstream", "mxsbs" },
 	[filetype_socfpga_xload] = { "SoCFPGA prebootloader image", "socfpga-xload" },
+	[filetype_elf] = { "ELF", "elf" },
 };
 
 const char *file_type_to_string(enum filetype f)
@@ -327,6 +329,9 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 		buf[7] == 0x47530000)
 		return filetype_ch_image_be;
 
+	if (strncmp(buf8, ELFMAG, 4) == 0)
+		return filetype_elf;
+
 	return filetype_unknown;
 }
 
diff --git a/include/filetype.h b/include/filetype.h
index 65bd6ef..6fd2721 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -38,6 +38,7 @@ enum filetype {
 	filetype_xz_compressed,
 	filetype_mxs_bootstream,
 	filetype_socfpga_xload,
+	filetype_elf,
 	filetype_max,
 };
 
-- 
2.10.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
